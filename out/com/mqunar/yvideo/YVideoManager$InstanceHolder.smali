.class Lcom/mqunar/yvideo/YVideoManager$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/mqunar/yvideo/YVideoManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 171
    new-instance v0, Lcom/mqunar/yvideo/YVideoManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mqunar/yvideo/YVideoManager;-><init>(Lcom/mqunar/yvideo/YVideoManager$1;)V

    sput-object v0, Lcom/mqunar/yvideo/YVideoManager$InstanceHolder;->INSTANCE:Lcom/mqunar/yvideo/YVideoManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/mqunar/yvideo/YVideoManager;
    .registers 1

    .prologue
    .line 170
    sget-object v0, Lcom/mqunar/yvideo/YVideoManager$InstanceHolder;->INSTANCE:Lcom/mqunar/yvideo/YVideoManager;

    return-object v0
.end method
