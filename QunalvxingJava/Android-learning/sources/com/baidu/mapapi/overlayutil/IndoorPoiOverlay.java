package com.baidu.mapapi.overlayutil;

import android.os.Bundle;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.BitmapDescriptorFactory;
import com.baidu.mapapi.map.Marker;
import com.baidu.mapapi.map.MarkerOptions;
import com.baidu.mapapi.map.OverlayOptions;
import com.baidu.mapapi.map.Polyline;
import com.baidu.mapapi.search.poi.PoiIndoorInfo;
import com.baidu.mapapi.search.poi.PoiIndoorResult;
import java.util.ArrayList;
import java.util.List;

public class IndoorPoiOverlay extends OverlayManager {
    private static final int MAX_POI_SIZE = 10;
    private PoiIndoorResult mIndoorPoiResult = null;

    public IndoorPoiOverlay(BaiduMap baiduMap) {
        super(baiduMap);
    }

    public void setData(PoiIndoorResult poiIndoorResult) {
        this.mIndoorPoiResult = poiIndoorResult;
    }

    public final List<OverlayOptions> getOverlayOptions() {
        if (this.mIndoorPoiResult == null || this.mIndoorPoiResult.getmArrayPoiInfo() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < this.mIndoorPoiResult.getmArrayPoiInfo().size() && i < 10; i2++) {
            if (((PoiIndoorInfo) this.mIndoorPoiResult.getmArrayPoiInfo().get(i2)).latLng != null) {
                i++;
                Bundle bundle = new Bundle();
                bundle.putInt("index", i2);
                arrayList.add(new MarkerOptions().icon(BitmapDescriptorFactory.fromAssetWithDpi("Icon_mark" + i + ".png")).extraInfo(bundle).position(((PoiIndoorInfo) this.mIndoorPoiResult.getmArrayPoiInfo().get(i2)).latLng));
            }
        }
        return arrayList;
    }

    public PoiIndoorResult getIndoorPoiResult() {
        return this.mIndoorPoiResult;
    }

    public boolean onPoiClick(int i) {
        return false;
    }

    public final boolean onMarkerClick(Marker marker) {
        if (this.mOverlayList.contains(marker) && marker.getExtraInfo() != null) {
            return onPoiClick(marker.getExtraInfo().getInt("index"));
        }
        return false;
    }

    public boolean onPolylineClick(Polyline polyline) {
        return false;
    }
}
