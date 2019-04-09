package qunar.sdk.mapapi;

public interface QunarMapControlV2 extends QunarMapControl {
    void setBuildingsEnabled(boolean z);

    void setIndoorEnabled(boolean z);

    void setMaxAndMinZoomLevel(float f, float f2);

    void setShowPointOfInterest(boolean z);

    void setTrafficEnabled(boolean z);
}
