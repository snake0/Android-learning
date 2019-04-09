.class public Lorg/acra/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()I
    .registers 2

    .prologue
    .line 13
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 15
    return v0
.end method
