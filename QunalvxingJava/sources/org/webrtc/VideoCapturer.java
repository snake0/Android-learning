package org.webrtc;

public class VideoCapturer {
    private long nativeVideoCapturer;

    private static native void free(long j);

    private static native Object nativeCreateVideoCapturer(String str);

    protected VideoCapturer() {
    }

    public static VideoCapturer create(String str) {
        Object nativeCreateVideoCapturer = nativeCreateVideoCapturer(str);
        if (nativeCreateVideoCapturer != null) {
            return (VideoCapturer) nativeCreateVideoCapturer;
        }
        return null;
    }

    /* Access modifiers changed, original: protected */
    public void setNativeCapturer(long j) {
        this.nativeVideoCapturer = j;
    }

    /* Access modifiers changed, original: 0000 */
    public long takeNativeVideoCapturer() {
        if (this.nativeVideoCapturer == 0) {
            throw new RuntimeException("Capturer can only be taken once!");
        }
        long j = this.nativeVideoCapturer;
        this.nativeVideoCapturer = 0;
        return j;
    }

    public void dispose() {
        if (this.nativeVideoCapturer != 0) {
            free(this.nativeVideoCapturer);
        }
    }
}
