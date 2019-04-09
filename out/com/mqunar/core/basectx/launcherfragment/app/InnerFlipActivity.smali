.class public Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;
.super Lcom/mqunar/core/basectx/activity/QFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/mqunar/core/basectx/activity/QFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
