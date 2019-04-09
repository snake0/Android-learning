.class final Lcom/baidu/tts/database/ModelFileTable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/database/f$a;


# instance fields
.field final synthetic a:Lcom/baidu/tts/client/model/ModelFileBags;


# direct methods
.method constructor <init>(Lcom/baidu/tts/client/model/ModelFileBags;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/baidu/tts/database/ModelFileTable$1;->a:Lcom/baidu/tts/client/model/ModelFileBags;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    .line 76
    :try_start_1
    const-string v0, "insert into modelFile (id, length, md5, name, absPath) values (?, ?, ?, ?, ?)"

    .line 77
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 78
    iget-object v0, p0, Lcom/baidu/tts/database/ModelFileTable$1;->a:Lcom/baidu/tts/client/model/ModelFileBags;

    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelFileBags;->getModelFileInfos()Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 80
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 81
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelFileInfo;

    .line 82
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelFileInfo;->getServerid()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelFileInfo;->getLength()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelFileInfo;->getMd5()Ljava/lang/String;

    move-result-object v6

    .line 85
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelFileInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 86
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelFileInfo;->getAbsPath()Ljava/lang/String;

    move-result-object v0

    .line 88
    const/4 v8, 0x1

    invoke-virtual {v2, v8, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 89
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 90
    const/4 v4, 0x3

    invoke-virtual {v2, v4, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 91
    const/4 v4, 0x4

    invoke-virtual {v2, v4, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 92
    const/4 v4, 0x5

    invoke-virtual {v2, v4, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_48} :catch_49

    goto :goto_11

    .line 97
    :catch_49
    move-exception v0

    .line 98
    const/4 v0, 0x0

    :goto_4b
    return v0

    :cond_4c
    move v0, v1

    .line 96
    goto :goto_4b
.end method
