.class public Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;",
            ">;"
        }
    .end annotation
.end field

.field public fragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public state:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
