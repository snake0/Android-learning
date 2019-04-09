.class public Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;)Ljava/lang/Class;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;->b:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic c(Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;)I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;->c:I

    return v0
.end method

.method static synthetic d(Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/mqunar/atomenv/FieldCaller;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mqunar/atomenv/FieldCaller",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/mqunar/atomenv/FieldCaller;

    invoke-direct {v0}, Lcom/mqunar/atomenv/FieldCaller;-><init>()V

    .line 78
    invoke-virtual {v0, p0}, Lcom/mqunar/atomenv/FieldCaller;->sync(Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;)V

    .line 79
    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;->a:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public setFieldName(Ljava/lang/String;)Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;->d:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public setModifierType(I)Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;
    .registers 2

    .prologue
    .line 67
    iput p1, p0, Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;->c:I

    .line 68
    return-object p0
.end method

.method public setReturnType(Ljava/lang/Class;)Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;"
        }
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;->b:Ljava/lang/Class;

    .line 63
    return-object p0
.end method
