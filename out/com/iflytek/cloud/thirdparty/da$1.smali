.class Lcom/iflytek/cloud/thirdparty/da$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/da;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/da;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/da$1;->a:Lcom/iflytek/cloud/thirdparty/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/da$1;->a:Lcom/iflytek/cloud/thirdparty/da;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/da;->a(Lcom/iflytek/cloud/thirdparty/da;)V

    return-void
.end method
