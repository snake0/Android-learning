.class Lcom/iflytek/cloud/thirdparty/cd$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/cd;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/cd;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/cd$2;->a:Lcom/iflytek/cloud/thirdparty/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cd$2;->a:Lcom/iflytek/cloud/thirdparty/cd;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cd;->b(Lcom/iflytek/cloud/thirdparty/cd;)V

    return-void
.end method
