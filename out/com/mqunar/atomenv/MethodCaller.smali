.class public Lcom/mqunar/atomenv/MethodCaller;
.super Lcom/mqunar/atomenv/Caller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mqunar/atomenv/Caller",
        "<",
        "Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected method:Ljava/lang/reflect/Method;

.field protected methodName:Ljava/lang/String;

.field protected parameters:[Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mqunar/atomenv/Caller;-><init>()V

    .line 53
    return-void
.end method

.method private a()Ljava/lang/reflect/Method;
    .registers 4

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/atomenv/MethodCaller;->className:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mqunar/atomenv/MethodCaller;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/mqunar/atomenv/MethodCaller;->methodName:Ljava/lang/String;

    iget-object v2, p0, Lcom/mqunar/atomenv/MethodCaller;->parameters:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 30
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 33
    :goto_12
    return-object v0

    .line 32
    :catch_13
    move-exception v0

    .line 33
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method protected varargs callInternal(Lcom/mqunar/atomenv/Caller$CallerObject;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/atomenv/Caller$CallerObject",
            "<TT;>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mqunar/atomenv/MethodCaller;->method:Ljava/lang/reflect/Method;

    if-nez v0, :cond_c

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method not found!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_c
    iget-object v0, p0, Lcom/mqunar/atomenv/MethodCaller;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 44
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 45
    iget-object v0, p0, Lcom/mqunar/atomenv/MethodCaller;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/mqunar/atomenv/Caller$CallerObject;->returns:Ljava/lang/Object;

    .line 49
    :goto_21
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/mqunar/atomenv/Caller$CallerObject;->success:Z

    .line 50
    return-void

    .line 47
    :cond_25
    iget-object v0, p0, Lcom/mqunar/atomenv/MethodCaller;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/mqunar/atomenv/Caller$CallerObject;->returns:Ljava/lang/Object;

    goto :goto_21
.end method

.method protected sync(Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;)V
    .registers 3

    .prologue
    .line 18
    invoke-static {p1}, Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;->a(Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/MethodCaller;->className:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;->b(Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/MethodCaller;->returnType:Ljava/lang/Class;

    .line 20
    invoke-static {p1}, Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;->c(Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;)I

    move-result v0

    iput v0, p0, Lcom/mqunar/atomenv/MethodCaller;->modifierType:I

    .line 21
    invoke-static {p1}, Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;->d(Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;)[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/MethodCaller;->parameters:[Ljava/lang/Class;

    .line 22
    invoke-static {p1}, Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;->e(Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/MethodCaller;->methodName:Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lcom/mqunar/atomenv/MethodCaller;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/MethodCaller;->method:Ljava/lang/reflect/Method;

    .line 24
    return-void
.end method

.method protected bridge synthetic sync(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 10
    check-cast p1, Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;

    invoke-virtual {p0, p1}, Lcom/mqunar/atomenv/MethodCaller;->sync(Lcom/mqunar/atomenv/MethodCaller$MethodBuilder;)V

    return-void
.end method
