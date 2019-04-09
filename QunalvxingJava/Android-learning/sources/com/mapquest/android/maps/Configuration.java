package com.mapquest.android.maps;

public class Configuration {
    private String apiKey = null;
    private MapView mapView;
    private String platformApiKey = null;
    private boolean satellite = false;
    private boolean satelliteLabeled = true;
    private int trafficMinimumZoomLevel = 5;
    private String trafficURL = "http://www.mapquestapi.com/traffic/v1";

    Configuration(MapView mapView) {
        this.mapView = mapView;
    }

    /* Access modifiers changed, original: 0000 */
    public String getApiKey() {
        return this.apiKey;
    }

    /* Access modifiers changed, original: 0000 */
    public void setApiKey(String str) {
        this.apiKey = str;
    }

    public boolean isSatelliteLabeled() {
        return this.satelliteLabeled;
    }

    public void setSatelliteLabeled(boolean z) {
        if (this.satelliteLabeled != z) {
            this.satelliteLabeled = z;
            this.mapView.setSatellite(this.satellite, this.satelliteLabeled);
        }
    }

    public boolean isSatellite() {
        return this.satellite;
    }

    public void setSatellite(boolean z) {
        this.satellite = z;
        this.mapView.setSatellite(this.satellite, this.satelliteLabeled);
    }

    /* Access modifiers changed, original: 0000 */
    public int getTrafficMinimumZoomLevel() {
        return this.trafficMinimumZoomLevel;
    }

    /* Access modifiers changed, original: 0000 */
    public void setTrafficMinimumZoomLevel(int i) {
        this.trafficMinimumZoomLevel = i;
    }

    /* Access modifiers changed, original: 0000 */
    public String getTrafficURL() {
        return this.trafficURL;
    }

    /* Access modifiers changed, original: 0000 */
    public void setTrafficURL(String str) {
        this.trafficURL = str;
    }

    /* Access modifiers changed, original: 0000 */
    public String getPlatformApiKey() {
        return this.platformApiKey == null ? getApiKey() : this.platformApiKey;
    }

    /* Access modifiers changed, original: 0000 */
    public void setPlatformApiKey(String str) {
        this.platformApiKey = str;
    }
}
