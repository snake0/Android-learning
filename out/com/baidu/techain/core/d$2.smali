.class final Lcom/baidu/techain/core/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/techain/core/ApkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/baidu/techain/core/d;


# direct methods
.method constructor <init>(Lcom/baidu/techain/core/d;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 253
    iput-object p1, p0, Lcom/baidu/techain/core/d$2;->b:Lcom/baidu/techain/core/d;

    iput-object p2, p0, Lcom/baidu/techain/core/d$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 253
    check-cast p1, Lcom/baidu/techain/core/ApkInfo;

    check-cast p2, Lcom/baidu/techain/core/ApkInfo;

    .line 1257
    iget v0, p1, Lcom/baidu/techain/core/ApkInfo;->priority:I

    if-ne v0, v1, :cond_10

    iget v0, p2, Lcom/baidu/techain/core/ApkInfo;->priority:I

    if-eq v0, v1, :cond_10

    move v1, v2

    .line 1282
    :cond_f
    :goto_f
    return v1

    .line 1259
    :cond_10
    iget v0, p1, Lcom/baidu/techain/core/ApkInfo;->priority:I

    if-eq v0, v1, :cond_18

    iget v0, p2, Lcom/baidu/techain/core/ApkInfo;->priority:I

    if-eq v0, v1, :cond_f

    .line 1261
    :cond_18
    iget v0, p1, Lcom/baidu/techain/core/ApkInfo;->priority:I

    iget v3, p2, Lcom/baidu/techain/core/ApkInfo;->priority:I

    if-lt v0, v3, :cond_f

    .line 1263
    iget v0, p1, Lcom/baidu/techain/core/ApkInfo;->priority:I

    iget v3, p2, Lcom/baidu/techain/core/ApkInfo;->priority:I

    if-le v0, v3, :cond_26

    move v1, v2

    .line 1264
    goto :goto_f

    .line 1267
    :cond_26
    iget-object v0, p0, Lcom/baidu/techain/core/d$2;->a:Ljava/util/List;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/baidu/techain/core/d$2;->a:Ljava/util/List;

    iget v3, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1268
    iget-object v0, p0, Lcom/baidu/techain/core/d$2;->a:Ljava/util/List;

    iget v3, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1271
    :goto_44
    iget-object v3, p0, Lcom/baidu/techain/core/d$2;->a:Ljava/util/List;

    if-eqz v3, :cond_74

    iget-object v3, p0, Lcom/baidu/techain/core/d$2;->a:Ljava/util/List;

    iget v4, p2, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 1272
    iget-object v3, p0, Lcom/baidu/techain/core/d$2;->a:Ljava/util/List;

    iget v4, p2, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1274
    :goto_62
    if-eq v0, v1, :cond_66

    if-eq v3, v1, :cond_f

    .line 1276
    :cond_66
    if-ne v0, v1, :cond_6c

    if-eq v3, v1, :cond_6c

    move v1, v2

    .line 1277
    goto :goto_f

    .line 1279
    :cond_6c
    if-le v0, v3, :cond_70

    move v1, v2

    .line 1280
    goto :goto_f

    .line 1281
    :cond_70
    if-lt v0, v3, :cond_f

    .line 1286
    const/4 v1, 0x0

    .line 253
    goto :goto_f

    :cond_74
    move v3, v1

    goto :goto_62

    :cond_76
    move v0, v1

    goto :goto_44
.end method
