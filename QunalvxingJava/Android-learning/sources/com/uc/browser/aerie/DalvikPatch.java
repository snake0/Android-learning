package com.uc.browser.aerie;

public class DalvikPatch {
    private static native int adjustLinearAlloc();

    private static native void dumpLinearAlloc();

    private static native int getError();

    private static native int getMapAddr();

    private static native int getMapLength();

    private static native int getMapUsed();

    private static native boolean isDalvik();
}
