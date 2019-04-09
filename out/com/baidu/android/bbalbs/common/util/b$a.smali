.class Lcom/baidu/android/bbalbs/common/util/b$a;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/pm/ApplicationInfo;

.field public b:I

.field public c:Z

.field public d:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/android/bbalbs/common/util/b$a;->b:I

    iput-boolean v0, p0, Lcom/baidu/android/bbalbs/common/util/b$a;->c:Z

    iput-boolean v0, p0, Lcom/baidu/android/bbalbs/common/util/b$a;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/android/bbalbs/common/util/c;)V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/android/bbalbs/common/util/b$a;-><init>()V

    return-void
.end method
