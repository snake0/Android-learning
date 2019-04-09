package com.baidu.mapapi.search.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.baidu.mapapi.model.LatLng;

public class PoiDetailInfo implements Parcelable {
    public static final Creator<PoiDetailInfo> CREATOR = new e();
    public int a;
    public String b;
    public String c;
    public String d;
    public double e;
    public double f;
    public double g;
    public double h;
    public double i;
    public double j;
    public double k;
    public double l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public String s;
    public LatLng t;

    protected PoiDetailInfo(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readDouble();
        this.f = parcel.readDouble();
        this.g = parcel.readDouble();
        this.h = parcel.readDouble();
        this.i = parcel.readDouble();
        this.j = parcel.readDouble();
        this.k = parcel.readDouble();
        this.l = parcel.readDouble();
        this.m = parcel.readInt();
        this.n = parcel.readInt();
        this.p = parcel.readInt();
        this.o = parcel.readInt();
        this.q = parcel.readInt();
        this.r = parcel.readInt();
        this.s = parcel.readString();
        this.t = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeDouble(this.e);
        parcel.writeDouble(this.f);
        parcel.writeDouble(this.g);
        parcel.writeDouble(this.h);
        parcel.writeDouble(this.i);
        parcel.writeDouble(this.j);
        parcel.writeDouble(this.k);
        parcel.writeDouble(this.l);
        parcel.writeInt(this.m);
        parcel.writeInt(this.n);
        parcel.writeInt(this.p);
        parcel.writeInt(this.o);
        parcel.writeInt(this.q);
        parcel.writeInt(this.r);
        parcel.writeString(this.s);
        parcel.writeParcelable(this.t, 1);
    }
}
