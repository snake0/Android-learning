.class Lorg/acra/builder/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/acra/builder/c$1;)V
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/acra/builder/c$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/acra/builder/c$a;)Ljava/lang/Long;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/acra/builder/c$a;->a:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public a()J
    .registers 5

    .prologue
    .line 88
    iget-object v0, p0, Lorg/acra/builder/c$a;->a:Ljava/lang/Long;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/acra/builder/c$a;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_6
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 81
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/builder/c$a;->a:Ljava/lang/Long;

    .line 82
    return-void
.end method
