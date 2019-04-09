.class public final enum Lcom/mqunar/tools/CompatUtil;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mqunar/tools/CompatUtil;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mqunar/tools/CompatUtil;

.field static final API11:I = 0xb

.field static final API3:I = 0x3

.field static final API4:I = 0x4

.field static final API5:I = 0x5

.field static final API8:I = 0x8

.field static version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/mqunar/tools/CompatUtil;

    sput-object v0, Lcom/mqunar/tools/CompatUtil;->$VALUES:[Lcom/mqunar/tools/CompatUtil;

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/mqunar/tools/CompatUtil;->version:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getObjectFromTag(ILandroid/view/View;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 62
    invoke-static {}, Lcom/mqunar/tools/CompatUtil;->hasHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 69
    :goto_a
    return-object v0

    .line 65
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 66
    const-class v1, Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 67
    const/4 v0, 0x0

    goto :goto_a

    .line 69
    :cond_19
    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public static getSDKVersion()I
    .registers 1

    .prologue
    .line 20
    sget v0, Lcom/mqunar/tools/CompatUtil;->version:I

    return v0
.end method

.method public static hasFroyo()Z
    .registers 2

    .prologue
    .line 26
    invoke-static {}, Lcom/mqunar/tools/CompatUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static hasGingerbread()Z
    .registers 2

    .prologue
    .line 30
    invoke-static {}, Lcom/mqunar/tools/CompatUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static hasHoneycomb()Z
    .registers 2

    .prologue
    .line 34
    invoke-static {}, Lcom/mqunar/tools/CompatUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static hasHoneycombMR1()Z
    .registers 2

    .prologue
    .line 38
    invoke-static {}, Lcom/mqunar/tools/CompatUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static hasJellyBean()Z
    .registers 2

    .prologue
    .line 42
    invoke-static {}, Lcom/mqunar/tools/CompatUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static setObjectToTag(ILandroid/view/View;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 47
    invoke-static {}, Lcom/mqunar/tools/CompatUtil;->hasHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 48
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 58
    :goto_9
    return-void

    .line 50
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 51
    const-class v0, Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 52
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 53
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1e
    move-object v0, v1

    .line 55
    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mqunar/tools/CompatUtil;
    .registers 2

    .prologue
    .line 10
    const-class v0, Lcom/mqunar/tools/CompatUtil;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mqunar/tools/CompatUtil;

    return-object v0
.end method

.method public static values()[Lcom/mqunar/tools/CompatUtil;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/mqunar/tools/CompatUtil;->$VALUES:[Lcom/mqunar/tools/CompatUtil;

    invoke-virtual {v0}, [Lcom/mqunar/tools/CompatUtil;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/tools/CompatUtil;

    return-object v0
.end method
