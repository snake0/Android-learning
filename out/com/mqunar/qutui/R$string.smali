.class public final Lcom/mqunar/qutui/R$string;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static title_activity_keep:I

.field public static title_activity_keepalive:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/high16 v0, 0x7f030000

    sput v0, Lcom/mqunar/qutui/R$string;->title_activity_keep:I

    .line 18
    const v0, 0x7f030001

    sput v0, Lcom/mqunar/qutui/R$string;->title_activity_keepalive:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
