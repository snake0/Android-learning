.class public final enum Lcom/iflytek/cloud/thirdparty/bh$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/cloud/thirdparty/bh$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/iflytek/cloud/thirdparty/bh$a;

.field private static final synthetic b:[Lcom/iflytek/cloud/thirdparty/bh$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/iflytek/cloud/thirdparty/bh$a;

    const-string v1, "MSC"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/bh$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/bh$a;->a:Lcom/iflytek/cloud/thirdparty/bh$a;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/iflytek/cloud/thirdparty/bh$a;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/bh$a;->a:Lcom/iflytek/cloud/thirdparty/bh$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/iflytek/cloud/thirdparty/bh$a;->b:[Lcom/iflytek/cloud/thirdparty/bh$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/bh$a;
    .registers 2

    const-class v0, Lcom/iflytek/cloud/thirdparty/bh$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/bh$a;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/cloud/thirdparty/bh$a;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bh$a;->b:[Lcom/iflytek/cloud/thirdparty/bh$a;

    invoke-virtual {v0}, [Lcom/iflytek/cloud/thirdparty/bh$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/cloud/thirdparty/bh$a;

    return-object v0
.end method
