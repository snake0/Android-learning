package qunar.sdk.mapapi;

import android.graphics.Bitmap;
import qunar.sdk.mapapi.entity.QMarkerV2;
import qunar.sdk.mapapi.listener.MapMarkerDragCallback;

public interface QunarMapV2 extends QunarMap {
    void reSetBitmap(QMarkerV2 qMarkerV2, Bitmap bitmap);

    void reSetDraggable(QMarkerV2 qMarkerV2, boolean z);

    void reSetMarkAnchor(QMarkerV2 qMarkerV2, float f, float f2);

    void reSetMarkFlat(QMarkerV2 qMarkerV2, boolean z);

    void reSetMarkPerspective(QMarkerV2 qMarkerV2, boolean z);

    void reSetMarkTitle(QMarkerV2 qMarkerV2, String str);

    void reSetOpacity(QMarkerV2 qMarkerV2, float f);

    void setOnMarkerDragListener(MapMarkerDragCallback mapMarkerDragCallback);
}
