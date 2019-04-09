package org.webrtc;

public class RtpReceiver {
    private MediaStreamTrack cachedTrack;
    final long nativeRtpReceiver;

    private static native void free(long j);

    private static native long nativeGetTrack(long j);

    private static native String nativeId(long j);

    public RtpReceiver(long j) {
        this.nativeRtpReceiver = j;
        this.cachedTrack = new MediaStreamTrack(nativeGetTrack(j));
    }

    public MediaStreamTrack track() {
        return this.cachedTrack;
    }

    public String id() {
        return nativeId(this.nativeRtpReceiver);
    }

    public void dispose() {
        this.cachedTrack.dispose();
        free(this.nativeRtpReceiver);
    }
}
