.class Lcom/mqunar/spider/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/mqunar/spider/ModuleMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50
    new-instance v0, Lcom/mqunar/spider/ModuleMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mqunar/spider/ModuleMonitor;-><init>(Lcom/mqunar/spider/a;)V

    sput-object v0, Lcom/mqunar/spider/b;->a:Lcom/mqunar/spider/ModuleMonitor;

    return-void
.end method

.method static synthetic a()Lcom/mqunar/spider/ModuleMonitor;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/mqunar/spider/b;->a:Lcom/mqunar/spider/ModuleMonitor;

    return-object v0
.end method
