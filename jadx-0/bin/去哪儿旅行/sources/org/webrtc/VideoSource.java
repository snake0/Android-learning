package org.webrtc;

public class VideoSource extends MediaSource {
    private static native void restart(long j);

    private static native void stop(long j);

    public VideoSource(long j) {
        super(j);
    }

    public void stop() {
        stop(this.nativeSource);
    }

    public void restart() {
        restart(this.nativeSource);
    }

    public void dispose() {
        super.dispose();
    }
}
