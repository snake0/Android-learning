.class public final Lcom/mqunar/atomenv/pc/PhoneCall;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static singleInstance:Lcom/mqunar/atomenv/pc/PhoneCall;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/atomenv/pc/PhoneCall;->singleInstance:Lcom/mqunar/atomenv/pc/PhoneCall;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/mqunar/atomenv/pc/PhoneCall;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/mqunar/atomenv/pc/PhoneCall;->singleInstance:Lcom/mqunar/atomenv/pc/PhoneCall;

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Lcom/mqunar/atomenv/pc/PhoneCall;

    invoke-direct {v0}, Lcom/mqunar/atomenv/pc/PhoneCall;-><init>()V

    sput-object v0, Lcom/mqunar/atomenv/pc/PhoneCall;->singleInstance:Lcom/mqunar/atomenv/pc/PhoneCall;

    .line 21
    :cond_b
    sget-object v0, Lcom/mqunar/atomenv/pc/PhoneCall;->singleInstance:Lcom/mqunar/atomenv/pc/PhoneCall;

    return-object v0
.end method


# virtual methods
.method public processCall(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 33
    new-instance v0, Lcom/mqunar/atomenv/pc/formatter/PhoneFormatterCommon;

    invoke-direct {v0}, Lcom/mqunar/atomenv/pc/formatter/PhoneFormatterCommon;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mqunar/atomenv/pc/PhoneCall;->processCall(Landroid/content/Context;Ljava/lang/String;Lcom/mqunar/atomenv/pc/IPhoneFormatter;Lcom/mqunar/atomenv/pc/AbsCallStat;)V

    .line 34
    return-void
.end method

.method public processCall(Landroid/content/Context;Ljava/lang/String;Lcom/mqunar/atomenv/pc/AbsCallStat;)V
    .registers 5

    .prologue
    .line 47
    new-instance v0, Lcom/mqunar/atomenv/pc/formatter/PhoneFormatterCommon;

    invoke-direct {v0}, Lcom/mqunar/atomenv/pc/formatter/PhoneFormatterCommon;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mqunar/atomenv/pc/PhoneCall;->processCall(Landroid/content/Context;Ljava/lang/String;Lcom/mqunar/atomenv/pc/IPhoneFormatter;Lcom/mqunar/atomenv/pc/AbsCallStat;)V

    .line 48
    return-void
.end method

.method public processCall(Landroid/content/Context;Ljava/lang/String;Lcom/mqunar/atomenv/pc/IPhoneFormatter;)V
    .registers 5

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mqunar/atomenv/pc/PhoneCall;->processCall(Landroid/content/Context;Ljava/lang/String;Lcom/mqunar/atomenv/pc/IPhoneFormatter;Lcom/mqunar/atomenv/pc/AbsCallStat;)V

    .line 41
    return-void
.end method

.method public processCall(Landroid/content/Context;Ljava/lang/String;Lcom/mqunar/atomenv/pc/IPhoneFormatter;Lcom/mqunar/atomenv/pc/AbsCallStat;)V
    .registers 8

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-interface {p3, p2}, Lcom/mqunar/atomenv/pc/IPhoneFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    if-eqz p4, :cond_1b

    .line 60
    invoke-static {}, Lcom/mqunar/atomenv/pc/PhoneCallStat;->getInstance()Lcom/mqunar/atomenv/pc/IPhoneCall;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/mqunar/atomenv/pc/IPhoneCall;->add(Lcom/mqunar/atomenv/pc/AbsCallStat;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 65
    :cond_1b
    :goto_1b
    return-void

    .line 62
    :catch_1c
    move-exception v0

    .line 63
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1b
.end method
