package org.webrtc.voiceengine;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Process;
import java.util.Arrays;
import java.util.List;
import org.webrtc.Logging;

public final class WebRtcAudioUtils {
    private static final String[] BLACKLISTED_AEC_MODELS = new String[]{"Nexus 5", "D6503", "ONE A2005"};
    private static final String[] BLACKLISTED_AGC_MODELS = new String[]{"Nexus 10", "Nexus 9"};
    private static final String[] BLACKLISTED_NS_MODELS = new String[]{"Nexus 10", "Nexus 9", "Nexus 5", "ONE A2005"};
    private static final String[] BLACKLISTED_OPEN_SL_ES_MODELS = new String[0];
    private static final int DEFAULT_SAMPLE_RATE_HZ = 16000;
    private static final String TAG = "WebRtcAudioUtils";
    private static int defaultSampleRateHz = 16000;
    private static boolean isDefaultSampleRateOverridden = false;
    private static boolean useWebRtcBasedAcousticEchoCanceler = false;
    private static boolean useWebRtcBasedAutomaticGainControl = false;
    private static boolean useWebRtcBasedNoiseSuppressor = false;

    public static synchronized void setWebRtcBasedAcousticEchoCanceler(boolean z) {
        synchronized (WebRtcAudioUtils.class) {
            useWebRtcBasedAcousticEchoCanceler = z;
        }
    }

    public static synchronized void setWebRtcBasedAutomaticGainControl(boolean z) {
        synchronized (WebRtcAudioUtils.class) {
            useWebRtcBasedAutomaticGainControl = z;
        }
    }

    public static synchronized void setWebRtcBasedNoiseSuppressor(boolean z) {
        synchronized (WebRtcAudioUtils.class) {
            useWebRtcBasedNoiseSuppressor = z;
        }
    }

    public static synchronized boolean useWebRtcBasedAcousticEchoCanceler() {
        boolean z;
        synchronized (WebRtcAudioUtils.class) {
            if (useWebRtcBasedAcousticEchoCanceler) {
                Logging.w(TAG, "Overriding default behavior; now using WebRTC AEC!");
            }
            z = useWebRtcBasedAcousticEchoCanceler;
        }
        return z;
    }

    public static synchronized boolean useWebRtcBasedAutomaticGainControl() {
        boolean z;
        synchronized (WebRtcAudioUtils.class) {
            if (useWebRtcBasedAutomaticGainControl) {
                Logging.w(TAG, "Overriding default behavior; now using WebRTC AGC!");
            }
            z = useWebRtcBasedAutomaticGainControl;
        }
        return z;
    }

    public static synchronized boolean useWebRtcBasedNoiseSuppressor() {
        boolean z;
        synchronized (WebRtcAudioUtils.class) {
            if (useWebRtcBasedNoiseSuppressor) {
                Logging.w(TAG, "Overriding default behavior; now using WebRTC NS!");
            }
            z = useWebRtcBasedNoiseSuppressor;
        }
        return z;
    }

    public static synchronized void setDefaultSampleRateHz(int i) {
        synchronized (WebRtcAudioUtils.class) {
            isDefaultSampleRateOverridden = true;
            defaultSampleRateHz = i;
        }
    }

    public static synchronized boolean isDefaultSampleRateOverridden() {
        boolean z;
        synchronized (WebRtcAudioUtils.class) {
            z = isDefaultSampleRateOverridden;
        }
        return z;
    }

    public static synchronized int getDefaultSampleRateHz() {
        int i;
        synchronized (WebRtcAudioUtils.class) {
            i = defaultSampleRateHz;
        }
        return i;
    }

    public static List<String> getBlackListedModelsForAecUsage() {
        return Arrays.asList(BLACKLISTED_AEC_MODELS);
    }

    public static List<String> getBlackListedModelsForAgcUsage() {
        return Arrays.asList(BLACKLISTED_AGC_MODELS);
    }

    public static List<String> getBlackListedModelsForNsUsage() {
        return Arrays.asList(BLACKLISTED_NS_MODELS);
    }

    public static boolean runningOnGingerBreadOrHigher() {
        return VERSION.SDK_INT >= 9;
    }

    public static boolean runningOnJellyBeanOrHigher() {
        return VERSION.SDK_INT >= 16;
    }

    public static boolean runningOnJellyBeanMR1OrHigher() {
        return VERSION.SDK_INT >= 17;
    }

    public static boolean runningOnJellyBeanMR2OrHigher() {
        return VERSION.SDK_INT >= 18;
    }

    public static boolean runningOnLollipopOrHigher() {
        return VERSION.SDK_INT >= 21;
    }

    public static String getThreadInfo() {
        return "@[name=" + Thread.currentThread().getName() + ", id=" + Thread.currentThread().getId() + "]";
    }

    public static boolean runningOnEmulator() {
        return Build.HARDWARE.equals("goldfish") && Build.BRAND.startsWith("generic_");
    }

    public static boolean deviceIsBlacklistedForOpenSLESUsage() {
        return Arrays.asList(BLACKLISTED_OPEN_SL_ES_MODELS).contains(Build.MODEL);
    }

    public static void logDeviceInfo(String str) {
        Logging.d(str, "Android SDK: " + VERSION.SDK_INT + ", " + "Release: " + VERSION.RELEASE + ", " + "Brand: " + Build.BRAND + ", " + "Device: " + Build.DEVICE + ", " + "Id: " + Build.ID + ", " + "Hardware: " + Build.HARDWARE + ", " + "Manufacturer: " + Build.MANUFACTURER + ", " + "Model: " + Build.MODEL + ", " + "Product: " + Build.PRODUCT);
    }

    public static boolean hasPermission(Context context, String str) {
        return context.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }
}
