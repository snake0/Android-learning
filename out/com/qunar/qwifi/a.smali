.class Lcom/qunar/qwifi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->getHotDogUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qunar/qwifi/a;->a:Ljava/lang/String;

    return-void
.end method
