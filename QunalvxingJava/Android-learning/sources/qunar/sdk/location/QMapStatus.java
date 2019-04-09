package qunar.sdk.location;

import android.graphics.Point;
import com.baidu.mapapi.map.MapStatus;

public class QMapStatus {
    public final QBounds bound;
    public final float overlook;
    public final float rotate;
    public final QLocation target;
    public final Point targetScreen;
    public final float zoom;

    public class QBounds {
        public QLocation northeast;
        public QLocation southwest;

        QBounds(QLocation qLocation, QLocation qLocation2) {
            this.southwest = qLocation;
            this.northeast = qLocation2;
        }
    }

    public QMapStatus(MapStatus mapStatus) {
        this.rotate = mapStatus.rotate;
        this.target = new QLocation(mapStatus.target.latitude, mapStatus.target.longitude);
        this.overlook = mapStatus.overlook;
        this.zoom = mapStatus.zoom;
        this.bound = new QBounds(new QLocation(mapStatus.bound.southwest.latitude, mapStatus.bound.southwest.longitude), new QLocation(mapStatus.bound.northeast.latitude, mapStatus.bound.northeast.longitude));
        this.targetScreen = mapStatus.targetScreen;
    }
}
