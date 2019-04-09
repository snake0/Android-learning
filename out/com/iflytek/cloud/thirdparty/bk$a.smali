.class Lcom/iflytek/cloud/thirdparty/bk$a;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/bk;

.field private b:[B

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/bk;[BLjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/bk$a;->a:Lcom/iflytek/cloud/thirdparty/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bk$a;->b:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/bk$a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/bk$a;->b:[B

    iput-object p3, p0, Lcom/iflytek/cloud/thirdparty/bk$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()[B
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bk$a;->b:[B

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bk$a;->c:Ljava/lang/String;

    return-object v0
.end method
