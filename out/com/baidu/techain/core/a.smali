.class public final Lcom/baidu/techain/core/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/techain/core/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Landroid/content/pm/ActivityInfo;)V
    .registers 6

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/techain/core/a;->a:Ljava/util/ArrayList;

    .line 21
    if-eqz p1, :cond_7e

    .line 22
    array-length v1, p1

    .line 23
    if-lez v1, :cond_7e

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/techain/core/a;->a:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_7e

    .line 26
    aget-object v2, p1, v0

    if-eqz v2, :cond_7b

    .line 27
    new-instance v2, Lcom/baidu/techain/core/b;

    invoke-direct {v2}, Lcom/baidu/techain/core/b;-><init>()V

    .line 28
    aget-object v3, p1, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v3, v2, Lcom/baidu/techain/core/b;->h:I

    .line 29
    aget-object v3, p1, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    iput v3, v2, Lcom/baidu/techain/core/b;->f:I

    .line 30
    aget-object v3, p1, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v3, v2, Lcom/baidu/techain/core/b;->l:I

    .line 31
    aget-object v3, p1, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v3, v2, Lcom/baidu/techain/core/b;->b:I

    .line 32
    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_46

    .line 33
    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/techain/core/b;->m:Ljava/lang/String;

    .line 35
    :cond_46
    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/techain/core/b;->j:Ljava/lang/String;

    .line 36
    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/techain/core/b;->k:Ljava/lang/String;

    .line 37
    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/techain/core/b;->c:Ljava/lang/String;

    .line 38
    aget-object v3, p1, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v3, v2, Lcom/baidu/techain/core/b;->g:I

    .line 39
    aget-object v3, p1, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v3, v2, Lcom/baidu/techain/core/b;->i:I

    .line 40
    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/techain/core/b;->e:Ljava/lang/String;

    .line 41
    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/techain/core/b;->d:Ljava/lang/String;

    .line 42
    aget-object v3, p1, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->theme:I

    iput v3, v2, Lcom/baidu/techain/core/b;->a:I

    .line 43
    iget-object v3, p0, Lcom/baidu/techain/core/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 48
    :cond_7e
    return-void
.end method

.method public static a([B)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/techain/core/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    .line 84
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_1d
    .catchall {:try_start_1 .. :try_end_6} :catchall_31

    .line 85
    :try_start_6
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_48
    .catchall {:try_start_6 .. :try_end_b} :catchall_43

    .line 87
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_11} :catch_4c
    .catchall {:try_start_b .. :try_end_11} :catchall_45

    .line 94
    :try_start_11
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 97
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_17} :catch_18

    .line 90
    :goto_17
    return-object v0

    .line 100
    :catch_18
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_17

    :catch_1d
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 93
    :goto_20
    if-eqz v0, :cond_25

    .line 94
    :try_start_22
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    .line 96
    :cond_25
    if-eqz v2, :cond_2a

    .line 97
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2c

    :cond_2a
    :goto_2a
    move-object v0, v1

    .line 90
    goto :goto_17

    .line 100
    :catch_2c
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_2a

    .line 92
    :catchall_31
    move-exception v0

    move-object v3, v1

    .line 93
    :goto_33
    if-eqz v1, :cond_38

    .line 94
    :try_start_35
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 96
    :cond_38
    if-eqz v3, :cond_3d

    .line 97
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3d} :catch_3e

    .line 101
    :cond_3d
    :goto_3d
    throw v0

    .line 100
    :catch_3e
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_3d

    .line 92
    :catchall_43
    move-exception v0

    goto :goto_33

    :catchall_45
    move-exception v0

    move-object v1, v2

    goto :goto_33

    :catch_48
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_20

    :catch_4c
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_20
.end method


# virtual methods
.method public final a()[B
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 51
    .line 54
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_26
    .catchall {:try_start_1 .. :try_end_6} :catchall_39

    .line 55
    :try_start_6
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_55
    .catchall {:try_start_6 .. :try_end_b} :catchall_4e

    .line 57
    :try_start_b
    iget-object v3, p0, Lcom/baidu/techain/core/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 60
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 62
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_58
    .catchall {:try_start_b .. :try_end_19} :catchall_53

    move-result-object v0

    .line 69
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 72
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_21

    .line 65
    :cond_20
    :goto_20
    return-object v0

    .line 75
    :catch_21
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_20

    :catch_26
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    .line 68
    :goto_29
    if-eqz v1, :cond_2e

    .line 69
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 71
    :cond_2e
    if-eqz v2, :cond_20

    .line 72
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_33} :catch_34

    goto :goto_20

    .line 75
    :catch_34
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_20

    .line 67
    :catchall_39
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 68
    :goto_3e
    if-eqz v1, :cond_43

    .line 69
    :try_start_40
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 71
    :cond_43
    if-eqz v2, :cond_48

    .line 72
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_48} :catch_49

    .line 76
    :cond_48
    :goto_48
    throw v0

    .line 75
    :catch_49
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_48

    .line 67
    :catchall_4e
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3e

    :catchall_53
    move-exception v0

    goto :goto_3e

    :catch_55
    move-exception v1

    move-object v1, v0

    goto :goto_29

    :catch_58
    move-exception v3

    goto :goto_29
.end method
