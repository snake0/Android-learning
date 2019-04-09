package org.webrtc;

import java.util.List;
import org.webrtc.PeerConnection.IceServer;
import org.webrtc.PeerConnection.Observer;
import org.webrtc.PeerConnection.RTCConfiguration;

public class PeerConnectionFactory {
    private static final String TAG = "PeerConnectionFactory";
    private static Thread signalingThread;
    private static Thread workerThread;
    private final long nativeFactory = nativeCreatePeerConnectionFactory();

    public class Options {
        static final int ADAPTER_TYPE_CELLULAR = 4;
        static final int ADAPTER_TYPE_ETHERNET = 1;
        static final int ADAPTER_TYPE_LOOPBACK = 16;
        static final int ADAPTER_TYPE_UNKNOWN = 0;
        static final int ADAPTER_TYPE_VPN = 8;
        static final int ADAPTER_TYPE_WIFI = 2;
        public boolean disableEncryption;
        public boolean disableNetworkMonitor;
        public int networkIgnoreMask;
    }

    public static native boolean initializeAndroidGlobals(Object obj, boolean z, boolean z2, boolean z3);

    public static native void initializeFieldTrials(String str);

    public static native void initializeInternalTracer();

    private static native long nativeCreateAudioSource(long j, MediaConstraints mediaConstraints);

    private static native long nativeCreateAudioTrack(long j, String str, long j2);

    private static native long nativeCreateLocalMediaStream(long j, String str);

    private static native long nativeCreateObserver(Observer observer);

    private static native long nativeCreatePeerConnection(long j, RTCConfiguration rTCConfiguration, MediaConstraints mediaConstraints, long j2);

    private static native long nativeCreatePeerConnectionFactory();

    private static native long nativeCreateVideoSource(long j, long j2, MediaConstraints mediaConstraints);

    private static native long nativeCreateVideoTrack(long j, String str, long j2);

    private static native void nativeFreeFactory(long j);

    private static native void nativeSetVideoHwAccelerationOptions(long j, Object obj, Object obj2);

    private static native boolean nativeStartAecDump(long j, int i);

    private static native boolean nativeStartRtcEventLog(long j, int i);

    private static native void nativeStopAecDump(long j);

    private static native void nativeStopRtcEventLog(long j);

    private static native void nativeThreadsCallbacks(long j);

    public static native void shutdownInternalTracer();

    public static native boolean startInternalTracingCapture(String str);

    public static native void stopInternalTracingCapture();

    public native void nativeSetOptions(long j, Options options);

    static {
        System.loadLibrary("jingle_peerconnection_so");
    }

    public PeerConnectionFactory() {
        if (this.nativeFactory == 0) {
            throw new RuntimeException("Failed to initialize PeerConnectionFactory!");
        }
    }

    public PeerConnection createPeerConnection(RTCConfiguration rTCConfiguration, MediaConstraints mediaConstraints, Observer observer) {
        long nativeCreateObserver = nativeCreateObserver(observer);
        if (nativeCreateObserver == 0) {
            return null;
        }
        long nativeCreatePeerConnection = nativeCreatePeerConnection(this.nativeFactory, rTCConfiguration, mediaConstraints, nativeCreateObserver);
        if (nativeCreatePeerConnection == 0) {
            return null;
        }
        return new PeerConnection(nativeCreatePeerConnection, nativeCreateObserver);
    }

    public PeerConnection createPeerConnection(List<IceServer> list, MediaConstraints mediaConstraints, Observer observer) {
        return createPeerConnection(new RTCConfiguration(list), mediaConstraints, observer);
    }

    public MediaStream createLocalMediaStream(String str) {
        return new MediaStream(nativeCreateLocalMediaStream(this.nativeFactory, str));
    }

    public VideoSource createVideoSource(VideoCapturer videoCapturer, MediaConstraints mediaConstraints) {
        return new VideoSource(nativeCreateVideoSource(this.nativeFactory, videoCapturer.takeNativeVideoCapturer(), mediaConstraints));
    }

    public VideoTrack createVideoTrack(String str, VideoSource videoSource) {
        return new VideoTrack(nativeCreateVideoTrack(this.nativeFactory, str, videoSource.nativeSource));
    }

    public AudioSource createAudioSource(MediaConstraints mediaConstraints) {
        return new AudioSource(nativeCreateAudioSource(this.nativeFactory, mediaConstraints));
    }

    public AudioTrack createAudioTrack(String str, AudioSource audioSource) {
        return new AudioTrack(nativeCreateAudioTrack(this.nativeFactory, str, audioSource.nativeSource));
    }

    public boolean startAecDump(int i) {
        return nativeStartAecDump(this.nativeFactory, i);
    }

    public void stopAecDump() {
        nativeStopAecDump(this.nativeFactory);
    }

    public boolean startRtcEventLog(int i) {
        return nativeStartRtcEventLog(this.nativeFactory, i);
    }

    public void StopRtcEventLog() {
        nativeStopRtcEventLog(this.nativeFactory);
    }

    public void setOptions(Options options) {
        nativeSetOptions(this.nativeFactory, options);
    }

    @Deprecated
    public void setVideoHwAccelerationOptions(Object obj) {
        nativeSetVideoHwAccelerationOptions(this.nativeFactory, obj, obj);
    }

    public void setVideoHwAccelerationOptions(Object obj, Object obj2) {
        nativeSetVideoHwAccelerationOptions(this.nativeFactory, obj, obj2);
    }

    public void dispose() {
        nativeFreeFactory(this.nativeFactory);
        signalingThread = null;
        workerThread = null;
    }

    public void threadsCallbacks() {
        nativeThreadsCallbacks(this.nativeFactory);
    }

    private static void printStackTrace(Thread thread, String str) {
        if (thread != null) {
            StackTraceElement[] stackTrace = thread.getStackTrace();
            if (stackTrace.length > 0) {
                Logging.d(TAG, str + " stacks trace:");
                for (StackTraceElement stackTraceElement : stackTrace) {
                    Logging.d(TAG, stackTraceElement.toString());
                }
            }
        }
    }

    public static void printStackTraces() {
        printStackTrace(workerThread, "Worker thread");
        printStackTrace(signalingThread, "Signaling thread");
    }

    private static void onWorkerThreadReady() {
        workerThread = Thread.currentThread();
        Logging.d(TAG, "onWorkerThreadReady");
    }

    private static void onSignalingThreadReady() {
        signalingThread = Thread.currentThread();
        Logging.d(TAG, "onSignalingThreadReady");
    }
}
