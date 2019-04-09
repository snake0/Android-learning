.class Lcom/baidu/tts/loopj/Base64$Encoder;
.super Lcom/baidu/tts/loopj/Base64$Coder;
.source "SourceFile"


# static fields
.field private static final ENCODE:[B

.field private static final ENCODE_WEBSAFE:[B

.field public static final LINE_GROUPS:I = 0x13


# instance fields
.field private final alphabet:[B

.field private count:I

.field public final do_cr:Z

.field public final do_newline:Z

.field public final do_padding:Z

.field private final tail:[B

.field tailLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x40

    .line 533
    new-array v0, v1, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/baidu/tts/loopj/Base64$Encoder;->ENCODE:[B

    .line 543
    new-array v0, v1, [B

    fill-array-data v0, :array_36

    sput-object v0, Lcom/baidu/tts/loopj/Base64$Encoder;->ENCODE_WEBSAFE:[B

    return-void

    .line 533
    nop

    :array_12
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 543
    :array_36
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 559
    invoke-direct {p0}, Lcom/baidu/tts/loopj/Base64$Coder;-><init>()V

    .line 560
    iput-object p2, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->output:[B

    .line 562
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_33

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_padding:Z

    .line 563
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_35

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_newline:Z

    .line 564
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_37

    :goto_19
    iput-boolean v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_cr:Z

    .line 565
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_39

    sget-object v0, Lcom/baidu/tts/loopj/Base64$Encoder;->ENCODE:[B

    :goto_21
    iput-object v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->alphabet:[B

    .line 567
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    .line 568
    iput v2, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    .line 570
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_3c

    const/16 v0, 0x13

    :goto_30
    iput v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->count:I

    .line 571
    return-void

    :cond_33
    move v0, v2

    .line 562
    goto :goto_c

    :cond_35
    move v0, v2

    .line 563
    goto :goto_13

    :cond_37
    move v1, v2

    .line 564
    goto :goto_19

    .line 565
    :cond_39
    sget-object v0, Lcom/baidu/tts/loopj/Base64$Encoder;->ENCODE_WEBSAFE:[B

    goto :goto_21

    .line 570
    :cond_3c
    const/4 v0, -0x1

    goto :goto_30
.end method


# virtual methods
.method public maxOutputSize(I)I
    .registers 3

    .prologue
    .line 577
    mul-int/lit8 v0, p1, 0x8

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .registers 15

    .prologue
    .line 582
    iget-object v6, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->alphabet:[B

    .line 583
    iget-object v7, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->output:[B

    .line 584
    const/4 v1, 0x0

    .line 585
    iget v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->count:I

    .line 588
    add-int v8, p3, p2

    .line 589
    const/4 v2, -0x1

    .line 595
    iget v3, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    packed-switch v3, :pswitch_data_228

    :cond_f
    move v3, p2

    .line 622
    :goto_10
    const/4 v4, -0x1

    if-eq v2, v4, :cond_220

    .line 623
    const/4 v4, 0x1

    shr-int/lit8 v5, v2, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v1

    .line 624
    const/4 v1, 0x2

    shr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v4

    .line 625
    const/4 v4, 0x3

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v1

    .line 626
    const/4 v1, 0x4

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v4

    .line 627
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_220

    .line 628
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_cr:Z

    if-eqz v0, :cond_224

    const/4 v0, 0x5

    const/16 v2, 0xd

    aput-byte v2, v7, v1

    .line 629
    :goto_42
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    .line 630
    const/16 v0, 0x13

    move v5, v0

    move v4, v1

    .line 639
    :goto_4c
    add-int/lit8 v0, v3, 0x3

    if-gt v0, v8, :cond_f0

    .line 640
    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, v3, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 643
    shr-int/lit8 v1, v0, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v6, v1

    aput-byte v1, v7, v4

    .line 644
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v1

    .line 645
    add-int/lit8 v1, v4, 0x2

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v1

    .line 646
    add-int/lit8 v1, v4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v1

    .line 647
    add-int/lit8 v3, v3, 0x3

    .line 648
    add-int/lit8 v1, v4, 0x4

    .line 649
    add-int/lit8 v0, v5, -0x1

    if-nez v0, :cond_220

    .line 650
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_cr:Z

    if-eqz v0, :cond_21d

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0xd

    aput-byte v2, v7, v1

    .line 651
    :goto_9c
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    .line 652
    const/16 v0, 0x13

    move v5, v0

    move v4, v1

    goto :goto_4c

    :pswitch_a7
    move v3, p2

    .line 598
    goto/16 :goto_10

    .line 601
    :pswitch_aa
    add-int/lit8 v3, p2, 0x2

    if-gt v3, v8, :cond_f

    .line 604
    iget-object v2, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 p2, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 607
    const/4 v3, 0x0

    iput v3, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    move v3, p2

    goto/16 :goto_10

    .line 612
    :pswitch_cd
    add-int/lit8 v3, p2, 0x1

    if-gt v3, v8, :cond_f

    .line 614
    iget-object v2, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    .line 617
    const/4 v4, 0x0

    iput v4, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    goto/16 :goto_10

    .line 656
    :cond_f0
    if-eqz p4, :cond_1e7

    .line 662
    iget v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    sub-int v0, v3, v0

    add-int/lit8 v1, v8, -0x1

    if-ne v0, v1, :cond_152

    .line 663
    const/4 v2, 0x0

    .line 664
    iget v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    if-lez v0, :cond_14c

    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v2

    :goto_104
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v2, v0, 0x4

    .line 665
    iget v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    .line 666
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v0, v2, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v4

    .line 667
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v1

    .line 668
    iget-boolean v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_padding:Z

    if-eqz v1, :cond_12f

    .line 669
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x3d

    aput-byte v2, v7, v0

    .line 670
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x3d

    aput-byte v2, v7, v1

    .line 672
    :cond_12f
    iget-boolean v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_newline:Z

    if-eqz v1, :cond_145

    .line 673
    iget-boolean v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_cr:Z

    if-eqz v1, :cond_13e

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xd

    aput-byte v2, v7, v0

    move v0, v1

    .line 674
    :cond_13e
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    move v0, v1

    :cond_145
    move v4, v0

    .line 711
    :cond_146
    :goto_146
    iput v4, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->op:I

    .line 712
    iput v5, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->count:I

    .line 714
    const/4 v0, 0x1

    return v0

    .line 664
    :cond_14c
    add-int/lit8 v0, v3, 0x1

    aget-byte v0, p1, v3

    move v1, v2

    goto :goto_104

    .line 676
    :cond_152
    iget v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    sub-int v0, v3, v0

    add-int/lit8 v1, v8, -0x2

    if-ne v0, v1, :cond_1cb

    .line 677
    const/4 v2, 0x0

    .line 678
    iget v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1be

    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v2

    move v2, v3

    :goto_166
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0xa

    iget v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    if-lez v0, :cond_1c6

    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v0, v0, v1

    move v1, v2

    :goto_175
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v3

    .line 680
    iget v2, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    .line 681
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v4

    .line 682
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v1

    .line 683
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v2

    .line 684
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_padding:Z

    if-eqz v0, :cond_21b

    .line 685
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x3d

    aput-byte v2, v7, v1

    .line 687
    :goto_1a6
    iget-boolean v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_newline:Z

    if-eqz v1, :cond_1bc

    .line 688
    iget-boolean v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_cr:Z

    if-eqz v1, :cond_1b5

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xd

    aput-byte v2, v7, v0

    move v0, v1

    .line 689
    :cond_1b5
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    move v0, v1

    :cond_1bc
    move v4, v0

    .line 691
    goto :goto_146

    .line 678
    :cond_1be
    add-int/lit8 v1, v3, 0x1

    aget-byte v0, p1, v3

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_166

    :cond_1c6
    add-int/lit8 v0, v2, 0x1

    aget-byte v0, p1, v2

    goto :goto_175

    .line 691
    :cond_1cb
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_146

    if-lez v4, :cond_146

    const/16 v0, 0x13

    if-eq v5, v0, :cond_146

    .line 692
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_cr:Z

    if-eqz v0, :cond_219

    add-int/lit8 v0, v4, 0x1

    const/16 v1, 0xd

    aput-byte v1, v7, v4

    .line 693
    :goto_1df
    add-int/lit8 v4, v0, 0x1

    const/16 v1, 0xa

    aput-byte v1, v7, v0

    goto/16 :goto_146

    .line 703
    :cond_1e7
    add-int/lit8 v0, v8, -0x1

    if-ne v3, v0, :cond_1f9

    .line 704
    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    iget v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    aget-byte v2, p1, v3

    aput-byte v2, v0, v1

    goto/16 :goto_146

    .line 705
    :cond_1f9
    add-int/lit8 v0, v8, -0x2

    if-ne v3, v0, :cond_146

    .line 706
    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    iget v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    aget-byte v2, p1, v3

    aput-byte v2, v0, v1

    .line 707
    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    iget v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    add-int/lit8 v2, v3, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    goto/16 :goto_146

    :cond_219
    move v0, v4

    goto :goto_1df

    :cond_21b
    move v0, v1

    goto :goto_1a6

    :cond_21d
    move v0, v1

    goto/16 :goto_9c

    :cond_220
    move v5, v0

    move v4, v1

    goto/16 :goto_4c

    :cond_224
    move v0, v1

    goto/16 :goto_42

    .line 595
    nop

    :pswitch_data_228
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_aa
        :pswitch_cd
    .end packed-switch
.end method
