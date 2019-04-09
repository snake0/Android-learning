.class public abstract Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/ExtendableMessage",
        "<*>;>",
        "Lcom/squareup/wire/Message$Builder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field extensionMap:Lcom/squareup/wire/ExtensionMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ExtensionMap",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 89
    return-void
.end method

.method protected constructor <init>(Lcom/squareup/wire/ExtendableMessage;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ExtendableMessage",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 93
    if-eqz p1, :cond_12

    iget-object v0, p1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-eqz v0, :cond_12

    .line 94
    new-instance v0, Lcom/squareup/wire/ExtensionMap;

    iget-object v1, p1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-direct {v0, v1}, Lcom/squareup/wire/ExtensionMap;-><init>(Lcom/squareup/wire/ExtensionMap;)V

    iput-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    .line 96
    :cond_12
    return-void
.end method


# virtual methods
.method public getExtension(Lcom/squareup/wire/Extension;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/Extension",
            "<TT;TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ExtensionMap;->get(Lcom/squareup/wire/Extension;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public setExtension(Lcom/squareup/wire/Extension;Ljava/lang/Object;)Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/Extension",
            "<TT;TE;>;TE;)",
            "Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-nez v0, :cond_b

    .line 111
    new-instance v0, Lcom/squareup/wire/ExtensionMap;

    invoke-direct {v0}, Lcom/squareup/wire/ExtensionMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    .line 113
    :cond_b
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/wire/ExtensionMap;->put(Lcom/squareup/wire/Extension;Ljava/lang/Object;)V

    .line 114
    return-object p0
.end method
