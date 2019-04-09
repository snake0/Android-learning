package com.baidu.mapapi.overlayutil;

import android.graphics.Color;
import android.os.Bundle;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.BitmapDescriptor;
import com.baidu.mapapi.map.BitmapDescriptorFactory;
import com.baidu.mapapi.map.Marker;
import com.baidu.mapapi.map.MarkerOptions;
import com.baidu.mapapi.map.OverlayOptions;
import com.baidu.mapapi.map.Polyline;
import com.baidu.mapapi.map.PolylineOptions;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.search.route.IndoorRouteLine;
import com.baidu.mapapi.search.route.IndoorRouteLine.IndoorRouteStep;
import java.util.ArrayList;
import java.util.List;

public class IndoorRouteOverlay extends OverlayManager {
    int[] colorInfo = new int[]{Color.argb(178, 0, 78, 255), Color.argb(178, 88, 208, 0), Color.argb(178, 88, 78, 255)};
    private IndoorRouteLine mRouteLine;

    public IndoorRouteOverlay(BaiduMap baiduMap) {
        super(baiduMap);
    }

    public void setData(IndoorRouteLine indoorRouteLine) {
        this.mRouteLine = indoorRouteLine;
    }

    public BitmapDescriptor getStartMarker() {
        return null;
    }

    public BitmapDescriptor getTerminalMarker() {
        return null;
    }

    public int getLineColor() {
        return 0;
    }

    public List<OverlayOptions> getOverlayOptions() {
        LatLng latLng = null;
        if (this.mRouteLine == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (this.mRouteLine.getAllStep() != null && this.mRouteLine.getAllStep().size() > 0) {
            for (IndoorRouteStep indoorRouteStep : this.mRouteLine.getAllStep()) {
                Bundle bundle = new Bundle();
                bundle.putInt("index", this.mRouteLine.getAllStep().indexOf(indoorRouteStep));
                if (indoorRouteStep.getEntrace() != null) {
                    arrayList.add(new MarkerOptions().position(indoorRouteStep.getEntrace().getLocation()).zIndex(10).anchor(0.5f, 0.5f).extraInfo(bundle).icon(BitmapDescriptorFactory.fromAssetWithDpi("Icon_walk_route.png")));
                }
                if (this.mRouteLine.getAllStep().indexOf(indoorRouteStep) == this.mRouteLine.getAllStep().size() - 1 && indoorRouteStep.getExit() != null) {
                    arrayList.add(new MarkerOptions().position(indoorRouteStep.getExit().getLocation()).anchor(0.5f, 0.5f).zIndex(10).icon(BitmapDescriptorFactory.fromAssetWithDpi("Icon_walk_route.png")));
                }
            }
        }
        if (this.mRouteLine.getStarting() != null) {
            arrayList.add(new MarkerOptions().position(this.mRouteLine.getStarting().getLocation()).icon(getStartMarker() != null ? getStartMarker() : BitmapDescriptorFactory.fromAssetWithDpi("Icon_start.png")).zIndex(10));
        }
        if (this.mRouteLine.getTerminal() != null) {
            BitmapDescriptor terminalMarker;
            MarkerOptions position = new MarkerOptions().position(this.mRouteLine.getTerminal().getLocation());
            if (getTerminalMarker() != null) {
                terminalMarker = getTerminalMarker();
            } else {
                terminalMarker = BitmapDescriptorFactory.fromAssetWithDpi("Icon_end.png");
            }
            arrayList.add(position.icon(terminalMarker).zIndex(10));
        }
        if (this.mRouteLine.getAllStep() != null && this.mRouteLine.getAllStep().size() > 0) {
            int i = 0;
            for (IndoorRouteStep indoorRouteStep2 : this.mRouteLine.getAllStep()) {
                int lineColor;
                LatLng latLng2;
                List wayPoints = indoorRouteStep2.getWayPoints();
                if (wayPoints != null) {
                    ArrayList arrayList2 = new ArrayList();
                    if (latLng != null) {
                        arrayList2.add(latLng);
                    }
                    arrayList2.addAll(wayPoints);
                    PolylineOptions width = new PolylineOptions().points(arrayList2).width(10);
                    if (getLineColor() != 0) {
                        lineColor = getLineColor();
                    } else {
                        int i2 = i + 1;
                        lineColor = this.colorInfo[i % 3];
                        i = i2;
                    }
                    arrayList.add(width.color(lineColor).zIndex(0));
                    int i3 = i;
                    latLng2 = (LatLng) wayPoints.get(wayPoints.size() - 1);
                    lineColor = i3;
                } else {
                    lineColor = i;
                    latLng2 = latLng;
                }
                latLng = latLng2;
                i = lineColor;
            }
        }
        return arrayList;
    }

    public boolean onMarkerClick(Marker marker) {
        return false;
    }

    public boolean onPolylineClick(Polyline polyline) {
        return false;
    }
}
