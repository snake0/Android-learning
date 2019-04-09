.class Lcom/squareup/wire/Stringer$Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DECODE:[I

.field private static final EQUALS:I = -0x2

.field private static final SKIP:I = -0x1


# instance fields
.field private op:I

.field private final output:[B

.field private state:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/squareup/wire/Stringer$Decoder;->DECODE:[I

    return-void

    :array_a
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/squareup/wire/Stringer$Decoder;->output:[B

    .line 89
    iput v0, p0, Lcom/squareup/wire/Stringer$Decoder;->state:I

    .line 90
    iput v0, p0, Lcom/squareup/wire/Stringer$Decoder;->value:I

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/wire/Stringer$Decoder;)I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/squareup/wire/Stringer$Decoder;->op:I

    return v0
.end method

.method static synthetic access$100(Lcom/squareup/wire/Stringer$Decoder;)[B
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/squareup/wire/Stringer$Decoder;->output:[B

    return-object v0
.end method


# virtual methods
.method public process([BIIZ)Z
    .registers 15

    .prologue
    .line 94
    iget v0, p0, Lcom/squareup/wire/Stringer$Decoder;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    .line 227
    :goto_6
    return v0

    .line 97
    :cond_7
    add-int v4, p3, p2

    .line 99
    iget v3, p0, Lcom/squareup/wire/Stringer$Decoder;->state:I

    .line 100
    iget v1, p0, Lcom/squareup/wire/Stringer$Decoder;->value:I

    .line 101
    const/4 v0, 0x0

    .line 102
    iget-object v5, p0, Lcom/squareup/wire/Stringer$Decoder;->output:[B

    .line 103
    sget-object v6, Lcom/squareup/wire/Stringer$Decoder;->DECODE:[I

    move v2, p2

    .line 105
    :goto_13
    if-ge v2, v4, :cond_167

    .line 106
    if-nez v3, :cond_67

    .line 107
    :goto_17
    add-int/lit8 v7, v2, 0x4

    if-gt v7, v4, :cond_5a

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v6, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr v1, v7

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v1, v7

    add-int/lit8 v7, v2, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    or-int/2addr v1, v7

    if-ltz v1, :cond_5a

    .line 112
    add-int/lit8 v7, v0, 0x2

    int-to-byte v8, v1

    aput-byte v8, v5, v7

    .line 113
    add-int/lit8 v7, v0, 0x1

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 114
    shr-int/lit8 v7, v1, 0x10

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    .line 115
    add-int/lit8 v0, v0, 0x3

    .line 116
    add-int/lit8 v2, v2, 0x4

    goto :goto_17

    .line 118
    :cond_5a
    if-lt v2, v4, :cond_67

    move v2, v1

    .line 196
    :goto_5d
    if-nez p4, :cond_11e

    .line 197
    iput v3, p0, Lcom/squareup/wire/Stringer$Decoder;->state:I

    .line 198
    iput v2, p0, Lcom/squareup/wire/Stringer$Decoder;->value:I

    .line 199
    iput v0, p0, Lcom/squareup/wire/Stringer$Decoder;->op:I

    .line 200
    const/4 v0, 0x1

    goto :goto_6

    .line 121
    :cond_67
    add-int/lit8 p2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    .line 122
    packed-switch v3, :pswitch_data_16a

    .line 192
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 124
    :pswitch_8b
    if-ltz v2, :cond_96

    .line 126
    add-int/lit8 v1, v3, 0x1

    move v9, v2

    move v2, v1

    move v1, v9

    :goto_92
    move v3, v2

    move v2, p2

    .line 194
    goto/16 :goto_13

    .line 127
    :cond_96
    const/4 v7, -0x1

    if-eq v2, v7, :cond_164

    .line 128
    const/4 v0, 0x6

    iput v0, p0, Lcom/squareup/wire/Stringer$Decoder;->state:I

    .line 129
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 134
    :pswitch_9f
    if-ltz v2, :cond_a7

    .line 135
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 136
    add-int/lit8 v2, v3, 0x1

    goto :goto_92

    .line 137
    :cond_a7
    const/4 v7, -0x1

    if-eq v2, v7, :cond_164

    .line 138
    const/4 v0, 0x6

    iput v0, p0, Lcom/squareup/wire/Stringer$Decoder;->state:I

    .line 139
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 144
    :pswitch_b0
    if-ltz v2, :cond_b8

    .line 145
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 146
    add-int/lit8 v2, v3, 0x1

    goto :goto_92

    .line 147
    :cond_b8
    const/4 v7, -0x2

    if-ne v2, v7, :cond_c7

    .line 148
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x4

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 149
    const/4 v0, 0x4

    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_92

    .line 150
    :cond_c7
    const/4 v7, -0x1

    if-eq v2, v7, :cond_164

    .line 151
    const/4 v0, 0x6

    iput v0, p0, Lcom/squareup/wire/Stringer$Decoder;->state:I

    .line 152
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 157
    :pswitch_d0
    if-ltz v2, :cond_ea

    .line 158
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 159
    add-int/lit8 v2, v0, 0x2

    int-to-byte v3, v1

    aput-byte v3, v5, v2

    .line 160
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 161
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 162
    add-int/lit8 v0, v0, 0x3

    .line 163
    const/4 v2, 0x0

    goto :goto_92

    .line 164
    :cond_ea
    const/4 v7, -0x2

    if-ne v2, v7, :cond_fd

    .line 165
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x2

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 166
    shr-int/lit8 v2, v1, 0xa

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 167
    add-int/lit8 v0, v0, 0x2

    .line 168
    const/4 v2, 0x5

    goto :goto_92

    .line 169
    :cond_fd
    const/4 v7, -0x1

    if-eq v2, v7, :cond_164

    .line 170
    const/4 v0, 0x6

    iput v0, p0, Lcom/squareup/wire/Stringer$Decoder;->state:I

    .line 171
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 176
    :pswitch_106
    const/4 v7, -0x2

    if-ne v2, v7, :cond_10c

    .line 177
    add-int/lit8 v2, v3, 0x1

    goto :goto_92

    .line 178
    :cond_10c
    const/4 v7, -0x1

    if-eq v2, v7, :cond_164

    .line 179
    const/4 v0, 0x6

    iput v0, p0, Lcom/squareup/wire/Stringer$Decoder;->state:I

    .line 180
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 185
    :pswitch_115
    const/4 v7, -0x1

    if-eq v2, v7, :cond_164

    .line 186
    const/4 v0, 0x6

    iput v0, p0, Lcom/squareup/wire/Stringer$Decoder;->state:I

    .line 187
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 203
    :cond_11e
    packed-switch v3, :pswitch_data_17a

    .line 222
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 207
    :pswitch_13a
    const/4 v0, 0x6

    iput v0, p0, Lcom/squareup/wire/Stringer$Decoder;->state:I

    .line 208
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 210
    :pswitch_140
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    move v0, v1

    .line 225
    :goto_148
    :pswitch_148
    iput v3, p0, Lcom/squareup/wire/Stringer$Decoder;->state:I

    .line 226
    iput v0, p0, Lcom/squareup/wire/Stringer$Decoder;->op:I

    .line 227
    const/4 v0, 0x1

    goto/16 :goto_6

    .line 213
    :pswitch_14f
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v4, v2, 0xa

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    .line 214
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    goto :goto_148

    .line 217
    :pswitch_15e
    const/4 v0, 0x6

    iput v0, p0, Lcom/squareup/wire/Stringer$Decoder;->state:I

    .line 218
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_164
    move v2, v3

    goto/16 :goto_92

    :cond_167
    move v2, v1

    goto/16 :goto_5d

    .line 122
    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_9f
        :pswitch_b0
        :pswitch_d0
        :pswitch_106
        :pswitch_115
    .end packed-switch

    .line 203
    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_148
        :pswitch_13a
        :pswitch_140
        :pswitch_14f
        :pswitch_15e
        :pswitch_148
    .end packed-switch
.end method
