package org.webrtc;

public class RtpSender {
    private MediaStreamTrack cachedTrack;
    final long nativeRtpSender;

    private static native void free(long j);

    private static native long nativeGetTrack(long j);

    private static native String nativeId(long j);

    private static native void nativeSetTrack(long j, long j2);

    public RtpSender(long j) {
        this.nativeRtpSender = j;
        long nativeGetTrack = nativeGetTrack(j);
        this.cachedTrack = nativeGetTrack == 0 ? null : new MediaStreamTrack(nativeGetTrack);
    }

    public void setTrack(MediaStreamTrack mediaStreamTrack) {
        if (this.cachedTrack != null) {
            this.cachedTrack.dispose();
        }
        this.cachedTrack = mediaStreamTrack;
        nativeSetTrack(this.nativeRtpSender, mediaStreamTrack == null ? 0 : mediaStreamTrack.nativeTrack);
    }

    public MediaStreamTrack track() {
        return this.cachedTrack;
    }

    public String id() {
        return nativeId(this.nativeRtpSender);
    }

    public void dispose() {
        if (this.cachedTrack != null) {
            this.cachedTrack.dispose();
        }
        free(this.nativeRtpSender);
    }
}
