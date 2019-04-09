.class synthetic Lcom/mqunar/yvideo/multivideo/ScaleManager$1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$mqunar$yvideo$multivideo$PivotPoint:[I

.field static final synthetic $SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 86
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/PivotPoint;->values()[Lcom/mqunar/yvideo/multivideo/PivotPoint;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$PivotPoint:[I

    :try_start_9
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$PivotPoint:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/PivotPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_205

    :goto_14
    :try_start_14
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$PivotPoint:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/PivotPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_202

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$PivotPoint:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/PivotPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_1ff

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$PivotPoint:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/PivotPoint;->CENTER_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/PivotPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_1fc

    :goto_35
    :try_start_35
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$PivotPoint:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/PivotPoint;->CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/PivotPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_1f9

    :goto_40
    :try_start_40
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$PivotPoint:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/PivotPoint;->CENTER_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/PivotPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_1f6

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$PivotPoint:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/PivotPoint;->RIGHT_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/PivotPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_1f3

    :goto_56
    :try_start_56
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$PivotPoint:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/PivotPoint;->RIGHT_CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/PivotPoint;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_1f0

    :goto_62
    :try_start_62
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$PivotPoint:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/PivotPoint;->RIGHT_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/PivotPoint;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_1ed

    .line 16
    :goto_6e
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/ScalableType;->values()[Lcom/mqunar/yvideo/multivideo/ScalableType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    :try_start_77
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->NONE:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_82} :catch_1ea

    :goto_82
    :try_start_82
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->FIT_XY:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_8d} :catch_1e7

    :goto_8d
    :try_start_8d
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->FIT_CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_98} :catch_1e4

    :goto_98
    :try_start_98
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->FIT_START:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_a3} :catch_1e1

    :goto_a3
    :try_start_a3
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->FIT_END:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_ae} :catch_1de

    :goto_ae
    :try_start_ae
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_TOP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_b9} :catch_1db

    :goto_b9
    :try_start_b9
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_c4} :catch_1d8

    :goto_c4
    :try_start_c4
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_BOTTOM:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_d0} :catch_1d5

    :goto_d0
    :try_start_d0
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_TOP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d0 .. :try_end_dc} :catch_1d2

    :goto_dc
    :try_start_dc
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dc .. :try_end_e8} :catch_1cf

    :goto_e8
    :try_start_e8
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_BOTTOM:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e8 .. :try_end_f4} :catch_1cc

    :goto_f4
    :try_start_f4
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_TOP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_100
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f4 .. :try_end_100} :catch_1c9

    :goto_100
    :try_start_100
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_10c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_100 .. :try_end_10c} :catch_1c6

    :goto_10c
    :try_start_10c
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_BOTTOM:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_118
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10c .. :try_end_118} :catch_1c3

    :goto_118
    :try_start_118
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_TOP_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_124
    .catch Ljava/lang/NoSuchFieldError; {:try_start_118 .. :try_end_124} :catch_1c0

    :goto_124
    :try_start_124
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_CENTER_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_130
    .catch Ljava/lang/NoSuchFieldError; {:try_start_124 .. :try_end_130} :catch_1bd

    :goto_130
    :try_start_130
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->LEFT_BOTTOM_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_13c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_130 .. :try_end_13c} :catch_1bb

    :goto_13c
    :try_start_13c
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_TOP_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_148
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13c .. :try_end_148} :catch_1b9

    :goto_148
    :try_start_148
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_154
    .catch Ljava/lang/NoSuchFieldError; {:try_start_148 .. :try_end_154} :catch_1b7

    :goto_154
    :try_start_154
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_BOTTOM_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_160
    .catch Ljava/lang/NoSuchFieldError; {:try_start_154 .. :try_end_160} :catch_1b5

    :goto_160
    :try_start_160
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_TOP_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_16c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_160 .. :try_end_16c} :catch_1b3

    :goto_16c
    :try_start_16c
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_CENTER_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_178
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16c .. :try_end_178} :catch_1b1

    :goto_178
    :try_start_178
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->RIGHT_BOTTOM_CROP:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_184
    .catch Ljava/lang/NoSuchFieldError; {:try_start_178 .. :try_end_184} :catch_1af

    :goto_184
    :try_start_184
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->START_INSIDE:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_190
    .catch Ljava/lang/NoSuchFieldError; {:try_start_184 .. :try_end_190} :catch_1ad

    :goto_190
    :try_start_190
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->CENTER_INSIDE:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_19c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_190 .. :try_end_19c} :catch_1ab

    :goto_19c
    :try_start_19c
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    sget-object v1, Lcom/mqunar/yvideo/multivideo/ScalableType;->END_INSIDE:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19c .. :try_end_1a8} :catch_1a9

    :goto_1a8
    return-void

    :catch_1a9
    move-exception v0

    goto :goto_1a8

    :catch_1ab
    move-exception v0

    goto :goto_19c

    :catch_1ad
    move-exception v0

    goto :goto_190

    :catch_1af
    move-exception v0

    goto :goto_184

    :catch_1b1
    move-exception v0

    goto :goto_178

    :catch_1b3
    move-exception v0

    goto :goto_16c

    :catch_1b5
    move-exception v0

    goto :goto_160

    :catch_1b7
    move-exception v0

    goto :goto_154

    :catch_1b9
    move-exception v0

    goto :goto_148

    :catch_1bb
    move-exception v0

    goto :goto_13c

    :catch_1bd
    move-exception v0

    goto/16 :goto_130

    :catch_1c0
    move-exception v0

    goto/16 :goto_124

    :catch_1c3
    move-exception v0

    goto/16 :goto_118

    :catch_1c6
    move-exception v0

    goto/16 :goto_10c

    :catch_1c9
    move-exception v0

    goto/16 :goto_100

    :catch_1cc
    move-exception v0

    goto/16 :goto_f4

    :catch_1cf
    move-exception v0

    goto/16 :goto_e8

    :catch_1d2
    move-exception v0

    goto/16 :goto_dc

    :catch_1d5
    move-exception v0

    goto/16 :goto_d0

    :catch_1d8
    move-exception v0

    goto/16 :goto_c4

    :catch_1db
    move-exception v0

    goto/16 :goto_b9

    :catch_1de
    move-exception v0

    goto/16 :goto_ae

    :catch_1e1
    move-exception v0

    goto/16 :goto_a3

    :catch_1e4
    move-exception v0

    goto/16 :goto_98

    :catch_1e7
    move-exception v0

    goto/16 :goto_8d

    :catch_1ea
    move-exception v0

    goto/16 :goto_82

    .line 86
    :catch_1ed
    move-exception v0

    goto/16 :goto_6e

    :catch_1f0
    move-exception v0

    goto/16 :goto_62

    :catch_1f3
    move-exception v0

    goto/16 :goto_56

    :catch_1f6
    move-exception v0

    goto/16 :goto_4b

    :catch_1f9
    move-exception v0

    goto/16 :goto_40

    :catch_1fc
    move-exception v0

    goto/16 :goto_35

    :catch_1ff
    move-exception v0

    goto/16 :goto_2a

    :catch_202
    move-exception v0

    goto/16 :goto_1f

    :catch_205
    move-exception v0

    goto/16 :goto_14
.end method
