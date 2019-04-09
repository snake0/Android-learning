.class public Lcom/iflytek/cloud/thirdparty/ad;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;JZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ad;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/ad;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/cloud/thirdparty/ad;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/iflytek/cloud/thirdparty/ad;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/iflytek/cloud/thirdparty/ad;->d:Ljava/util/Map;

    iput-wide p6, p0, Lcom/iflytek/cloud/thirdparty/ad;->e:J

    iput-boolean p8, p0, Lcom/iflytek/cloud/thirdparty/ad;->b:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ad;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/ad;->b:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ad;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ad;->d:Ljava/util/Map;

    return-object v0
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/ad;->e:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ad;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ad;->b:Z

    return v0
.end method
