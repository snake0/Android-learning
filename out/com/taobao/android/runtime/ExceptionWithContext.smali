.class public Lcom/taobao/android/runtime/ExceptionWithContext;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private context:Ljava/lang/StringBuffer;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/taobao/android/runtime/ExceptionWithContext;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 87
    if-eqz p2, :cond_28

    invoke-static {p2, p3}, Lcom/taobao/android/runtime/ExceptionWithContext;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    instance-of v0, p1, Lcom/taobao/android/runtime/ExceptionWithContext;

    if-eqz v0, :cond_31

    .line 91
    check-cast p1, Lcom/taobao/android/runtime/ExceptionWithContext;

    iget-object v0, p1, Lcom/taobao/android/runtime/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, 0xc8

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/taobao/android/runtime/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    .line 93
    iget-object v1, p0, Lcom/taobao/android/runtime/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :goto_27
    return-void

    .line 87
    :cond_28
    if-eqz p1, :cond_2f

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_2f
    const/4 v0, 0x0

    goto :goto_6

    .line 95
    :cond_31
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/android/runtime/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    goto :goto_27
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 100
    if-nez p0, :cond_4

    .line 101
    const/4 v0, 0x0

    .line 103
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 3

    .prologue
    .line 111
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 112
    iget-object v0, p0, Lcom/taobao/android/runtime/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3

    .prologue
    .line 120
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 121
    iget-object v0, p0, Lcom/taobao/android/runtime/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 122
    return-void
.end method
