.class public final enum Lcom/iflytek/cloud/thirdparty/be$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/cloud/thirdparty/be$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/iflytek/cloud/thirdparty/be$a;

.field public static final enum b:Lcom/iflytek/cloud/thirdparty/be$a;

.field private static final synthetic c:[Lcom/iflytek/cloud/thirdparty/be$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iflytek/cloud/thirdparty/be$a;

    const-string v1, "max"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/be$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/be$a;->a:Lcom/iflytek/cloud/thirdparty/be$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/be$a;

    const-string v1, "normal"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/be$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/be$a;->b:Lcom/iflytek/cloud/thirdparty/be$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/cloud/thirdparty/be$a;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$a;->a:Lcom/iflytek/cloud/thirdparty/be$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/cloud/thirdparty/be$a;->b:Lcom/iflytek/cloud/thirdparty/be$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/cloud/thirdparty/be$a;->c:[Lcom/iflytek/cloud/thirdparty/be$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/be$a;
    .registers 2

    const-class v0, Lcom/iflytek/cloud/thirdparty/be$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/be$a;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/cloud/thirdparty/be$a;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/be$a;->c:[Lcom/iflytek/cloud/thirdparty/be$a;

    invoke-virtual {v0}, [Lcom/iflytek/cloud/thirdparty/be$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/cloud/thirdparty/be$a;

    return-object v0
.end method
