.class public abstract Lcom/iflytek/cloud/thirdparty/dg;
.super Ljava/lang/Object;


# static fields
.field protected static final a:[Ljava/lang/String;

.field protected static c:[Ljava/lang/String;


# instance fields
.field protected b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/cloud/thirdparty/dg;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/dg;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/dg;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/net/Uri;
.end method

.method protected a(Landroid/content/Context;)V
    .registers 5

    const/16 v0, 0x64

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/iflytek/cloud/thirdparty/dg;->c:[Ljava/lang/String;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/dg;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5176\u4ed6"

    aput-object v2, v0, v1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/dg;->c:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "\u4f4f\u5b85"

    aput-object v2, v0, v1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/dg;->c:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "\u624b\u673a"

    aput-object v2, v0, v1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/dg;->c:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "\u5de5\u4f5c"

    aput-object v2, v0, v1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/dg;->c:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "\u5de5\u4f5c\u4f20\u771f"

    aput-object v2, v0, v1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/dg;->c:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "\u4f4f\u5b85\u4f20\u771f"

    aput-object v2, v0, v1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/dg;->c:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "\u5bfb\u547c\u673a"

    aput-object v2, v0, v1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/dg;->c:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "\u5176\u4ed6"

    aput-object v2, v0, v1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/dg;->c:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "SIM\u5361"

    aput-object v2, v0, v1

    const/16 v0, 0xa

    :goto_48
    sget-object v1, Lcom/iflytek/cloud/thirdparty/dg;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_56

    sget-object v1, Lcom/iflytek/cloud/thirdparty/dg;->c:[Ljava/lang/String;

    const-string v2, "\u81ea\u5b9a\u4e49\u7535\u8bdd"

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_56
    return-void
.end method

.method protected abstract b()[Ljava/lang/String;
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public d()Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/dg;->b()[Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :try_start_a
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dg;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/dg;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/dg;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_8e
    .catchall {:try_start_a .. :try_end_1d} :catchall_8b

    move-result-object v1

    if-nez v1, :cond_2d

    :try_start_20
    const-string v0, "iFly_ContactManager"

    const-string v2, "queryContacts------cursor is null"

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_3b
    .catchall {:try_start_20 .. :try_end_27} :catchall_67

    :goto_27
    if-eqz v1, :cond_2c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2c
    :goto_2c
    return-object v7

    :cond_2d
    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "iFly_ContactManager"

    const-string v2, "queryContacts------cursor getCount == 0"

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3a} :catch_3b
    .catchall {:try_start_2d .. :try_end_3a} :catchall_67

    goto :goto_27

    :catch_3b
    move-exception v0

    :goto_3c
    :try_start_3c
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_67

    if-eqz v1, :cond_2c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2c

    :cond_45
    :goto_45
    :try_start_45
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_45

    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_66} :catch_3b
    .catchall {:try_start_45 .. :try_end_66} :catchall_67

    goto :goto_45

    :catchall_67
    move-exception v0

    :goto_68
    if-eqz v1, :cond_6d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6d
    throw v0

    :cond_6e
    :try_start_6e
    const-string v0, "iFly_ContactManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryContacts_20------count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_8a} :catch_3b
    .catchall {:try_start_6e .. :try_end_8a} :catchall_67

    goto :goto_27

    :catchall_8b
    move-exception v0

    move-object v1, v6

    goto :goto_68

    :catch_8e
    move-exception v0

    move-object v1, v6

    goto :goto_3c
.end method

.method public e()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/cloud/thirdparty/dd;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dg;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_a3
    .catchall {:try_start_6 .. :try_end_19} :catchall_9d

    move-result-object v7

    if-eqz v7, :cond_8e

    :try_start_1c
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8e

    :cond_22
    :goto_22
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/dc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_22

    new-instance v0, Lcom/iflytek/cloud/thirdparty/dd;

    const/4 v3, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/iflytek/cloud/thirdparty/dg;->c:[Ljava/lang/String;

    const/16 v9, 0x9

    aget-object v6, v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/cloud/thirdparty/dd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_60} :catch_61
    .catchall {:try_start_1c .. :try_end_60} :catchall_96

    goto :goto_22

    :catch_61
    move-exception v0

    move-object v1, v7

    :goto_63
    :try_start_63
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_a0

    if-eqz v1, :cond_6b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6b
    :goto_6b
    return-object v8

    :cond_6c
    :try_start_6c
    const-string v0, "iFly_ContactManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySIM-------count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_88} :catch_61
    .catchall {:try_start_6c .. :try_end_88} :catchall_96

    :goto_88
    if-eqz v7, :cond_6b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_6b

    :cond_8e
    :try_start_8e
    const-string v0, "iFly_ContactManager"

    const-string v1, "querySIM-------cursor getCount = 0 or cursor is null"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_95} :catch_61
    .catchall {:try_start_8e .. :try_end_95} :catchall_96

    goto :goto_88

    :catchall_96
    move-exception v0

    :goto_97
    if-eqz v7, :cond_9c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9c
    throw v0

    :catchall_9d
    move-exception v0

    move-object v7, v6

    goto :goto_97

    :catchall_a0
    move-exception v0

    move-object v7, v1

    goto :goto_97

    :catch_a3
    move-exception v0

    move-object v1, v6

    goto :goto_63
.end method
