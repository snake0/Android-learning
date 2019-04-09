package com.baidu.mapapi.map.offline;

import com.baidu.mapapi.model.CoordUtil;
import com.baidu.mapsdkplatform.comapi.map.q;
import com.baidu.mapsdkplatform.comapi.map.t;
import java.util.ArrayList;
import java.util.Iterator;

public class OfflineMapUtil {
    public static MKOLSearchRecord getSearchRecordFromLocalCityInfo(q qVar) {
        if (qVar == null) {
            return null;
        }
        long j;
        MKOLSearchRecord mKOLSearchRecord = new MKOLSearchRecord();
        mKOLSearchRecord.cityID = qVar.a;
        mKOLSearchRecord.cityName = qVar.b;
        mKOLSearchRecord.cityType = qVar.d;
        long j2 = 0;
        if (qVar.a() != null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = qVar.a().iterator();
            while (true) {
                j = j2;
                if (!it.hasNext()) {
                    break;
                }
                q qVar2 = (q) it.next();
                arrayList.add(getSearchRecordFromLocalCityInfo(qVar2));
                j2 = j + ((long) qVar2.c);
                mKOLSearchRecord.childCities = arrayList;
            }
        } else {
            j = 0;
        }
        if (mKOLSearchRecord.cityType == 1) {
            mKOLSearchRecord.dataSize = j;
        } else {
            mKOLSearchRecord.dataSize = (long) qVar.c;
        }
        return mKOLSearchRecord;
    }

    public static MKOLUpdateElement getUpdatElementFromLocalMapElement(t tVar) {
        if (tVar == null) {
            return null;
        }
        MKOLUpdateElement mKOLUpdateElement = new MKOLUpdateElement();
        mKOLUpdateElement.cityID = tVar.a;
        mKOLUpdateElement.cityName = tVar.b;
        if (tVar.g != null) {
            mKOLUpdateElement.geoPt = CoordUtil.mc2ll(tVar.g);
        }
        mKOLUpdateElement.level = tVar.e;
        mKOLUpdateElement.ratio = tVar.i;
        mKOLUpdateElement.serversize = tVar.h;
        if (tVar.i == 100) {
            mKOLUpdateElement.size = tVar.h;
        } else {
            mKOLUpdateElement.size = (tVar.h / 100) * tVar.i;
        }
        mKOLUpdateElement.status = tVar.l;
        mKOLUpdateElement.update = tVar.j;
        return mKOLUpdateElement;
    }
}
