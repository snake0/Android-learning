.class public Lcom/uc/browser/aerie/DalvikPatch;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native adjustLinearAlloc()I
.end method

.method private static native dumpLinearAlloc()V
.end method

.method private static native getError()I
.end method

.method private static native getMapAddr()I
.end method

.method private static native getMapLength()I
.end method

.method private static native getMapUsed()I
.end method

.method private static native isDalvik()Z
.end method
