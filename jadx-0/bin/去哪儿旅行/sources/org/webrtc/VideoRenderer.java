package org.webrtc;

import java.nio.ByteBuffer;

public class VideoRenderer {
    private final boolean isWrappedVideoRenderer = false;
    long nativeVideoRenderer;

    public interface Callbacks {
        void renderFrame(I420Frame i420Frame);
    }

    public class I420Frame {
        public final int height;
        private long nativeFramePointer;
        public int rotationDegree;
        public final float[] samplingMatrix;
        public int textureId;
        public final int width;
        public final boolean yuvFrame;
        public ByteBuffer[] yuvPlanes;
        public final int[] yuvStrides;

        I420Frame(int i, int i2, int i3, int[] iArr, ByteBuffer[] byteBufferArr, long j) {
            this.width = i;
            this.height = i2;
            this.yuvStrides = iArr;
            this.yuvPlanes = byteBufferArr;
            this.yuvFrame = true;
            this.rotationDegree = i3;
            this.nativeFramePointer = j;
            if (i3 % 90 != 0) {
                throw new IllegalArgumentException("Rotation degree not multiple of 90: " + i3);
            }
            this.samplingMatrix = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f};
        }

        I420Frame(int i, int i2, int i3, int i4, float[] fArr, long j) {
            this.width = i;
            this.height = i2;
            this.yuvStrides = null;
            this.yuvPlanes = null;
            this.samplingMatrix = fArr;
            this.textureId = i4;
            this.yuvFrame = false;
            this.rotationDegree = i3;
            this.nativeFramePointer = j;
            if (i3 % 90 != 0) {
                throw new IllegalArgumentException("Rotation degree not multiple of 90: " + i3);
            }
        }

        public int rotatedWidth() {
            return this.rotationDegree % 180 == 0 ? this.width : this.height;
        }

        public int rotatedHeight() {
            return this.rotationDegree % 180 == 0 ? this.height : this.width;
        }

        public String toString() {
            return this.width + MapViewConstants.ATTR_X + this.height + ":" + this.yuvStrides[0] + ":" + this.yuvStrides[1] + ":" + this.yuvStrides[2];
        }
    }

    private static native void freeGuiVideoRenderer(long j);

    private static native void freeWrappedVideoRenderer(long j);

    public static native void nativeCopyPlane(ByteBuffer byteBuffer, int i, int i2, int i3, ByteBuffer byteBuffer2, int i4);

    private static native long nativeCreateGuiVideoRenderer(int i, int i2);

    private static native long nativeWrapVideoRenderer(Callbacks callbacks);

    private static native void releaseNativeFrame(long j);

    public static void renderFrameDone(I420Frame i420Frame) {
        i420Frame.yuvPlanes = null;
        i420Frame.textureId = 0;
        if (i420Frame.nativeFramePointer != 0) {
            releaseNativeFrame(i420Frame.nativeFramePointer);
            i420Frame.nativeFramePointer = 0;
        }
    }

    public static VideoRenderer createGui(int i, int i2) {
        long nativeCreateGuiVideoRenderer = nativeCreateGuiVideoRenderer(i, i2);
        if (nativeCreateGuiVideoRenderer == 0) {
            return null;
        }
        return new VideoRenderer(nativeCreateGuiVideoRenderer);
    }

    public VideoRenderer(Callbacks callbacks) {
        this.nativeVideoRenderer = nativeWrapVideoRenderer(callbacks);
    }

    private VideoRenderer(long j) {
        this.nativeVideoRenderer = j;
    }

    public void dispose() {
        if (this.nativeVideoRenderer != 0) {
            if (this.isWrappedVideoRenderer) {
                freeWrappedVideoRenderer(this.nativeVideoRenderer);
            } else {
                freeGuiVideoRenderer(this.nativeVideoRenderer);
            }
            this.nativeVideoRenderer = 0;
        }
    }
}
