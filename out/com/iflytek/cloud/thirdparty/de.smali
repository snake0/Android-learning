.class public Lcom/iflytek/cloud/thirdparty/de;
.super Lcom/iflytek/cloud/thirdparty/dg;


# static fields
.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;

.field private static final j:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/cloud/thirdparty/de;->d:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/cloud/thirdparty/de;->e:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "person"

    aput-object v1, v0, v2

    sput-object v0, Lcom/iflytek/cloud/thirdparty/de;->f:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v2

    sput-object v0, Lcom/iflytek/cloud/thirdparty/de;->g:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v2

    const-string v1, "type"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/cloud/thirdparty/de;->h:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/cloud/thirdparty/de;->i:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v2

    sput-object v0, Lcom/iflytek/cloud/thirdparty/de;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/dg;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/de;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .registers 2

    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected b()[Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/de;->d:[Ljava/lang/String;

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    const-string v0, "name"

    return-object v0
.end method
