package com.iflytek.cloud;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class EvaluatorResult implements Parcelable {
    public static final Creator<EvaluatorResult> CREATOR = new Creator<EvaluatorResult>() {
        /* renamed from: a */
        public EvaluatorResult createFromParcel(Parcel parcel) {
            return new EvaluatorResult(parcel, null);
        }

        /* renamed from: a */
        public EvaluatorResult[] newArray(int i) {
            return new EvaluatorResult[i];
        }
    };
    private String a;

    private EvaluatorResult(Parcel parcel) {
        this.a = "";
        this.a = parcel.readString();
    }

    /* synthetic */ EvaluatorResult(Parcel parcel, AnonymousClass1 anonymousClass1) {
        this(parcel);
    }

    public EvaluatorResult(String str) {
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
