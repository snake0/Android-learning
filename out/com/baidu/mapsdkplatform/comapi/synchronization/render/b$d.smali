.class final enum Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

.field public static final enum b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

.field public static final enum c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

.field private static final synthetic d:[Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    const-string v1, "NO_NEED_RENDER"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    const-string v1, "RENDER_NEW_LINE"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    const-string v1, "UPDATE_TRAFFIC"

    invoke-direct {v0, v1, v4}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;->d:[Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;
    .registers 2

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;
    .registers 1

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;->d:[Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    invoke-virtual {v0}, [Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$d;

    return-object v0
.end method
