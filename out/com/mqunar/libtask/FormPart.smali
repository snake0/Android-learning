.class public Lcom/mqunar/libtask/FormPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final file:Ljava/lang/String;

.field final header:Lcom/mqunar/libtask/HttpHeader;

.field final metaData:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mqunar/libtask/FormPart;->name:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/mqunar/libtask/FormPart;->value:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/mqunar/libtask/FormPart;->file:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/mqunar/libtask/FormPart;->metaData:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/mqunar/libtask/HttpHeader;

    invoke-direct {v0}, Lcom/mqunar/libtask/HttpHeader;-><init>()V

    iput-object v0, p0, Lcom/mqunar/libtask/FormPart;->header:Lcom/mqunar/libtask/HttpHeader;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/mqunar/libtask/FormPart;->name:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/libtask/FormPart;->value:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/mqunar/libtask/FormPart;->file:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/mqunar/libtask/FormPart;->metaData:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/mqunar/libtask/HttpHeader;

    invoke-direct {v0}, Lcom/mqunar/libtask/HttpHeader;-><init>()V

    iput-object v0, p0, Lcom/mqunar/libtask/FormPart;->header:Lcom/mqunar/libtask/HttpHeader;

    .line 46
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 49
    if-nez p1, :cond_a

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_a
    iget-object v0, p0, Lcom/mqunar/libtask/FormPart;->header:Lcom/mqunar/libtask/HttpHeader;

    invoke-virtual {v0, p1, p2}, Lcom/mqunar/libtask/HttpHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
