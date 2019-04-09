.class Lcom/mqunar/hy/res/HybridManager$SingletonHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/mqunar/hy/res/HybridManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    new-instance v0, Lcom/mqunar/hy/res/HybridManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mqunar/hy/res/HybridManager;-><init>(Lcom/mqunar/hy/res/HybridManager$1;)V

    sput-object v0, Lcom/mqunar/hy/res/HybridManager$SingletonHolder;->INSTANCE:Lcom/mqunar/hy/res/HybridManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/mqunar/hy/res/HybridManager;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/mqunar/hy/res/HybridManager$SingletonHolder;->INSTANCE:Lcom/mqunar/hy/res/HybridManager;

    return-object v0
.end method
