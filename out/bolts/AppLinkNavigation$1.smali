.class final Lbolts/AppLinkNavigation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lbolts/AppLink;",
        "Lbolts/AppLinkNavigation$NavigationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 393
    iput-object p1, p0, Lbolts/AppLinkNavigation$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/AppLinkNavigation$NavigationResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lbolts/AppLink;",
            ">;)",
            "Lbolts/AppLinkNavigation$NavigationResult;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v1, p0, Lbolts/AppLinkNavigation$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/AppLink;

    invoke-static {v1, v0}, Lbolts/AppLinkNavigation;->navigate(Landroid/content/Context;Lbolts/AppLink;)Lbolts/AppLinkNavigation$NavigationResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lbolts/AppLinkNavigation$1;->then(Lbolts/Task;)Lbolts/AppLinkNavigation$NavigationResult;

    move-result-object v0

    return-object v0
.end method
