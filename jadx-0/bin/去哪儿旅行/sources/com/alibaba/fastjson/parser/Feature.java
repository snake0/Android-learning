package com.alibaba.fastjson.parser;

public enum Feature {
    AutoCloseSource,
    AllowComment,
    AllowUnQuotedFieldNames,
    AllowSingleQuotes,
    InternFieldNames,
    AllowISO8601DateFormat,
    AllowArbitraryCommas,
    UseBigDecimal,
    IgnoreNotMatch,
    SortFeidFastMatch,
    DisableASM,
    DisableCircularReferenceDetect,
    InitStringFieldAsEmpty,
    SupportArrayToBean;
    
    private final int mask;

    public final int getMask() {
        return this.mask;
    }

    public static boolean isEnabled(int i, Feature feature) {
        return (feature.getMask() & i) != 0;
    }

    public static int config(int i, Feature feature, boolean z) {
        if (z) {
            return feature.getMask() | i;
        }
        return (feature.getMask() ^ -1) & i;
    }

    public static int of(Feature[] featureArr) {
        int i = 0;
        if (featureArr != null) {
            int i2 = 0;
            while (i2 < featureArr.length) {
                int mask = featureArr[i2].getMask() | i;
                i2++;
                i = mask;
            }
        }
        return i;
    }
}
