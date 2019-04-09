package org.webrtc.voiceengine;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Process;
import java.nio.ByteBuffer;
import org.webrtc.Logging;

class WebRtcAudioTrack {
    private static final int BITS_PER_SAMPLE = 16;
    private static final int BUFFERS_PER_SECOND = 100;
    private static final int CALLBACK_BUFFER_SIZE_MS = 10;
    private static final boolean DEBUG = false;
    private static final String TAG = "WebRtcAudioTrack";
    private final AudioManager audioManager;
    private AudioTrackThread audioThread = null;
    private AudioTrack audioTrack = null;
    private ByteBuffer byteBuffer;
    private final Context context;
    private final long nativeAudioTrack;

    class AudioTrackThread extends Thread {
        private volatile boolean keepAlive = true;

        public AudioTrackThread(String str) {
            super(str);
        }

        public void run() {
            boolean z = true;
            Process.setThreadPriority(-19);
            Logging.d(WebRtcAudioTrack.TAG, "AudioTrackThread" + WebRtcAudioUtils.getThreadInfo());
            try {
                WebRtcAudioTrack.this.audioTrack.play();
                WebRtcAudioTrack.assertTrue(WebRtcAudioTrack.this.audioTrack.getPlayState() == 3);
                int capacity = WebRtcAudioTrack.this.byteBuffer.capacity();
                while (this.keepAlive) {
                    int writeOnLollipop;
                    WebRtcAudioTrack.this.nativeGetPlayoutData(capacity, WebRtcAudioTrack.this.nativeAudioTrack);
                    WebRtcAudioTrack.assertTrue(capacity <= WebRtcAudioTrack.this.byteBuffer.remaining());
                    if (WebRtcAudioUtils.runningOnLollipopOrHigher()) {
                        writeOnLollipop = writeOnLollipop(WebRtcAudioTrack.this.audioTrack, WebRtcAudioTrack.this.byteBuffer, capacity);
                    } else {
                        writeOnLollipop = writePreLollipop(WebRtcAudioTrack.this.audioTrack, WebRtcAudioTrack.this.byteBuffer, capacity);
                    }
                    if (writeOnLollipop != capacity) {
                        Logging.e(WebRtcAudioTrack.TAG, "AudioTrack.write failed: " + writeOnLollipop);
                        if (writeOnLollipop == -3) {
                            this.keepAlive = false;
                        }
                    }
                    WebRtcAudioTrack.this.byteBuffer.rewind();
                }
                try {
                    WebRtcAudioTrack.this.audioTrack.stop();
                } catch (IllegalStateException e) {
                    Logging.e(WebRtcAudioTrack.TAG, "AudioTrack.stop failed: " + e.getMessage());
                }
                if (WebRtcAudioTrack.this.audioTrack.getPlayState() != 1) {
                    z = false;
                }
                WebRtcAudioTrack.assertTrue(z);
                WebRtcAudioTrack.this.audioTrack.flush();
            } catch (IllegalStateException e2) {
                Logging.e(WebRtcAudioTrack.TAG, "AudioTrack.play failed: " + e2.getMessage());
            }
        }

        @TargetApi(21)
        private int writeOnLollipop(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
            return audioTrack.write(byteBuffer, i, 0);
        }

        private int writePreLollipop(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
            return audioTrack.write(byteBuffer.array(), byteBuffer.arrayOffset(), i);
        }

        public void joinThread() {
            this.keepAlive = false;
            while (isAlive()) {
                try {
                    join();
                } catch (InterruptedException e) {
                }
            }
        }
    }

    private native void nativeCacheDirectBufferAddress(ByteBuffer byteBuffer, long j);

    private native void nativeGetPlayoutData(int i, long j);

    WebRtcAudioTrack(Context context, long j) {
        Logging.d(TAG, "ctor" + WebRtcAudioUtils.getThreadInfo());
        this.context = context;
        this.nativeAudioTrack = j;
        this.audioManager = (AudioManager) context.getSystemService("audio");
    }

    private void initPlayout(int i, int i2) {
        boolean z;
        boolean z2 = true;
        Logging.d(TAG, "initPlayout(sampleRate=" + i + ", channels=" + i2 + ")");
        int i3 = i2 * 2;
        ByteBuffer byteBuffer = this.byteBuffer;
        this.byteBuffer = ByteBuffer.allocateDirect(i3 * (i / 100));
        Logging.d(TAG, "byteBuffer.capacity: " + this.byteBuffer.capacity());
        nativeCacheDirectBufferAddress(this.byteBuffer, this.nativeAudioTrack);
        int minBufferSize = AudioTrack.getMinBufferSize(i, 4, 2);
        Logging.d(TAG, "AudioTrack.getMinBufferSize: " + minBufferSize);
        assertTrue(this.audioTrack == null);
        if (this.byteBuffer.capacity() < minBufferSize) {
            z = true;
        } else {
            z = false;
        }
        assertTrue(z);
        try {
            this.audioTrack = new AudioTrack(0, i, 4, 2, minBufferSize, 1);
            if (this.audioTrack.getState() == 1) {
                z = true;
            } else {
                z = false;
            }
            assertTrue(z);
            if (this.audioTrack.getPlayState() == 1) {
                z = true;
            } else {
                z = false;
            }
            assertTrue(z);
            if (this.audioTrack.getStreamType() != 0) {
                z2 = false;
            }
            assertTrue(z2);
        } catch (IllegalArgumentException e) {
            Logging.d(TAG, e.getMessage());
        }
    }

    private boolean startPlayout() {
        boolean z;
        boolean z2 = false;
        Logging.d(TAG, "startPlayout");
        if (this.audioTrack != null) {
            z = true;
        } else {
            z = false;
        }
        assertTrue(z);
        if (this.audioThread == null) {
            z2 = true;
        }
        assertTrue(z2);
        this.audioThread = new AudioTrackThread("AudioTrackJavaThread");
        this.audioThread.start();
        return true;
    }

    private boolean stopPlayout() {
        Logging.d(TAG, "stopPlayout");
        assertTrue(this.audioThread != null);
        this.audioThread.joinThread();
        this.audioThread = null;
        if (this.audioTrack != null) {
            this.audioTrack.release();
            this.audioTrack = null;
        }
        return true;
    }

    private int getStreamMaxVolume() {
        boolean z;
        Logging.d(TAG, "getStreamMaxVolume");
        if (this.audioManager != null) {
            z = true;
        } else {
            z = false;
        }
        assertTrue(z);
        return this.audioManager.getStreamMaxVolume(0);
    }

    private boolean setStreamVolume(int i) {
        Logging.d(TAG, "setStreamVolume(" + i + ")");
        assertTrue(this.audioManager != null);
        if (isVolumeFixed()) {
            Logging.e(TAG, "The device implements a fixed volume policy.");
            return false;
        }
        this.audioManager.setStreamVolume(0, i, 0);
        return true;
    }

    @TargetApi(21)
    private boolean isVolumeFixed() {
        if (WebRtcAudioUtils.runningOnLollipopOrHigher()) {
            return this.audioManager.isVolumeFixed();
        }
        return false;
    }

    private int getStreamVolume() {
        boolean z;
        Logging.d(TAG, "getStreamVolume");
        if (this.audioManager != null) {
            z = true;
        } else {
            z = false;
        }
        assertTrue(z);
        return this.audioManager.getStreamVolume(0);
    }

    private static void assertTrue(boolean z) {
        if (!z) {
            throw new AssertionError("Expected condition to be true");
        }
    }
}
