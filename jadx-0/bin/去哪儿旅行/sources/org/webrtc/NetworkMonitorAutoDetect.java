package org.webrtc;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.util.Log;

public class NetworkMonitorAutoDetect extends BroadcastReceiver {
    static final int INVALID_NET_ID = -1;
    private static final String TAG = "NetworkMonitorAutoDetect";
    private ConnectionType connectionType;
    private ConnectivityManagerDelegate connectivityManagerDelegate;
    private final Context context;
    private final IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
    private boolean isRegistered;
    private final Observer observer;
    private WifiManagerDelegate wifiManagerDelegate;
    private String wifiSSID;

    public interface Observer {
        void onConnectionTypeChanged(ConnectionType connectionType);
    }

    public enum ConnectionType {
        CONNECTION_UNKNOWN,
        CONNECTION_ETHERNET,
        CONNECTION_WIFI,
        CONNECTION_4G,
        CONNECTION_3G,
        CONNECTION_2G,
        CONNECTION_BLUETOOTH,
        CONNECTION_NONE
    }

    class ConnectivityManagerDelegate {
        static final /* synthetic */ boolean $assertionsDisabled = (!NetworkMonitorAutoDetect.class.desiredAssertionStatus());
        private final ConnectivityManager connectivityManager;

        ConnectivityManagerDelegate(Context context) {
            this.connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        }

        ConnectivityManagerDelegate() {
            this.connectivityManager = null;
        }

        /* Access modifiers changed, original: 0000 */
        public NetworkState getNetworkState() {
            if (this.connectivityManager == null) {
                return new NetworkState(false, -1, -1);
            }
            return getNetworkState(this.connectivityManager.getActiveNetworkInfo());
        }

        /* Access modifiers changed, original: 0000 */
        @SuppressLint({"NewApi"})
        public NetworkState getNetworkState(Network network) {
            if (this.connectivityManager == null) {
                return new NetworkState(false, -1, -1);
            }
            return getNetworkState(this.connectivityManager.getNetworkInfo(network));
        }

        /* Access modifiers changed, original: 0000 */
        public NetworkState getNetworkState(NetworkInfo networkInfo) {
            if (networkInfo == null || !networkInfo.isConnected()) {
                return new NetworkState(false, -1, -1);
            }
            return new NetworkState(true, networkInfo.getType(), networkInfo.getSubtype());
        }

        /* Access modifiers changed, original: 0000 */
        @SuppressLint({"NewApi"})
        public Network[] getAllNetworks() {
            if (this.connectivityManager == null) {
                return new Network[0];
            }
            return this.connectivityManager.getAllNetworks();
        }

        /* Access modifiers changed, original: 0000 */
        @SuppressLint({"NewApi"})
        public int getDefaultNetId() {
            if (this.connectivityManager == null) {
                return -1;
            }
            NetworkInfo activeNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return -1;
            }
            int i = -1;
            for (Network network : getAllNetworks()) {
                if (hasInternetCapability(network)) {
                    NetworkInfo networkInfo = this.connectivityManager.getNetworkInfo(network);
                    if (networkInfo != null && networkInfo.getType() == activeNetworkInfo.getType()) {
                        if ($assertionsDisabled || i == -1) {
                            i = NetworkMonitorAutoDetect.networkToNetId(network);
                        } else {
                            throw new AssertionError();
                        }
                    }
                }
            }
            return i;
        }

        /* Access modifiers changed, original: 0000 */
        @SuppressLint({"NewApi"})
        public boolean hasInternetCapability(Network network) {
            if (this.connectivityManager == null) {
                return false;
            }
            NetworkCapabilities networkCapabilities = this.connectivityManager.getNetworkCapabilities(network);
            if (networkCapabilities == null || !networkCapabilities.hasCapability(12)) {
                return false;
            }
            return true;
        }
    }

    class NetworkState {
        private final boolean connected;
        private final int subtype;
        private final int type;

        public NetworkState(boolean z, int i, int i2) {
            this.connected = z;
            this.type = i;
            this.subtype = i2;
        }

        public boolean isConnected() {
            return this.connected;
        }

        public int getNetworkType() {
            return this.type;
        }

        public int getNetworkSubType() {
            return this.subtype;
        }
    }

    class WifiManagerDelegate {
        private final Context context;
        private final boolean hasWifiPermission;
        private final WifiManager wifiManager;

        WifiManagerDelegate(Context context) {
            this.context = context;
            this.hasWifiPermission = context.getPackageManager().checkPermission("android.permission.ACCESS_WIFI_STATE", context.getPackageName()) == 0;
            this.wifiManager = this.hasWifiPermission ? (WifiManager) context.getSystemService("wifi") : null;
        }

        WifiManagerDelegate() {
            this.context = null;
            this.wifiManager = null;
            this.hasWifiPermission = false;
        }

        /* Access modifiers changed, original: 0000 */
        public String getWifiSSID() {
            Intent registerReceiver = this.context.registerReceiver(null, new IntentFilter("android.net.wifi.STATE_CHANGE"));
            if (registerReceiver != null) {
                WifiInfo wifiInfo = (WifiInfo) registerReceiver.getParcelableExtra("wifiInfo");
                if (wifiInfo != null) {
                    String ssid = wifiInfo.getSSID();
                    if (ssid != null) {
                        return ssid;
                    }
                }
            }
            return "";
        }

        /* Access modifiers changed, original: 0000 */
        public boolean getHasWifiPermission() {
            return this.hasWifiPermission;
        }
    }

    public NetworkMonitorAutoDetect(Observer observer, Context context) {
        this.observer = observer;
        this.context = context;
        this.connectivityManagerDelegate = new ConnectivityManagerDelegate(context);
        this.wifiManagerDelegate = new WifiManagerDelegate(context);
        NetworkState networkState = this.connectivityManagerDelegate.getNetworkState();
        this.connectionType = getCurrentConnectionType(networkState);
        this.wifiSSID = getCurrentWifiSSID(networkState);
        registerReceiver();
    }

    /* Access modifiers changed, original: 0000 */
    public void setConnectivityManagerDelegateForTests(ConnectivityManagerDelegate connectivityManagerDelegate) {
        this.connectivityManagerDelegate = connectivityManagerDelegate;
    }

    /* Access modifiers changed, original: 0000 */
    public void setWifiManagerDelegateForTests(WifiManagerDelegate wifiManagerDelegate) {
        this.wifiManagerDelegate = wifiManagerDelegate;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean isReceiverRegisteredForTesting() {
        return this.isRegistered;
    }

    public void destroy() {
        unregisterReceiver();
    }

    private void registerReceiver() {
        if (!this.isRegistered) {
            this.isRegistered = true;
            this.context.registerReceiver(this, this.intentFilter);
        }
    }

    private void unregisterReceiver() {
        if (this.isRegistered) {
            this.isRegistered = false;
            this.context.unregisterReceiver(this);
        }
    }

    public NetworkState getCurrentNetworkState() {
        return this.connectivityManagerDelegate.getNetworkState();
    }

    public int getDefaultNetId() {
        if (VERSION.SDK_INT < 21) {
            return -1;
        }
        return this.connectivityManagerDelegate.getDefaultNetId();
    }

    public ConnectionType getCurrentConnectionType(NetworkState networkState) {
        if (!networkState.isConnected()) {
            return ConnectionType.CONNECTION_NONE;
        }
        switch (networkState.getNetworkType()) {
            case 0:
                switch (networkState.getNetworkSubType()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        return ConnectionType.CONNECTION_2G;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        return ConnectionType.CONNECTION_3G;
                    case 13:
                        return ConnectionType.CONNECTION_4G;
                    default:
                        return ConnectionType.CONNECTION_UNKNOWN;
                }
            case 1:
                return ConnectionType.CONNECTION_WIFI;
            case 6:
                return ConnectionType.CONNECTION_4G;
            case 7:
                return ConnectionType.CONNECTION_BLUETOOTH;
            case 9:
                return ConnectionType.CONNECTION_ETHERNET;
            default:
                return ConnectionType.CONNECTION_UNKNOWN;
        }
    }

    private String getCurrentWifiSSID(NetworkState networkState) {
        if (getCurrentConnectionType(networkState) != ConnectionType.CONNECTION_WIFI) {
            return "";
        }
        return this.wifiManagerDelegate.getWifiSSID();
    }

    public void onReceive(Context context, Intent intent) {
        NetworkState currentNetworkState = getCurrentNetworkState();
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            connectionTypeChanged(currentNetworkState);
        }
    }

    private void connectionTypeChanged(NetworkState networkState) {
        ConnectionType currentConnectionType = getCurrentConnectionType(networkState);
        String currentWifiSSID = getCurrentWifiSSID(networkState);
        if (currentConnectionType != this.connectionType || !currentWifiSSID.equals(this.wifiSSID)) {
            this.connectionType = currentConnectionType;
            this.wifiSSID = currentWifiSSID;
            Log.d(TAG, "Network connectivity changed, type is: " + this.connectionType);
            this.observer.onConnectionTypeChanged(currentConnectionType);
        }
    }

    @SuppressLint({"NewApi"})
    private static int networkToNetId(Network network) {
        return Integer.parseInt(network.toString());
    }
}
