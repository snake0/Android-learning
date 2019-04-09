.class Lcom/mqunar/hy/res/utils/UpgradeInfoCache$UpgradeInfoCacheHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/mqunar/hy/res/utils/UpgradeInfoCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    new-instance v0, Lcom/mqunar/hy/res/utils/UpgradeInfoCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mqunar/hy/res/utils/UpgradeInfoCache;-><init>(Lcom/mqunar/hy/res/utils/UpgradeInfoCache$1;)V

    sput-object v0, Lcom/mqunar/hy/res/utils/UpgradeInfoCache$UpgradeInfoCacheHolder;->INSTANCE:Lcom/mqunar/hy/res/utils/UpgradeInfoCache;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mqunar/hy/res/utils/UpgradeInfoCache;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/mqunar/hy/res/utils/UpgradeInfoCache$UpgradeInfoCacheHolder;->INSTANCE:Lcom/mqunar/hy/res/utils/UpgradeInfoCache;

    return-object v0
.end method
