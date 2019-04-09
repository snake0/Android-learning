package qunar.sdk.location;

public class TempLoc {
    public String country = "";
    public String countryCode = "";
    public boolean isAbroad = false;
    public double mLatitude = 0.0d;
    public double mLongitude = 0.0d;
    public long mTime = 0;

    public TempLoc(double d, double d2, long j) {
        this.mLatitude = d;
        this.mLongitude = d2;
        this.mTime = j;
    }
}
