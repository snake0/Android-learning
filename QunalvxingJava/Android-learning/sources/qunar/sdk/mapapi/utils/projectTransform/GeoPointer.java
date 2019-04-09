package qunar.sdk.mapapi.utils.projectTransform;

import java.text.DecimalFormat;

public class GeoPointer {
    static DecimalFormat df = new DecimalFormat("0.000000");
    double latitude;
    double longitude;

    public double getLongitude() {
        return this.longitude;
    }

    public void setLongitude(double d) {
        this.longitude = d;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public void setLatitude(double d) {
        this.latitude = d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GeoPointer)) {
            return false;
        }
        GeoPointer geoPointer = (GeoPointer) obj;
        if (df.format(this.latitude).equals(df.format(geoPointer.latitude)) && df.format(this.longitude).equals(df.format(geoPointer.longitude))) {
            return true;
        }
        return false;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("latitude:" + this.latitude);
        stringBuilder.append(" longitude:" + this.longitude);
        return stringBuilder.toString();
    }

    public double distance(GeoPointer geoPointer) {
        double cos = ((Math.cos((this.latitude * 3.141592653589793d) / 180.0d) * Math.cos((geoPointer.latitude * 3.141592653589793d) / 180.0d)) * Math.cos(((this.longitude - geoPointer.longitude) * 3.141592653589793d) / 180.0d)) + (Math.sin((this.latitude * 3.141592653589793d) / 180.0d) * Math.sin((geoPointer.latitude * 3.141592653589793d) / 180.0d));
        if (cos > 1.0d) {
            cos = 1.0d;
        }
        if (cos < -1.0d) {
            cos = -1.0d;
        }
        return Math.acos(cos) * 6371000.0d;
    }
}
