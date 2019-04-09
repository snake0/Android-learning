.class public Lcom/baidu/tts/loopj/JsonStreamerEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

.field private static final HEADER_GZIP_ENCODING:Lorg/apache/http/Header;

.field private static final HEADER_JSON_CONTENT:Lorg/apache/http/Header;

.field private static final JSON_FALSE:[B

.field private static final JSON_NULL:[B

.field private static final JSON_TRUE:[B

.field private static final LOG_TAG:Ljava/lang/String; = "JsonStreamerEntity"

.field private static final STREAM_CONTENTS:[B

.field private static final STREAM_NAME:[B

.field private static final STREAM_TYPE:[B


# instance fields
.field private final buffer:[B

.field private final contentEncoding:Lorg/apache/http/Header;

.field private final elapsedField:[B

.field private final jsonParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final progressHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation in this implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

    .line 54
    const-string v0, "true"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->JSON_TRUE:[B

    .line 55
    const-string v0, "false"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->JSON_FALSE:[B

    .line 56
    const-string v0, "null"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->JSON_NULL:[B

    .line 57
    const-string v0, "name"

    invoke-static {v0}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->STREAM_NAME:[B

    .line 58
    const-string v0, "type"

    invoke-static {v0}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->STREAM_TYPE:[B

    .line 59
    const-string v0, "contents"

    invoke-static {v0}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->STREAM_CONTENTS:[B

    .line 61
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->HEADER_JSON_CONTENT:Lorg/apache/http/Header;

    .line 66
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->HEADER_GZIP_ENCODING:Lorg/apache/http/Header;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/tts/loopj/ResponseHandlerInterface;ZLjava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->buffer:[B

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    .line 82
    iput-object p1, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->progressHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    .line 83
    if-eqz p2, :cond_22

    sget-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->HEADER_GZIP_ENCODING:Lorg/apache/http/Header;

    :goto_17
    iput-object v0, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->contentEncoding:Lorg/apache/http/Header;

    .line 84
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    :goto_1f
    iput-object v1, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->elapsedField:[B

    .line 87
    return-void

    :cond_22
    move-object v0, v1

    .line 83
    goto :goto_17

    .line 84
    :cond_24
    invoke-static {p3}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1f
.end method

.method private endMetaData(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 332
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 333
    return-void
.end method

.method static escape(Ljava/lang/String;)[B
    .registers 9

    .prologue
    const/16 v7, 0x22

    .line 339
    if-nez p0, :cond_7

    .line 340
    sget-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->JSON_NULL:[B

    .line 394
    :goto_6
    return-object v0

    .line 344
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 347
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, -0x1

    .line 350
    :goto_16
    add-int/lit8 v1, v0, 0x1

    if-ge v1, v3, :cond_88

    .line 351
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 352
    sparse-switch v0, :sswitch_data_96

    .line 376
    const/16 v4, 0x1f

    if-le v0, v4, :cond_35

    const/16 v4, 0x7f

    if-lt v0, v4, :cond_2d

    const/16 v4, 0x9f

    if-le v0, v4, :cond_35

    :cond_2d
    const/16 v4, 0x2000

    if-lt v0, v4, :cond_84

    const/16 v4, 0x20ff

    if-gt v0, v4, :cond_84

    .line 377
    :cond_35
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 378
    const-string v0, "\\u"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v5, v0, 0x4

    .line 380
    const/4 v0, 0x0

    :goto_45
    if-ge v0, v5, :cond_7a

    .line 381
    const/16 v6, 0x30

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 354
    :sswitch_4f
    const-string v0, "\\\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_54
    move v0, v1

    .line 389
    goto :goto_16

    .line 357
    :sswitch_56
    const-string v0, "\\\\"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 360
    :sswitch_5c
    const-string v0, "\\b"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 363
    :sswitch_62
    const-string v0, "\\f"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 366
    :sswitch_68
    const-string v0, "\\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 369
    :sswitch_6e
    const-string v0, "\\r"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 372
    :sswitch_74
    const-string v0, "\\t"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 383
    :cond_7a
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 385
    :cond_84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 392
    :cond_88
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_6

    .line 352
    nop

    :sswitch_data_96
    .sparse-switch
        0x8 -> :sswitch_5c
        0x9 -> :sswitch_74
        0xa -> :sswitch_68
        0xc -> :sswitch_62
        0xd -> :sswitch_6e
        0x22 -> :sswitch_4f
        0x5c -> :sswitch_56
    .end sparse-switch
.end method

.method private writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/16 v2, 0x2c

    const/16 v1, 0x3a

    .line 314
    sget-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->STREAM_NAME:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 315
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 316
    invoke-static {p2}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 317
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 320
    sget-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->STREAM_TYPE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 321
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 322
    invoke-static {p3}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 323
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 326
    sget-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->STREAM_CONTENTS:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 327
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 328
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 329
    return-void
.end method

.method private writeToFromFile(Ljava/io/OutputStream;Lcom/baidu/tts/loopj/RequestParams$FileWrapper;)V
    .registers 12

    .prologue
    .line 283
    iget-object v0, p2, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-wide/16 v0, 0x0

    iget-object v2, p2, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 289
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p2, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 292
    new-instance v5, Lcom/baidu/tts/loopj/Base64OutputStream;

    const/16 v6, 0x12

    invoke-direct {v5, p1, v6}, Lcom/baidu/tts/loopj/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 296
    :goto_21
    iget-object v6, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->buffer:[B

    invoke-virtual {v4, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_38

    .line 297
    iget-object v7, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->buffer:[B

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v6}, Lcom/baidu/tts/loopj/Base64OutputStream;->write([BII)V

    .line 298
    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 299
    iget-object v6, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->progressHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v6, v0, v1, v2, v3}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendProgressMessage(JJ)V

    goto :goto_21

    .line 303
    :cond_38
    invoke-static {v5}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 306
    invoke-direct {p0, p1}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->endMetaData(Ljava/io/OutputStream;)V

    .line 309
    invoke-static {v4}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 310
    return-void
.end method

.method private writeToFromStream(Ljava/io/OutputStream;Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;)V
    .registers 7

    .prologue
    .line 253
    iget-object v0, p2, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v0, Lcom/baidu/tts/loopj/Base64OutputStream;

    const/16 v1, 0x12

    invoke-direct {v0, p1, v1}, Lcom/baidu/tts/loopj/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 262
    :goto_e
    iget-object v1, p2, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->buffer:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    .line 263
    iget-object v2, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->buffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/baidu/tts/loopj/Base64OutputStream;->write([BII)V

    goto :goto_e

    .line 267
    :cond_20
    invoke-static {v0}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 270
    invoke-direct {p0, p1}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->endMetaData(Ljava/io/OutputStream;)V

    .line 273
    iget-boolean v0, p2, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->autoClose:Z

    if-eqz v0, :cond_2f

    .line 275
    iget-object v0, p2, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 277
    :cond_2f
    return-void
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public consumeContent()V
    .registers 1

    .prologue
    .line 131
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 135
    sget-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->contentEncoding:Lorg/apache/http/Header;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 116
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 126
    sget-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->HEADER_JSON_CONTENT:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 15

    .prologue
    const/16 v12, 0x7d

    const/16 v3, 0x7b

    const/16 v11, 0x3a

    const/16 v10, 0x2c

    .line 140
    if-nez p1, :cond_12

    .line 141
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Output stream cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 149
    iget-object v1, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->contentEncoding:Lorg/apache/http/Header;

    if-eqz v1, :cond_22

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, p1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object p1, v1

    .line 154
    :cond_22
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 157
    iget-object v1, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 159
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    .line 160
    if-lez v6, :cond_1d1

    .line 161
    const/4 v1, 0x0

    .line 165
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v1

    :goto_37
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    add-int/lit8 v3, v2, 0x1

    .line 171
    :try_start_45
    iget-object v2, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 174
    invoke-static {v1}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 175
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 178
    if-nez v2, :cond_69

    .line 179
    sget-object v1, Lcom/baidu/tts/loopj/JsonStreamerEntity;->JSON_NULL:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_5e
    .catchall {:try_start_45 .. :try_end_5e} :catchall_85

    .line 220
    :goto_5e
    iget-object v1, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->elapsedField:[B

    if-nez v1, :cond_64

    if-ge v3, v6, :cond_67

    .line 221
    :cond_64
    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    :cond_67
    move v2, v3

    .line 224
    goto :goto_37

    .line 182
    :cond_69
    :try_start_69
    instance-of v1, v2, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;

    .line 185
    if-nez v1, :cond_71

    instance-of v8, v2, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;

    if-eqz v8, :cond_96

    .line 187
    :cond_71
    const/16 v8, 0x7b

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write(I)V

    .line 190
    if-eqz v1, :cond_90

    .line 191
    move-object v0, v2

    check-cast v0, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;

    move-object v1, v0

    invoke-direct {p0, p1, v1}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->writeToFromFile(Ljava/io/OutputStream;Lcom/baidu/tts/loopj/RequestParams$FileWrapper;)V

    .line 197
    :goto_7f
    const/16 v1, 0x7d

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_84
    .catchall {:try_start_69 .. :try_end_84} :catchall_85

    goto :goto_5e

    .line 220
    :catchall_85
    move-exception v1

    iget-object v2, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->elapsedField:[B

    if-nez v2, :cond_8c

    if-ge v3, v6, :cond_8f

    .line 221
    :cond_8c
    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    :cond_8f
    throw v1

    .line 193
    :cond_90
    :try_start_90
    check-cast v2, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;

    invoke-direct {p0, p1, v2}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->writeToFromStream(Ljava/io/OutputStream;Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;)V

    goto :goto_7f

    .line 198
    :cond_96
    instance-of v1, v2, Lcom/baidu/tts/loopj/JsonValueInterface;

    if-eqz v1, :cond_a4

    .line 199
    check-cast v2, Lcom/baidu/tts/loopj/JsonValueInterface;

    invoke-interface {v2}, Lcom/baidu/tts/loopj/JsonValueInterface;->getEscapedJsonValue()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5e

    .line 200
    :cond_a4
    instance-of v1, v2, Lorg/json/JSONObject;

    if-eqz v1, :cond_b4

    .line 201
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5e

    .line 202
    :cond_b4
    instance-of v1, v2, Lorg/json/JSONArray;

    if-eqz v1, :cond_c4

    .line 203
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5e

    .line 204
    :cond_c4
    instance-of v1, v2, Ljava/lang/Boolean;

    if-eqz v1, :cond_d9

    .line 205
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d6

    sget-object v1, Lcom/baidu/tts/loopj/JsonStreamerEntity;->JSON_TRUE:[B

    :goto_d2
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5e

    :cond_d6
    sget-object v1, Lcom/baidu/tts/loopj/JsonStreamerEntity;->JSON_FALSE:[B

    goto :goto_d2

    .line 206
    :cond_d9
    instance-of v1, v2, Ljava/lang/Long;

    if-eqz v1, :cond_ff

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_5e

    .line 208
    :cond_ff
    instance-of v1, v2, Ljava/lang/Double;

    if-eqz v1, :cond_125

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_5e

    .line 210
    :cond_125
    instance-of v1, v2, Ljava/lang/Float;

    if-eqz v1, :cond_14b

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_5e

    .line 212
    :cond_14b
    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_171

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_5e

    .line 215
    :cond_171
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_17c
    .catchall {:try_start_90 .. :try_end_17c} :catchall_85

    goto/16 :goto_5e

    .line 227
    :cond_17e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    .line 232
    iget-object v3, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->elapsedField:[B

    if-eqz v3, :cond_1a9

    .line 233
    iget-object v3, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->elapsedField:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 234
    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 238
    :cond_1a9
    sget-object v3, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v4, "JsonStreamerEntity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uploaded JSON in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long/2addr v1, v6

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/baidu/tts/loopj/LogInterface;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_1d1
    invoke-virtual {p1, v12}, Ljava/io/OutputStream;->write(I)V

    .line 245
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 246
    invoke-static {p1}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 247
    return-void
.end method
