.class final Lcom/baidu/techain/rp/b/a$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/techain/rp/b/a;


# direct methods
.method public constructor <init>(Lcom/baidu/techain/rp/b/a;Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 522
    iput-object p1, p0, Lcom/baidu/techain/rp/b/a$a;->a:Lcom/baidu/techain/rp/b/a;

    .line 523
    const-string v0, "techain_d.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 525
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 529
    const-string v0, "create table if not exists r(a integer primary key autoincrement, b text, c integer, e integer,f integer,h text, g integer, i integer, j text, d long);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 530
    const-string v0, "create table if not exists c(a integer primary key autoincrement, b text); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .prologue
    .line 535
    const/4 v0, 0x1

    if-gt p2, v0, :cond_8

    .line 536
    const-string v0, "alter table r add i integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 539
    :cond_8
    const/4 v0, 0x2

    if-gt p2, v0, :cond_10

    .line 540
    const-string v0, "ALTER TABLE r ADD COLUMN j TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 545
    :cond_10
    return-void
.end method
