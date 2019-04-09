.class public Lcom/mqunar/cock/utils/CockStore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mqunar/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    sput-object v0, Lcom/mqunar/cock/utils/CockStore;->a:Lcom/mqunar/storage/Storage;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPubSync()Lcom/mqunar/cock/model/PubsyncGet;
    .registers 2

    .prologue
    .line 21
    sget-object v0, Lcom/mqunar/cock/utils/CockStore;->a:Lcom/mqunar/storage/Storage;

    const-string v1, "pubsync"

    invoke-virtual {v0, v1}, Lcom/mqunar/storage/Storage;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/model/PubsyncGet;

    return-object v0
.end method

.method public static savePubSync(Lcom/mqunar/cock/model/PubsyncGet;)V
    .registers 3

    .prologue
    .line 15
    if-eqz p0, :cond_9

    .line 16
    sget-object v0, Lcom/mqunar/cock/utils/CockStore;->a:Lcom/mqunar/storage/Storage;

    const-string v1, "pubsync"

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/storage/Storage;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 18
    :cond_9
    return-void
.end method
