.class public Lcom/mqunar/xutils/dbutils/table/Column;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final columnConverter:Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

.field protected final columnField:Ljava/lang/reflect/Field;

.field protected final columnName:Ljava/lang/String;

.field private final defaultValue:Ljava/lang/Object;

.field protected final encrypt:Lcom/mqunar/xutils/dbutils/atom/IEncrypt;

.field protected final getMethod:Ljava/lang/reflect/Method;

.field private index:I

.field protected final setMethod:Ljava/lang/reflect/Method;

.field private table:Lcom/mqunar/xutils/dbutils/table/Table;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->index:I

    .line 49
    iput-object p2, p0, Lcom/mqunar/xutils/dbutils/table/Column;->columnField:Ljava/lang/reflect/Field;

    .line 50
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/xutils/dbutils/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->columnConverter:Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    .line 51
    invoke-static {p2}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->getColumnNameByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->columnName:Ljava/lang/String;

    .line 52
    invoke-static {p2}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->getColumnEncryptType(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/xutils/dbutils/table/Column;->getEncrypt(Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/atom/IEncrypt;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->encrypt:Lcom/mqunar/xutils/dbutils/atom/IEncrypt;

    .line 54
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->columnConverter:Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    if-eqz v0, :cond_3f

    .line 55
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->columnConverter:Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    invoke-static {p2}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->getColumnDefaultValue(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->defaultValue:Ljava/lang/Object;

    .line 59
    :goto_32
    invoke-static {p1, p2}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->getColumnGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->getMethod:Ljava/lang/reflect/Method;

    .line 60
    invoke-static {p1, p2}, Lcom/mqunar/xutils/dbutils/table/ColumnUtils;->getColumnSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->setMethod:Ljava/lang/reflect/Method;

    .line 61
    return-void

    .line 57
    :cond_3f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->defaultValue:Ljava/lang/Object;

    goto :goto_32
.end method


# virtual methods
.method public getColumnConverter()Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->columnConverter:Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    return-object v0
.end method

.method public getColumnDbType()Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->columnConverter:Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    invoke-interface {v0}, Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;->getColumnDbType()Lcom/mqunar/xutils/dbutils/sqlite/ColumnDbType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnField()Ljava/lang/reflect/Field;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->columnField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getColumnName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/mqunar/xutils/dbutils/table/Column;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Column;->columnConverter:Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    invoke-interface {v1, v0}, Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;->fieldValue2ColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Column;->encrypt:Lcom/mqunar/xutils/dbutils/atom/IEncrypt;

    if-eqz v1, :cond_14

    .line 95
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Column;->encrypt:Lcom/mqunar/xutils/dbutils/atom/IEncrypt;

    invoke-interface {v1, v0}, Lcom/mqunar/xutils/dbutils/atom/IEncrypt;->encrypt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    :cond_14
    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getEncrypt(Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/atom/IEncrypt;
    .registers 3

    .prologue
    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_7
    return-object v0

    :cond_8
    invoke-static {p1}, Lcom/mqunar/xutils/dbutils/DbUtils;->getEncrypt(Ljava/lang/String;)Lcom/mqunar/xutils/dbutils/atom/IEncrypt;

    move-result-object v0

    goto :goto_7
.end method

.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    if-eqz p1, :cond_10

    .line 103
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Column;->getMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_16

    .line 105
    :try_start_7
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Column;->getMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_11

    move-result-object v0

    .line 118
    :cond_10
    :goto_10
    return-object v0

    .line 106
    :catch_11
    move-exception v1

    .line 107
    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_10

    .line 111
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Column;->columnField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 112
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Column;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_23

    move-result-object v0

    goto :goto_10

    .line 113
    :catch_23
    move-exception v1

    .line 114
    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->index:I

    return v0
.end method

.method public getTable()Lcom/mqunar/xutils/dbutils/table/Table;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->table:Lcom/mqunar/xutils/dbutils/table/Table;

    return-object v0
.end method

.method setTable(Lcom/mqunar/xutils/dbutils/table/Table;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mqunar/xutils/dbutils/table/Column;->table:Lcom/mqunar/xutils/dbutils/table/Table;

    .line 127
    return-void
.end method

.method public setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .registers 8

    .prologue
    .line 65
    iput p3, p0, Lcom/mqunar/xutils/dbutils/table/Column;->index:I

    .line 66
    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->columnConverter:Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;

    invoke-interface {v0, p2, p3}, Lcom/mqunar/xutils/dbutils/converter/ColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    .line 68
    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Column;->defaultValue:Ljava/lang/Object;

    if-nez v1, :cond_f

    .line 88
    :goto_e
    return-void

    .line 70
    :cond_f
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Column;->encrypt:Lcom/mqunar/xutils/dbutils/atom/IEncrypt;

    if-eqz v1, :cond_19

    .line 71
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Column;->encrypt:Lcom/mqunar/xutils/dbutils/atom/IEncrypt;

    invoke-interface {v1, v0}, Lcom/mqunar/xutils/dbutils/atom/IEncrypt;->decrypt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    :cond_19
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Column;->setMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_32

    .line 76
    :try_start_1d
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Column;->setMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->defaultValue:Ljava/lang/Object;

    :cond_27
    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_2c} :catch_2d

    goto :goto_e

    .line 77
    :catch_2d
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_e

    .line 82
    :cond_32
    :try_start_32
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Column;->columnField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 83
    iget-object v1, p0, Lcom/mqunar/xutils/dbutils/table/Column;->columnField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/mqunar/xutils/dbutils/table/Column;->defaultValue:Ljava/lang/Object;

    :cond_3e
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_41} :catch_42

    goto :goto_e

    .line 84
    :catch_42
    move-exception v0

    .line 85
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_e
.end method
