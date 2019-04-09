package com.baidu.mapapi.search.poi;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.mqunar.yvideo.BuildConfig;
import java.util.HashMap;
import java.util.Map;

public final class PoiFilter implements Parcelable {
    public static final Creator<PoiFilter> CREATOR = new b();
    private static Map<SortName, String> f = new HashMap();
    private String a = "";
    private String b = "";
    private String c = "";
    private String d = "";
    private String e = "";

    public final class Builder {
        private String a;
        private String b;
        private String c;
        private String d;
        private String e;

        public Builder() {
            PoiFilter.f.put(HotelSortName.DEFAULT, "default");
            PoiFilter.f.put(HotelSortName.HOTEL_LEVEL, "level");
            PoiFilter.f.put(HotelSortName.HOTEL_PRICE, "price");
            PoiFilter.f.put(HotelSortName.HOTEL_DISTANCE, "distance");
            PoiFilter.f.put(HotelSortName.HOTEL_HEALTH_SCORE, "health_score");
            PoiFilter.f.put(HotelSortName.HOTEL_TOTAL_SCORE, "total_score");
            PoiFilter.f.put(CaterSortName.DEFAULT, "default");
            PoiFilter.f.put(CaterSortName.CATER_DISTANCE, "distance");
            PoiFilter.f.put(CaterSortName.CATER_PRICE, "price");
            PoiFilter.f.put(CaterSortName.CATER_OVERALL_RATING, "overall_rating");
            PoiFilter.f.put(CaterSortName.CATER_SERVICE_RATING, "service_rating");
            PoiFilter.f.put(CaterSortName.CATER_TASTE_RATING, "taste_rating");
            PoiFilter.f.put(LifeSortName.DEFAULT, "default");
            PoiFilter.f.put(LifeSortName.PRICE, "price");
            PoiFilter.f.put(LifeSortName.LIFE_COMMENT_RATING, "comment_num");
            PoiFilter.f.put(LifeSortName.LIFE_OVERALL_RATING, "overall_rating");
            PoiFilter.f.put(LifeSortName.DISTANCE, "distance");
        }

        public PoiFilter build() {
            return new PoiFilter(this.a, this.b, this.c, this.e, this.d);
        }

        public Builder industryType(IndustryType industryType) {
            switch (industryType) {
                case HOTEL:
                    this.a = "hotel";
                    break;
                case CATER:
                    this.a = "cater";
                    break;
                case LIFE:
                    this.a = "life";
                    break;
                default:
                    this.a = "";
                    break;
            }
            return this;
        }

        public Builder isDiscount(boolean z) {
            if (z) {
                this.e = BuildConfig.VERSION_NAME;
            } else {
                this.e = "0";
            }
            return this;
        }

        public Builder isGroupon(boolean z) {
            if (z) {
                this.d = BuildConfig.VERSION_NAME;
            } else {
                this.d = "0";
            }
            return this;
        }

        public Builder sortName(SortName sortName) {
            if (!(TextUtils.isEmpty(this.a) || sortName == null)) {
                this.b = (String) PoiFilter.f.get(sortName);
            }
            return this;
        }

        public Builder sortRule(int i) {
            this.c = i + "";
            return this;
        }
    }

    public enum IndustryType {
        HOTEL,
        CATER,
        LIFE
    }

    public interface SortName {

        public enum CaterSortName implements SortName {
            DEFAULT,
            CATER_PRICE,
            CATER_DISTANCE,
            CATER_TASTE_RATING,
            CATER_OVERALL_RATING,
            CATER_SERVICE_RATING
        }

        public enum HotelSortName implements SortName {
            DEFAULT,
            HOTEL_PRICE,
            HOTEL_DISTANCE,
            HOTEL_TOTAL_SCORE,
            HOTEL_LEVEL,
            HOTEL_HEALTH_SCORE
        }

        public enum LifeSortName implements SortName {
            DEFAULT,
            PRICE,
            DISTANCE,
            LIFE_OVERALL_RATING,
            LIFE_COMMENT_RATING
        }
    }

    protected PoiFilter(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.e = parcel.readString();
        this.d = parcel.readString();
    }

    PoiFilter(String str, String str2, String str3, String str4, String str5) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.e = str4;
        this.d = str5;
    }

    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        if (!TextUtils.isEmpty(this.a)) {
            stringBuilder.append("industry_type:");
            stringBuilder.append(this.a);
            stringBuilder.append("|");
        }
        if (!TextUtils.isEmpty(this.b)) {
            stringBuilder.append("sort_name:");
            stringBuilder.append(this.b);
            stringBuilder.append("|");
        }
        if (!TextUtils.isEmpty(this.c)) {
            stringBuilder.append("sort_rule:");
            stringBuilder.append(this.c);
            stringBuilder.append("|");
        }
        if (!TextUtils.isEmpty(this.e)) {
            stringBuilder.append("discount:");
            stringBuilder.append(this.e);
            stringBuilder.append("|");
        }
        if (!TextUtils.isEmpty(this.d)) {
            stringBuilder.append("groupon:");
            stringBuilder.append(this.d);
            stringBuilder.append("|");
        }
        if (!TextUtils.isEmpty(stringBuilder.toString())) {
            stringBuilder.deleteCharAt(stringBuilder.length() - 1);
        }
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.e);
        parcel.writeString(this.d);
    }
}
