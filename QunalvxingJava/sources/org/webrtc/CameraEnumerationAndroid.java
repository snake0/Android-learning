package org.webrtc;

import android.graphics.ImageFormat;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import qunar.sdk.mapapi.entity.QMarker;

public class CameraEnumerationAndroid {
    private static final String TAG = "CameraEnumerationAndroid";
    private static Enumerator enumerator = new CameraEnumerator();

    public interface Enumerator {
        List<CaptureFormat> getSupportedFormats(int i);
    }

    abstract class ClosestComparator<T> implements Comparator<T> {
        public abstract int diff(T t);

        private ClosestComparator() {
        }

        /* synthetic */ ClosestComparator(AnonymousClass1 anonymousClass1) {
            this();
        }

        public int compare(T t, T t2) {
            return diff(t) - diff(t2);
        }
    }

    public class CaptureFormat {
        public final int height;
        public final int imageFormat = 17;
        public final int maxFramerate;
        public final int minFramerate;
        public final int width;

        public CaptureFormat(int i, int i2, int i3, int i4) {
            this.width = i;
            this.height = i2;
            this.minFramerate = i3;
            this.maxFramerate = i4;
        }

        public int frameSize() {
            return frameSize(this.width, this.height, 17);
        }

        public static int frameSize(int i, int i2, int i3) {
            if (i3 == 17) {
                return ((i * i2) * ImageFormat.getBitsPerPixel(i3)) / 8;
            }
            throw new UnsupportedOperationException("Don't know how to calculate the frame size of non-NV21 image formats.");
        }

        public String toString() {
            return this.width + MapViewConstants.ATTR_X + this.height + "@[" + this.minFramerate + ":" + this.maxFramerate + "]";
        }

        public boolean isSameFormat(CaptureFormat captureFormat) {
            if (captureFormat != null && this.width == captureFormat.width && this.height == captureFormat.height && this.maxFramerate == captureFormat.maxFramerate && this.minFramerate == captureFormat.minFramerate) {
                return true;
            }
            return false;
        }
    }

    public static synchronized void setEnumerator(Enumerator enumerator) {
        synchronized (CameraEnumerationAndroid.class) {
            enumerator = enumerator;
        }
    }

    public static synchronized List<CaptureFormat> getSupportedFormats(int i) {
        List supportedFormats;
        synchronized (CameraEnumerationAndroid.class) {
            supportedFormats = enumerator.getSupportedFormats(i);
        }
        return supportedFormats;
    }

    public static String[] getDeviceNames() {
        String[] strArr = new String[Camera.getNumberOfCameras()];
        for (int i = 0; i < Camera.getNumberOfCameras(); i++) {
            strArr[i] = getDeviceName(i);
        }
        return strArr;
    }

    public static int getDeviceCount() {
        return Camera.getNumberOfCameras();
    }

    public static String getDeviceName(int i) {
        CameraInfo cameraInfo = new CameraInfo();
        try {
            Camera.getCameraInfo(i, cameraInfo);
            return "Camera " + i + ", Facing " + (cameraInfo.facing == 1 ? "front" : "back") + ", Orientation " + cameraInfo.orientation;
        } catch (Exception e) {
            Logging.e(TAG, "getCameraInfo failed on index " + i, e);
            return null;
        }
    }

    public static String getNameOfFrontFacingDevice() {
        return getNameOfDevice(1);
    }

    public static String getNameOfBackFacingDevice() {
        return getNameOfDevice(0);
    }

    public static String getSupportedFormatsAsJson(int i) {
        List<CaptureFormat> supportedFormats = getSupportedFormats(i);
        JSONArray jSONArray = new JSONArray();
        for (CaptureFormat captureFormat : supportedFormats) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", captureFormat.width);
            jSONObject.put(QMarker.MARKER_HEIGHT, captureFormat.height);
            jSONObject.put("framerate", (captureFormat.maxFramerate + 999) / 1000);
            jSONArray.put(jSONObject);
        }
        Logging.d(TAG, "Supported formats for camera " + i + ": " + jSONArray.toString(2));
        return jSONArray.toString();
    }

    public static int[] getFramerateRange(Parameters parameters, final int i) {
        List supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
        if (!supportedPreviewFpsRange.isEmpty()) {
            return (int[]) Collections.min(supportedPreviewFpsRange, new ClosestComparator<int[]>() {
                /* Access modifiers changed, original: 0000 */
                public int diff(int[] iArr) {
                    return iArr[0] + (Math.abs(i - iArr[1]) * 10);
                }
            });
        }
        Logging.w(TAG, "No supported preview fps range");
        return new int[]{0, 0};
    }

    public static Size getClosestSupportedSize(List<Size> list, final int i, final int i2) {
        return (Size) Collections.min(list, new ClosestComparator<Size>() {
            /* Access modifiers changed, original: 0000 */
            public int diff(Size size) {
                return Math.abs(i - size.width) + Math.abs(i2 - size.height);
            }
        });
    }

    private static String getNameOfDevice(int i) {
        CameraInfo cameraInfo = new CameraInfo();
        int i2 = 0;
        while (i2 < Camera.getNumberOfCameras()) {
            try {
                Camera.getCameraInfo(i2, cameraInfo);
                if (cameraInfo.facing == i) {
                    return getDeviceName(i2);
                }
                i2++;
            } catch (Exception e) {
                Logging.e(TAG, "getCameraInfo() failed on index " + i2, e);
            }
        }
        return null;
    }
}
