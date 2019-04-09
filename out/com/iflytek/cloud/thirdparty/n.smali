.class public Lcom/iflytek/cloud/thirdparty/n;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x23a804131b025c2fL


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/n;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/n;->a:Ljava/lang/String;

    iput p1, p0, Lcom/iflytek/cloud/thirdparty/n;->b:I

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/n;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/n;->b:I

    return v0
.end method
