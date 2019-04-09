.class public abstract Lcom/squareup/wire/ExtendableMessage;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/ExtendableMessage",
        "<*>;>",
        "Lcom/squareup/wire/Message;"
    }
.end annotation


# instance fields
.field transient extensionMap:Lcom/squareup/wire/ExtensionMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ExtensionMap",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 33
    iget-object v0, p1, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-eqz v0, :cond_10

    .line 34
    new-instance v0, Lcom/squareup/wire/ExtensionMap;

    iget-object v1, p1, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-direct {v0, v1}, Lcom/squareup/wire/ExtensionMap;-><init>(Lcom/squareup/wire/ExtensionMap;)V

    iput-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    .line 36
    :cond_10
    return-void
.end method


# virtual methods
.method protected extensionsEqual(Lcom/squareup/wire/ExtendableMessage;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ExtendableMessage",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-nez v0, :cond_c

    .line 60
    iget-object v0, p1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 62
    :goto_9
    return v0

    .line 60
    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    .line 62
    :cond_c
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    iget-object v1, p1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ExtensionMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method protected extensionsHashCode()I
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-virtual {v0}, Lcom/squareup/wire/ExtensionMap;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method extensionsToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-nez v0, :cond_7

    const-string v0, "{}"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-virtual {v0}, Lcom/squareup/wire/ExtensionMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

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
    .line 51
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ExtensionMap;->get(Lcom/squareup/wire/Extension;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public getExtensions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/Extension",
            "<TT;*>;>;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-virtual {v0}, Lcom/squareup/wire/ExtensionMap;->getExtensions()Ljava/util/List;

    move-result-object v0

    goto :goto_8
.end method
