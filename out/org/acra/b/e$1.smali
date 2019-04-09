.class Lorg/acra/b/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/acra/b/e;


# direct methods
.method constructor <init>(Lorg/acra/b/e;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 162
    iput-object p1, p0, Lorg/acra/b/e$1;->b:Lorg/acra/b/e;

    iput-object p2, p0, Lorg/acra/b/e$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lorg/acra/b/e$1;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
