.class public Lcom/mqunar/network/NetRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[B

.field b:Ljava/io/InputStream;

.field c:Lorg/apache/http/client/methods/HttpUriRequest;

.field public contentType:Ljava/lang/String;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field

.field public handler:Landroid/os/Handler$Callback;

.field public header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public total:J

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Landroid/os/Handler$Callback;)V
    .registers 4

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/mqunar/network/NetRequest;->url:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/mqunar/network/NetRequest;->b:Ljava/io/InputStream;

    .line 60
    iput-object p3, p0, Lcom/mqunar/network/NetRequest;->handler:Landroid/os/Handler$Callback;

    .line 61
    invoke-direct {p0}, Lcom/mqunar/network/NetRequest;->a()V

    .line 62
    invoke-direct {p0}, Lcom/mqunar/network/NetRequest;->b()V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLandroid/os/Handler$Callback;)V
    .registers 4

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/mqunar/network/NetRequest;->url:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/mqunar/network/NetRequest;->a:[B

    .line 52
    iput-object p3, p0, Lcom/mqunar/network/NetRequest;->handler:Landroid/os/Handler$Callback;

    .line 53
    invoke-direct {p0}, Lcom/mqunar/network/NetRequest;->a()V

    .line 54
    invoke-direct {p0}, Lcom/mqunar/network/NetRequest;->b()V

    .line 55
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mqunar/network/NetRequest;->header:Ljava/util/Map;

    if-nez v0, :cond_14

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/network/NetRequest;->header:Ljava/util/Map;

    .line 45
    iget-object v0, p0, Lcom/mqunar/network/NetRequest;->header:Ljava/util/Map;

    const-string v1, "User-Agent"

    const-string v2, "QSpiderAndroid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_14
    return-void
.end method

.method private b()V
    .registers 2

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/mqunar/network/NetRequest;->id:I

    .line 95
    return-void
.end method


# virtual methods
.method public addFormDataPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/mqunar/network/NetRequest;
    .registers 5

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mqunar/network/NetRequest;->addFormDataPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/List;)Lcom/mqunar/network/NetRequest;

    move-result-object v0

    return-object v0
.end method

.method public addFormDataPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/List;)Lcom/mqunar/network/NetRequest;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/mqunar/network/NetRequest;"
        }
    .end annotation

    .prologue
    .line 141
    if-nez p1, :cond_a

    .line 142
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_a
    iget-object v0, p0, Lcom/mqunar/network/NetRequest;->d:Ljava/util/List;

    if-nez v0, :cond_15

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/network/NetRequest;->d:Ljava/util/List;

    .line 147
    :cond_15
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p3, "image/png"

    .line 148
    :cond_1d
    new-instance v2, Lorg/apache/http/entity/mime/FormBodyPart;

    new-instance v0, Lorg/apache/http/entity/mime/content/FileBody;

    const-string v1, "UTF-8"

    invoke-direct {v0, p2, p3, v1}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, p1, v0}, Lorg/apache/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 149
    if-eqz p4, :cond_51

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    .line 150
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 151
    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 154
    :cond_51
    iget-object v0, p0, Lcom/mqunar/network/NetRequest;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-object p0
.end method

.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/network/NetRequest;
    .registers 4

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mqunar/network/NetRequest;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/mqunar/network/NetRequest;

    move-result-object v0

    return-object v0
.end method

.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/mqunar/network/NetRequest;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/mqunar/network/NetRequest;"
        }
    .end annotation

    .prologue
    .line 117
    if-nez p1, :cond_a

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_a
    iget-object v0, p0, Lcom/mqunar/network/NetRequest;->d:Ljava/util/List;

    if-nez v0, :cond_15

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/network/NetRequest;->d:Ljava/util/List;

    .line 124
    :cond_15
    :try_start_15
    new-instance v2, Lorg/apache/http/entity/mime/FormBodyPart;

    new-instance v0, Lorg/apache/http/entity/mime/content/StringBody;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, p1, v0}, Lorg/apache/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 125
    if-eqz p3, :cond_4f

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 126
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 127
    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 131
    :catch_4d
    move-exception v0

    .line 133
    :goto_4e
    return-object p0

    .line 130
    :cond_4f
    iget-object v0, p0, Lcom/mqunar/network/NetRequest;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_54} :catch_4d

    goto :goto_4e
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 105
    :cond_c
    :goto_c
    return-void

    .line 102
    :cond_d
    iget-object v0, p0, Lcom/mqunar/network/NetRequest;->header:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "content-type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-object p2, p0, Lcom/mqunar/network/NetRequest;->contentType:Ljava/lang/String;

    goto :goto_c
.end method

.method public cancel()V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mqunar/network/NetRequest;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_16

    .line 67
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_17

    .line 68
    new-instance v0, Lcom/mqunar/network/d;

    invoke-direct {v0, p0}, Lcom/mqunar/network/d;-><init>(Lcom/mqunar/network/NetRequest;)V

    invoke-virtual {v0}, Lcom/mqunar/network/d;->start()V

    .line 85
    :cond_16
    :goto_16
    return-void

    .line 80
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/mqunar/network/NetRequest;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_16

    .line 81
    :catch_1d
    move-exception v0

    goto :goto_16
.end method

.method public hasHeader()Z
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mqunar/network/NetRequest;->header:Ljava/util/Map;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public multipart()Lcom/mqunar/network/NetRequest;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/network/NetRequest;->d:Ljava/util/List;

    .line 90
    return-object p0
.end method
