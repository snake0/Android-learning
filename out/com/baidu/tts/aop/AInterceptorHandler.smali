.class public abstract Lcom/baidu/tts/aop/AInterceptorHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/aop/IInterceptorHandler;


# static fields
.field public static final DEFAULT:Ljava/lang/Object;

.field public static final END:Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/aop/IInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/Object;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/aop/AInterceptorHandler;->DEFAULT:Ljava/lang/Object;

    .line 18
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/aop/AInterceptorHandler;->END:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->c:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .prologue
    .line 108
    sget-object v1, Lcom/baidu/tts/aop/AInterceptorHandler;->DEFAULT:Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 110
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_c
    if-ge v1, v2, :cond_22

    .line 111
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/aop/IInterceptor;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/tts/aop/IInterceptor;->before(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    sget-object v3, Lcom/baidu/tts/aop/AInterceptorHandler;->END:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 116
    :cond_22
    return-object v0

    .line 110
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .prologue
    .line 120
    sget-object v1, Lcom/baidu/tts/aop/AInterceptorHandler;->DEFAULT:Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 122
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_d
    if-ltz v1, :cond_20

    .line 123
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/aop/IInterceptor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/baidu/tts/aop/IInterceptor;->after(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 122
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move-object v0, v2

    goto :goto_d

    .line 125
    :cond_20
    return-object v0
.end method

.method public bind(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/aop/IInterceptor;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->b:Ljava/lang/Object;

    .line 40
    iput-object p2, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->a:Ljava/util/List;

    .line 41
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v1, v0, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    const-string v1, "AInterceptorHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-object v0
.end method

.method public canIntercept(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .prologue
    .line 60
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/baidu/tts/aop/AInterceptorHandler;->canIntercept(Ljava/lang/String;)Z

    move-result v0

    .line 62
    if-eqz v0, :cond_3f

    .line 63
    const/4 v0, 0x0

    .line 64
    iget-object v1, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->b:Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, p3}, Lcom/baidu/tts/aop/AInterceptorHandler;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 65
    sget-object v2, Lcom/baidu/tts/aop/AInterceptorHandler;->END:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 75
    :goto_19
    return-object v0

    .line 69
    :cond_1a
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->b:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->b:Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/baidu/tts/aop/AInterceptorHandler;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    const-string v2, "AInterceptorHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "afterResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 75
    :cond_3f
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->b:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_19
.end method

.method public registerMethod(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 84
    if-eqz p1, :cond_7

    .line 85
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_7
    return-void
.end method

.method public unregisterMethod(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 94
    if-eqz p1, :cond_7

    .line 95
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 97
    :cond_7
    return-void
.end method
