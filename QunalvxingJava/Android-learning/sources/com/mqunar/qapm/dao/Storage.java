package com.mqunar.qapm.dao;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.mqunar.qapm.QAPM;
import com.mqunar.qapm.QAPMConstant;
import com.mqunar.qapm.domain.BaseData;
import com.mqunar.qapm.domain.NetworkData;
import com.mqunar.qapm.domain.UIData;
import com.mqunar.qapm.utils.IOUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;

public class Storage implements IStorage {
    private static Storage a = null;
    private static HandlerThread b;
    private static Handler c;
    private static List<BaseData> d = new ArrayList();
    private NetworkDataParse e = NetworkDataParse.newInstance();
    private UIDataParse f = UIDataParse.newInstance();

    private Storage() {
    }

    public static Storage newStorage(Context context) {
        if (a == null) {
            synchronized (UIDataParse.class) {
                if (a == null) {
                    a = new Storage();
                }
            }
        }
        return a;
    }

    public void putData(BaseData baseData) {
        c().post(new a(this, baseData));
    }

    public void saveData(BaseData baseData) {
        if (baseData != null) {
            d.add(baseData);
        }
        String saveDataFile = QAPM.getSaveDataFile(System.currentTimeMillis() + "");
        if (saveDataFile != null) {
            IOUtils.str2File(a(d), saveDataFile);
            d.clear();
        }
    }

    private String a(List<BaseData> list) {
        JSONArray jSONArray = new JSONArray();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return jSONArray.toString();
            }
            Object obj = null;
            if (list.get(i2) instanceof NetworkData) {
                obj = this.e.convertImplData2Json((BaseData) list.get(i2));
            } else if (list.get(i2) instanceof UIData) {
                obj = this.f.convertImplData2Json((BaseData) list.get(i2));
            }
            if (obj != null) {
                jSONArray.put(obj);
            }
            i = i2 + 1;
        }
    }

    public void popData() {
        c().post(new b(this));
    }

    private HandlerThread b() {
        if (b == null) {
            b = new HandlerThread(QAPMConstant.THREAD_STORAGE);
            b.start();
        }
        return b;
    }

    private Handler c() {
        if (c == null) {
            synchronized (Storage.class) {
                if (c == null) {
                    c = new Handler(b().getLooper());
                }
            }
        }
        return c;
    }
}
