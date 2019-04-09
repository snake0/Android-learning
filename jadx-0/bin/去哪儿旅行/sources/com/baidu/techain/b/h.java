package com.baidu.techain.b;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Base64;
import com.baidu.techain.ac.F;
import com.baidu.techain.b;
import com.baidu.techain.core.d;
import com.baidu.techain.core.i;
import com.baidu.techain.e;
import com.mqunar.tools.DateTimeUtils;
import com.mqunar.yvideo.BuildConfig;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.net.URLEncoder;
import java.security.PublicKey;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.io.IOUtils;
import org.json.JSONObject;

public final class h {
    public static String a(Context context, String str, String str2, boolean z) {
        return a(context, str, str2, z, false);
    }

    public static String a(Context context, String str, String str2) {
        return a(context, str, str2, false, false);
    }

    public static String a(Context context, String str, String str2, boolean z, boolean z2) {
        byte[] bytes;
        CharSequence a;
        String[] g = e.g(context);
        String str3 = g[0];
        String str4 = g[1];
        String valueOf = String.valueOf(new Date().getTime() / 1000);
        String a2 = o.a(str3 + valueOf + str4);
        byte[] a3 = i.a();
        new StringBuilder().append(new String(a3));
        b.a();
        if (TextUtils.isEmpty(str2)) {
            bytes = "".getBytes();
        } else {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str2.getBytes());
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            j.a(byteArrayInputStream, byteArrayOutputStream);
            byte[] toByteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
            byteArrayInputStream.close();
            new StringBuilder().append(toByteArray.length);
            b.a();
            bytes = F.getInstance().ae(toByteArray, a3);
        }
        new StringBuilder().append(bytes.length).append(",").append(new String(bytes));
        b.a();
        byte[] bytes2 = o.a(g.a(context)).getBytes();
        new StringBuilder().append(new String(bytes2));
        b.a();
        a3 = F.getInstance().re(a3, bytes2);
        new StringBuilder().append(a3.length);
        b.a();
        String encodeToString = Base64.encodeToString(a3, 0);
        new StringBuilder().append(encodeToString);
        b.a();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str).append("/120/").append(str3).append("/").append(valueOf).append("/").append(a2);
        if (!TextUtils.isEmpty(encodeToString)) {
            stringBuilder.append("?skey=").append(URLEncoder.encode(encodeToString, "utf-8"));
        }
        b.a();
        str3 = "";
        if (z2) {
            try {
                a = new m(context).a(stringBuilder.toString());
            } catch (Throwable th) {
                Object a4 = str3;
                e.a();
            }
        } else {
            a4 = new m(context).a(stringBuilder.toString(), bytes);
        }
        b.a();
        if (z && TextUtils.isEmpty(a4)) {
            try {
                e eVar = new e(context);
                long currentTimeMillis = System.currentTimeMillis();
                long j = eVar.a.getLong("pu_cl_fd", 0);
                if (j == 0) {
                    j = System.currentTimeMillis();
                    eVar.j();
                }
                if (currentTimeMillis - j > DateTimeUtils.ONE_DAY) {
                    Map hashMap = new HashMap();
                    if (e.e(context)) {
                        hashMap.put("0", Integer.valueOf(eVar.l() + 1));
                        hashMap.put(BuildConfig.VERSION_NAME, Integer.valueOf(eVar.m()));
                    } else {
                        hashMap.put("0", Integer.valueOf(eVar.l()));
                        hashMap.put(BuildConfig.VERSION_NAME, Integer.valueOf(eVar.m() + 1));
                    }
                    eVar.c.putInt("mo_fa_pu_cl", 0);
                    eVar.c.commit();
                    eVar.c.putInt("wi_fa_pu_cl", 0);
                    eVar.c.commit();
                    eVar.j();
                    e.a(context, "1003112", hashMap);
                    throw new NetworkErrorException("response is empty");
                }
                if (e.e(context)) {
                    eVar.a(eVar.l() + 1);
                } else {
                    eVar.b(eVar.m() + 1);
                }
                throw new NetworkErrorException("response is empty");
            } catch (Throwable th2) {
                e.a();
            }
        } else {
            JSONObject jSONObject = new JSONObject(a4);
            str4 = jSONObject.optString("skey");
            new StringBuilder().append(str4);
            b.a();
            bytes = Base64.decode(str4, 0);
            new StringBuilder().append(bytes.length);
            b.a();
            bytes = F.getInstance().rd(bytes, bytes2);
            new StringBuilder().append(new String(bytes));
            b.a();
            valueOf = jSONObject.optString("response");
            new StringBuilder().append(jSONObject.optString("request_id"));
            b.a();
            new StringBuilder().append(valueOf);
            b.a();
            byte[] decode = Base64.decode(valueOf, 0);
            new StringBuilder().append(decode.length);
            b.a();
            bytes = F.getInstance().ad(decode, bytes);
            if (decode == null || decode.length <= 0 || (bytes != null && bytes.length != 0)) {
                return new String(bytes);
            }
            e.k(context);
            throw new NetworkErrorException("aes is fail");
        }
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) {
        int i;
        int i2;
        byte b;
        int i3 = 0;
        byte[] bArr3 = new byte[256];
        for (i = 0; i < 256; i++) {
            bArr3[i] = (byte) i;
        }
        if (bArr2 == null || bArr2.length == 0) {
            bArr3 = null;
        } else {
            i2 = 0;
            int i4 = 0;
            for (i = 0; i < 256; i++) {
                i2 = (i2 + ((bArr2[i4] & 255) + (bArr3[i] & 255))) & 255;
                b = bArr3[i];
                bArr3[i] = bArr3[i2];
                bArr3[i2] = b;
                i4 = (i4 + 1) % bArr2.length;
            }
        }
        byte[] bArr4 = new byte[bArr.length];
        i = 0;
        i2 = 0;
        while (i3 < bArr.length) {
            i2 = (i2 + 1) & 255;
            i = (i + (bArr3[i2] & 255)) & 255;
            b = bArr3[i2];
            bArr3[i2] = bArr3[i];
            bArr3[i] = b;
            int i5 = ((bArr3[i2] & 255) + (bArr3[i] & 255)) & 255;
            bArr4[i3] = (byte) (bArr3[i5] ^ bArr[i3]);
            bArr4[i3] = (byte) (bArr4[i3] ^ 42);
            i3++;
        }
        return bArr4;
    }

    public static boolean a(Context context) {
        JSONObject jSONObject;
        PackageManager packageManager;
        PackageInfo packageInfo;
        try {
            jSONObject = new JSONObject();
            String packageName = context.getPackageName();
            jSONObject.put("pkg", packageName);
            packageManager = context.getPackageManager();
            packageInfo = null;
            packageInfo = packageManager.getPackageInfo(packageName, 64);
        } catch (Throwable th) {
            new StringBuilder(" exception ").append(th.toString());
            b.a();
            e.a();
            return false;
        }
        if (packageInfo != null) {
            PublicKey a = e.a(packageInfo, packageInfo.applicationInfo.sourceDir);
            if (a != null) {
                byte[] encoded = a.getEncoded();
                if (encoded != null) {
                    e.a(context, encoded);
                    jSONObject.put("sign", o.a(Base64.encodeToString(encoded, 0).replace(IOUtils.LINE_SEPARATOR_UNIX, "").replace("\r", "")));
                    b.a();
                }
            } else {
                jSONObject.put("sign", "");
            }
            jSONObject.put("app", e.e(packageInfo.applicationInfo.loadLabel(packageManager).toString()));
        } else {
            jSONObject.put("sign", "");
            jSONObject.put("app", "");
        }
        String jSONObject2 = jSONObject.toString();
        b.a();
        jSONObject2 = a(context, e.b() + "p/1/auh", jSONObject2, false);
        new StringBuilder().append(jSONObject2);
        b.a();
        jSONObject = new JSONObject(jSONObject2);
        if (jSONObject.length() <= 0) {
            return false;
        }
        int optInt = jSONObject.optInt("code");
        b.a();
        if (optInt != 200) {
            return false;
        }
        jSONObject2 = jSONObject.optString("ak");
        String optString = jSONObject.optString("sk");
        if (TextUtils.isEmpty(jSONObject2) || TextUtils.isEmpty(optString)) {
            return false;
        }
        d a2 = d.a(context);
        try {
            if (!(TextUtils.isEmpty(jSONObject2) || TextUtils.isEmpty(optString))) {
                if (!("3".equals(jSONObject2) && "925fc15df8a49bed0b3eca8d2b44cb7b".equals(optString))) {
                    e.a(jSONObject2, optString);
                    e eVar = a2.a;
                    eVar.c.putString("svi_n", jSONObject2 + "-" + optString);
                    eVar.c.commit();
                }
            }
        } catch (Throwable th2) {
            e.a();
        }
        return true;
    }
}
