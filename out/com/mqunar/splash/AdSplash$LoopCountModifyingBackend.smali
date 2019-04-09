.class public Lcom/mqunar/splash/AdSplash$LoopCountModifyingBackend;
.super Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;
.source "SourceFile"


# instance fields
.field private mLoopCount:I

.field final synthetic this$0:Lcom/mqunar/splash/AdSplash;


# direct methods
.method public constructor <init>(Lcom/mqunar/splash/AdSplash;Lcom/facebook/fresco/animation/backend/AnimationBackend;I)V
    .registers 4
    .param p2    # Lcom/facebook/fresco/animation/backend/AnimationBackend;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 246
    iput-object p1, p0, Lcom/mqunar/splash/AdSplash$LoopCountModifyingBackend;->this$0:Lcom/mqunar/splash/AdSplash;

    .line 247
    invoke-direct {p0, p2}, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;-><init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V

    .line 248
    iput p3, p0, Lcom/mqunar/splash/AdSplash$LoopCountModifyingBackend;->mLoopCount:I

    .line 249
    return-void
.end method


# virtual methods
.method public getLoopCount()I
    .registers 2

    .prologue
    .line 253
    iget v0, p0, Lcom/mqunar/splash/AdSplash$LoopCountModifyingBackend;->mLoopCount:I

    return v0
.end method
