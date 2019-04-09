.class final Lcom/iflytek/cloud/thirdparty/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/f;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/f;->a:Landroid/content/Context;

    const-string v2, "#lxapkmd5"

    invoke-static {v1, v2, v0}, Lcom/iflytek/cloud/thirdparty/b;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method
