package com.baidu.techain.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class c implements Parcelable {
    public static final Creator<c> CREATOR = new Creator<c>() {
        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new c[i];
        }

        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new c(parcel);
        }
    };
    public int a;
    public int b;
    public String c;
    public Object[] d;
    public Object[] e;
    public Object f;

    protected c(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readInt();
        this.c = parcel.readString();
        this.e = parcel.readArray(c.class.getClassLoader());
        this.d = parcel.readArray(c.class.getClassLoader());
        this.f = parcel.readValue(c.class.getClassLoader());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        parcel.writeString(this.c);
        parcel.writeArray(this.e);
        parcel.writeArray(this.d);
        parcel.writeValue(this.f);
    }
}
