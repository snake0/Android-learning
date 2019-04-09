package com.mapquest.android.maps;

import com.iflytek.aiui.AIUIConstant;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONObject;

public class MapConfiguration {
    private static final String LOG_TAG = MapConfiguration.class.getSimpleName();
    private static final String TILE_VERSION_FILENAME = "mqTileVersion.json";
    private static final String TILE_VERSION_SERVICE_URL = "http://mapconfig.mapquest.com/mapconfig?version=3&format=json";
    static boolean versionUpdated;
    private String configStr = null;
    private Map<String, MapConfig> mapConfigList;
    private MapView mapView;

    class MapConfig {
        String coverage;
        List<String> formats = new ArrayList();
        String hostRangeHigh;
        String hostRangeLow;
        String type;
        String urlPattern;

        public boolean equals(MapConfig mapConfig) {
            return this.type.equals(mapConfig.type) && this.hostRangeHigh.equals(mapConfig.hostRangeHigh) && this.hostRangeLow.equals(mapConfig.hostRangeLow) && this.urlPattern.equals(mapConfig.urlPattern) && this.coverage.equals(mapConfig.coverage) && formatString().equals(mapConfig.formatString());
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("type: ").append(this.type).append(IOUtils.LINE_SEPARATOR_UNIX);
            stringBuilder.append("hostRangeHigh: ").append(this.hostRangeHigh).append(IOUtils.LINE_SEPARATOR_UNIX);
            stringBuilder.append("hostRangeLow: ").append(this.hostRangeLow).append(IOUtils.LINE_SEPARATOR_UNIX);
            stringBuilder.append("urlPattern: ").append(this.urlPattern).append(IOUtils.LINE_SEPARATOR_UNIX);
            stringBuilder.append("coverage: ").append(this.coverage).append(IOUtils.LINE_SEPARATOR_UNIX);
            stringBuilder.append("formats: ").append(formatString()).append(IOUtils.LINE_SEPARATOR_UNIX);
            return stringBuilder.toString();
        }

        private String formatString() {
            StringBuilder stringBuilder = new StringBuilder();
            if (this.formats.size() > 0) {
                stringBuilder.append("formats: ");
                for (String append : this.formats) {
                    stringBuilder.append(append).append(",");
                }
            }
            return stringBuilder.toString();
        }
    }

    class TileVersionUpdater extends Thread {
        private final String LOG_TAG = TileVersionUpdater.class.getSimpleName();

        public void run() {
            try {
                updateFile();
            } catch (Exception e) {
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:65:? A:{SYNTHETIC, RETURN} */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0081  */
        /* JADX WARNING: Removed duplicated region for block: B:16:0x0076 A:{SYNTHETIC, Splitter:B:16:0x0076} */
        /* JADX WARNING: Removed duplicated region for block: B:19:0x007b A:{SYNTHETIC, Splitter:B:19:0x007b} */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0081  */
        /* JADX WARNING: Removed duplicated region for block: B:65:? A:{SYNTHETIC, RETURN} */
        /* JADX WARNING: Removed duplicated region for block: B:46:0x00e7 A:{SYNTHETIC, Splitter:B:46:0x00e7} */
        /* JADX WARNING: Removed duplicated region for block: B:49:0x00ec A:{SYNTHETIC, Splitter:B:49:0x00ec} */
        /* JADX WARNING: Removed duplicated region for block: B:46:0x00e7 A:{SYNTHETIC, Splitter:B:46:0x00e7} */
        /* JADX WARNING: Removed duplicated region for block: B:49:0x00ec A:{SYNTHETIC, Splitter:B:49:0x00ec} */
        private void updateFile() {
            /*
            r8 = this;
            r1 = 0;
            r3 = 0;
            r4 = new java.io.File;
            r0 = com.mapquest.android.maps.MapConfiguration.this;
            r0 = r0.getRootDirectory();
            r2 = "mqTileVersion.json";
            r4.<init>(r0, r2);
            r0 = new java.util.HashMap;	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r0.<init>();	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r2 = "Referer";
            r5 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r5.<init>();	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r6 = "android://";
            r5 = r5.append(r6);	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r6 = com.mapquest.android.maps.MapConfiguration.this;	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r6 = r6.mapView;	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r6 = r6.getContext();	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r6 = r6.getPackageName();	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r5 = r5.append(r6);	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r5 = r5.toString();	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r0.put(r2, r5);	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r2 = "Accept";
            r5 = "*/*";
            r0.put(r2, r5);	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r2.<init>();	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r5 = "http://mapconfig.mapquest.com/mapconfig?version=3&format=json&sdk=";
            r2 = r2.append(r5);	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r5 = com.mapquest.android.maps.Util.getApiVersion();	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r2 = r2.append(r5);	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r2 = r2.toString();	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            r0 = com.mapquest.android.maps.HttpUtil.executeAsStream(r2, r0);	 Catch:{ Exception -> 0x0103, all -> 0x00e3 }
            if (r0 == 0) goto L_0x010a;
        L_0x005e:
            r2 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x0107, all -> 0x00f8 }
            r2.<init>(r4);	 Catch:{ Exception -> 0x0107, all -> 0x00f8 }
            r1 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
            r1 = new byte[r1];	 Catch:{ Exception -> 0x0072, all -> 0x00fe }
        L_0x0067:
            r4 = r0.read(r1);	 Catch:{ Exception -> 0x0072, all -> 0x00fe }
            if (r4 <= 0) goto L_0x00cd;
        L_0x006d:
            r5 = 0;
            r2.write(r1, r5, r4);	 Catch:{ Exception -> 0x0072, all -> 0x00fe }
            goto L_0x0067;
        L_0x0072:
            r1 = move-exception;
            r1 = r2;
        L_0x0074:
            if (r1 == 0) goto L_0x0079;
        L_0x0076:
            r1.close();	 Catch:{ Exception -> 0x00f2 }
        L_0x0079:
            if (r0 == 0) goto L_0x007e;
        L_0x007b:
            r0.close();	 Catch:{ Exception -> 0x00e0 }
        L_0x007e:
            r0 = r3;
        L_0x007f:
            if (r0 == 0) goto L_0x00cc;
        L_0x0081:
            r0 = com.mapquest.android.maps.MapConfiguration.this;
            r0 = r0.getConfigurationFromDisk();
            if (r0 == 0) goto L_0x00b6;
        L_0x0089:
            r1 = com.mapquest.android.maps.MapConfiguration.this;
            r1 = r1.configStr;
            r1 = r0.equals(r1);
            if (r1 != 0) goto L_0x00b6;
        L_0x0095:
            r1 = com.mapquest.android.maps.MapConfiguration.this;
            r1 = r1.mapView;
            r1.clearTilesInMemory();
            r1 = com.mapquest.android.maps.MapConfiguration.this;
            r1 = r1.mapView;
            r1 = r1.getTileCacher();
            r2 = com.mapquest.android.maps.TileCacher.CacheType.DB;
            r1 = r1.getCache(r2);
            r1.clear();
            r1 = 23;
            com.mapquest.android.maps.EventDispatcher.sendEmptyMessage(r1);
        L_0x00b6:
            r1 = com.mapquest.android.maps.MapConfiguration.this;
            r1.configStr = r0;
            r0 = com.mapquest.android.maps.MapConfiguration.this;
            r1 = com.mapquest.android.maps.MapConfiguration.this;
            r2 = com.mapquest.android.maps.MapConfiguration.this;
            r2 = r2.configStr;
            r1 = r1.parseConfiguration(r2);
            r0.mapConfigList = r1;
        L_0x00cc:
            return;
        L_0x00cd:
            r2.flush();	 Catch:{ Exception -> 0x0072, all -> 0x00fe }
            r1 = 1;
        L_0x00d1:
            if (r2 == 0) goto L_0x00d6;
        L_0x00d3:
            r2.close();	 Catch:{ Exception -> 0x00f0 }
        L_0x00d6:
            if (r0 == 0) goto L_0x00db;
        L_0x00d8:
            r0.close();	 Catch:{ Exception -> 0x00dd }
        L_0x00db:
            r0 = r1;
            goto L_0x007f;
        L_0x00dd:
            r0 = move-exception;
            r0 = r1;
            goto L_0x007f;
        L_0x00e0:
            r0 = move-exception;
            r0 = r3;
            goto L_0x007f;
        L_0x00e3:
            r0 = move-exception;
            r2 = r1;
        L_0x00e5:
            if (r2 == 0) goto L_0x00ea;
        L_0x00e7:
            r2.close();	 Catch:{ Exception -> 0x00f4 }
        L_0x00ea:
            if (r1 == 0) goto L_0x00ef;
        L_0x00ec:
            r1.close();	 Catch:{ Exception -> 0x00f6 }
        L_0x00ef:
            throw r0;
        L_0x00f0:
            r2 = move-exception;
            goto L_0x00d6;
        L_0x00f2:
            r1 = move-exception;
            goto L_0x0079;
        L_0x00f4:
            r2 = move-exception;
            goto L_0x00ea;
        L_0x00f6:
            r1 = move-exception;
            goto L_0x00ef;
        L_0x00f8:
            r2 = move-exception;
            r7 = r2;
            r2 = r1;
            r1 = r0;
            r0 = r7;
            goto L_0x00e5;
        L_0x00fe:
            r1 = move-exception;
            r7 = r1;
            r1 = r0;
            r0 = r7;
            goto L_0x00e5;
        L_0x0103:
            r0 = move-exception;
            r0 = r1;
            goto L_0x0074;
        L_0x0107:
            r2 = move-exception;
            goto L_0x0074;
        L_0x010a:
            r2 = r1;
            r1 = r3;
            goto L_0x00d1;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mapquest.android.maps.MapConfiguration$TileVersionUpdater.updateFile():void");
        }
    }

    public MapConfiguration(boolean z, MapView mapView) {
        this.mapView = mapView;
        this.configStr = getConfigurationFromDisk();
        if (this.configStr == null) {
            this.configStr = getDefaultConfiguration();
        }
        this.mapConfigList = parseConfiguration(this.configStr);
        if (z) {
            updateMapConfigFromServer();
        }
    }

    public Map<String, MapConfig> getMapConfigsList() {
        return this.mapConfigList;
    }

    public MapConfig getMapConfigByType(String str) {
        return this.mapConfigList.containsKey(str) ? (MapConfig) this.mapConfigList.get(str) : null;
    }

    public String getUrlPattern(String str, String str2) {
        String createKey = createKey(str, str2);
        if (this.mapConfigList == null || !this.mapConfigList.containsKey(createKey)) {
            return null;
        }
        MapConfig mapConfig = (MapConfig) this.mapConfigList.get(createKey);
        return mapConfig.urlPattern.replace("{$hostrange}", mapConfig.hostRangeLow);
    }

    public void updateMapConfigFromServer() {
        if (!versionUpdated) {
            versionUpdated = true;
            new TileVersionUpdater().start();
        }
    }

    private File getRootDirectory() {
        return Util.getAppFileDir(this.mapView.getContext(), "mapquest");
    }

    private String getConfigurationFromDisk() {
        File file = new File(getRootDirectory(), TILE_VERSION_FILENAME);
        String str = null;
        if (!file.exists()) {
            return str;
        }
        try {
            return Util.convertStreamToString(new FileInputStream(file));
        } catch (Exception e) {
            return str;
        }
    }

    private String getDefaultConfiguration() {
        String str = null;
        try {
            return Util.convertStreamToString(getClass().getResourceAsStream("/com/mapquest/android/maps/defaultMapConfig.json")).replaceAll("\\n", "").replaceAll("\\t", "");
        } catch (IOException e) {
            return str;
        }
    }

    private Map<String, MapConfig> parseConfiguration(String str) {
        HashMap hashMap = new HashMap();
        if (str != null && str.length() > 0) {
            try {
                JSONArray jSONArray = new JSONObject(str).getJSONObject("mapconfig").getJSONObject("services").getJSONObject("layers").getJSONArray("layer");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = (JSONObject) jSONArray.get(i);
                    MapConfig mapConfig = new MapConfig();
                    mapConfig.urlPattern = jSONObject.getString("urlpattern");
                    String string = jSONObject.getString(AIUIConstant.KEY_NAME);
                    mapConfig.type = string;
                    String string2 = jSONObject.getString("coverage");
                    mapConfig.coverage = jSONObject.getString("coverage");
                    JSONObject jSONObject2 = jSONObject.getJSONObject("hostrange");
                    mapConfig.hostRangeHigh = jSONObject2.getString("hi");
                    mapConfig.hostRangeLow = jSONObject2.getString("lo");
                    JSONArray jSONArray2 = jSONObject.getJSONObject("formats").getJSONArray("ext");
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        mapConfig.formats.add(jSONArray2.get(i2).toString());
                    }
                    hashMap.put(createKey(string2, string), mapConfig);
                }
            } catch (Exception e) {
            }
        }
        return hashMap;
    }

    private String createKey(String str, String str2) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str).append("-").append(str2);
        return stringBuilder.toString();
    }

    public boolean equals(MapConfiguration mapConfiguration) {
        Map mapConfigsList = mapConfiguration.getMapConfigsList();
        for (String str : mapConfigsList.keySet()) {
            boolean equals = ((MapConfig) this.mapConfigList.get(str)).equals((MapConfig) mapConfigsList.get(str));
            if (!equals) {
                return equals;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        if (this.mapConfigList != null) {
            for (String str : this.mapConfigList.keySet()) {
                if (this.mapConfigList.containsKey(str)) {
                    stringBuilder.append(((MapConfig) this.mapConfigList.get(str)).toString());
                }
            }
        }
        return stringBuilder.toString();
    }

    public void destroy() {
        this.mapView = null;
        this.mapConfigList = null;
        this.configStr = null;
    }
}
