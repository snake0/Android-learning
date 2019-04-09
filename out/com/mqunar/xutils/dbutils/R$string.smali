.class public final Lcom/mqunar/xutils/dbutils/R$string;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static action_settings:I

.field public static hello_world:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/high16 v0, 0x7f050000

    sput v0, Lcom/mqunar/xutils/dbutils/R$string;->action_settings:I

    .line 25
    const v0, 0x7f050001

    sput v0, Lcom/mqunar/xutils/dbutils/R$string;->hello_world:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
