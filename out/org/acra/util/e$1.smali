.class Lorg/acra/util/e$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:[Ljava/io/File;

.field final synthetic b:Lorg/acra/util/e;


# direct methods
.method constructor <init>(Lorg/acra/util/e;[Ljava/io/File;)V
    .registers 3

    .prologue
    .line 142
    iput-object p1, p0, Lorg/acra/util/e$1;->b:Lorg/acra/util/e;

    iput-object p2, p0, Lorg/acra/util/e$1;->a:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 146
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 148
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lorg/acra/util/e$1;->a:[Ljava/io/File;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2a

    .line 149
    iget-object v1, p0, Lorg/acra/util/e$1;->a:[Ljava/io/File;

    aget-object v1, v1, v0

    if-eqz v1, :cond_27

    .line 150
    new-instance v1, Lorg/acra/ne/NativeException;

    iget-object v2, p0, Lorg/acra/util/e$1;->a:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/acra/ne/NativeException;-><init>(Ljava/lang/String;)V

    .line 152
    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/acra/ne/NativeException;->noSendDmp:Z

    .line 154
    invoke-static {v1}, Lorg/acra/ne/NativeExceptionHandler;->a(Lorg/acra/ne/NativeException;)V

    .line 148
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 157
    :cond_2a
    return-void
.end method
