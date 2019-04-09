.class final Lcom/iflytek/cloud/thirdparty/dm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/dm;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dm;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/dj;->b(Landroid/content/Context;)V

    return-void
.end method
