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
import com.baidu.mapapi.search.route.MassTransitRouteLine;
import com.baidu.mapapi.search.route.MassTransitRouteLine.TransitStep;
import com.baidu.mapapi.search.route.MassTransitRouteLine.TransitStep.StepVehicleInfoType;
import java.util.ArrayList;
import java.util.List;

public class MassTransitRouteOverlay extends OverlayManager {
    private boolean isSameCity;
    private MassTransitRouteLine mRouteLine;

    public MassTransitRouteOverlay(BaiduMap baiduMap) {
        super(baiduMap);
    }

    public void setData(MassTransitRouteLine massTransitRouteLine) {
        this.mRouteLine = massTransitRouteLine;
    }

    public void setSameCity(boolean z) {
        this.isSameCity = z;
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
        if (this.mRouteLine == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        List newSteps = this.mRouteLine.getNewSteps();
        int i;
        TransitStep transitStep;
        int lineColor;
        if (this.isSameCity) {
            for (i = 0; i < newSteps.size(); i++) {
                transitStep = (TransitStep) ((List) newSteps.get(i)).get(0);
                Bundle bundle = new Bundle();
                bundle.putInt("index", i + 1);
                if (transitStep.getStartLocation() != null) {
                    arrayList.add(new MarkerOptions().position(transitStep.getStartLocation()).anchor(0.5f, 0.5f).zIndex(10).extraInfo(bundle).icon(getIconForStep(transitStep)));
                }
                if (i == newSteps.size() - 1 && transitStep.getEndLocation() != null) {
                    arrayList.add(new MarkerOptions().position(transitStep.getEndLocation()).anchor(0.5f, 0.5f).zIndex(10).icon(getIconForStep(transitStep)));
                }
            }
            for (i = 0; i < newSteps.size(); i++) {
                transitStep = (TransitStep) ((List) newSteps.get(i)).get(0);
                lineColor = transitStep.getVehileType() != StepVehicleInfoType.ESTEP_WALK ? getLineColor() != 0 ? getLineColor() : Color.argb(178, 0, 78, 255) : getLineColor() != 0 ? getLineColor() : Color.argb(178, 88, 208, 0);
                arrayList.add(new PolylineOptions().points(transitStep.getWayPoints()).width(10).color(lineColor).zIndex(0));
            }
        } else {
            int i2;
            lineColor = 0;
            for (i = 0; i < newSteps.size(); i++) {
                lineColor += ((List) newSteps.get(i)).size();
            }
            int i3 = 1;
            i = 0;
            while (i < newSteps.size()) {
                i2 = i3;
                for (int i4 = 0; i4 < ((List) newSteps.get(i)).size(); i4++) {
                    transitStep = (TransitStep) ((List) newSteps.get(i)).get(i4);
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("index", i2);
                    if (transitStep.getStartLocation() != null) {
                        arrayList.add(new MarkerOptions().position(transitStep.getStartLocation()).anchor(0.5f, 0.5f).zIndex(10).extraInfo(bundle2).icon(getIconForStep(transitStep)));
                    }
                    if (i2 == lineColor && transitStep.getEndLocation() != null) {
                        arrayList.add(new MarkerOptions().position(transitStep.getEndLocation()).anchor(0.5f, 0.5f).zIndex(10).icon(getIconForStep(transitStep)));
                    }
                    i2++;
                }
                i++;
                i3 = i2;
            }
            for (i = 0; i < newSteps.size(); i++) {
                for (lineColor = 0; lineColor < ((List) newSteps.get(i)).size(); lineColor++) {
                    transitStep = (TransitStep) ((List) newSteps.get(i)).get(lineColor);
                    i2 = transitStep.getVehileType() != StepVehicleInfoType.ESTEP_WALK ? getLineColor() != 0 ? getLineColor() : Color.argb(178, 0, 78, 255) : getLineColor() != 0 ? getLineColor() : Color.argb(178, 88, 208, 0);
                    if (transitStep.getWayPoints() != null) {
                        arrayList.add(new PolylineOptions().points(transitStep.getWayPoints()).width(10).color(i2).zIndex(0));
                    }
                }
            }
        }
        if (!(this.mRouteLine.getStarting() == null || this.mRouteLine.getStarting().getLocation() == null)) {
            arrayList.add(new MarkerOptions().position(this.mRouteLine.getStarting().getLocation()).icon(getStartMarker() != null ? getStartMarker() : BitmapDescriptorFactory.fromAssetWithDpi("Icon_start.png")).zIndex(10));
        }
        if (!(this.mRouteLine.getTerminal() == null || this.mRouteLine.getTerminal().getLocation() == null)) {
            arrayList.add(new MarkerOptions().position(this.mRouteLine.getTerminal().getLocation()).icon(getTerminalMarker() != null ? getTerminalMarker() : BitmapDescriptorFactory.fromAssetWithDpi("Icon_end.png")).zIndex(10));
        }
        return arrayList;
    }

    private BitmapDescriptor getIconForStep(TransitStep transitStep) {
        switch (transitStep.getVehileType()) {
            case ESTEP_WALK:
                return BitmapDescriptorFactory.fromAssetWithDpi("Icon_walk_route.png");
            case ESTEP_TRAIN:
                return BitmapDescriptorFactory.fromAssetWithDpi("Icon_subway_station.png");
            case ESTEP_DRIVING:
            case ESTEP_COACH:
            case ESTEP_PLANE:
            case ESTEP_BUS:
                return BitmapDescriptorFactory.fromAssetWithDpi("Icon_bus_station.png");
            default:
                return null;
        }
    }

    public boolean onMarkerClick(Marker marker) {
        return false;
    }

    public boolean onPolylineClick(Polyline polyline) {
        return false;
    }
}
