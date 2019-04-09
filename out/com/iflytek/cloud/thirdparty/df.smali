.class public Lcom/iflytek/cloud/thirdparty/df;
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

    const-string v1, "display_name"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/cloud/thirdparty/df;->d:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v2

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/cloud/thirdparty/df;->e:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "has_phone_number"

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/cloud/thirdparty/df;->f:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/iflytek/cloud/thirdparty/df;->g:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v2

    sput-object v0, Lcom/iflytek/cloud/thirdparty/df;->h:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    const-string v1, "data2"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/cloud/thirdparty/df;->i:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "has_phone_number"

    aput-object v1, v0, v2

    sput-object v0, Lcom/iflytek/cloud/thirdparty/df;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/dg;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/df;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .registers 2

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected b()[Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/df;->d:[Ljava/lang/String;

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_d

    const-string v0, "sort_key"

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "display_name"

    goto :goto_c
.end method
