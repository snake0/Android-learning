package com.baidu.mapapi.map;

import android.view.View;
import android.view.View.OnClickListener;
import com.baidu.mapsdkplatform.comapi.map.ab;

class j implements OnClickListener {
    final /* synthetic */ MapView a;

    j(MapView mapView) {
        this.a = mapView;
    }

    public void onClick(View view) {
        float f = this.a.d.a().b;
        ab E = this.a.d.a().E();
        E.a -= 1.0f;
        if (E.a >= f) {
            f = E.a;
        }
        E.a = f;
        BaiduMap.mapStatusReason |= 16;
        this.a.d.a().a(E, 300);
    }
}
