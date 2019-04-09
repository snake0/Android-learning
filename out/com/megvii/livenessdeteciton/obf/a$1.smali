.class final synthetic Lcom/megvii/livenessdeteciton/obf/a$1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 93
    invoke-static {}, Lcom/megvii/livenessdetection/Detector$DetectionType;->values()[Lcom/megvii/livenessdetection/Detector$DetectionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->b:[I

    :try_start_9
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->b:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->NONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_107

    :goto_14
    :try_start_14
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->b:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->DONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_104

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->b:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->BLINK:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_101

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->b:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->MOUTH:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_fe

    :goto_35
    :try_start_35
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->b:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_YAW:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_fb

    :goto_40
    :try_start_40
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->b:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_YAW_LEFT:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_f8

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->b:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_YAW_RIGHT:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_f5

    :goto_56
    :try_start_56
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->b:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_PITCH:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_f2

    :goto_62
    :try_start_62
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->b:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_PITCH_UP:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_ef

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->b:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_PITCH_DOWN:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_ed

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->b:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->AIMLESS:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_eb

    .line 65
    :goto_86
    invoke-static {}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->values()[Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->a:[I

    :try_start_8f
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->a:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->NOTVIDEO:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_9a} :catch_e9

    :goto_9a
    :try_start_9a
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->a:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->ACTIONBLEND:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_a5} :catch_e7

    :goto_a5
    :try_start_a5
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->a:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->TIMEOUT:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_b0} :catch_e5

    :goto_b0
    :try_start_b0
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->a:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->MASK:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_bb} :catch_e3

    :goto_bb
    :try_start_bb
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->a:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->TOOMANYFACELOST:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c6} :catch_e1

    :goto_c6
    :try_start_c6
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->a:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->FACELOSTNOTCONTINUOUS:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_d1} :catch_df

    :goto_d1
    :try_start_d1
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/a$1;->a:[I

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->FACENOTCONTINUOUS:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d1 .. :try_end_dc} :catch_dd

    :goto_dc
    return-void

    :catch_dd
    move-exception v0

    goto :goto_dc

    :catch_df
    move-exception v0

    goto :goto_d1

    :catch_e1
    move-exception v0

    goto :goto_c6

    :catch_e3
    move-exception v0

    goto :goto_bb

    :catch_e5
    move-exception v0

    goto :goto_b0

    :catch_e7
    move-exception v0

    goto :goto_a5

    :catch_e9
    move-exception v0

    goto :goto_9a

    :catch_eb
    move-exception v0

    goto :goto_86

    :catch_ed
    move-exception v0

    goto :goto_7a

    :catch_ef
    move-exception v0

    goto/16 :goto_6e

    :catch_f2
    move-exception v0

    goto/16 :goto_62

    :catch_f5
    move-exception v0

    goto/16 :goto_56

    :catch_f8
    move-exception v0

    goto/16 :goto_4b

    :catch_fb
    move-exception v0

    goto/16 :goto_40

    :catch_fe
    move-exception v0

    goto/16 :goto_35

    :catch_101
    move-exception v0

    goto/16 :goto_2a

    :catch_104
    move-exception v0

    goto/16 :goto_1f

    :catch_107
    move-exception v0

    goto/16 :goto_14
.end method
