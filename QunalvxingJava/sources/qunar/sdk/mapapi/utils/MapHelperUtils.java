package qunar.sdk.mapapi.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import com.baidu.mapapi.map.BitmapDescriptor;
import com.baidu.mapapi.map.BitmapDescriptorFactory;
import com.baidu.mapapi.map.MapView;
import com.baidu.mapapi.map.Projection;
import com.baidu.mapapi.model.LatLng;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import qunar.sdk.location.QLocation;
import qunar.sdk.mapapi.QunarMapType;
import qunar.sdk.mapapi.entity.QMarker;

public class MapHelperUtils {
    public static BitmapDescriptor createBitmapDescriptor(QMarker qMarker) {
        switch (qMarker.paramerCase) {
            case ASSETNAME_TYPE:
                return BitmapDescriptorFactory.fromAsset(qMarker.imagePath);
            case FILENAME_TYPE:
                return BitmapDescriptorFactory.fromFile(qMarker.imagePath);
            case ABSOLUTEPATH_TYPE:
                return BitmapDescriptorFactory.fromPath(qMarker.imagePath);
            case IMAGE_TYPE:
                return BitmapDescriptorFactory.fromBitmap(qMarker.bitmap);
            case RESOURCEID_TYPE:
                return BitmapDescriptorFactory.fromResource(qMarker.resourceId);
            case VIEW_TYPE:
                if (qMarker.view != null) {
                    return BitmapDescriptorFactory.fromView(qMarker.view);
                }
                return null;
            default:
                return null;
        }
    }

    public static Drawable createDrawable(Context context, QMarker qMarker) {
        Drawable drawable = null;
        if (qMarker == null) {
            return drawable;
        }
        Bitmap decodeFile;
        switch (qMarker.paramerCase) {
            case ASSETNAME_TYPE:
                if (context == null) {
                    return drawable;
                }
                try {
                    InputStream open = context.getAssets().open(qMarker.imagePath);
                    drawable = Drawable.createFromStream(open, null);
                    open.close();
                    return drawable;
                } catch (Exception e) {
                    return drawable;
                }
            case FILENAME_TYPE:
                if (qMarker.imagePath == null || qMarker.imagePath.equals("") || context == null || context == null) {
                    return drawable;
                }
                try {
                    FileInputStream openFileInput = context.openFileInput(qMarker.imagePath);
                    drawable = Drawable.createFromStream(openFileInput, null);
                    openFileInput.close();
                    return drawable;
                } catch (Exception e2) {
                    return drawable;
                }
            case ABSOLUTEPATH_TYPE:
                try {
                    decodeFile = BitmapFactory.decodeFile(qMarker.imagePath);
                    if (decodeFile == null || decodeFile == null) {
                        return drawable;
                    }
                    Drawable bitmapDrawable = new BitmapDrawable(context.getResources(), decodeFile);
                    try {
                        decodeFile.recycle();
                        return bitmapDrawable;
                    } catch (Exception e3) {
                        return bitmapDrawable;
                    }
                } catch (Exception e4) {
                    return drawable;
                }
            case IMAGE_TYPE:
                try {
                    return new BitmapDrawable(context.getResources(), qMarker.bitmap);
                } catch (Exception e5) {
                    return drawable;
                }
            case RESOURCEID_TYPE:
                try {
                    return context.getResources().getDrawable(qMarker.resourceId);
                } catch (Exception e6) {
                    return drawable;
                }
            case VIEW_TYPE:
                try {
                    decodeFile = view2Bitmap(qMarker.view);
                    if (decodeFile != null) {
                        return new BitmapDrawable(context.getResources(), decodeFile);
                    }
                    return drawable;
                } catch (Exception e7) {
                    return drawable;
                }
            default:
                return drawable;
        }
    }

    public static Bitmap view2Bitmap(View view) {
        if (view == null) {
            return null;
        }
        view.destroyDrawingCache();
        view.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        view.setDrawingCacheEnabled(true);
        return view.getDrawingCache(true);
    }

    public static List<QMarker> checkOverlap(ViewGroup viewGroup, QMarker qMarker, List<QMarker> list, int i, int i2, QunarMapType qunarMapType) {
        if (qMarker == null || list == null || list.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        QLocation qLocation = qMarker.position;
        if (qunarMapType == QunarMapType.BAIDU) {
            if (viewGroup instanceof MapView) {
                MapView mapView = (MapView) viewGroup;
                LatLng latLng = new LatLng(qLocation.getLatitude(), qLocation.getLongitude());
                Projection projection = mapView.getMap().getProjection();
                Point toScreenLocation = projection.toScreenLocation(latLng);
                for (QMarker qMarker2 : list) {
                    QLocation qLocation2 = qMarker2.position;
                    Point toScreenLocation2 = projection.toScreenLocation(new LatLng(qLocation2.getLatitude(), qLocation2.getLongitude()));
                    if (!(toScreenLocation.x == toScreenLocation2.x && toScreenLocation.y == toScreenLocation2.y) && toScreenLocation.x + i > toScreenLocation2.x && toScreenLocation.x < toScreenLocation2.x + i && toScreenLocation.y + i2 > toScreenLocation2.y && toScreenLocation.y < toScreenLocation2.y + i2) {
                        arrayList.add(qMarker2);
                    }
                }
            }
        } else if (qunarMapType == QunarMapType.GAODE) {
        }
        return arrayList;
    }
}
