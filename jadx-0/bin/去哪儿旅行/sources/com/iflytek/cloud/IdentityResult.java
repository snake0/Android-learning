package com.iflytek.cloud;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class IdentityResult implements Parcelable {
    public static final Creator<IdentityResult> CREATOR = new Creator<IdentityResult>() {
        /* renamed from: a */
        public IdentityResult createFromParcel(Parcel parcel) {
            return new IdentityResult(parcel, null);
        }

        /* renamed from: a */
        public IdentityResult[] newArray(int i) {
            return new IdentityResult[i];
        }
    };
    private String a;

    private IdentityResult(Parcel parcel) {
        this.a = "";
        this.a = parcel.readString();
    }

    /* synthetic */ IdentityResult(Parcel parcel, AnonymousClass1 anonymousClass1) {
        this(parcel);
    }

    public IdentityResult(String str) {
        this.a = "";
        if (str != null) {
            this.a = str;
        }
    }

    public int describeContents() {
        return 0;
    }

    public String getResultString() {
        return this.a;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
    }
}
