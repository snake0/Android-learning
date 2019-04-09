package com.baidu.mapapi.map;

import android.view.View;
import android.view.View.OnClickListener;
import com.baidu.mapsdkplatform.comapi.map.ab;

class w implements OnClickListener {
    final /* synthetic */ WearMapView a;

    w(WearMapView wearMapView) {
        this.a = wearMapView;
    }

    public void onClick(View view) {
        ab E = this.a.e.a().E();
        E.a += 1.0f;
        this.a.e.a().a(E, 300);
    }
}
