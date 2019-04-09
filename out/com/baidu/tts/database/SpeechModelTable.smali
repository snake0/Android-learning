.class public Lcom/baidu/tts/database/SpeechModelTable;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 71
    const-string v0, "speechModel"

    const-string v1, "id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    const-string v0, "speechModel"

    invoke-static {}, Lcom/baidu/tts/database/SpeechModelTable$Field;->values()[Lcom/baidu/tts/database/SpeechModelTable$Field;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/tools/SqlTool;->sqlCreateTable(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/client/model/ModelBags;)V
    .registers 4

    .prologue
    .line 75
    new-instance v0, Lcom/baidu/tts/database/f;

    new-instance v1, Lcom/baidu/tts/database/SpeechModelTable$1;

    invoke-direct {v1, p1}, Lcom/baidu/tts/database/SpeechModelTable$1;-><init>(Lcom/baidu/tts/client/model/ModelBags;)V

    invoke-direct {v0, p0, v1}, Lcom/baidu/tts/database/f;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/database/f$a;)V

    .line 119
    invoke-virtual {v0}, Lcom/baidu/tts/database/f;->a()Z

    .line 120
    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 67
    const-string v0, "speechModel"

    invoke-static {v0}, Lcom/baidu/tts/tools/SqlTool;->sqlDropTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
