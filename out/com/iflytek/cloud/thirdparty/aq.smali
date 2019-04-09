.class public Lcom/iflytek/cloud/thirdparty/aq;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x9cab884349f01a2L


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/iflytek/cloud/thirdparty/aq;->a:I

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/aq;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/aq;->a:I

    return v0
.end method
