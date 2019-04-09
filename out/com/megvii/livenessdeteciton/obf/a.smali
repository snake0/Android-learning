.class public final Lcom/megvii/livenessdeteciton/obf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/megvii/livenessdeteciton/obf/a;->b:J

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/megvii/livenessdeteciton/obf/a;->a:Ljava/lang/StringBuilder;

    .line 15
    return-void
.end method

.method private b()V
    .registers 6

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/megvii/livenessdeteciton/obf/a;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/megvii/livenessdeteciton/obf/a;->b:J

    .line 36
    iget-object v0, p0, Lcom/megvii/livenessdeteciton/obf/a;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    iget-object v0, p0, Lcom/megvii/livenessdeteciton/obf/a;->a:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_21
    iget-object v0, p0, Lcom/megvii/livenessdeteciton/obf/a;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/megvii/livenessdeteciton/obf/a;->b:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    iget-object v0, p0, Lcom/megvii/livenessdeteciton/obf/a;->a:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 3

    .prologue
    .line 48
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/megvii/livenessdeteciton/obf/a;->a:Ljava/lang/StringBuilder;

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/megvii/livenessdeteciton/obf/a;->b:J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 50
    monitor-exit p0

    return-void

    .line 48
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;)V
    .registers 6

    .prologue
    .line 26
    monitor-enter p0

    if-nez p1, :cond_5

    .line 31
    :goto_3
    monitor-exit p0

    return-void

    .line 28
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/megvii/livenessdeteciton/obf/a;->b()V

    .line 29
    iget-object v1, p0, Lcom/megvii/livenessdeteciton/obf/a;->a:Ljava/lang/StringBuilder;

    .line 2064
    const-string v0, ""

    .line 2065
    sget-object v2, Lcom/megvii/livenessdeteciton/obf/a$1;->a:[I

    invoke-virtual {p1}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3a

    .line 29
    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v0, p0, Lcom/megvii/livenessdeteciton/obf/a;->a:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    goto :goto_3

    .line 26
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2067
    :pswitch_25
    :try_start_25
    const-string v0, "n"

    goto :goto_17

    .line 2070
    :pswitch_28
    const-string v0, "b"

    goto :goto_17

    .line 2073
    :pswitch_2b
    const-string v0, "t"

    goto :goto_17

    .line 2076
    :pswitch_2e
    const-string v0, "m"

    goto :goto_17

    .line 2079
    :pswitch_31
    const-string v0, "o"

    goto :goto_17

    .line 2082
    :pswitch_34
    const-string v0, "l"

    goto :goto_17

    .line 2085
    :pswitch_37
    const-string v0, "c"
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_22

    goto :goto_17

    .line 2065
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
    .end packed-switch
.end method

.method public final declared-synchronized a(Lcom/megvii/livenessdetection/Detector$DetectionType;)V
    .registers 6

    .prologue
    .line 18
    monitor-enter p0

    if-nez p1, :cond_5

    .line 23
    :goto_3
    monitor-exit p0

    return-void

    .line 20
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/megvii/livenessdeteciton/obf/a;->b()V

    .line 21
    iget-object v1, p0, Lcom/megvii/livenessdeteciton/obf/a;->a:Ljava/lang/StringBuilder;

    .line 1092
    const-string v0, ""

    .line 1093
    sget-object v2, Lcom/megvii/livenessdeteciton/obf/a$1;->b:[I

    invoke-virtual {p1}, Lcom/megvii/livenessdetection/Detector$DetectionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_46

    .line 21
    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v0, p0, Lcom/megvii/livenessdeteciton/obf/a;->a:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    goto :goto_3

    .line 18
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1095
    :pswitch_25
    :try_start_25
    const-string v0, "N"

    goto :goto_17

    .line 1098
    :pswitch_28
    const-string v0, "O"

    goto :goto_17

    .line 1101
    :pswitch_2b
    const-string v0, "E"

    goto :goto_17

    .line 1104
    :pswitch_2e
    const-string v0, "M"

    goto :goto_17

    .line 1107
    :pswitch_31
    const-string v0, "Y"

    goto :goto_17

    .line 1110
    :pswitch_34
    const-string v0, "L"

    goto :goto_17

    .line 1113
    :pswitch_37
    const-string v0, "R"

    goto :goto_17

    .line 1116
    :pswitch_3a
    const-string v0, "P"

    goto :goto_17

    .line 1119
    :pswitch_3d
    const-string v0, "U"

    goto :goto_17

    .line 1122
    :pswitch_40
    const-string v0, "D"

    goto :goto_17

    .line 1125
    :pswitch_43
    const-string v0, "A"
    :try_end_45
    .catchall {:try_start_25 .. :try_end_45} :catchall_22

    goto :goto_17

    .line 1093
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
    .end packed-switch
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/megvii/livenessdeteciton/obf/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
