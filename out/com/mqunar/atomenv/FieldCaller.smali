.class public Lcom/mqunar/atomenv/FieldCaller;
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
        "Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected field:Ljava/lang/reflect/Field;

.field protected fieldName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mqunar/atomenv/Caller;-><init>()V

    .line 50
    return-void
.end method

.method private a()Ljava/lang/reflect/Field;
    .registers 3

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/atomenv/FieldCaller;->className:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mqunar/atomenv/FieldCaller;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/mqunar/atomenv/FieldCaller;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 46
    :goto_10
    return-object v0

    .line 45
    :catch_11
    move-exception v0

    .line 46
    const/4 v0, 0x0

    goto :goto_10
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
    .line 26
    iget-object v0, p0, Lcom/mqunar/atomenv/FieldCaller;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_c

    .line 27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field not found!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_c
    iget-object v0, p0, Lcom/mqunar/atomenv/FieldCaller;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 31
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 32
    iget-object v0, p0, Lcom/mqunar/atomenv/FieldCaller;->field:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/mqunar/atomenv/Caller$CallerObject;->returns:Ljava/lang/Object;

    .line 36
    :goto_21
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/mqunar/atomenv/Caller$CallerObject;->success:Z

    .line 37
    return-void

    .line 34
    :cond_25
    iget-object v0, p0, Lcom/mqunar/atomenv/FieldCaller;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/mqunar/atomenv/Caller$CallerObject;->returns:Ljava/lang/Object;

    goto :goto_21
.end method

.method protected sync(Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;)V
    .registers 3

    .prologue
    .line 17
    invoke-static {p1}, Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;->a(Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/FieldCaller;->className:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;->b(Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/FieldCaller;->returnType:Ljava/lang/Class;

    .line 19
    invoke-static {p1}, Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;->c(Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;)I

    move-result v0

    iput v0, p0, Lcom/mqunar/atomenv/FieldCaller;->modifierType:I

    .line 20
    invoke-static {p1}, Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;->d(Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/FieldCaller;->fieldName:Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Lcom/mqunar/atomenv/FieldCaller;->a()Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/FieldCaller;->field:Ljava/lang/reflect/Field;

    .line 22
    return-void
.end method

.method protected bridge synthetic sync(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 10
    check-cast p1, Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;

    invoke-virtual {p0, p1}, Lcom/mqunar/atomenv/FieldCaller;->sync(Lcom/mqunar/atomenv/FieldCaller$FieldBuilder;)V

    return-void
.end method
