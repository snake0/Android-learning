.class Lcom/mqunar/yvideo/multivideo/MediaManager$SingletonHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/mqunar/yvideo/multivideo/MediaManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lcom/mqunar/yvideo/multivideo/MediaManager;

    invoke-direct {v0}, Lcom/mqunar/yvideo/multivideo/MediaManager;-><init>()V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager$SingletonHolder;->instance:Lcom/mqunar/yvideo/multivideo/MediaManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mqunar/yvideo/multivideo/MediaManager;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager$SingletonHolder;->instance:Lcom/mqunar/yvideo/multivideo/MediaManager;

    return-object v0
.end method
