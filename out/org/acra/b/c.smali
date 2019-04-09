.class public final Lorg/acra/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Ljava/io/Reader;)Lorg/acra/collector/CrashReportData;
    .registers 16
    .param p1    # Ljava/io/Reader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 122
    monitor-enter p0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 124
    const/16 v0, 0x28

    :try_start_6
    new-array v7, v0, [C

    .line 125
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 126
    const/4 v0, 0x1

    .line 128
    new-instance v9, Lorg/acra/collector/CrashReportData;

    invoke-direct {v9}, Lorg/acra/collector/CrashReportData;-><init>()V

    .line 129
    new-instance v10, Ljava/io/BufferedReader;

    const/16 v6, 0x2000

    invoke-direct {v10, p1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_36

    move v8, v0

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 132
    :goto_1c
    :try_start_1c
    invoke-virtual {v10}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 133
    const/4 v6, -0x1

    if-ne v0, v6, :cond_39

    .line 269
    const/4 v0, 0x2

    if-ne v5, v0, :cond_15d

    const/4 v0, 0x4

    if-gt v3, v0, :cond_15d

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "luni.08"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_31

    .line 290
    :catchall_31
    move-exception v0

    :try_start_32
    invoke-static {v10}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    .line 122
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0

    .line 136
    :cond_39
    int-to-char v0, v0

    .line 138
    :try_start_3a
    array-length v6, v7

    if-ne v1, v6, :cond_48

    .line 139
    array-length v6, v7

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [C

    .line 140
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v7, v11, v6, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v6

    .line 143
    :cond_48
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1ad

    .line 144
    const/16 v6, 0x10

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 145
    if-ltz v6, :cond_5e

    .line 146
    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v6, v4

    .line 147
    add-int/lit8 v4, v3, 0x1

    const/4 v3, 0x4

    if-ge v4, v3, :cond_1aa

    move v3, v4

    move v4, v6

    .line 148
    goto :goto_1c

    .line 150
    :cond_5e
    const/4 v5, 0x4

    if-gt v3, v5, :cond_69

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "luni.09"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    move v5, v4

    move v4, v3

    .line 154
    :goto_6b
    const/4 v6, 0x0

    .line 155
    add-int/lit8 v3, v1, 0x1

    int-to-char v11, v5

    aput-char v11, v7, v1

    .line 156
    const/16 v1, 0xa

    if-eq v0, v1, :cond_7e

    const/16 v1, 0x85

    if-eq v0, v1, :cond_7e

    move v1, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 157
    goto :goto_1c

    :cond_7e
    move v1, v3

    move v3, v6

    .line 160
    :goto_80
    const/4 v6, 0x1

    if-ne v3, v6, :cond_bd

    .line 161
    const/4 v3, 0x0

    .line 162
    sparse-switch v0, :sswitch_data_1b4

    :goto_87
    move v13, v0

    move v0, v3

    move v3, v13

    .line 262
    :goto_8a
    const/4 v6, 0x0

    .line 263
    const/4 v8, 0x4

    if-ne v0, v8, :cond_90

    .line 265
    const/4 v0, 0x0

    move v2, v1

    .line 267
    :cond_90
    add-int/lit8 v8, v1, 0x1

    aput-char v3, v7, v1

    move v1, v8

    move v3, v4

    move v8, v6

    move v4, v5

    move v5, v0

    goto :goto_1c

    .line 164
    :sswitch_9a
    const/4 v3, 0x3

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 165
    goto/16 :goto_1c

    .line 168
    :sswitch_a1
    const/4 v3, 0x5

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 169
    goto/16 :goto_1c

    .line 171
    :sswitch_a8
    const/16 v0, 0x8

    .line 172
    goto :goto_87

    .line 174
    :sswitch_ab
    const/16 v0, 0xc

    .line 175
    goto :goto_87

    .line 177
    :sswitch_ae
    const/16 v0, 0xa

    .line 178
    goto :goto_87

    .line 180
    :sswitch_b1
    const/16 v0, 0xd

    .line 181
    goto :goto_87

    .line 183
    :sswitch_b4
    const/16 v0, 0x9

    .line 184
    goto :goto_87

    .line 186
    :sswitch_b7
    const/4 v3, 0x2

    .line 187
    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    .line 188
    goto/16 :goto_1c

    .line 191
    :cond_bd
    sparse-switch v0, :sswitch_data_1da

    .line 245
    :cond_c0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_151

    .line 246
    const/4 v6, 0x3

    if-ne v3, v6, :cond_ca

    .line 247
    const/4 v3, 0x5

    .line 250
    :cond_ca
    if-eqz v1, :cond_1a2

    if-eq v1, v2, :cond_1a2

    const/4 v6, 0x5

    if-ne v3, v6, :cond_147

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 251
    goto/16 :goto_1c

    .line 194
    :sswitch_d7
    if-eqz v8, :cond_c0

    .line 196
    :cond_d9
    invoke-virtual {v10}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 197
    const/4 v6, -0x1

    if-ne v0, v6, :cond_e6

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 198
    goto/16 :goto_1c

    .line 200
    :cond_e6
    int-to-char v0, v0

    .line 203
    const/16 v6, 0xd

    if-eq v0, v6, :cond_1a2

    const/16 v6, 0xa

    if-eq v0, v6, :cond_1a2

    const/16 v6, 0x85

    if-ne v0, v6, :cond_d9

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 204
    goto/16 :goto_1c

    .line 211
    :sswitch_f9
    const/4 v0, 0x3

    if-ne v3, v0, :cond_103

    .line 212
    const/4 v3, 0x5

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 213
    goto/16 :goto_1c

    .line 218
    :cond_103
    :sswitch_103
    const/4 v3, 0x0

    .line 219
    const/4 v0, 0x1

    .line 220
    if-gtz v1, :cond_10b

    if-nez v1, :cond_127

    if-nez v2, :cond_127

    .line 221
    :cond_10b
    const/4 v6, -0x1

    if-ne v2, v6, :cond_10f

    move v2, v1

    .line 224
    :cond_10f
    new-instance v6, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v1}, Ljava/lang/String;-><init>([CII)V

    .line 225
    const-class v1, Lorg/acra/ReportField;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_127
    const/4 v2, -0x1

    .line 228
    const/4 v1, 0x0

    move v8, v0

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 229
    goto/16 :goto_1c

    .line 231
    :sswitch_130
    const/4 v0, 0x4

    if-ne v3, v0, :cond_1a8

    move v0, v1

    .line 234
    :goto_134
    const/4 v3, 0x1

    move v2, v0

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 235
    goto/16 :goto_1c

    .line 238
    :sswitch_13c
    const/4 v6, -0x1

    if-ne v2, v6, :cond_c0

    .line 239
    const/4 v3, 0x0

    move v2, v1

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 241
    goto/16 :goto_1c

    .line 253
    :cond_147
    const/4 v6, -0x1

    if-ne v2, v6, :cond_151

    .line 254
    const/4 v3, 0x4

    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    .line 255
    goto/16 :goto_1c

    .line 258
    :cond_151
    const/4 v6, 0x5

    if-eq v3, v6, :cond_157

    const/4 v6, 0x3

    if-ne v3, v6, :cond_19d

    .line 259
    :cond_157
    const/4 v3, 0x0

    move v13, v0

    move v0, v3

    move v3, v13

    goto/16 :goto_8a

    .line 273
    :cond_15d
    const/4 v0, -0x1

    if-ne v2, v0, :cond_163

    if-lez v1, :cond_163

    move v2, v1

    .line 276
    :cond_163
    if-ltz v2, :cond_195

    .line 277
    new-instance v3, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {v3, v7, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 278
    const-class v0, Lorg/acra/ReportField;

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/acra/ReportField;

    .line 279
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 280
    const/4 v2, 0x1

    if-ne v5, v2, :cond_192

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    :cond_192
    invoke-virtual {v9, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_195
    invoke-static {p1}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V
    :try_end_198
    .catchall {:try_start_3a .. :try_end_198} :catchall_31

    .line 290
    :try_start_198
    invoke-static {v10}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V
    :try_end_19b
    .catchall {:try_start_198 .. :try_end_19b} :catchall_36

    monitor-exit p0

    return-object v9

    :cond_19d
    move v13, v0

    move v0, v3

    move v3, v13

    goto/16 :goto_8a

    :cond_1a2
    move v13, v4

    move v4, v5

    move v5, v3

    move v3, v13

    goto/16 :goto_1c

    :cond_1a8
    move v0, v2

    goto :goto_134

    :cond_1aa
    move v5, v6

    goto/16 :goto_6b

    :cond_1ad
    move v13, v3

    move v3, v5

    move v5, v4

    move v4, v13

    goto/16 :goto_80

    .line 162
    nop

    :sswitch_data_1b4
    .sparse-switch
        0xa -> :sswitch_a1
        0xd -> :sswitch_9a
        0x62 -> :sswitch_a8
        0x66 -> :sswitch_ab
        0x6e -> :sswitch_ae
        0x72 -> :sswitch_b1
        0x74 -> :sswitch_b4
        0x75 -> :sswitch_b7
        0x85 -> :sswitch_a1
    .end sparse-switch

    .line 191
    :sswitch_data_1da
    .sparse-switch
        0xa -> :sswitch_f9
        0xd -> :sswitch_103
        0x21 -> :sswitch_d7
        0x23 -> :sswitch_d7
        0x3a -> :sswitch_13c
        0x3d -> :sswitch_13c
        0x5c -> :sswitch_130
        0x85 -> :sswitch_103
    .end sparse-switch
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .registers 10
    .param p1    # Ljava/lang/StringBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x20

    .line 302
    .line 303
    if-nez p3, :cond_78

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_78

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_78

    .line 304
    const-string v0, "\\ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const/4 v0, 0x1

    .line 308
    :goto_17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_77

    .line 309
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 310
    packed-switch v2, :pswitch_data_7a

    .line 324
    :pswitch_24
    const-string v3, "\\#!=:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_30

    if-eqz p3, :cond_35

    if-ne v2, v5, :cond_35

    .line 325
    :cond_30
    const/16 v3, 0x5c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    :cond_35
    if-lt v2, v5, :cond_59

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_59

    .line 328
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 312
    :pswitch_41
    const-string v2, "\\t"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 315
    :pswitch_47
    const-string v2, "\\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 318
    :pswitch_4d
    const-string v2, "\\f"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 321
    :pswitch_53
    const-string v2, "\\r"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 330
    :cond_59
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 331
    const-string v2, "\\u"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 332
    :goto_63
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_73

    .line 333
    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 335
    :cond_73
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 339
    :cond_77
    return-void

    :cond_78
    move v0, v1

    goto :goto_17

    .line 310
    :pswitch_data_7a
    .packed-switch 0x9
        :pswitch_41
        :pswitch_47
        :pswitch_24
        :pswitch_4d
        :pswitch_53
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/io/File;)Lorg/acra/collector/CrashReportData;
    .registers 5
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 54
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 56
    :try_start_c
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v2, "ISO8859-1"

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/acra/b/c;->a(Ljava/io/Reader;)Lorg/acra/collector/CrashReportData;
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1b

    move-result-object v0

    .line 58
    invoke-static {v1}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1b
    move-exception v0

    invoke-static {v1}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public a(Lorg/acra/collector/CrashReportData;Ljava/io/File;)V
    .registers 9
    .param p1    # Lorg/acra/collector/CrashReportData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v1, "ISO8859_1"

    invoke-direct {v2, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 75
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0xc8

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    invoke-virtual {p1}, Lorg/acra/collector/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/acra/ReportField;

    invoke-virtual {v1}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    const/4 v5, 0x1

    invoke-direct {p0, v3, v1, v5}, Lorg/acra/b/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 80
    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v3, v0, v1}, Lorg/acra/b/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 82
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_54
    .catchall {:try_start_c .. :try_end_54} :catchall_55

    goto :goto_1b

    .line 88
    :catchall_55
    move-exception v0

    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    throw v0

    .line 86
    :cond_5a
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_55

    .line 88
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    .line 90
    return-void
.end method
