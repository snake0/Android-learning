.class public Lcom/mqunar/xutils/dbutils/converter/SqlDateColumnConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mqunar/xutils/dbutils/converter/ColumnConverter",
        "<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fieldValue2ColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 12
    check-cast p1, Ljava/sql/Date;

    invoke-virtual {p0, p1}, Lcom/mqunar/xutils/dbutils/converter/SqlDateColumnConverter;->fieldValue2ColumnValue(Ljava/sql/Date;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fieldValue2ColumnValue(Ljava/sql/Date;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 26
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 27
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/sql/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3
.end method

.method public getColumnDbType()Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;
    .registers 2

    .prologue
    .line 32
    sget-object v0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;->INTEGER:Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    return-object v0
.end method

.method public bridge synthetic getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/xutils/dbutils/converter/SqlDateColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFieldValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/mqunar/xutils/dbutils/converter/SqlDateColumnConverter;->getFieldValue(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFieldValue(Landroid/database/Cursor;I)Ljava/sql/Date;
    .registers 6

    .prologue
    .line 15
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/sql/Date;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    goto :goto_7
.end method

.method public getFieldValue(Ljava/lang/String;)Ljava/sql/Date;
    .registers 5

    .prologue
    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 21
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/sql/Date;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    goto :goto_7
.end method