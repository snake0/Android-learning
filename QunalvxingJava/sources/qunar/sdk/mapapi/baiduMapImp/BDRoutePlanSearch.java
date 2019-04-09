package qunar.sdk.mapapi.baiduMapImp;

import android.os.Handler;
import android.os.Message;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.BitmapDescriptor;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.overlayutil.BikingRouteOverlay;
import com.baidu.mapapi.overlayutil.DrivingRouteOverlay;
import com.baidu.mapapi.overlayutil.OverlayManager;
import com.baidu.mapapi.overlayutil.TransitRouteOverlay;
import com.baidu.mapapi.overlayutil.WalkingRouteOverlay;
import com.baidu.mapapi.search.core.PoiInfo;
import com.baidu.mapapi.search.core.RouteLine;
import com.baidu.mapapi.search.core.SearchResult.ERRORNO;
import com.baidu.mapapi.search.route.BikingRouteLine;
import com.baidu.mapapi.search.route.BikingRouteLine.BikingStep;
import com.baidu.mapapi.search.route.BikingRouteResult;
import com.baidu.mapapi.search.route.DrivingRouteLine;
import com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep;
import com.baidu.mapapi.search.route.DrivingRoutePlanOption;
import com.baidu.mapapi.search.route.DrivingRouteResult;
import com.baidu.mapapi.search.route.IndoorRouteResult;
import com.baidu.mapapi.search.route.MassTransitRouteResult;
import com.baidu.mapapi.search.route.OnGetRoutePlanResultListener;
import com.baidu.mapapi.search.route.PlanNode;
import com.baidu.mapapi.search.route.RoutePlanSearch;
import com.baidu.mapapi.search.route.SuggestAddrInfo;
import com.baidu.mapapi.search.route.TransitRouteLine;
import com.baidu.mapapi.search.route.TransitRouteLine.TransitStep;
import com.baidu.mapapi.search.route.TransitRoutePlanOption;
import com.baidu.mapapi.search.route.TransitRouteResult;
import com.baidu.mapapi.search.route.WalkingRouteLine;
import com.baidu.mapapi.search.route.WalkingRouteLine.WalkingStep;
import com.baidu.mapapi.search.route.WalkingRoutePlanOption;
import com.baidu.mapapi.search.route.WalkingRouteResult;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import qunar.sdk.location.QLocation;
import qunar.sdk.mapapi.QunarRoutePlanSearch;
import qunar.sdk.mapapi.QunarRouteType;
import qunar.sdk.mapapi.entity.QMarker;
import qunar.sdk.mapapi.entity.QunarRouteNode;
import qunar.sdk.mapapi.listener.QunarRoutePlanCallback;
import qunar.sdk.mapapi.listener.RoutePlaneResultType;
import qunar.sdk.mapapi.utils.MapHelperUtils;

public class BDRoutePlanSearch implements OnGetRoutePlanResultListener, QunarRoutePlanSearch {
    private BaiduMap bdMap;
    private String cityName;
    QMarker end;
    private boolean isCancle = false;
    private boolean isFinishFlag = false;
    private RoutePlanSearch mSearch = null;
    private Handler myHandler = new Handler() {
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 10010:
                    if (!BDRoutePlanSearch.this.isFinishFlag) {
                        BDRoutePlanSearch.this.isCancle = true;
                        if (BDRoutePlanSearch.this.routePlanCallback != null) {
                            BDRoutePlanSearch.this.routePlanCallback.onRouteTimeOut(BDRoutePlanSearch.this.qunarRouteType, BDRoutePlanSearch.this.cityName);
                            return;
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    private OverlayManager overlayManager;
    private QunarRouteType qunarRouteType;
    private RouteLine route = null;
    ArrayList<QunarRouteNode> routeNodes = null;
    private QunarRoutePlanCallback routePlanCallback = null;
    QMarker start;

    class MyBikingRouteOverlay extends BikingRouteOverlay {
        public MyBikingRouteOverlay(BaiduMap baiduMap) {
            super(baiduMap);
        }

        public boolean onRouteNodeClick(int i) {
            if (!(BDRoutePlanSearch.this.routeNodes == null || BDRoutePlanSearch.this.routePlanCallback == null)) {
                BDRoutePlanSearch.this.routePlanCallback.onRouteNodeClick((QunarRouteNode) BDRoutePlanSearch.this.routeNodes.get(i));
            }
            return super.onRouteNodeClick(i);
        }

        public BitmapDescriptor getStartMarker() {
            if (BDRoutePlanSearch.this.start != null) {
                return MapHelperUtils.createBitmapDescriptor(BDRoutePlanSearch.this.start);
            }
            return super.getStartMarker();
        }

        public BitmapDescriptor getTerminalMarker() {
            if (BDRoutePlanSearch.this.end != null) {
                return MapHelperUtils.createBitmapDescriptor(BDRoutePlanSearch.this.end);
            }
            return super.getTerminalMarker();
        }
    }

    class MyDrivingRouteOverlay extends DrivingRouteOverlay {
        /* synthetic */ MyDrivingRouteOverlay(BDRoutePlanSearch bDRoutePlanSearch, BaiduMap baiduMap, AnonymousClass1 anonymousClass1) {
            this(baiduMap);
        }

        private MyDrivingRouteOverlay(BaiduMap baiduMap) {
            super(baiduMap);
        }

        public boolean onRouteNodeClick(int i) {
            if (!(BDRoutePlanSearch.this.routeNodes == null || BDRoutePlanSearch.this.routePlanCallback == null)) {
                BDRoutePlanSearch.this.routePlanCallback.onRouteNodeClick((QunarRouteNode) BDRoutePlanSearch.this.routeNodes.get(i));
            }
            return super.onRouteNodeClick(i);
        }

        public BitmapDescriptor getStartMarker() {
            if (BDRoutePlanSearch.this.start != null) {
                return MapHelperUtils.createBitmapDescriptor(BDRoutePlanSearch.this.start);
            }
            return super.getStartMarker();
        }

        public BitmapDescriptor getTerminalMarker() {
            if (BDRoutePlanSearch.this.end != null) {
                return MapHelperUtils.createBitmapDescriptor(BDRoutePlanSearch.this.end);
            }
            return super.getTerminalMarker();
        }
    }

    class MyTransitRouteOverlay extends TransitRouteOverlay {
        /* synthetic */ MyTransitRouteOverlay(BDRoutePlanSearch bDRoutePlanSearch, BaiduMap baiduMap, AnonymousClass1 anonymousClass1) {
            this(baiduMap);
        }

        private MyTransitRouteOverlay(BaiduMap baiduMap) {
            super(baiduMap);
        }

        public boolean onRouteNodeClick(int i) {
            if (!(BDRoutePlanSearch.this.routeNodes == null || BDRoutePlanSearch.this.routePlanCallback == null)) {
                BDRoutePlanSearch.this.routePlanCallback.onRouteNodeClick((QunarRouteNode) BDRoutePlanSearch.this.routeNodes.get(i));
            }
            return super.onRouteNodeClick(i);
        }

        public BitmapDescriptor getStartMarker() {
            if (BDRoutePlanSearch.this.start != null) {
                return MapHelperUtils.createBitmapDescriptor(BDRoutePlanSearch.this.start);
            }
            return super.getStartMarker();
        }

        public BitmapDescriptor getTerminalMarker() {
            if (BDRoutePlanSearch.this.end != null) {
                return MapHelperUtils.createBitmapDescriptor(BDRoutePlanSearch.this.end);
            }
            return super.getTerminalMarker();
        }
    }

    class MyWalkingRouteOverlay extends WalkingRouteOverlay {
        /* synthetic */ MyWalkingRouteOverlay(BDRoutePlanSearch bDRoutePlanSearch, BaiduMap baiduMap, AnonymousClass1 anonymousClass1) {
            this(baiduMap);
        }

        private MyWalkingRouteOverlay(BaiduMap baiduMap) {
            super(baiduMap);
        }

        public boolean onRouteNodeClick(int i) {
            if (!(BDRoutePlanSearch.this.routeNodes == null || BDRoutePlanSearch.this.routePlanCallback == null)) {
                BDRoutePlanSearch.this.routePlanCallback.onRouteNodeClick((QunarRouteNode) BDRoutePlanSearch.this.routeNodes.get(i));
            }
            return super.onRouteNodeClick(i);
        }

        public BitmapDescriptor getStartMarker() {
            if (BDRoutePlanSearch.this.start != null) {
                return MapHelperUtils.createBitmapDescriptor(BDRoutePlanSearch.this.start);
            }
            return super.getStartMarker();
        }

        public BitmapDescriptor getTerminalMarker() {
            if (BDRoutePlanSearch.this.end != null) {
                return MapHelperUtils.createBitmapDescriptor(BDRoutePlanSearch.this.end);
            }
            return super.getTerminalMarker();
        }
    }

    public BDRoutePlanSearch(BaiduMap baiduMap) {
        this.bdMap = baiduMap;
        this.mSearch = RoutePlanSearch.newInstance();
        this.mSearch.setOnGetRoutePlanResultListener(this);
    }

    public void startRoutPlane(QunarRouteType qunarRouteType, QunarRouteNode qunarRouteNode, QunarRouteNode qunarRouteNode2, String str) {
        if (this.routePlanCallback != null) {
            this.qunarRouteType = qunarRouteType;
            this.cityName = str;
            PlanNode routeNode2PlanNode = routeNode2PlanNode(qunarRouteNode);
            PlanNode routeNode2PlanNode2 = routeNode2PlanNode(qunarRouteNode2);
            if (routeNode2PlanNode == null || routeNode2PlanNode2 == null) {
                this.routePlanCallback.onRoutePlanCallback(false, "请完整填写起始位置信息", null, 0);
                return;
            }
            this.routePlanCallback.routeAnalysisStartCallback();
            routePlane(qunarRouteType, routeNode2PlanNode, routeNode2PlanNode2);
        }
    }

    private PlanNode routeNode2PlanNode(QunarRouteNode qunarRouteNode) {
        if (qunarRouteNode == null) {
            return null;
        }
        switch (qunarRouteNode.routeNodeType) {
            case POSITIONLOCATION:
                if (qunarRouteNode.nodeLocation != null) {
                    return withLocation(qunarRouteNode.nodeLocation);
                }
                if (qunarRouteNode.instructions == null || "".equals(qunarRouteNode.instructions)) {
                    return null;
                }
                return withCityNameAndPlaceName(this.cityName, qunarRouteNode.instructions);
            case POSITIONNAME:
                if (qunarRouteNode.instructions != null && !"".equals(qunarRouteNode.instructions)) {
                    return withCityNameAndPlaceName(this.cityName, qunarRouteNode.instructions);
                }
                if (qunarRouteNode.nodeLocation != null) {
                    return withLocation(qunarRouteNode.nodeLocation);
                }
                return null;
            default:
                return null;
        }
    }

    private PlanNode withCityNameAndPlaceName(String str, String str2) {
        if (str2 == null || "".equals(str2)) {
            return null;
        }
        return PlanNode.withCityNameAndPlaceName(str, str2);
    }

    private PlanNode withLocation(QLocation qLocation) {
        if (qLocation != null) {
            return PlanNode.withLocation(new LatLng(qLocation.getLatitude(), qLocation.getLongitude()));
        }
        return null;
    }

    private void routePlane(QunarRouteType qunarRouteType, PlanNode planNode, PlanNode planNode2) {
        switch (qunarRouteType) {
            case DRIVING:
                this.mSearch.drivingSearch(new DrivingRoutePlanOption().from(planNode).to(planNode2));
                break;
            case TRANSIT:
                this.mSearch.transitSearch(new TransitRoutePlanOption().from(planNode).city(this.cityName).to(planNode2));
                break;
            case WALKING:
                this.mSearch.walkingSearch(new WalkingRoutePlanOption().from(planNode).to(planNode2));
                break;
        }
        this.isCancle = false;
        this.isFinishFlag = false;
        startTimer();
    }

    public void setRotePlanCallback(QunarRoutePlanCallback qunarRoutePlanCallback) {
        this.routePlanCallback = qunarRoutePlanCallback;
    }

    private void getRouteNodes() {
        if (this.route != null) {
            this.routeNodes = new ArrayList();
            for (Object next : this.route.getAllStep()) {
                Object next2;
                LatLng location;
                QunarRouteNode qunarRouteNode;
                List<LatLng> wayPoints;
                ArrayList arrayList;
                QunarRouteNode qunarRouteNode2;
                if (next2 instanceof DrivingStep) {
                    DrivingStep drivingStep = (DrivingStep) next2;
                    location = drivingStep.getEntrance().getLocation();
                    qunarRouteNode = new QunarRouteNode();
                    qunarRouteNode.nodeLocation = new QLocation(location.latitude, location.longitude);
                    qunarRouteNode.instructions = drivingStep.getInstructions();
                    qunarRouteNode.distance = drivingStep.getDistance();
                    qunarRouteNode.duration = drivingStep.getDuration();
                    wayPoints = drivingStep.getWayPoints();
                    if (wayPoints != null && wayPoints.size() > 0) {
                        arrayList = new ArrayList();
                        for (LatLng latLng : wayPoints) {
                            arrayList.add(new QLocation(latLng.latitude, latLng.longitude));
                        }
                        qunarRouteNode.wayPoints = arrayList;
                    }
                    next2 = qunarRouteNode;
                } else if (next2 instanceof WalkingStep) {
                    WalkingStep walkingStep = (WalkingStep) next2;
                    location = walkingStep.getEntrance().getLocation();
                    qunarRouteNode = new QunarRouteNode();
                    qunarRouteNode.nodeLocation = new QLocation(location.latitude, location.longitude);
                    qunarRouteNode.instructions = walkingStep.getInstructions();
                    qunarRouteNode.distance = walkingStep.getDistance();
                    qunarRouteNode.duration = walkingStep.getDuration();
                    wayPoints = walkingStep.getWayPoints();
                    if (wayPoints != null && wayPoints.size() > 0) {
                        arrayList = new ArrayList();
                        for (LatLng latLng2 : wayPoints) {
                            arrayList.add(new QLocation(latLng2.latitude, latLng2.longitude));
                        }
                        qunarRouteNode.wayPoints = arrayList;
                    }
                    qunarRouteNode2 = qunarRouteNode;
                } else if (next2 instanceof TransitStep) {
                    TransitStep transitStep = (TransitStep) next2;
                    location = transitStep.getEntrance().getLocation();
                    qunarRouteNode = new QunarRouteNode();
                    qunarRouteNode.nodeLocation = new QLocation(location.latitude, location.longitude);
                    qunarRouteNode.instructions = transitStep.getInstructions();
                    qunarRouteNode.distance = transitStep.getDistance();
                    qunarRouteNode.duration = transitStep.getDuration();
                    wayPoints = transitStep.getWayPoints();
                    if (wayPoints != null && wayPoints.size() > 0) {
                        arrayList = new ArrayList();
                        for (LatLng latLng22 : wayPoints) {
                            arrayList.add(new QLocation(latLng22.latitude, latLng22.longitude));
                        }
                        qunarRouteNode.wayPoints = arrayList;
                    }
                    qunarRouteNode2 = qunarRouteNode;
                } else {
                    next2 = null;
                }
                if (next2 != null) {
                    this.routeNodes.add(next2);
                }
            }
            this.routePlanCallback.onRoutePlanCallback(true, "", this.routeNodes, this.route.getDistance());
        }
    }

    private void getSuggestStartEndNodes(SuggestAddrInfo suggestAddrInfo) {
        if (suggestAddrInfo != null) {
            List list;
            int size;
            LatLng latLng;
            Object qunarRouteNode;
            List list2;
            List suggestStartNode = suggestAddrInfo.getSuggestStartNode();
            List suggestEndNode = suggestAddrInfo.getSuggestEndNode();
            if (suggestStartNode == null || suggestStartNode.isEmpty()) {
                list = null;
            } else {
                ArrayList arrayList = new ArrayList();
                size = suggestStartNode.size() > 10 ? 10 : suggestStartNode.size();
                for (int i = 0; i < size; i++) {
                    String str = ((PoiInfo) suggestStartNode.get(i)).address;
                    latLng = ((PoiInfo) suggestStartNode.get(i)).location;
                    if (latLng == null) {
                        qunarRouteNode = new QunarRouteNode(null, str);
                    } else {
                        qunarRouteNode = new QunarRouteNode(new QLocation(latLng.latitude, latLng.longitude), str);
                    }
                    arrayList.add(qunarRouteNode);
                }
                list = arrayList;
            }
            if (suggestEndNode == null || suggestEndNode.isEmpty()) {
                list2 = null;
            } else {
                ArrayList arrayList2 = new ArrayList();
                size = suggestEndNode.size() > 10 ? 10 : suggestEndNode.size();
                for (int i2 = 0; i2 < size; i2++) {
                    String str2 = ((PoiInfo) suggestEndNode.get(i2)).address;
                    latLng = ((PoiInfo) suggestEndNode.get(i2)).location;
                    if (latLng == null) {
                        qunarRouteNode = new QunarRouteNode(null, str2);
                    } else {
                        qunarRouteNode = new QunarRouteNode(new QLocation(latLng.latitude, latLng.longitude), str2);
                    }
                    arrayList2.add(qunarRouteNode);
                }
                list2 = arrayList2;
            }
            this.routePlanCallback.onStartEndNodeAmbiguityCallback(this.qunarRouteType, list, list2);
        }
    }

    public void onGetDrivingRouteResult(DrivingRouteResult drivingRouteResult) {
        int i = 0;
        routePlaneEnd();
        if (this.routePlanCallback != null) {
            if (this.isCancle) {
                this.routePlanCallback.routeAnalysisEndCallback(RoutePlaneResultType.CANCLE);
            } else if (drivingRouteResult == null || drivingRouteResult.error != ERRORNO.NO_ERROR) {
                if (this.routePlanCallback != null) {
                    this.routePlanCallback.onRoutePlanCallback(false, "抱歉，未找到合适的路线！", null, 0);
                }
            } else if (drivingRouteResult.error == ERRORNO.AMBIGUOUS_ROURE_ADDR) {
                getSuggestStartEndNodes(drivingRouteResult.getSuggestAddrInfo());
            } else if (drivingRouteResult.error == ERRORNO.NO_ERROR) {
                List routeLines = drivingRouteResult.getRouteLines();
                if (routeLines == null || routeLines.isEmpty()) {
                    this.routePlanCallback.onRoutePlanCallback(false, "抱歉，未找到合适的路线！", null, 0);
                    return;
                }
                this.routePlanCallback.routeAnalysisEndCallback(RoutePlaneResultType.SUCCESS);
                removeFromMap();
                DrivingRouteLine drivingRouteLine = (DrivingRouteLine) routeLines.get(0);
                List allStep = drivingRouteLine.getAllStep();
                if (allStep == null || allStep.isEmpty() || this.bdMap == null) {
                    this.routePlanCallback.onRoutePlanCallback(false, "抱歉，未找到合适的路线！", null, 0);
                    return;
                }
                int i2;
                this.route = drivingRouteLine;
                Iterator it = allStep.iterator();
                while (true) {
                    i2 = i;
                    if (!it.hasNext()) {
                        break;
                    }
                    List wayPoints = ((DrivingStep) it.next()).getWayPoints();
                    if (wayPoints != null) {
                        i = wayPoints.size() + i2;
                    } else {
                        i = i2;
                    }
                }
                if (i2 > 2 && i2 < 10000) {
                    MyDrivingRouteOverlay myDrivingRouteOverlay = new MyDrivingRouteOverlay(this, this.bdMap, null);
                    this.overlayManager = myDrivingRouteOverlay;
                    this.bdMap.setOnMarkerClickListener(myDrivingRouteOverlay);
                    myDrivingRouteOverlay.setData(drivingRouteLine);
                    myDrivingRouteOverlay.addToMap();
                    myDrivingRouteOverlay.zoomToSpan();
                }
                if (this.routePlanCallback != null) {
                    getRouteNodes();
                }
            }
        }
    }

    public void onGetIndoorRouteResult(IndoorRouteResult indoorRouteResult) {
    }

    public void onGetBikingRouteResult(BikingRouteResult bikingRouteResult) {
        int i = 0;
        routePlaneEnd();
        if (this.routePlanCallback != null) {
            if (this.isCancle) {
                this.routePlanCallback.routeAnalysisEndCallback(RoutePlaneResultType.CANCLE);
            } else if (bikingRouteResult == null || bikingRouteResult.error != ERRORNO.NO_ERROR) {
                this.routePlanCallback.onRoutePlanCallback(false, "抱歉，未找到合适的路线！", null, 0);
            } else if (bikingRouteResult.error == ERRORNO.AMBIGUOUS_ROURE_ADDR) {
                getSuggestStartEndNodes(bikingRouteResult.getSuggestAddrInfo());
            } else if (bikingRouteResult.error == ERRORNO.NO_ERROR) {
                List routeLines = bikingRouteResult.getRouteLines();
                if (routeLines == null || routeLines.isEmpty()) {
                    this.routePlanCallback.onRoutePlanCallback(false, "抱歉，未找到合适的路线！", null, 0);
                    return;
                }
                this.routePlanCallback.routeAnalysisEndCallback(RoutePlaneResultType.SUCCESS);
                removeFromMap();
                BikingRouteLine bikingRouteLine = (BikingRouteLine) routeLines.get(0);
                List allStep = bikingRouteLine.getAllStep();
                if (allStep == null || allStep.isEmpty() || this.bdMap == null) {
                    this.routePlanCallback.onRoutePlanCallback(false, "抱歉，未找到合适的路线！", null, 0);
                    return;
                }
                int i2;
                this.route = bikingRouteLine;
                Iterator it = allStep.iterator();
                while (true) {
                    i2 = i;
                    if (!it.hasNext()) {
                        break;
                    }
                    List wayPoints = ((BikingStep) it.next()).getWayPoints();
                    if (wayPoints != null) {
                        i = wayPoints.size() + i2;
                    } else {
                        i = i2;
                    }
                }
                if (i2 > 2 && i2 < 10000) {
                    MyBikingRouteOverlay myBikingRouteOverlay = new MyBikingRouteOverlay(this.bdMap);
                    this.overlayManager = myBikingRouteOverlay;
                    this.bdMap.setOnMarkerClickListener(myBikingRouteOverlay);
                    myBikingRouteOverlay.setData(bikingRouteLine);
                    myBikingRouteOverlay.addToMap();
                    myBikingRouteOverlay.zoomToSpan();
                }
                if (this.routePlanCallback != null) {
                    getRouteNodes();
                }
            }
        }
    }

    public void onGetTransitRouteResult(TransitRouteResult transitRouteResult) {
        int i = 0;
        routePlaneEnd();
        if (this.routePlanCallback != null) {
            if (this.isCancle) {
                this.routePlanCallback.routeAnalysisEndCallback(RoutePlaneResultType.CANCLE);
            } else if (transitRouteResult == null || transitRouteResult.error != ERRORNO.NO_ERROR) {
                if (this.routePlanCallback != null) {
                    this.routePlanCallback.onRoutePlanCallback(false, "抱歉，未找到合适的路线！", null, 0);
                }
            } else if (transitRouteResult.error == ERRORNO.AMBIGUOUS_ROURE_ADDR) {
                getSuggestStartEndNodes(transitRouteResult.getSuggestAddrInfo());
            } else if (transitRouteResult.error == ERRORNO.NO_ERROR) {
                List routeLines = transitRouteResult.getRouteLines();
                if (routeLines == null || routeLines.isEmpty()) {
                    this.routePlanCallback.onRoutePlanCallback(false, "抱歉，未找到合适的路线！", null, 0);
                    return;
                }
                this.routePlanCallback.routeAnalysisEndCallback(RoutePlaneResultType.SUCCESS);
                removeFromMap();
                TransitRouteLine transitRouteLine = (TransitRouteLine) routeLines.get(0);
                List allStep = transitRouteLine.getAllStep();
                if (allStep == null || allStep.isEmpty() || this.bdMap == null) {
                    this.routePlanCallback.onRoutePlanCallback(false, "抱歉，未找到合适的路线！", null, 0);
                    return;
                }
                int i2;
                this.route = transitRouteLine;
                Iterator it = allStep.iterator();
                while (true) {
                    i2 = i;
                    if (!it.hasNext()) {
                        break;
                    }
                    List wayPoints = ((TransitStep) it.next()).getWayPoints();
                    if (wayPoints != null) {
                        i = wayPoints.size() + i2;
                    } else {
                        i = i2;
                    }
                }
                if (i2 > 2 && i2 < 10000) {
                    MyTransitRouteOverlay myTransitRouteOverlay = new MyTransitRouteOverlay(this, this.bdMap, null);
                    this.overlayManager = myTransitRouteOverlay;
                    this.bdMap.setOnMarkerClickListener(myTransitRouteOverlay);
                    myTransitRouteOverlay.setData(transitRouteLine);
                    myTransitRouteOverlay.addToMap();
                    myTransitRouteOverlay.zoomToSpan();
                }
                if (this.routePlanCallback != null) {
                    getRouteNodes();
                }
            }
        }
    }

    public void onGetMassTransitRouteResult(MassTransitRouteResult massTransitRouteResult) {
    }

    public void onGetWalkingRouteResult(WalkingRouteResult walkingRouteResult) {
        routePlaneEnd();
        if (this.routePlanCallback != null) {
            if (this.isCancle) {
                this.routePlanCallback.routeAnalysisEndCallback(RoutePlaneResultType.CANCLE);
            } else if (walkingRouteResult == null || walkingRouteResult.error != ERRORNO.NO_ERROR) {
                if (this.routePlanCallback != null) {
                    this.routePlanCallback.onRoutePlanCallback(false, "抱歉，未找到合适的路线！", null, 0);
                }
            } else if (walkingRouteResult.error == ERRORNO.AMBIGUOUS_ROURE_ADDR) {
                getSuggestStartEndNodes(walkingRouteResult.getSuggestAddrInfo());
            } else if (walkingRouteResult.error == ERRORNO.NO_ERROR) {
                List routeLines = walkingRouteResult.getRouteLines();
                if (routeLines == null || routeLines.isEmpty()) {
                    this.routePlanCallback.onRoutePlanCallback(false, "抱歉，未找到合适的路线！", null, 0);
                    return;
                }
                int i;
                this.routePlanCallback.routeAnalysisEndCallback(RoutePlaneResultType.SUCCESS);
                removeFromMap();
                WalkingRouteLine walkingRouteLine = (WalkingRouteLine) routeLines.get(0);
                int distance = walkingRouteLine.getDistance();
                WalkingRouteLine walkingRouteLine2 = walkingRouteLine;
                for (i = 1; i < routeLines.size(); i++) {
                    if (distance > ((WalkingRouteLine) routeLines.get(i)).getDistance()) {
                        distance = ((WalkingRouteLine) routeLines.get(i)).getDistance();
                        walkingRouteLine2 = (WalkingRouteLine) routeLines.get(i);
                    }
                }
                List<WalkingStep> allStep = walkingRouteLine2.getAllStep();
                if (allStep == null || allStep.isEmpty() || this.bdMap == null) {
                    this.routePlanCallback.onRoutePlanCallback(false, "抱歉，未找到合适的路线！", null, 0);
                    return;
                }
                this.route = walkingRouteLine2;
                i = 0;
                for (WalkingStep wayPoints : allStep) {
                    int size;
                    List wayPoints2 = wayPoints.getWayPoints();
                    if (wayPoints2 != null) {
                        size = wayPoints2.size() + i;
                    } else {
                        size = i;
                    }
                    i = size;
                }
                if (i > 2 && i < 10000) {
                    MyWalkingRouteOverlay myWalkingRouteOverlay = new MyWalkingRouteOverlay(this, this.bdMap, null);
                    this.overlayManager = myWalkingRouteOverlay;
                    this.bdMap.setOnMarkerClickListener(myWalkingRouteOverlay);
                    myWalkingRouteOverlay.setData(walkingRouteLine2);
                    myWalkingRouteOverlay.addToMap();
                    myWalkingRouteOverlay.zoomToSpan();
                }
                if (this.routePlanCallback != null) {
                    getRouteNodes();
                }
            }
        }
    }

    public void appointStartEndShowMarker(QMarker qMarker, QMarker qMarker2) {
        this.start = qMarker;
        this.end = qMarker2;
    }

    private void routePlaneEnd() {
        cancelTimer();
        this.isFinishFlag = true;
    }

    public void removeFromMap() {
        if (this.overlayManager != null) {
            this.overlayManager.removeFromMap();
            this.overlayManager = null;
        }
    }

    public void destory() {
        cancelTimer();
        if (this.mSearch != null) {
            this.mSearch.destroy();
        }
        this.bdMap = null;
    }

    public void cancelRoutePlane() {
        cancelTimer();
        this.isCancle = true;
        if (this.routePlanCallback != null) {
            this.routePlanCallback.routeAnalysisEndCallback(RoutePlaneResultType.CANCLE);
        }
    }

    private void startTimer() {
        this.myHandler.sendEmptyMessageDelayed(10010, 15000);
    }

    private void cancelTimer() {
        if (this.myHandler != null) {
            this.myHandler.removeMessages(10010);
        }
    }
}
