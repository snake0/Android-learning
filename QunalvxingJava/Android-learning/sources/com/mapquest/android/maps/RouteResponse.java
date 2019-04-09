package com.mapquest.android.maps;

import com.mapquest.android.util.ShapeTransform;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import qunar.sdk.mapapi.utils.MapConstant.QUNAR_GPS_FIELD;

public class RouteResponse extends ServiceResponse {
    public Collections collections;
    private JSONHelper helper;
    public Route route;

    public class Collections {
        public List<List<Location>> locationList = new ArrayList();

        public Collections(JSONArray jSONArray) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONArray jSONArray2 = RouteResponse.this.helper.getJSONArray(i, jSONArray);
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    JSONObject jSONObject = RouteResponse.this.helper.getJSONObject(i2, jSONArray2);
                    RouteResponse.this.getClass();
                    arrayList.add(new Location(jSONObject));
                }
                this.locationList.add(arrayList);
            }
        }
    }

    public class Location {
        public String adminArea1;
        public String adminArea1Type;
        public String adminArea2;
        public String adminArea2Type;
        public String adminArea3;
        public String adminArea3Type;
        public String adminArea4;
        public String adminArea4Type;
        public String adminArea5;
        public String adminArea5Type;
        public GeoPoint displayLatLng;
        public String geocodeQuality;
        public String geocodeQualityCode;
        public GeoPoint latLng;
        public int linkId;
        public JSONObject locationJSON;
        public String postalCode;
        public String sideOfStreet;
        public String street;
        public String type;

        public Location(JSONObject jSONObject) {
            this.locationJSON = jSONObject;
            this.latLng = RouteResponse.this.buildGeoPoint(RouteResponse.this.helper.getJSONObject("latLng", jSONObject));
            this.displayLatLng = RouteResponse.this.buildGeoPoint(RouteResponse.this.helper.getJSONObject("displayLatLng", jSONObject));
            this.adminArea1 = RouteResponse.this.helper.getString("adminArea1", jSONObject);
            this.adminArea1Type = RouteResponse.this.helper.getString("adminArea1Type", jSONObject);
            this.adminArea2 = RouteResponse.this.helper.getString("adminArea2", jSONObject);
            this.adminArea2Type = RouteResponse.this.helper.getString("adminArea2Type", jSONObject);
            this.adminArea3 = RouteResponse.this.helper.getString("adminArea3", jSONObject);
            this.adminArea3Type = RouteResponse.this.helper.getString("adminArea3Type", jSONObject);
            this.adminArea4 = RouteResponse.this.helper.getString("adminArea4", jSONObject);
            this.adminArea4Type = RouteResponse.this.helper.getString("adminArea4Type", jSONObject);
            this.adminArea5 = RouteResponse.this.helper.getString("adminArea5", jSONObject);
            this.adminArea5Type = RouteResponse.this.helper.getString("adminArea5Type", jSONObject);
            this.street = RouteResponse.this.helper.getString("street", jSONObject);
            this.type = RouteResponse.this.helper.getString("type", jSONObject);
            this.linkId = RouteResponse.this.helper.getInt("linkId", jSONObject);
            this.postalCode = RouteResponse.this.helper.getString("postalCode", jSONObject);
            this.sideOfStreet = RouteResponse.this.helper.getString("sideOfStreet", jSONObject);
            this.geocodeQuality = RouteResponse.this.helper.getString("geocodeQuality", jSONObject);
            this.geocodeQualityCode = RouteResponse.this.helper.getString("geocodeQualityCode", jSONObject);
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            String str = this.geocodeQuality;
            if ("ADDRESS".equals(str) || "POINT".equals(str)) {
                stringBuilder.append(this.street).append(" ").append(this.adminArea5).append(", ").append(this.adminArea3).append(" ").append(this.postalCode);
            } else if ("STREET".equals(str)) {
                stringBuilder.append(this.street).append(" ").append(this.adminArea5).append(", ").append(this.adminArea3);
            } else if ("COUNTRY".equals(str)) {
                stringBuilder.append(this.adminArea1);
            } else if ("STATE".equals(str)) {
                stringBuilder.append(this.adminArea3);
            } else if ("COUNTY".equals(str)) {
                stringBuilder.append(this.adminArea4).append(" ").append(this.adminArea3);
            } else if ("ZIP".equals(str) || "ZIP_EXTENDED".equals(str)) {
                stringBuilder.append(this.postalCode).append(" ").append(this.adminArea3);
            } else if ("CITY".equals(str)) {
                stringBuilder.append(this.adminArea5).append(", ").append(this.adminArea3);
            } else if ("LATLNG".equals(str)) {
                if (this.displayLatLng != null) {
                    stringBuilder.append("Latitude: ").append(this.displayLatLng.getLatitude()).append(", Longitude: ").append(this.displayLatLng.getLongitude());
                } else {
                    stringBuilder.append("Latitude: ").append(this.latLng.getLatitude()).append(", Longitude: ").append(this.latLng.getLongitude());
                }
            }
            return stringBuilder.toString();
        }
    }

    class TimeDistance {
        public double distance;
        public String formattedTime;
        public int time;

        public TimeDistance(JSONObject jSONObject) {
            this.time = RouteResponse.this.helper.getInt(QUNAR_GPS_FIELD.TIME_FIELD, jSONObject);
            this.distance = RouteResponse.this.helper.getDouble("distance", jSONObject).doubleValue();
            this.formattedTime = RouteResponse.this.helper.getString("formattedTime", jSONObject);
        }
    }

    class RouteMeta extends TimeDistance {
        public boolean hasFerry;
        public boolean hasHighway;
        public boolean hasSeasonalClosure;
        public boolean hasTollRoad;
        public boolean hasUnpaved;

        public RouteMeta(JSONObject jSONObject) {
            super(jSONObject);
            this.hasSeasonalClosure = RouteResponse.this.helper.getBoolean("hasSeasonalClosure", jSONObject);
            this.hasUnpaved = RouteResponse.this.helper.getBoolean("hasUnpaved", jSONObject);
            this.hasHighway = RouteResponse.this.helper.getBoolean("hasHighway", jSONObject);
            this.hasFerry = RouteResponse.this.helper.getBoolean("hasFerry", jSONObject);
            this.hasTollRoad = RouteResponse.this.helper.getBoolean("hasTollRoad", jSONObject);
        }
    }

    public class Route extends RouteMeta {
        public BoundingBox boundingBox = new BoundingBox();
        public List<Leg> legs = new ArrayList();
        public List<Integer> locationSequence = new ArrayList();
        public List<Location> locations = new ArrayList();
        public Options options;
        public String sessionId;
        public Shape shape;
        final /* synthetic */ RouteResponse this$0;

        public class Leg extends RouteMeta {
            public int index;
            public List<Maneuver> maneuvers = new ArrayList();
            public Route route;

            public class Maneuver extends TimeDistance {
                public int attributes;
                public int direction;
                public String directionName;
                public String iconUrl;
                public int index;
                public String mapUrl;
                public String narrative;
                public List<Sign> signs = new ArrayList();
                public GeoPoint startPoint;
                public List<String> streets = new ArrayList();
                final /* synthetic */ Leg this$2;
                public String transportMode;
                public int turnType;

                public class Sign {
                    public int direction;
                    public String extraText;
                    public String text;
                    public int type;
                    public String url;

                    public Sign(JSONObject jSONObject) {
                        this.text = Route.this.this$0.helper.getString("text", jSONObject);
                        this.extraText = Route.this.this$0.helper.getString("extraText", jSONObject);
                        this.direction = Route.this.this$0.helper.getInt("direction", jSONObject);
                        this.type = Route.this.this$0.helper.getInt("type", jSONObject);
                        this.url = Route.this.this$0.helper.getString("url", jSONObject);
                    }
                }

                public Maneuver(Leg leg, JSONObject jSONObject) {
                    int i = 0;
                    this.this$2 = leg;
                    super(jSONObject);
                    JSONArray jSONArray = Route.this.this$0.helper.getJSONArray("signs", jSONObject);
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        JSONObject jSONObject2 = Route.this.this$0.helper.getJSONObject(i2, jSONArray);
                        if (jSONObject2 != null) {
                            this.signs.add(new Sign(jSONObject2));
                        }
                    }
                    this.index = Route.this.this$0.helper.getInt("index", jSONObject);
                    this.direction = Route.this.this$0.helper.getInt("direction", jSONObject);
                    this.narrative = Route.this.this$0.helper.getString("narrative", jSONObject);
                    this.iconUrl = Route.this.this$0.helper.getString("iconUrl", jSONObject);
                    JSONArray jSONArray2 = Route.this.this$0.helper.getJSONArray("streets", jSONObject);
                    while (i < jSONArray2.length()) {
                        String string = Route.this.this$0.helper.getString(i, jSONArray2);
                        if (string != null) {
                            this.streets.add(string);
                        }
                        i++;
                    }
                    this.attributes = Route.this.this$0.helper.getInt("attributes", jSONObject);
                    this.transportMode = Route.this.this$0.helper.getString("transportMode", jSONObject);
                    this.directionName = Route.this.this$0.helper.getString("directionName", jSONObject);
                    this.mapUrl = Route.this.this$0.helper.getString("mapUrl", jSONObject);
                    this.startPoint = Route.this.this$0.buildGeoPoint(Route.this.this$0.helper.getJSONObject("startPoint", jSONObject));
                    this.turnType = Route.this.this$0.helper.getInt("turnType", jSONObject);
                }
            }

            public Leg(JSONObject jSONObject) {
                super(jSONObject);
                this.index = Route.this.this$0.helper.getInt("index", jSONObject);
                JSONArray jSONArray = Route.this.this$0.helper.getJSONArray("maneuvers", jSONObject);
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = Route.this.this$0.helper.getJSONObject(i, jSONArray);
                    if (jSONObject2 != null) {
                        this.maneuvers.add(new Maneuver(this, jSONObject2));
                    }
                }
            }
        }

        public class Options {
            public boolean avoidTimedConditions;
            public List<Integer> avoidTripIds = new ArrayList();
            public boolean countryBoundaryDisplay;
            public int cyclingRoadFactor;
            public boolean destinationManeuverDisplay;
            public boolean enhancedNarrative;
            public int filterZoneFactor = -1;
            public int generalize;
            public String locale;
            public int maneuverPenalty;
            public boolean manmaps;
            public int maxLinkId;
            public int maxWalkingDistance;
            public List<Integer> mustAvoidLinkIds = new ArrayList();
            public String narrativeType;
            public String projection;
            public int routeNumber;
            public String routeType;
            public String shapeFormat;
            public boolean sideOfStreetDisplay;
            public boolean stateBoundaryDisplay;
            final /* synthetic */ Route this$1;
            public int timeType;
            public int transferPenalty;
            public List<Integer> tryAvoidLinkIds = new ArrayList();
            public String unit;
            public int urbanAvoidFactor;
            public int walkingSpeed;

            public Options(Route route, JSONObject jSONObject) {
                int i = 0;
                this.this$1 = route;
                if (jSONObject != null) {
                    int i2;
                    JSONArray jSONArray = route.this$0.helper.getJSONArray("mustAvoidLinkIds", jSONObject);
                    if (jSONArray != null) {
                        for (i2 = 0; i2 < jSONArray.length(); i2++) {
                            this.mustAvoidLinkIds.add(Integer.valueOf(route.this$0.helper.getInt(i2, jSONArray)));
                        }
                    }
                    this.countryBoundaryDisplay = route.this$0.helper.getBoolean("countryBoundaryDisplay", jSONObject);
                    this.generalize = route.this$0.helper.getInt("generalize", jSONObject);
                    this.narrativeType = route.this$0.helper.getString("narrativeType", jSONObject);
                    this.projection = route.this$0.helper.getString("projection", jSONObject);
                    this.locale = route.this$0.helper.getString("locale", jSONObject);
                    this.avoidTimedConditions = route.this$0.helper.getBoolean("avoidTimedConditions", jSONObject);
                    this.destinationManeuverDisplay = route.this$0.helper.getBoolean("destinationManeuverDisplay", jSONObject);
                    this.enhancedNarrative = route.this$0.helper.getBoolean("enhancedNarrative", jSONObject);
                    this.filterZoneFactor = route.this$0.helper.getInt("filterZoneFactor", jSONObject);
                    this.timeType = route.this$0.helper.getInt("timeType", jSONObject);
                    this.maxWalkingDistance = route.this$0.helper.getInt("maxWalkingDistance", jSONObject);
                    this.routeType = route.this$0.helper.getString("routeType", jSONObject);
                    this.transferPenalty = route.this$0.helper.getInt("transferPenalty", jSONObject);
                    this.stateBoundaryDisplay = route.this$0.helper.getBoolean("stateBoundaryDisplay", jSONObject);
                    this.walkingSpeed = route.this$0.helper.getInt("walkingSpeed", jSONObject);
                    this.maxLinkId = route.this$0.helper.getInt("maxLinkId", jSONObject);
                    jSONArray = route.this$0.helper.getJSONArray("tryAvoidLinkIds", jSONObject);
                    if (jSONArray != null) {
                        for (i2 = 0; i2 < jSONArray.length(); i2++) {
                            this.tryAvoidLinkIds.add(Integer.valueOf(route.this$0.helper.getInt(i2, jSONArray)));
                        }
                    }
                    this.unit = route.this$0.helper.getString("unit", jSONObject);
                    this.routeNumber = route.this$0.helper.getInt("routeNumber", jSONObject);
                    this.maneuverPenalty = route.this$0.helper.getInt("maneuverPenalty", jSONObject);
                    JSONArray jSONArray2 = route.this$0.helper.getJSONArray("avoidTripIds", jSONObject);
                    if (jSONArray2 != null) {
                        while (i < jSONArray2.length()) {
                            this.avoidTripIds.add(Integer.valueOf(route.this$0.helper.getInt(i, jSONArray2)));
                            i++;
                        }
                    }
                    this.manmaps = route.this$0.helper.getBoolean("manmaps", jSONObject);
                    this.sideOfStreetDisplay = route.this$0.helper.getBoolean("sideOfStreetDisplay", jSONObject);
                    this.cyclingRoadFactor = route.this$0.helper.getInt("cyclingRoadFactor", jSONObject);
                    this.urbanAvoidFactor = route.this$0.helper.getInt("urbanAvoidFactor", jSONObject);
                    this.shapeFormat = route.this$0.helper.getString("shapeFormat", jSONObject);
                }
            }
        }

        public class Shape {
            public List<Integer> legIndexes = new ArrayList();
            public List<Integer> manueverIndexes = new ArrayList();
            public List<GeoPoint> shapePoints = new ArrayList();
            final /* synthetic */ Route this$1;

            public Shape(Route route, JSONObject jSONObject, Options options) {
                int i;
                int i2 = 0;
                this.this$1 = route;
                JSONArray jSONArray = route.this$0.helper.getJSONArray("maneuverIndexes", jSONObject);
                for (i = 0; i < jSONArray.length(); i++) {
                    this.manueverIndexes.add(Integer.valueOf(route.this$0.helper.getInt(i, jSONArray)));
                }
                String str = options.shapeFormat;
                ShapeTransform shapeTransform;
                if ("raw".equals(str)) {
                    jSONArray = route.this$0.helper.getJSONArray("shapePoints", jSONObject);
                    i = 0;
                    while (i < jSONArray.length()) {
                        double d = route.this$0.helper.getDouble(i, jSONArray);
                        i++;
                        this.shapePoints.add(new GeoPoint(d, route.this$0.helper.getDouble(i, jSONArray)));
                        i++;
                    }
                } else if ("cmp6".equals(str)) {
                    shapeTransform = new ShapeTransform(6);
                    shapeTransform.setOptimizeShape(true);
                    this.shapePoints.addAll(shapeTransform.decodeCompressed(route.this$0.helper.getString("shapePoints", jSONObject)));
                } else if ("cmp5".equals(str)) {
                    shapeTransform = new ShapeTransform(6);
                    shapeTransform.setOptimizeShape(true);
                    this.shapePoints.addAll(shapeTransform.decodeCompressed(route.this$0.helper.getString("shapePoints", jSONObject)));
                }
                JSONArray jSONArray2 = route.this$0.helper.getJSONArray("legIndexes", jSONObject);
                while (i2 < jSONArray2.length()) {
                    this.legIndexes.add(Integer.valueOf(route.this$0.helper.getInt(i2, jSONArray2)));
                    i2++;
                }
            }
        }

        public Route(RouteResponse routeResponse, JSONObject jSONObject) {
            int i;
            int i2 = 0;
            this.this$0 = routeResponse;
            super(jSONObject);
            this.options = new Options(this, routeResponse.helper.getJSONObject("options", jSONObject));
            this.shape = new Shape(this, routeResponse.helper.getJSONObject("shape", jSONObject), this.options);
            JSONObject jSONObject2 = routeResponse.helper.getJSONObject("boundingBox", jSONObject);
            if (jSONObject2 != null) {
                this.boundingBox.ul = routeResponse.buildGeoPoint(routeResponse.helper.getJSONObject("ul", jSONObject2));
                this.boundingBox.lr = routeResponse.buildGeoPoint(routeResponse.helper.getJSONObject("lr", jSONObject2));
            }
            JSONArray jSONArray = routeResponse.helper.getJSONArray("locationSequence", jSONObject);
            for (i = 0; i < jSONArray.length(); i++) {
                this.locationSequence.add(Integer.valueOf(routeResponse.helper.getInt(i, jSONArray)));
            }
            this.sessionId = routeResponse.helper.getString("sessionId", jSONObject);
            jSONArray = routeResponse.helper.getJSONArray("locations", jSONObject);
            for (i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject3 = routeResponse.helper.getJSONObject(i, jSONArray);
                if (jSONObject3 != null) {
                    List list = this.locations;
                    routeResponse.getClass();
                    list.add(new Location(jSONObject3));
                }
            }
            JSONArray jSONArray2 = routeResponse.helper.getJSONArray("legs", jSONObject);
            while (i2 < jSONArray2.length()) {
                this.legs.add(new Leg(routeResponse.helper.getJSONObject(i2, jSONArray2)));
                i2++;
            }
        }
    }

    public RouteResponse(JSONObject jSONObject) {
        super(jSONObject);
        this.helper = super.getHelper();
        JSONArray jSONArray = this.helper.getJSONArray("collections", jSONObject);
        if (jSONArray != null) {
            this.collections = new Collections(jSONArray);
        }
        this.route = new Route(this, this.helper.getJSONObject("route", jSONObject));
    }

    /* Access modifiers changed, original: 0000 */
    public GeoPoint buildGeoPoint(JSONObject jSONObject) {
        return jSONObject != null ? new GeoPoint(this.helper.getDouble("lat", jSONObject).doubleValue(), this.helper.getDouble("lng", jSONObject).doubleValue()) : null;
    }
}
