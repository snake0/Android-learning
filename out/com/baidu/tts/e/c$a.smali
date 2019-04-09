.class Lcom/baidu/tts/e/c$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/tts/e/c;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/e/c;Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 214
    iput-object p1, p0, Lcom/baidu/tts/e/c$a;->a:Lcom/baidu/tts/e/c;

    .line 215
    const-string v0, "ttsdata"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 216
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 220
    const-string v0, "create table result (_id integer primary key autoincrement, time text, code integer, cmd_type integer, cmd_id integer, result text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .prologue
    .line 225
    const-string v0, "DROP TABLE IF EXISTS result"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, p1}, Lcom/baidu/tts/e/c$a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 227
    return-void
.end method
