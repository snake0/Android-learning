.class public Lorg/apache/commons/io/input/DemuxInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final m_streams:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    return-void
.end method


# virtual methods
.method public bindStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 42
    iget-object v1, p0, Lorg/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 43
    return-object v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 56
    if-eqz v0, :cond_d

    .line 58
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 60
    :cond_d
    return-void
.end method

.method public read()I
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 73
    if-eqz v0, :cond_f

    .line 75
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 79
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method
