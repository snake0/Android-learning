package qunar.sdk.mapapi.entity;

public class QMarkerV2 extends QMarker {
    private boolean draggable;
    private boolean flat;
    private float opacity;

    public boolean isFlat() {
        return this.flat;
    }

    public void setFlat(boolean z) {
        this.flat = z;
    }

    public boolean isDraggable() {
        return this.draggable;
    }

    public void setDraggable(boolean z) {
        this.draggable = z;
    }

    public float getOpacity() {
        return this.opacity;
    }

    public void setOpacity(float f) {
        this.opacity = f;
    }
}
