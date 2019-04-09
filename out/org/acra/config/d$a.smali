.class public Lorg/acra/config/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/acra/sender/ReportSender;

.field private final b:Lorg/acra/sender/ReportSenderException;


# direct methods
.method public constructor <init>(Lorg/acra/sender/ReportSender;Lorg/acra/sender/ReportSenderException;)V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/acra/config/d$a;->a:Lorg/acra/sender/ReportSender;

    .line 45
    iput-object p2, p0, Lorg/acra/config/d$a;->b:Lorg/acra/sender/ReportSenderException;

    .line 46
    return-void
.end method


# virtual methods
.method public a()Lorg/acra/sender/ReportSender;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/acra/config/d$a;->a:Lorg/acra/sender/ReportSender;

    return-object v0
.end method

.method public b()Lorg/acra/sender/ReportSenderException;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lorg/acra/config/d$a;->b:Lorg/acra/sender/ReportSenderException;

    return-object v0
.end method
