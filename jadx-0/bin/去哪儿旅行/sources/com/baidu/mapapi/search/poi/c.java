package com.baidu.mapapi.search.poi;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class c implements Creator<PoiIndoorResult> {
    c() {
    }

    /* renamed from: a */
    public PoiIndoorResult createFromParcel(Parcel parcel) {
        return new PoiIndoorResult(parcel);
    }

    /* renamed from: a */
    public PoiIndoorResult[] newArray(int i) {
        return new PoiIndoorResult[i];
    }
}
