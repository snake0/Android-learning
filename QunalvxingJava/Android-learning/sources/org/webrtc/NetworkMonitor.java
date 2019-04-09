package org.webrtc;

import android.content.Context;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import org.webrtc.NetworkMonitorAutoDetect.ConnectionType;
import org.webrtc.NetworkMonitorAutoDetect.Observer;

public class NetworkMonitor {
    private static final String TAG = "NetworkMonitor";
    private static NetworkMonitor instance;
    private final Context applicationContext;
    private NetworkMonitorAutoDetect autoDetector;
    private ConnectionType currentConnectionType = ConnectionType.CONNECTION_UNKNOWN;
    private final ArrayList<Long> nativeNetworkObservers;
    private final ArrayList<NetworkObserver> networkObservers;

    public interface NetworkObserver {
        void onConnectionTypeChanged(ConnectionType connectionType);
    }

    private native long nativeCreateNetworkMonitor();

    private native void nativeNotifyConnectionTypeChanged(long j);

    private NetworkMonitor(Context context) {
        assertIsTrue(context != null);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        this.applicationContext = context;
        this.nativeNetworkObservers = new ArrayList();
        this.networkObservers = new ArrayList();
    }

    public static NetworkMonitor init(Context context) {
        if (!isInitialized()) {
            instance = new NetworkMonitor(context);
        }
        return instance;
    }

    public static boolean isInitialized() {
        return instance != null;
    }

    public static NetworkMonitor getInstance() {
        return instance;
    }

    public static void setAutoDetectConnectivityState(boolean z) {
        getInstance().setAutoDetectConnectivityStateInternal(z);
    }

    private static void assertIsTrue(boolean z) {
        if (!z) {
            throw new AssertionError("Expected to be true");
        }
    }

    private void startMonitoring(long j) {
        Log.d(TAG, "Start monitoring from native observer " + j);
        this.nativeNetworkObservers.add(Long.valueOf(j));
        setAutoDetectConnectivityStateInternal(true);
    }

    private void stopMonitoring(long j) {
        Log.d(TAG, "Stop monitoring from native observer " + j);
        setAutoDetectConnectivityStateInternal(false);
        this.nativeNetworkObservers.remove(Long.valueOf(j));
    }

    private ConnectionType getCurrentConnectionType() {
        return this.currentConnectionType;
    }

    private int getCurrentDefaultNetId() {
        return this.autoDetector == null ? -1 : this.autoDetector.getDefaultNetId();
    }

    private void destroyAutoDetector() {
        if (this.autoDetector != null) {
            this.autoDetector.destroy();
            this.autoDetector = null;
        }
    }

    private void setAutoDetectConnectivityStateInternal(boolean z) {
        if (!z) {
            destroyAutoDetector();
        } else if (this.autoDetector == null) {
            this.autoDetector = new NetworkMonitorAutoDetect(new Observer() {
                public void onConnectionTypeChanged(ConnectionType connectionType) {
                    NetworkMonitor.this.updateCurrentConnectionType(connectionType);
                }
            }, this.applicationContext);
            updateCurrentConnectionType(this.autoDetector.getCurrentConnectionType(this.autoDetector.getCurrentNetworkState()));
        }
    }

    private void updateCurrentConnectionType(ConnectionType connectionType) {
        this.currentConnectionType = connectionType;
        notifyObserversOfConnectionTypeChange(connectionType);
    }

    private void notifyObserversOfConnectionTypeChange(ConnectionType connectionType) {
        Iterator it = this.nativeNetworkObservers.iterator();
        while (it.hasNext()) {
            nativeNotifyConnectionTypeChanged(((Long) it.next()).longValue());
        }
        it = this.networkObservers.iterator();
        while (it.hasNext()) {
            ((NetworkObserver) it.next()).onConnectionTypeChanged(connectionType);
        }
    }

    public static void addNetworkObserver(NetworkObserver networkObserver) {
        getInstance().addNetworkObserverInternal(networkObserver);
    }

    private void addNetworkObserverInternal(NetworkObserver networkObserver) {
        this.networkObservers.add(networkObserver);
    }

    public static void removeNetworkObserver(NetworkObserver networkObserver) {
        getInstance().removeNetworkObserverInternal(networkObserver);
    }

    private void removeNetworkObserverInternal(NetworkObserver networkObserver) {
        this.networkObservers.remove(networkObserver);
    }

    public static boolean isOnline() {
        ConnectionType currentConnectionType = getInstance().getCurrentConnectionType();
        return (currentConnectionType == ConnectionType.CONNECTION_UNKNOWN || currentConnectionType == ConnectionType.CONNECTION_NONE) ? false : true;
    }

    static void resetInstanceForTests(Context context) {
        instance = new NetworkMonitor(context);
    }

    public static NetworkMonitorAutoDetect getAutoDetectorForTest() {
        return getInstance().autoDetector;
    }
}
