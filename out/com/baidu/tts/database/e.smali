.class public Lcom/baidu/tts/database/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 18
    const-string v0, "CREATE TABLE StatisticsInfo(id INTEGER PRIMARY KEY AUTOINCREMENT,uuid varchar(256),startInfo varchar(256),endInfo varchar(256))"

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 22
    const-string v0, "StatisticsInfo"

    invoke-static {v0}, Lcom/baidu/tts/tools/SqlTool;->sqlDropTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
