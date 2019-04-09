package com.mapquest.android.maps;

import java.util.Iterator;
import java.util.List;

public class BoundingBox {
    public GeoPoint lr;
    public GeoPoint ul;

    public BoundingBox(GeoPoint geoPoint, GeoPoint geoPoint2) {
        this.ul = geoPoint;
        this.lr = geoPoint2;
    }

    public GeoPoint getCenter() {
        if (this.ul == null || this.lr == null) {
            return null;
        }
        return new GeoPoint((this.ul.getLatitudeE6() + this.lr.getLatitudeE6()) / 2, (this.ul.getLongitudeE6() + this.lr.getLongitudeE6()) / 2);
    }

    public boolean contains(BoundingBox boundingBox) {
        return boundingBox != null && boundingBox.ul != null && boundingBox.lr != null && this.ul.getLatitudeE6() >= boundingBox.ul.getLatitudeE6() && this.ul.getLongitudeE6() <= boundingBox.ul.getLongitudeE6() && this.lr.getLatitudeE6() <= boundingBox.lr.getLatitudeE6() && this.lr.getLongitudeE6() >= boundingBox.lr.getLongitudeE6();
    }

    public boolean contains(GeoPoint geoPoint) {
        return geoPoint.getLatitudeE6() <= this.ul.getLatitudeE6() && geoPoint.getLatitudeE6() >= this.lr.getLatitudeE6() && geoPoint.getLongitudeE6() <= this.lr.getLongitudeE6() && geoPoint.getLongitudeE6() >= this.ul.getLongitudeE6();
    }

    public String toString(boolean z) {
        StringBuilder stringBuilder = new StringBuilder();
        if (z) {
            stringBuilder.append(Util.from1E6(this.ul.getLatitudeE6())).append(",").append(Util.from1E6(this.ul.getLongitudeE6())).append(",").append(Util.from1E6(this.lr.getLatitudeE6())).append(",").append(Util.from1E6(this.lr.getLongitudeE6()));
        } else {
            stringBuilder.append(Util.from1E6(this.ul.getLongitudeE6())).append(",").append(Util.from1E6(this.ul.getLatitudeE6())).append(",").append(Util.from1E6(this.lr.getLongitudeE6())).append(",").append(Util.from1E6(this.lr.getLatitudeE6()));
        }
        return stringBuilder.toString();
    }

    public String toString() {
        return toString(true);
    }

    public static boolean intersect(BoundingBox boundingBox, BoundingBox boundingBox2) {
        return boundingBox2.ul.getLatitudeE6() >= boundingBox.lr.getLatitudeE6() && boundingBox2.lr.getLatitudeE6() <= boundingBox.ul.getLatitudeE6() && boundingBox2.ul.getLongitudeE6() <= boundingBox.lr.getLongitudeE6() && boundingBox2.lr.getLongitudeE6() >= boundingBox.ul.getLongitudeE6();
    }

    public static BoundingBox calculateBoundingBoxGeoPoint(List<GeoPoint> list) {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        if (list != null && list.size() > 0) {
            GeoPoint geoPoint = (GeoPoint) list.get(0);
            i4 = geoPoint.getLatitudeE6();
            int longitudeE6 = geoPoint.getLongitudeE6();
            Iterator it = list.iterator();
            i = longitudeE6;
            i2 = i4;
            i3 = i4;
            while (true) {
                i4 = longitudeE6;
                if (!it.hasNext()) {
                    break;
                }
                geoPoint = (GeoPoint) it.next();
                if (geoPoint.getLatitudeE6() > i2) {
                    i2 = geoPoint.getLatitudeE6();
                } else if (geoPoint.getLatitudeE6() < i3) {
                    i3 = geoPoint.getLatitudeE6();
                }
                if (geoPoint.getLongitudeE6() < i) {
                    i = geoPoint.getLongitudeE6();
                } else if (geoPoint.getLongitudeE6() > i4) {
                    i4 = geoPoint.getLongitudeE6();
                }
                longitudeE6 = i4;
                i = i;
            }
        } else {
            i = 0;
            i2 = 0;
            i3 = 0;
        }
        return new BoundingBox(new GeoPoint(i2, i), new GeoPoint(i3, i4));
    }
}
