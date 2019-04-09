package qunar.sdk.mapapi.listener;

import qunar.sdk.location.QMapStatus;

public interface MapStatusChangeListenerV2 extends MapStatusChangeListener {
    void onMapStatusChange(QMapStatus qMapStatus);

    void onMapStatusChangeFinish(QMapStatus qMapStatus);

    void onMapStatusChangeStart(QMapStatus qMapStatus);
}
