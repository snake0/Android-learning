.class Lcom/mqunar/network/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mqunar/network/NetRequestManager;


# direct methods
.method constructor <init>(Lcom/mqunar/network/NetRequestManager;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 207
    iput-object p1, p0, Lcom/mqunar/network/g;->b:Lcom/mqunar/network/NetRequestManager;

    iput-object p2, p0, Lcom/mqunar/network/g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mqunar/network/g;->b:Lcom/mqunar/network/NetRequestManager;

    iget-object v1, p0, Lcom/mqunar/network/g;->a:Landroid/content/Context;

    const-string v2, "http://211.151.112.148/v1/client.qunar.com/a"

    const-string v3, "http://hdns.qunar.com/v1/client.qunar.com/a"

    invoke-static {v0, v1, v2, v3}, Lcom/mqunar/network/NetRequestManager;->a(Lcom/mqunar/network/NetRequestManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 211
    if-nez v0, :cond_19

    .line 212
    iget-object v0, p0, Lcom/mqunar/network/g;->b:Lcom/mqunar/network/NetRequestManager;

    iget-object v1, p0, Lcom/mqunar/network/g;->a:Landroid/content/Context;

    const-string v2, "http://120.132.34.90/v1/client.qunar.com/a"

    const-string v3, "http://httpdns.qunar.com/v1/client.qunar.com/a"

    invoke-static {v0, v1, v2, v3}, Lcom/mqunar/network/NetRequestManager;->a(Lcom/mqunar/network/NetRequestManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    :cond_19
    return-void
.end method
