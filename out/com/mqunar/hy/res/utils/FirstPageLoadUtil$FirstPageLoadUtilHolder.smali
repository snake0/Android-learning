.class Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$FirstPageLoadUtilHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 218
    new-instance v0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;-><init>(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$1;)V

    sput-object v0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$FirstPageLoadUtilHolder;->INSTANCE:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;
    .registers 1

    .prologue
    .line 217
    sget-object v0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$FirstPageLoadUtilHolder;->INSTANCE:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;

    return-object v0
.end method
