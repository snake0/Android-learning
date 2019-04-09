package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;

class DrawableCompatKitKat {
    DrawableCompatKitKat() {
    }

    public static void setAutoMirrored(Drawable drawable, boolean z) {
        drawable.setAutoMirrored(z);
    }

    public static boolean isAutoMirrored(Drawable drawable) {
        return drawable.isAutoMirrored();
    }

    public static Drawable wrapForTinting(Drawable drawable) {
        if (drawable instanceof DrawableWrapperKitKat) {
            return drawable;
        }
        return new DrawableWrapperKitKat(drawable);
    }
}
