package com.mapquest.android.maps;

class TomTomTileFactory extends OSMTileFactory {
    private static final String LOG_TAG = TomTomTileFactory.class.getSimpleName();
    protected static final boolean USE_TILE_CACHE_SERVER = false;
    private MapConfiguration mapConfiguration;
    StringBuilder sb = new StringBuilder(256);

    public TomTomTileFactory(MapView mapView, MapConfiguration mapConfiguration) {
        super(mapView);
        this.mapConfiguration = mapConfiguration;
    }

    /* Access modifiers changed, original: protected */
    public String getProvider() {
        return "tt";
    }

    public MapProvider getMapProvider() {
        return MapProvider.TOMTOM;
    }

    public boolean isSupportedTileType(TileType tileType) {
        return tileType == TileType.MAP || tileType == TileType.HYB || tileType == TileType.SAT || tileType == TileType.SATHYB || tileType == TileType.TRAFFIC;
    }

    /* Access modifiers changed, original: protected */
    public String getTileURL(Tile tile) {
        String url = getURL(tile.getTileType());
        if (url == null) {
            return getFallbackTileUrl(tile);
        }
        try {
            return url.replace("{$z}", tile.getZoomLevel() + "").replace("{$x}", tile.getX() + "").replace("{$y}", tile.getY() + "").replace("{$ext}", "jpg");
        } catch (Exception e) {
            return getFallbackTileUrl(tile);
        }
    }

    private String getFallbackTileUrl(Tile tile) {
        String fallbackUrl = getFallbackUrl();
        this.sb.setLength(0);
        this.sb.append(fallbackUrl);
        this.sb.append(tile.getTileType()).append("/");
        this.sb.append(tile.getZoomLevel()).append("/");
        this.sb.append(tile.getX()).append("/");
        this.sb.append(tile.getY()).append(".jpg");
        return this.sb.toString();
    }

    /* Access modifiers changed, original: protected */
    public String getFallbackUrl() {
        return MapProvider.TOMTOM.getTileFallbackUrl();
    }

    /* Access modifiers changed, original: protected */
    public String getURL(TileType tileType) {
        return this.mapConfiguration.getUrlPattern("commercial2", tileType.value());
    }
}