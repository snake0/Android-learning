.class Lcom/mqunar/hy/res/utils/CheckQpCompetence$CheckQpCompetenceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/mqunar/hy/res/utils/CheckQpCompetence;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 170
    new-instance v0, Lcom/mqunar/hy/res/utils/CheckQpCompetence;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;-><init>(Lcom/mqunar/hy/res/utils/CheckQpCompetence$1;)V

    sput-object v0, Lcom/mqunar/hy/res/utils/CheckQpCompetence$CheckQpCompetenceHolder;->INSTANCE:Lcom/mqunar/hy/res/utils/CheckQpCompetence;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mqunar/hy/res/utils/CheckQpCompetence;
    .registers 1

    .prologue
    .line 169
    sget-object v0, Lcom/mqunar/hy/res/utils/CheckQpCompetence$CheckQpCompetenceHolder;->INSTANCE:Lcom/mqunar/hy/res/utils/CheckQpCompetence;

    return-object v0
.end method