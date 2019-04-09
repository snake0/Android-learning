package org.webrtc;

public class MediaStreamTrack {
    final long nativeTrack;

    public enum State {
        INITIALIZING,
        LIVE,
        ENDED,
        FAILED
    }

    private static native void free(long j);

    private static native boolean nativeEnabled(long j);

    private static native String nativeId(long j);

    private static native String nativeKind(long j);

    private static native boolean nativeSetEnabled(long j, boolean z);

    private static native boolean nativeSetState(long j, int i);

    private static native State nativeState(long j);

    public MediaStreamTrack(long j) {
        this.nativeTrack = j;
    }

    public String id() {
        return nativeId(this.nativeTrack);
    }

    public String kind() {
        return nativeKind(this.nativeTrack);
    }

    public boolean enabled() {
        return nativeEnabled(this.nativeTrack);
    }

    public boolean setEnabled(boolean z) {
        return nativeSetEnabled(this.nativeTrack, z);
    }

    public State state() {
        return nativeState(this.nativeTrack);
    }

    public boolean setState(State state) {
        return nativeSetState(this.nativeTrack, state.ordinal());
    }

    public void dispose() {
        free(this.nativeTrack);
    }
}
