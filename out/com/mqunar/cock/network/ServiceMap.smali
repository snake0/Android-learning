.class public final enum Lcom/mqunar/cock/network/ServiceMap;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/cock/network/IServiceMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mqunar/cock/network/ServiceMap;",
        ">;",
        "Lcom/mqunar/cock/network/IServiceMap;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mqunar/cock/network/ServiceMap;

.field public static final enum IM_GET_YACCA:Lcom/mqunar/cock/network/ServiceMap;


# instance fields
.field private final mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/cock/model/BaseResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/libtask/AbsConductor;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/mqunar/cock/network/ServiceMap;

    const-string v1, "IM_GET_YACCA"

    const-string v2, "getHost"

    const-class v3, Lcom/mqunar/cock/model/YaccaListResult;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/mqunar/cock/network/ServiceMap;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/mqunar/cock/network/ServiceMap;->IM_GET_YACCA:Lcom/mqunar/cock/network/ServiceMap;

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mqunar/cock/network/ServiceMap;

    sget-object v1, Lcom/mqunar/cock/network/ServiceMap;->IM_GET_YACCA:Lcom/mqunar/cock/network/ServiceMap;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mqunar/cock/network/ServiceMap;->$VALUES:[Lcom/mqunar/cock/network/ServiceMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/cock/model/BaseResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    const-class v5, Lcom/mqunar/libtask/CrossConductor;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/cock/network/ServiceMap;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 22
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/cock/model/BaseResult;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/libtask/AbsConductor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/mqunar/cock/network/ServiceMap;->mType:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/mqunar/cock/network/ServiceMap;->mClazz:Ljava/lang/Class;

    .line 27
    iput-object p5, p0, Lcom/mqunar/cock/network/ServiceMap;->mTaskType:Ljava/lang/Class;

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mqunar/cock/network/ServiceMap;
    .registers 2

    .prologue
    .line 12
    const-class v0, Lcom/mqunar/cock/network/ServiceMap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/ServiceMap;

    return-object v0
.end method

.method public static values()[Lcom/mqunar/cock/network/ServiceMap;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/mqunar/cock/network/ServiceMap;->$VALUES:[Lcom/mqunar/cock/network/ServiceMap;

    invoke-virtual {v0}, [Lcom/mqunar/cock/network/ServiceMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/cock/network/ServiceMap;

    return-object v0
.end method


# virtual methods
.method public getClazz()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/cock/model/BaseResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mqunar/cock/network/ServiceMap;->mClazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mqunar/cock/network/ServiceMap;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/libtask/AbsConductor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mqunar/cock/network/ServiceMap;->mTaskType:Ljava/lang/Class;

    return-object v0
.end method
