package com.mapquest.android.maps;

import android.app.Activity;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class MapActivity extends Activity {
    private static final String TAG = "com.mapquest.android.maps.mapactivity";
    private ArrayList<MapView> mapViews = new ArrayList();

    public abstract boolean isRouteDisplayed();

    /* Access modifiers changed, original: protected */
    public boolean isLocationDisplayed() {
        Iterator it = copyMapViews().iterator();
        while (it.hasNext()) {
            for (Overlay overlay : ((MapView) it.next()).getOverlays()) {
                if (overlay instanceof MyLocationOverlay) {
                    return true;
                }
            }
        }
        return false;
    }

    /* Access modifiers changed, original: protected */
    public void onPause() {
        Iterator it = copyMapViews().iterator();
        while (it.hasNext()) {
            ((MapView) it.next()).onPause();
        }
        super.onPause();
    }

    /* Access modifiers changed, original: protected */
    public void onResume() {
        Iterator it = copyMapViews().iterator();
        while (it.hasNext()) {
            ((MapView) it.next()).onResume();
        }
        super.onResume();
    }

    /* Access modifiers changed, original: protected */
    public void onStop() {
        Iterator it = copyMapViews().iterator();
        while (it.hasNext()) {
            ((MapView) it.next()).onStop();
        }
        super.onStop();
    }

    /* Access modifiers changed, original: protected */
    public void onDestroy() {
        Iterator it = copyMapViews().iterator();
        while (it.hasNext()) {
            MapView mapView = (MapView) it.next();
            if (mapView != null) {
                mapView.destroy();
            }
        }
        super.onDestroy();
    }

    private ArrayList<MapView> copyMapViews() {
        return (ArrayList) this.mapViews.clone();
    }

    /* Access modifiers changed, original: 0000 */
    public void addMapView(MapView mapView) {
        this.mapViews.add(mapView);
    }

    /* Access modifiers changed, original: 0000 */
    public void removeMapView(MapView mapView) {
        this.mapViews.remove(mapView);
    }

    /* Access modifiers changed, original: 0000 */
    public String getKey() {
        Iterator it = this.mapViews.iterator();
        if (it.hasNext()) {
            return ((MapView) it.next()).getConfiguration().getApiKey();
        }
        return "";
    }
}
