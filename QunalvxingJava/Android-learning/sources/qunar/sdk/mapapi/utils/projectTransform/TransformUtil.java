package qunar.sdk.mapapi.utils.projectTransform;

public class TransformUtil {
    public static boolean outOfChina(double d, double d2) {
        if (d2 < 72.004d || d2 > 137.8347d || d < 0.8293d || d > 55.8271d) {
            return true;
        }
        return false;
    }

    public static double transformLat(double d, double d2) {
        return (((((((-100.0d + (2.0d * d)) + (3.0d * d2)) + ((0.2d * d2) * d2)) + ((0.1d * d) * d2)) + (0.2d * Math.sqrt(Math.abs(d)))) + ((((20.0d * Math.sin((6.0d * d) * 3.141592653589793d)) + (20.0d * Math.sin((2.0d * d) * 3.141592653589793d))) * 2.0d) / 3.0d)) + ((((20.0d * Math.sin(3.141592653589793d * d2)) + (40.0d * Math.sin((d2 / 3.0d) * 3.141592653589793d))) * 2.0d) / 3.0d)) + ((((160.0d * Math.sin((d2 / 12.0d) * 3.141592653589793d)) + (320.0d * Math.sin((3.141592653589793d * d2) / 30.0d))) * 2.0d) / 3.0d);
    }

    public static double transformLon(double d, double d2) {
        return (((((((300.0d + d) + (2.0d * d2)) + ((0.1d * d) * d)) + ((0.1d * d) * d2)) + (0.1d * Math.sqrt(Math.abs(d)))) + ((((20.0d * Math.sin((6.0d * d) * 3.141592653589793d)) + (20.0d * Math.sin((2.0d * d) * 3.141592653589793d))) * 2.0d) / 3.0d)) + ((((20.0d * Math.sin(3.141592653589793d * d)) + (40.0d * Math.sin((d / 3.0d) * 3.141592653589793d))) * 2.0d) / 3.0d)) + ((((150.0d * Math.sin((d / 12.0d) * 3.141592653589793d)) + (300.0d * Math.sin((d / 30.0d) * 3.141592653589793d))) * 2.0d) / 3.0d);
    }

    public static double[] delta(double d, double d2) {
        double[] dArr = new double[2];
        double transformLat = transformLat(d2 - 105.0d, d - 35.0d);
        double transformLon = transformLon(d2 - 105.0d, d - 35.0d);
        double d3 = (d / 180.0d) * 3.141592653589793d;
        double sin = Math.sin(d3);
        sin = 1.0d - (sin * (0.006693421622965943d * sin));
        double sqrt = Math.sqrt(sin);
        dArr[0] = (transformLat * 180.0d) / ((((1.0d - 0.006693421622965943d) * 6378245.0d) / (sin * sqrt)) * 3.141592653589793d);
        dArr[1] = (180.0d * transformLon) / (((6378245.0d / sqrt) * Math.cos(d3)) * 3.141592653589793d);
        return dArr;
    }
}
