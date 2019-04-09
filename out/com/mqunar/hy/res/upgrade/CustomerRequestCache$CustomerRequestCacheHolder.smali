.class Lcom/mqunar/hy/res/upgrade/CustomerRequestCache$CustomerRequestCacheHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/mqunar/hy/res/upgrade/CustomerRequestCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Lcom/mqunar/hy/res/upgrade/CustomerRequestCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mqunar/hy/res/upgrade/CustomerRequestCache;-><init>(Lcom/mqunar/hy/res/upgrade/CustomerRequestCache$1;)V

    sput-object v0, Lcom/mqunar/hy/res/upgrade/CustomerRequestCache$CustomerRequestCacheHolder;->INSTANCE:Lcom/mqunar/hy/res/upgrade/CustomerRequestCache;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mqunar/hy/res/upgrade/CustomerRequestCache;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/mqunar/hy/res/upgrade/CustomerRequestCache$CustomerRequestCacheHolder;->INSTANCE:Lcom/mqunar/hy/res/upgrade/CustomerRequestCache;

    return-object v0
.end method
