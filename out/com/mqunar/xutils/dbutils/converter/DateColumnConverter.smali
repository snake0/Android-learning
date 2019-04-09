.class public Lcom/mqunar/xutils/dbutils/converter/DateColumnConverter;
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
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fieldValue2ColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 14
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lcom/mqunar/xutils/dbutils/converter/DateColumnConverter;->fieldValue2ColumnValue(Ljava/util/Date;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fieldValue2ColumnValue(Ljava/util/Date;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 28
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 29
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3
.end method

.method public getColumnDbType()Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;
    .registers 2

    .prologue
    .line 34
    sget-object v0, Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;->INTEGER:Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    return-object v0
.end method

.method public bridge synthetic getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/xutils/dbutils/converter/DateColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFieldValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/mqunar/xutils/dbutils/converter/DateColumnConverter;->getFieldValue(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFieldValue(Landroid/database/Cursor;I)Ljava/util/Date;
    .registers 6

    .prologue
    .line 17
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/util/Date;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_7
.end method

.method public getFieldValue(Ljava/lang/String;)Ljava/util/Date;
    .registers 5

    .prologue
    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 23
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_7
.end method
