.class public final Lcom/mqunar/xutils/dbutils/R$dimen;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static activity_horizontal_margin:I

.field public static activity_vertical_margin:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/high16 v0, 0x7f040000

    sput v0, Lcom/mqunar/xutils/dbutils/R$dimen;->activity_horizontal_margin:I

    .line 15
    const v0, 0x7f040001

    sput v0, Lcom/mqunar/xutils/dbutils/R$dimen;->activity_vertical_margin:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
