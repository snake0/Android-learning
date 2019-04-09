.class final Lcom/mqunar/core/b;
.super Ljava/lang/ClassLoader;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 2

    .prologue
    .line 447
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/mqunar/core/QunarApkLoader;->loadFromDexs(Lcom/mqunar/core/BaseApkLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
