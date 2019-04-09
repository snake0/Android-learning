.class public Lcom/iflytek/cloud/thirdparty/ae$a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/cloud/thirdparty/ad;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field private e:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/cloud/thirdparty/ad;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ae$a;->a:Ljava/lang/Long;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/ae$a;->b:Ljava/lang/Long;

    iput-object p3, p0, Lcom/iflytek/cloud/thirdparty/ae$a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/iflytek/cloud/thirdparty/ae$a;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/ae$a;)F
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/ae$a;->e:F

    return v0
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/ae$a;F)F
    .registers 2

    iput p1, p0, Lcom/iflytek/cloud/thirdparty/ae$a;->e:F

    return p1
.end method
