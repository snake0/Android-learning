.class public Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;
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

.field private d:[Ljava/lang/Class;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;)Ljava/lang/Class;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;->b:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic c(Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;)I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;->c:I

    return v0
.end method

.method static synthetic d(Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;)[Ljava/lang/Class;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;->d:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic e(Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/mqunar/atomenv/MethodCaller;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mqunar/atomenv/MethodCaller",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/mqunar/atomenv/MethodCaller;

    invoke-direct {v0}, Lcom/mqunar/atomenv/MethodCaller;-><init>()V

    .line 88
    invoke-virtual {v0, p0}, Lcom/mqunar/atomenv/MethodCaller;->sync(Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;)V

    .line 89
    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;->a:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public setMethodName(Ljava/lang/String;)Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;->e:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public setModifierType(I)Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;
    .registers 2

    .prologue
    .line 72
    iput p1, p0, Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;->c:I

    .line 73
    return-object p0
.end method

.method public varargs setParameters([Ljava/lang/Class;)Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;->d:[Ljava/lang/Class;

    .line 78
    return-object p0
.end method

.method public setReturnType(Ljava/lang/Class;)Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;"
        }
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;->b:Ljava/lang/Class;

    .line 68
    return-object p0
.end method
