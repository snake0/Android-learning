.class public Lcom/mqunar/atomenv/pc/PhoneCallStat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static singleInstance:Lcom/mqunar/atomenv/pc/IPhoneCall;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/atomenv/pc/PhoneCallStat;->singleInstance:Lcom/mqunar/atomenv/pc/IPhoneCall;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/mqunar/atomenv/pc/IPhoneCall;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/mqunar/atomenv/pc/PhoneCallStat;->singleInstance:Lcom/mqunar/atomenv/pc/IPhoneCall;

    if-nez v0, :cond_b

    .line 17
    new-instance v0, Lcom/mqunar/atomenv/pc/internal/PhoneCallSto;

    invoke-direct {v0}, Lcom/mqunar/atomenv/pc/internal/PhoneCallSto;-><init>()V

    sput-object v0, Lcom/mqunar/atomenv/pc/PhoneCallStat;->singleInstance:Lcom/mqunar/atomenv/pc/IPhoneCall;

    .line 19
    :cond_b
    sget-object v0, Lcom/mqunar/atomenv/pc/PhoneCallStat;->singleInstance:Lcom/mqunar/atomenv/pc/IPhoneCall;

    return-object v0
.end method
