.class public final enum Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

.field public static final enum b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

.field public static final enum c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

.field public static final enum d:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

.field private static final synthetic e:[Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    const-string v1, "GPS"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    const-string v1, "COMMON"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    const-string v1, "BD09LL"

    invoke-direct {v0, v1, v4}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    const-string v1, "BD09MC"

    invoke-direct {v0, v1, v5}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;->d:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;->d:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;->e:[Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;
    .registers 2

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;
    .registers 1

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;->e:[Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    invoke-virtual {v0}, [Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    return-object v0
.end method
