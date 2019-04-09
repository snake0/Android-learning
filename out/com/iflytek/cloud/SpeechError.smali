.class public Lcom/iflytek/cloud/SpeechError;
.super Ljava/lang/Exception;


# static fields
.field public static final TIP_ERROR_ALREADY_EXIST:I = 0x42

.field public static final TIP_ERROR_GROUP_EMPTY:I = 0x44

.field public static final TIP_ERROR_IVP_EXTRA_RGN_SOPPORT:I = 0x38

.field public static final TIP_ERROR_IVP_GENERAL:I = 0x37

.field public static final TIP_ERROR_IVP_MUCH_NOISE:I = 0x3a

.field public static final TIP_ERROR_IVP_NO_ENOUGH_AUDIO:I = 0x3f

.field public static final TIP_ERROR_IVP_TEXT_NOT_MATCH:I = 0x3e

.field public static final TIP_ERROR_IVP_TOO_LOW:I = 0x3b

.field public static final TIP_ERROR_IVP_TRUNCATED:I = 0x39

.field public static final TIP_ERROR_IVP_UTTER_TOO_SHORT:I = 0x3d

.field public static final TIP_ERROR_IVP_ZERO_AUDIO:I = 0x3c

.field public static final TIP_ERROR_MODEL_IS_CREATING:I = 0x41

.field public static final TIP_ERROR_MODEL_NOT_FOUND:I = 0x40

.field public static final TIP_ERROR_NO_GROUP:I = 0x43

.field public static final TIP_ERROR_NO_USER:I = 0x45

.field public static final TIP_ERROR_OVERFLOW_IN_GROUP:I = 0x46

.field private static final serialVersionUID:J = 0x3d8a3d5cb4c84b7cL


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 9

    const/16 v3, 0x12

    const/16 v0, 0xb

    const/4 v4, 0x7

    const/16 v2, 0x40

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v5, 0x0

    iput v5, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const-string v5, ""

    iput-object v5, p0, Lcom/iflytek/cloud/SpeechError;->b:Ljava/lang/String;

    iput p1, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v5, 0x4e21

    if-ge p1, v5, :cond_1a0

    iget v5, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v6, 0x2786

    if-ne v5, v6, :cond_2b

    :cond_1e
    :goto_1e
    iget v1, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    sparse-switch v1, :sswitch_data_294

    move v2, v0

    :goto_24
    :sswitch_24
    invoke-static {v2}, Lcom/iflytek/cloud/resource/Resource;->getErrorDescription(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechError;->b:Ljava/lang/String;

    return-void

    :cond_2b
    const/16 v0, 0x277a

    iget v5, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    if-eq v0, v5, :cond_3d

    const/16 v0, 0x277b

    iget v5, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    if-eq v0, v5, :cond_3d

    const/16 v0, 0x278c

    iget v5, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    if-ne v0, v5, :cond_59

    :cond_3d
    const-string v0, "sdk errorcode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_1e

    :cond_59
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v4, 0x277e

    if-ne v0, v4, :cond_62

    const/16 v0, 0x20

    goto :goto_1e

    :cond_62
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v4, 0x277f

    if-ne v0, v4, :cond_6b

    const/16 v0, 0x1c

    goto :goto_1e

    :cond_6b
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v4, 0x27d8

    if-lt v0, v4, :cond_79

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v4, 0x283c

    if-ge v0, v4, :cond_79

    move v0, v1

    goto :goto_1e

    :cond_79
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v4, 0x2785

    if-eq v0, v4, :cond_85

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v4, 0x2775

    if-ne v0, v4, :cond_88

    :cond_85
    const/16 v0, 0x10

    goto :goto_1e

    :cond_88
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v4, 0x2781

    if-ne v0, v4, :cond_91

    const/16 v0, 0x11

    goto :goto_1e

    :cond_91
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v4, 0x2784

    if-ne v0, v4, :cond_99

    move v0, v2

    goto :goto_1e

    :cond_99
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v4, 0x2789

    if-ne v0, v4, :cond_a3

    const/16 v0, 0x42

    goto/16 :goto_1e

    :cond_a3
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v4, 0x28a0

    if-lt v0, v4, :cond_b2

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v4, 0x28a7

    if-gt v0, v4, :cond_b2

    move v0, v3

    goto/16 :goto_1e

    :cond_b2
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v4, 0x2af8

    if-lt v0, v4, :cond_d5

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v4, 0x2b5b

    if-ge v0, v4, :cond_d5

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v1, 0x2afd

    if-ne v0, v1, :cond_c8

    const/16 v0, 0x17

    goto/16 :goto_1e

    :cond_c8
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v1, 0x2afe

    if-ne v0, v1, :cond_d2

    const/16 v0, 0x18

    goto/16 :goto_1e

    :cond_d2
    move v0, v3

    goto/16 :goto_1e

    :cond_d5
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x2791

    if-ne v0, v3, :cond_df

    const/16 v0, 0x13

    goto/16 :goto_1e

    :cond_df
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x277d

    if-ne v0, v3, :cond_e9

    const/16 v0, 0x14

    goto/16 :goto_1e

    :cond_e9
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x29ce

    if-ne v0, v3, :cond_f3

    const/16 v0, 0x15

    goto/16 :goto_1e

    :cond_f3
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x2904

    if-lt v0, v3, :cond_103

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x2968

    if-ge v0, v3, :cond_103

    const/16 v0, 0x16

    goto/16 :goto_1e

    :cond_103
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x2bc0

    if-lt v0, v3, :cond_113

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x2bf2

    if-gt v0, v3, :cond_113

    const/16 v0, 0x19

    goto/16 :goto_1e

    :cond_113
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x36b0

    if-lt v0, v3, :cond_123

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x36b6

    if-gt v0, v3, :cond_123

    const/16 v0, 0x1f

    goto/16 :goto_1e

    :cond_123
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x3e80

    if-lt v0, v3, :cond_133

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x3e86

    if-gt v0, v3, :cond_133

    const/16 v0, 0x1f

    goto/16 :goto_1e

    :cond_133
    const/16 v0, 0x2c89

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    if-ne v0, v3, :cond_13d

    const/16 v0, 0x23

    goto/16 :goto_1e

    :cond_13d
    const/16 v0, 0x2c8a

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    if-ne v0, v3, :cond_147

    const/16 v0, 0x24

    goto/16 :goto_1e

    :cond_147
    const/16 v0, 0x2c8b

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    if-ne v0, v3, :cond_151

    const/16 v0, 0x25

    goto/16 :goto_1e

    :cond_151
    const/16 v0, 0x2c8c

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    if-ne v0, v3, :cond_15b

    const/16 v0, 0x26

    goto/16 :goto_1e

    :cond_15b
    const/16 v0, 0x2c8d

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    if-ne v0, v3, :cond_165

    const/16 v0, 0x27

    goto/16 :goto_1e

    :cond_165
    const/16 v0, 0x2c8e

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    if-ne v0, v3, :cond_16f

    const/16 v0, 0x28

    goto/16 :goto_1e

    :cond_16f
    const/16 v0, 0x2c8f

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    if-ne v0, v3, :cond_179

    const/16 v0, 0x29

    goto/16 :goto_1e

    :cond_179
    const/16 v0, 0x2c90

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    if-ne v0, v3, :cond_183

    const/16 v0, 0x2a

    goto/16 :goto_1e

    :cond_183
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x2ced

    if-ne v0, v3, :cond_18d

    const/16 v0, 0x41

    goto/16 :goto_1e

    :cond_18d
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x2cee

    if-ne v0, v3, :cond_196

    move v0, v2

    goto/16 :goto_1e

    :cond_196
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x2cef

    if-ne v0, v3, :cond_291

    const/16 v0, 0x13

    goto/16 :goto_1e

    :cond_1a0
    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v5, 0x7530

    if-ge v3, v5, :cond_291

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v5, 0x4e21

    if-ne v3, v5, :cond_1af

    const/4 v0, 0x1

    goto/16 :goto_1e

    :cond_1af
    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v5, 0x4e22

    if-ne v3, v5, :cond_1b8

    const/4 v0, 0x2

    goto/16 :goto_1e

    :cond_1b8
    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v5, 0x4e23

    if-ne v3, v5, :cond_1c1

    move v0, v1

    goto/16 :goto_1e

    :cond_1c1
    iget v1, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x4e24

    if-ne v1, v3, :cond_1ca

    const/4 v0, 0x5

    goto/16 :goto_1e

    :cond_1ca
    iget v1, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x4e25

    if-ne v1, v3, :cond_1d4

    const/16 v0, 0xa

    goto/16 :goto_1e

    :cond_1d4
    iget v1, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x4e26

    if-ne v1, v3, :cond_1de

    const/16 v0, 0x9

    goto/16 :goto_1e

    :cond_1de
    iget v1, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x4e27

    if-ne v1, v3, :cond_1e8

    const/16 v0, 0xc

    goto/16 :goto_1e

    :cond_1e8
    iget v1, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v3, 0x4e28

    if-eq v1, v3, :cond_1e

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v1, 0x4e29

    if-ne v0, v1, :cond_1f8

    const/16 v0, 0xd

    goto/16 :goto_1e

    :cond_1f8
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v1, 0x4e2a

    if-ne v0, v1, :cond_202

    const/16 v0, 0xe

    goto/16 :goto_1e

    :cond_202
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v1, 0x4e2c

    if-ne v0, v1, :cond_20b

    move v0, v4

    goto/16 :goto_1e

    :cond_20b
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v1, 0x520b

    if-ne v0, v1, :cond_215

    const/16 v0, 0x1c

    goto/16 :goto_1e

    :cond_215
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v1, 0x520a

    if-eq v0, v1, :cond_221

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const/16 v1, 0x5209

    if-ne v0, v1, :cond_225

    :cond_221
    const/16 v0, 0x1d

    goto/16 :goto_1e

    :cond_225
    const/16 v0, 0x1e

    goto/16 :goto_1e

    :sswitch_229
    const/16 v2, 0x37

    goto/16 :goto_24

    :sswitch_22d
    const/16 v2, 0x38

    goto/16 :goto_24

    :sswitch_231
    const/16 v2, 0x39

    goto/16 :goto_24

    :sswitch_235
    const/16 v2, 0x3a

    goto/16 :goto_24

    :sswitch_239
    const/16 v2, 0x3b

    goto/16 :goto_24

    :sswitch_23d
    const/16 v2, 0x3c

    goto/16 :goto_24

    :sswitch_241
    const/16 v2, 0x3d

    goto/16 :goto_24

    :sswitch_245
    const/16 v2, 0x3e

    goto/16 :goto_24

    :sswitch_249
    const/16 v2, 0x3f

    goto/16 :goto_24

    :sswitch_24d
    const/16 v2, 0x41

    goto/16 :goto_24

    :sswitch_251
    const/16 v2, 0x2b

    goto/16 :goto_24

    :sswitch_255
    const/16 v2, 0x2c

    goto/16 :goto_24

    :sswitch_259
    const/16 v2, 0x2d

    goto/16 :goto_24

    :sswitch_25d
    const/16 v2, 0x2e

    goto/16 :goto_24

    :sswitch_261
    const/16 v2, 0x2f

    goto/16 :goto_24

    :sswitch_265
    const/16 v2, 0x30

    goto/16 :goto_24

    :sswitch_269
    const/16 v2, 0x31

    goto/16 :goto_24

    :sswitch_26d
    const/16 v2, 0x32

    goto/16 :goto_24

    :sswitch_271
    const/16 v2, 0x33

    goto/16 :goto_24

    :sswitch_275
    const/16 v2, 0x34

    goto/16 :goto_24

    :sswitch_279
    const/16 v2, 0x35

    goto/16 :goto_24

    :sswitch_27d
    const/16 v2, 0x36

    goto/16 :goto_24

    :sswitch_281
    const/16 v2, 0x43

    goto/16 :goto_24

    :sswitch_285
    const/16 v2, 0x44

    goto/16 :goto_24

    :sswitch_289
    const/16 v2, 0x45

    goto/16 :goto_24

    :sswitch_28d
    const/16 v2, 0x46

    goto/16 :goto_24

    :cond_291
    move v0, v1

    goto/16 :goto_1e

    :sswitch_data_294
    .sparse-switch
        0x272f -> :sswitch_24d
        0x279d -> :sswitch_285
        0x279e -> :sswitch_289
        0x279f -> :sswitch_281
        0x27a0 -> :sswitch_28d
        0x2d50 -> :sswitch_229
        0x2d51 -> :sswitch_22d
        0x2d52 -> :sswitch_231
        0x2d53 -> :sswitch_235
        0x2d54 -> :sswitch_239
        0x2d55 -> :sswitch_23d
        0x2d56 -> :sswitch_241
        0x2d57 -> :sswitch_245
        0x2d58 -> :sswitch_249
        0x2d5a -> :sswitch_24
        0x2db4 -> :sswitch_251
        0x2db5 -> :sswitch_255
        0x2db6 -> :sswitch_259
        0x2db7 -> :sswitch_25d
        0x2db8 -> :sswitch_261
        0x2db9 -> :sswitch_265
        0x2dba -> :sswitch_269
        0x2dbb -> :sswitch_26d
        0x2dbc -> :sswitch_271
        0x2dbd -> :sswitch_275
        0x2dbe -> :sswitch_279
        0x2dbf -> :sswitch_27d
        0x2dc0 -> :sswitch_24
    .end sparse-switch
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    const-string v0, "wfr"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x2786

    if-ne v0, p1, :cond_18

    const/16 v0, 0x21

    invoke-static {v0}, Lcom/iflytek/cloud/resource/Resource;->getErrorDescription(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechError;->b:Ljava/lang/String;

    :cond_17
    :goto_17
    return-void

    :cond_18
    const/16 v0, 0x2787

    if-ne v0, p1, :cond_17

    const/16 v0, 0x22

    invoke-static {v0}, Lcom/iflytek/cloud/resource/Resource;->getErrorDescription(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechError;->b:Ljava/lang/String;

    goto :goto_17
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechError;->b:Ljava/lang/String;

    const/16 v0, 0x5207

    iput v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechError;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/SpeechError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    return v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlDescription(Z)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechError;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_5f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/iflytek/cloud/resource/Resource;->getErrorTag(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5f
    return-object v0
.end method

.method public getPlainDescription(Z)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechError;->b:Ljava/lang/String;

    if-eqz p1, :cond_52

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/iflytek/cloud/resource/Resource;->getErrorTag(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/SpeechError;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_52
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/SpeechError;->getPlainDescription(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
