.class public Lctrip/android/oauth/net/CtripParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mParams:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    .line 17
    iput-object p1, p0, Lctrip/android/oauth/net/CtripParameters;->mAppKey:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public encodeUrl()Ljava/lang/String;
    .registers 8

    .prologue
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    const/4 v0, 0x1

    .line 79
    iget-object v1, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    if-eqz v1, :cond_5a

    .line 81
    const/4 v2, 0x0

    .line 86
    :goto_20
    iget-object v1, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_58

    .line 88
    check-cast v1, Ljava/lang/String;

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_58

    .line 91
    :try_start_32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "UTF-8"

    .line 92
    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_58
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_32 .. :try_end_58} :catch_61

    :cond_58
    :goto_58
    move v1, v2

    .line 98
    goto :goto_11

    .line 83
    :cond_5a
    const-string v2, "&"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_20

    .line 93
    :catch_61
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_58

    .line 100
    :cond_66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lctrip/android/oauth/net/CtripParameters;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 37
    iget-object v0, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 41
    iget-object v0, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 45
    iget-object v0, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 33
    iget-object v0, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 54
    iget-object v0, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_18
    return-void
.end method

.method public setParams(Ljava/util/LinkedHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    iput-object p1, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    .line 30
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lctrip/android/oauth/net/CtripParameters;->mParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method
