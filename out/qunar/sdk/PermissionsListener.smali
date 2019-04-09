.class public interface abstract Lqunar/sdk/PermissionsListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract requestPermission([Ljava/lang/String;I)V
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
