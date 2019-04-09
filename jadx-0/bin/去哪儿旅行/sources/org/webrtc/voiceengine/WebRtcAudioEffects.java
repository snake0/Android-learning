package org.webrtc.voiceengine;

import android.annotation.TargetApi;
import android.media.audiofx.AcousticEchoCanceler;
import android.media.audiofx.AudioEffect;
import android.media.audiofx.AudioEffect.Descriptor;
import android.media.audiofx.AutomaticGainControl;
import android.media.audiofx.NoiseSuppressor;
import android.os.Build;
import java.util.UUID;
import org.webrtc.Logging;

class WebRtcAudioEffects {
    private static final UUID AOSP_ACOUSTIC_ECHO_CANCELER = UUID.fromString("bb392ec0-8d4d-11e0-a896-0002a5d5c51b");
    private static final UUID AOSP_AUTOMATIC_GAIN_CONTROL = UUID.fromString("aa8130e0-66fc-11e0-bad0-0002a5d5c51b");
    private static final UUID AOSP_NOISE_SUPPRESSOR = UUID.fromString("c06c8400-8e06-11e0-9cb6-0002a5d5c51b");
    private static final boolean DEBUG = false;
    private static final String TAG = "WebRtcAudioEffects";
    private static Boolean canUseAcousticEchoCanceler = null;
    private static Boolean canUseAutomaticGainControl = null;
    private static Boolean canUseNoiseSuppressor = null;
    private AcousticEchoCanceler aec = null;
    private AutomaticGainControl agc = null;
    private NoiseSuppressor ns = null;
    private boolean shouldEnableAec = false;
    private boolean shouldEnableAgc = false;
    private boolean shouldEnableNs = false;

    public static boolean isAcousticEchoCancelerSupported() {
        return WebRtcAudioUtils.runningOnJellyBeanOrHigher() && AcousticEchoCanceler.isAvailable();
    }

    public static boolean isAutomaticGainControlSupported() {
        return WebRtcAudioUtils.runningOnJellyBeanOrHigher() && AutomaticGainControl.isAvailable();
    }

    public static boolean isNoiseSuppressorSupported() {
        return WebRtcAudioUtils.runningOnJellyBeanOrHigher() && NoiseSuppressor.isAvailable();
    }

    public static boolean isAcousticEchoCancelerBlacklisted() {
        boolean contains = WebRtcAudioUtils.getBlackListedModelsForAecUsage().contains(Build.MODEL);
        if (contains) {
            Logging.w(TAG, Build.MODEL + " is blacklisted for HW AEC usage!");
        }
        return contains;
    }

    public static boolean isAutomaticGainControlBlacklisted() {
        boolean contains = WebRtcAudioUtils.getBlackListedModelsForAgcUsage().contains(Build.MODEL);
        if (contains) {
            Logging.w(TAG, Build.MODEL + " is blacklisted for HW AGC usage!");
        }
        return contains;
    }

    public static boolean isNoiseSuppressorBlacklisted() {
        boolean contains = WebRtcAudioUtils.getBlackListedModelsForNsUsage().contains(Build.MODEL);
        if (contains) {
            Logging.w(TAG, Build.MODEL + " is blacklisted for HW NS usage!");
        }
        return contains;
    }

    @TargetApi(18)
    private static boolean isAcousticEchoCancelerExcludedByUUID() {
        for (Descriptor descriptor : AudioEffect.queryEffects()) {
            if (descriptor.type.equals(AudioEffect.EFFECT_TYPE_AEC) && descriptor.uuid.equals(AOSP_ACOUSTIC_ECHO_CANCELER)) {
                return true;
            }
        }
        return false;
    }

    @TargetApi(18)
    private static boolean isAutomaticGainControlExcludedByUUID() {
        for (Descriptor descriptor : AudioEffect.queryEffects()) {
            if (descriptor.type.equals(AudioEffect.EFFECT_TYPE_AGC) && descriptor.uuid.equals(AOSP_AUTOMATIC_GAIN_CONTROL)) {
                return true;
            }
        }
        return false;
    }

    @TargetApi(18)
    private static boolean isNoiseSuppressorExcludedByUUID() {
        for (Descriptor descriptor : AudioEffect.queryEffects()) {
            if (descriptor.type.equals(AudioEffect.EFFECT_TYPE_NS) && descriptor.uuid.equals(AOSP_NOISE_SUPPRESSOR)) {
                return true;
            }
        }
        return false;
    }

    public static boolean canUseAcousticEchoCanceler() {
        if (canUseAcousticEchoCanceler == null) {
            boolean z = (!isAcousticEchoCancelerSupported() || WebRtcAudioUtils.useWebRtcBasedAcousticEchoCanceler() || isAcousticEchoCancelerBlacklisted() || isAcousticEchoCancelerExcludedByUUID()) ? false : true;
            canUseAcousticEchoCanceler = new Boolean(z);
            Logging.d(TAG, "canUseAcousticEchoCanceler: " + canUseAcousticEchoCanceler);
        }
        return canUseAcousticEchoCanceler.booleanValue();
    }

    public static boolean canUseAutomaticGainControl() {
        if (canUseAutomaticGainControl == null) {
            boolean z = (!isAutomaticGainControlSupported() || WebRtcAudioUtils.useWebRtcBasedAutomaticGainControl() || isAutomaticGainControlBlacklisted() || isAutomaticGainControlExcludedByUUID()) ? false : true;
            canUseAutomaticGainControl = new Boolean(z);
            Logging.d(TAG, "canUseAutomaticGainControl: " + canUseAutomaticGainControl);
        }
        return canUseAutomaticGainControl.booleanValue();
    }

    public static boolean canUseNoiseSuppressor() {
        if (canUseNoiseSuppressor == null) {
            boolean z = (!isNoiseSuppressorSupported() || WebRtcAudioUtils.useWebRtcBasedNoiseSuppressor() || isNoiseSuppressorBlacklisted() || isNoiseSuppressorExcludedByUUID()) ? false : true;
            canUseNoiseSuppressor = new Boolean(z);
            Logging.d(TAG, "canUseNoiseSuppressor: " + canUseNoiseSuppressor);
        }
        return canUseNoiseSuppressor.booleanValue();
    }

    static WebRtcAudioEffects create() {
        if (WebRtcAudioUtils.runningOnJellyBeanOrHigher()) {
            return new WebRtcAudioEffects();
        }
        Logging.w(TAG, "API level 16 or higher is required!");
        return null;
    }

    private WebRtcAudioEffects() {
        Logging.d(TAG, "ctor" + WebRtcAudioUtils.getThreadInfo());
    }

    public boolean setAEC(boolean z) {
        Logging.d(TAG, "setAEC(" + z + ")");
        if (!canUseAcousticEchoCanceler()) {
            Logging.w(TAG, "Platform AEC is not supported");
            this.shouldEnableAec = false;
            return false;
        } else if (this.aec == null || z == this.shouldEnableAec) {
            this.shouldEnableAec = z;
            return true;
        } else {
            Logging.e(TAG, "Platform AEC state can't be modified while recording");
            return false;
        }
    }

    public boolean setAGC(boolean z) {
        Logging.d(TAG, "setAGC(" + z + ")");
        if (!canUseAutomaticGainControl()) {
            Logging.w(TAG, "Platform AGC is not supported");
            this.shouldEnableAgc = false;
            return false;
        } else if (this.agc == null || z == this.shouldEnableAgc) {
            this.shouldEnableAgc = z;
            return true;
        } else {
            Logging.e(TAG, "Platform AGC state can't be modified while recording");
            return false;
        }
    }

    public boolean setNS(boolean z) {
        Logging.d(TAG, "setNS(" + z + ")");
        if (!canUseNoiseSuppressor()) {
            Logging.w(TAG, "Platform NS is not supported");
            this.shouldEnableNs = false;
            return false;
        } else if (this.ns == null || z == this.shouldEnableNs) {
            this.shouldEnableNs = z;
            return true;
        } else {
            Logging.e(TAG, "Platform NS state can't be modified while recording");
            return false;
        }
    }

    public void enable(int i) {
        boolean z;
        boolean enabled;
        boolean z2 = true;
        Logging.d(TAG, "enable(audioSession=" + i + ")");
        assertTrue(this.aec == null);
        if (this.agc == null) {
            z = true;
        } else {
            z = false;
        }
        assertTrue(z);
        if (this.ns == null) {
            z = true;
        } else {
            z = false;
        }
        assertTrue(z);
        for (Descriptor descriptor : AudioEffect.queryEffects()) {
            if (effectTypeIsVoIP(descriptor.type)) {
                Logging.d(TAG, "name: " + descriptor.name + ", " + "mode: " + descriptor.connectMode + ", " + "implementor: " + descriptor.implementor + ", " + "UUID: " + descriptor.uuid);
            }
        }
        if (isAcousticEchoCancelerSupported()) {
            this.aec = AcousticEchoCanceler.create(i);
            if (this.aec != null) {
                enabled = this.aec.getEnabled();
                z = this.shouldEnableAec && canUseAcousticEchoCanceler();
                if (this.aec.setEnabled(z) != 0) {
                    Logging.e(TAG, "Failed to set the AcousticEchoCanceler state");
                }
                Logging.d(TAG, "AcousticEchoCanceler: was " + (enabled ? "enabled" : "disabled") + ", enable: " + z + ", is now: " + (this.aec.getEnabled() ? "enabled" : "disabled"));
            } else {
                Logging.e(TAG, "Failed to create the AcousticEchoCanceler instance");
            }
        }
        if (isAutomaticGainControlSupported()) {
            this.agc = AutomaticGainControl.create(i);
            if (this.agc != null) {
                enabled = this.agc.getEnabled();
                if (this.shouldEnableAgc && canUseAutomaticGainControl()) {
                    z = true;
                } else {
                    z = false;
                }
                if (this.agc.setEnabled(z) != 0) {
                    Logging.e(TAG, "Failed to set the AutomaticGainControl state");
                }
                Logging.d(TAG, "AutomaticGainControl: was " + (enabled ? "enabled" : "disabled") + ", enable: " + z + ", is now: " + (this.agc.getEnabled() ? "enabled" : "disabled"));
            } else {
                Logging.e(TAG, "Failed to create the AutomaticGainControl instance");
            }
        }
        if (isNoiseSuppressorSupported()) {
            this.ns = NoiseSuppressor.create(i);
            if (this.ns != null) {
                z = this.ns.getEnabled();
                if (!(this.shouldEnableNs && canUseNoiseSuppressor())) {
                    z2 = false;
                }
                if (this.ns.setEnabled(z2) != 0) {
                    Logging.e(TAG, "Failed to set the NoiseSuppressor state");
                }
                Logging.d(TAG, "NoiseSuppressor: was " + (z ? "enabled" : "disabled") + ", enable: " + z2 + ", is now: " + (this.ns.getEnabled() ? "enabled" : "disabled"));
                return;
            }
            Logging.e(TAG, "Failed to create the NoiseSuppressor instance");
        }
    }

    public void release() {
        Logging.d(TAG, "release");
        if (this.aec != null) {
            this.aec.release();
            this.aec = null;
        }
        if (this.agc != null) {
            this.agc.release();
            this.agc = null;
        }
        if (this.ns != null) {
            this.ns.release();
            this.ns = null;
        }
    }

    @TargetApi(18)
    private boolean effectTypeIsVoIP(UUID uuid) {
        if (!WebRtcAudioUtils.runningOnJellyBeanMR2OrHigher()) {
            return false;
        }
        if ((AudioEffect.EFFECT_TYPE_AEC.equals(uuid) && isAcousticEchoCancelerSupported()) || ((AudioEffect.EFFECT_TYPE_AGC.equals(uuid) && isAutomaticGainControlSupported()) || (AudioEffect.EFFECT_TYPE_NS.equals(uuid) && isNoiseSuppressorSupported()))) {
            return true;
        }
        return false;
    }

    private static void assertTrue(boolean z) {
        if (!z) {
            throw new AssertionError("Expected condition to be true");
        }
    }
}
