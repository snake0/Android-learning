.class Lorg/apache/commons/io/FileDeleteStrategy$ForceFileDeleteStrategy;
.super Lorg/apache/commons/io/FileDeleteStrategy;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 136
    const-string v0, "Force"

    invoke-direct {p0, v0}, Lorg/apache/commons/io/FileDeleteStrategy;-><init>(Ljava/lang/String;)V

    .line 137
    return-void
.end method


# virtual methods
.method protected doDelete(Ljava/io/File;)Z
    .registers 3

    .prologue
    .line 152
    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 153
    const/4 v0, 0x1

    return v0
.end method
