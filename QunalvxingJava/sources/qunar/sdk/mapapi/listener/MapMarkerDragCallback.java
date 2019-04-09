package qunar.sdk.mapapi.listener;

import qunar.sdk.mapapi.entity.QMarkerV2;

public interface MapMarkerDragCallback {
    void onMarkerDrag(QMarkerV2 qMarkerV2);

    void onMarkerDragEnd(QMarkerV2 qMarkerV2);

    void onMarkerDragStart(QMarkerV2 qMarkerV2);
}
