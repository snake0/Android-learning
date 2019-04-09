.class public abstract Lcom/mqunar/hy/res/utils/UriCodec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DIGITS:[C

.field private static final UPPER_CASE_DIGITS:[C

.field static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x24

    .line 109
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/mqunar/hy/res/utils/UriCodec;->UTF_8:Ljava/nio/charset/Charset;

    .line 199
    new-array v0, v1, [C

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/mqunar/hy/res/utils/UriCodec;->DIGITS:[C

    .line 203
    new-array v0, v1, [C

    fill-array-data v0, :array_42

    sput-object v0, Lcom/mqunar/hy/res/utils/UriCodec;->UPPER_CASE_DIGITS:[C

    return-void

    .line 199
    nop

    :array_1a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    .line 203
    :array_42
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .registers 11

    .prologue
    const/16 v5, 0x25

    const/4 v2, -0x1

    .line 71
    if-nez p2, :cond_b

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 76
    :cond_b
    const/4 v0, 0x0

    move v1, v2

    :goto_d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_63

    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 78
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1f

    const/16 v4, 0x7a

    if-le v3, v4, :cond_39

    :cond_1f
    const/16 v4, 0x41

    if-lt v3, v4, :cond_27

    const/16 v4, 0x5a

    if-le v3, v4, :cond_39

    :cond_27
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2f

    const/16 v4, 0x39

    if-le v3, v4, :cond_39

    :cond_2f
    invoke-virtual {p0, v3}, Lcom/mqunar/hy/res/utils/UriCodec;->isRetained(C)Z

    move-result v4

    if-nez v4, :cond_39

    if-ne v3, v5, :cond_5f

    if-eqz p4, :cond_5f

    .line 80
    :cond_39
    if-eq v1, v2, :cond_43

    .line 81
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/mqunar/hy/res/utils/UriCodec;->appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    move v1, v2

    .line 84
    :cond_43
    if-ne v3, v5, :cond_51

    if-eqz p4, :cond_51

    .line 86
    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p1, p2, v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v0, v0, 0x2

    .line 76
    :cond_4e
    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 88
    :cond_51
    const/16 v4, 0x20

    if-ne v3, v4, :cond_5b

    .line 89
    const/16 v3, 0x2b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 91
    :cond_5b
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 93
    :cond_5f
    if-ne v1, v2, :cond_4e

    move v1, v0

    .line 94
    goto :goto_4e

    .line 97
    :cond_63
    if-eq v1, v2, :cond_70

    .line 98
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/mqunar/hy/res/utils/UriCodec;->appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 100
    :cond_70
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;B)V
    .registers 3

    .prologue
    .line 192
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mqunar/hy/res/utils/UriCodec;->byteToHexString(BZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 7

    .prologue
    .line 186
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_14

    aget-byte v3, v1, v0

    .line 187
    invoke-static {p0, v3}, Lcom/mqunar/hy/res/utils/UriCodec;->appendHex(Ljava/lang/StringBuilder;B)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 189
    :cond_14
    return-void
.end method

.method public static byteToHexString(BZ)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 208
    if-eqz p1, :cond_1d

    sget-object v0, Lcom/mqunar/hy/res/utils/UriCodec;->UPPER_CASE_DIGITS:[C

    .line 209
    :goto_6
    new-array v1, v5, [C

    .line 210
    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v0, v2

    aput-char v2, v1, v4

    .line 211
    const/4 v2, 0x1

    and-int/lit8 v3, p0, 0xf

    aget-char v0, v0, v3

    aput-char v0, v1, v2

    .line 212
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 208
    :cond_1d
    sget-object v0, Lcom/mqunar/hy/res/utils/UriCodec;->DIGITS:[C

    goto :goto_6
.end method

.method public static compareWithoutQuery(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 241
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 262
    :cond_f
    :goto_f
    return v0

    .line 244
    :cond_10
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Landroid/net/Uri;->isOpaque()Z

    move-result v2

    if-nez v2, :cond_f

    .line 249
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6f

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 251
    :cond_32
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7a

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 254
    :cond_4a
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_58

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 256
    :cond_58
    const-string v0, ""

    .line 258
    :cond_5a
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_68

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 260
    :cond_68
    const-string v1, ""

    .line 262
    :cond_6a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_f

    .line 249
    :cond_6f
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_f

    .line 251
    :cond_7a
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4a

    goto :goto_f
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 181
    const/4 v0, 0x0

    sget-object v1, Lcom/mqunar/hy/res/utils/UriCodec;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/mqunar/hy/res/utils/UriCodec;->decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;
    .registers 14

    .prologue
    const/16 v9, 0x2b

    const/16 v8, 0x25

    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 126
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v7, :cond_15

    if-eqz p1, :cond_14

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v7, :cond_15

    .line 162
    :cond_14
    :goto_14
    return-object p0

    .line 130
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 132
    :try_start_1e
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v2

    .line 133
    :goto_24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_a6

    .line 134
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 135
    if-ne v0, v8, :cond_bc

    move v0, v1

    .line 138
    :cond_31
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_7b

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/mqunar/hy/res/utils/UriCodec;->hexToInt(C)I

    move-result v1

    if-eq v1, v7, :cond_7b

    add-int/lit8 v5, v0, 0x2

    .line 139
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/mqunar/hy/res/utils/UriCodec;->hexToInt(C)I

    move-result v5

    if-eq v5, v7, :cond_7b

    .line 140
    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 147
    :goto_58
    add-int/lit8 v0, v0, 0x3

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_66

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v8, :cond_31

    .line 149
    :cond_66
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    :goto_79
    move v1, v0

    .line 158
    goto :goto_24

    .line 141
    :cond_7b
    if-eqz p3, :cond_ac

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid % sequence at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1e .. :try_end_a0} :catch_a0

    .line 159
    :catch_a0
    move-exception v0

    .line 160
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 162
    :cond_a6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_14

    .line 144
    :cond_ac
    :try_start_ac
    const-string v1, "\ufffd"

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 145
    const/4 v5, 0x0

    array-length v6, v1

    invoke-virtual {v4, v1, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_58

    .line 152
    :cond_bc
    if-eqz p1, :cond_c2

    if-ne v0, v9, :cond_c2

    .line 153
    const/16 v0, 0x20

    .line 155
    :cond_c2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_c5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ac .. :try_end_c5} :catch_a0

    .line 156
    add-int/lit8 v0, v1, 0x1

    goto :goto_79
.end method

.method public static getUrlWithOutQueryAndHash(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const v1, 0xfffffff

    const/4 v4, 0x0

    .line 216
    if-nez p0, :cond_8

    .line 217
    const/4 v0, 0x0

    .line 231
    :cond_7
    :goto_7
    return-object v0

    .line 219
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 220
    const-string v0, "//"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 221
    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    move v0, v1

    .line 222
    :goto_1d
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 223
    :goto_25
    if-ge v0, v1, :cond_52

    .line 224
    :goto_27
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 225
    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_31
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 228
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 221
    :cond_44
    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_1d

    .line 222
    :cond_4b
    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_25

    :cond_52
    move v0, v1

    .line 223
    goto :goto_27

    :cond_54
    move-object v0, v2

    goto :goto_31

    :cond_56
    move-object v0, v2

    goto :goto_7
.end method

.method private static hexToInt(C)I
    .registers 2

    .prologue
    .line 169
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 170
    add-int/lit8 v0, p0, -0x30

    .line 176
    :goto_a
    return v0

    .line 171
    :cond_b
    const/16 v0, 0x61

    if-gt v0, p0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    .line 172
    add-int/lit8 v0, p0, 0xa

    add-int/lit8 v0, v0, -0x61

    goto :goto_a

    .line 173
    :cond_18
    const/16 v0, 0x41

    if-gt v0, p0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    .line 174
    add-int/lit8 v0, p0, 0xa

    add-int/lit8 v0, v0, -0x41

    goto :goto_a

    .line 176
    :cond_25
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 53
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 55
    const/16 v2, 0x61

    if-lt v1, v2, :cond_13

    const/16 v2, 0x7a

    if-le v1, v2, :cond_32

    :cond_13
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1b

    const/16 v2, 0x5a

    if-le v1, v2, :cond_32

    :cond_1b
    const/16 v2, 0x30

    if-lt v1, v2, :cond_23

    const/16 v2, 0x39

    if-le v1, v2, :cond_32

    :cond_23
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-gt v1, v2, :cond_32

    .line 56
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Illegal character"

    invoke-direct {v1, p0, v2, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 53
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_35
    return-void
.end method


# virtual methods
.method public final appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 112
    sget-object v0, Lcom/mqunar/hy/res/utils/UriCodec;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mqunar/hy/res/utils/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 113
    return-void
.end method

.method public final appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 116
    sget-object v0, Lcom/mqunar/hy/res/utils/UriCodec;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mqunar/hy/res/utils/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 117
    return-void
.end method

.method public final encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/mqunar/hy/res/utils/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract isRetained(C)Z
.end method

.method public final validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v3, -0x1

    .line 27
    move v0, p2

    :goto_2
    if-ge v0, p3, :cond_a8

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 29
    const/16 v2, 0x61

    if-lt v1, v2, :cond_10

    const/16 v2, 0x7a

    if-le v1, v2, :cond_26

    :cond_10
    const/16 v2, 0x41

    if-lt v1, v2, :cond_18

    const/16 v2, 0x5a

    if-le v1, v2, :cond_26

    :cond_18
    const/16 v2, 0x30

    if-lt v1, v2, :cond_20

    const/16 v2, 0x39

    if-le v1, v2, :cond_26

    :cond_20
    invoke-virtual {p0, v1}, Lcom/mqunar/hy/res/utils/UriCodec;->isRetained(C)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 30
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 31
    :cond_29
    const/16 v2, 0x25

    if-ne v1, v2, :cond_8f

    .line 32
    add-int/lit8 v1, v0, 0x2

    if-lt v1, p3, :cond_4a

    .line 33
    new-instance v1, Ljava/net/URISyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incomplete % sequence in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 35
    :cond_4a
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/mqunar/hy/res/utils/UriCodec;->hexToInt(C)I

    move-result v1

    .line 36
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/mqunar/hy/res/utils/UriCodec;->hexToInt(C)I

    move-result v2

    .line 37
    if-eq v1, v3, :cond_62

    if-ne v2, v3, :cond_8b

    .line 38
    :cond_62
    new-instance v1, Ljava/net/URISyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid % sequence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 41
    :cond_8b
    add-int/lit8 v0, v0, 0x3

    .line 42
    goto/16 :goto_2

    .line 43
    :cond_8f
    new-instance v1, Ljava/net/URISyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal character in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 46
    :cond_a8
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
