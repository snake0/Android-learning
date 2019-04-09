.class public Lcom/iflytek/msc/VAD;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AppendData(J[BI)I
.end method

.method public static native CalcVolumLevel(J[BILcom/iflytek/msc/VAD$VadData;)I
.end method

.method public static native EndAudioData(J)I
.end method

.method public static native FetchData(JLcom/iflytek/msc/VAD$VadData;)I
.end method

.method public static native GetLastSpeechPos(JLcom/iflytek/msc/VAD$VadData;)I
.end method

.method public static native Initialize(I)J
.end method

.method public static native Reset(J)V
.end method

.method public static native SetParam(JII)I
.end method

.method public static native Uninitialize(J)V
.end method
