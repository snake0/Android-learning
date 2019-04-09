package qunar.sdk.mapapi;

import android.graphics.Bitmap;
import android.view.View;
import qunar.sdk.mapapi.entity.QMarker;
import qunar.sdk.mapapi.listener.QunarInfoWindowClickListener;
import qunar.sdk.mapapi.utils.MarkerParamerCase;

public class QunarInfoWindow {
    private Object callbackData;
    private QunarInfoWindowClickListener infoWindowClickListener;
    private QMarker marker;
    private int offsetPixelY = 0;
    private MarkerParamerCase paramerCase;
    private View view;
    private Bitmap viewBitmap;

    public QunarInfoWindow(View view, QMarker qMarker, Object obj, int i, QunarInfoWindowClickListener qunarInfoWindowClickListener) {
        this.view = view;
        this.paramerCase = MarkerParamerCase.VIEW_TYPE;
        this.marker = qMarker;
        this.callbackData = obj;
        this.offsetPixelY = i;
        this.infoWindowClickListener = qunarInfoWindowClickListener;
    }

    public QunarInfoWindow(Bitmap bitmap, QMarker qMarker, Object obj, int i, QunarInfoWindowClickListener qunarInfoWindowClickListener) {
        this.viewBitmap = bitmap;
        this.paramerCase = MarkerParamerCase.IMAGE_TYPE;
        this.marker = qMarker;
        this.callbackData = obj;
        this.offsetPixelY = i;
        this.infoWindowClickListener = qunarInfoWindowClickListener;
    }

    public QunarInfoWindowClickListener getInfoWindowClickListener() {
        return this.infoWindowClickListener;
    }

    public Bitmap getViewBitmap() {
        return this.viewBitmap;
    }

    public View getView() {
        return this.view;
    }

    public QMarker getMarker() {
        return this.marker;
    }

    public MarkerParamerCase getParamerCase() {
        return this.paramerCase;
    }

    public Object getCallbackData() {
        return this.callbackData;
    }

    public int getOffsetPixelY() {
        return this.offsetPixelY;
    }
}
