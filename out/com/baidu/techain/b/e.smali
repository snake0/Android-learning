.class public final Lcom/baidu/techain/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Lcom/baidu/techain/TechainReceiver;

.field public static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/techain/b/e;->a:Z

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    .line 80
    const-string v0, ""

    sput-object v0, Lcom/baidu/techain/b/e;->f:Ljava/lang/String;

    .line 81
    const-string v0, ""

    sput-object v0, Lcom/baidu/techain/b/e;->g:Ljava/lang/String;

    .line 82
    const/4 v0, -0x1

    sput v0, Lcom/baidu/techain/b/e;->h:I

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/techain/b/e;->e:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 154
    :try_start_0
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 155
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 174
    :goto_e
    return-object v0

    .line 156
    :cond_f
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 157
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_e

    .line 158
    :cond_1e
    const-class v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 159
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_e

    .line 160
    :cond_2d
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 161
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_e

    .line 162
    :cond_3c
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 163
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_e

    .line 164
    :cond_4b
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 165
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_e

    .line 166
    :cond_5a
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 167
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_e

    .line 168
    :cond_69
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 169
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_77} :catch_78

    goto :goto_e

    .line 4086
    :catch_78
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    .line 174
    :cond_7c
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 649
    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 650
    :cond_8
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 651
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "object="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", methodName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_2a
    if-eqz p2, :cond_3d

    if-eqz p3, :cond_3d

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_3d

    .line 655
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 656
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v1, "paramTypes or args fail"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_3d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 660
    const/4 v1, 0x0

    .line 661
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_49
    if-ge v2, v4, :cond_76

    aget-object v0, v3, v2

    .line 662
    invoke-static {v0, p1, p2}, Lcom/baidu/techain/b/e;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 667
    :goto_53
    if-nez v0, :cond_71

    .line 668
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 669
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot find method in target methodName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_6d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_49

    .line 673
    :cond_71
    invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_76
    move-object v0, v1

    goto :goto_53
.end method

.method private static a(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 1514
    const/4 v0, 0x0

    .line 1516
    :try_start_1
    const-string v1, "/proc/%d/cmdline"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1517
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1516
    invoke-static {v1}, Lcom/baidu/techain/b/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1518
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1519
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1e} :catch_20

    move-result-object v0

    .line 1524
    :cond_1f
    :goto_1f
    return-object v0

    .line 35086
    :catch_20
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_1f
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 880
    const-string v0, ""

    .line 882
    :try_start_2
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_25

    .line 883
    const/4 v2, 0x0

    .line 885
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 886
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 887
    invoke-virtual {v1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_16} :catch_2a
    .catchall {:try_start_8 .. :try_end_16} :catchall_3f

    move-result-object v0

    .line 891
    if-eqz v2, :cond_1c

    .line 893
    :try_start_19
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_25

    .line 902
    :cond_1c
    :goto_1c
    return-object v0

    .line 895
    :catch_1d
    move-exception v1

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_24} :catch_25

    goto :goto_1c

    .line 21086
    :catch_25
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_1c

    .line 889
    :catch_2a
    move-exception v1

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_3f

    .line 891
    if-eqz v2, :cond_1c

    .line 893
    :try_start_33
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_25

    goto :goto_1c

    .line 895
    :catch_37
    move-exception v1

    :try_start_38
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3e} :catch_25

    goto :goto_1c

    .line 891
    :catchall_3f
    move-exception v1

    if-eqz v2, :cond_45

    .line 893
    :try_start_42
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_25

    .line 896
    :cond_45
    :goto_45
    :try_start_45
    throw v1

    .line 895
    :catch_46
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_4d} :catch_25

    goto :goto_45
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 1548
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v0, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1552
    const/4 v0, 0x1

    .line 1553
    :goto_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 1554
    if-nez v0, :cond_23

    .line 1555
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1559
    :goto_1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1557
    :cond_23
    const/4 v0, 0x0

    goto :goto_1f

    .line 1562
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 128
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 129
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_16
    return-object v0

    .line 130
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 131
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 132
    :cond_2e
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 133
    const-class v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 134
    :cond_45
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 135
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 136
    :cond_5c
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 137
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 138
    :cond_73
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 139
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 140
    :cond_8a
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 141
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16

    .line 142
    :cond_a2
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 143
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b7} :catch_ba

    move-result-object v0

    goto/16 :goto_16

    .line 3086
    :catch_ba
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    .line 148
    :cond_be
    const/4 v0, 0x0

    goto/16 :goto_16
.end method

.method public static a([B)Ljava/lang/String;
    .registers 6

    .prologue
    .line 1884
    const-string v1, ""

    .line 1885
    const/4 v0, 0x0

    :goto_3
    array-length v2, p0

    if-ge v0, v2, :cond_3c

    .line 1886
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1887
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    .line 1888
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1890
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1885
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1892
    :cond_3c
    return-object v1
.end method

.method public static a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 90
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-lez v1, :cond_1a

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v1, v1, v2

    if-eqz v1, :cond_1a

    .line 94
    :try_start_11
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/baidu/techain/b/d;->a(Landroid/content/pm/Signature;)Ljava/security/PublicKey;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_19} :catch_21

    move-result-object v0

    .line 99
    :cond_1a
    :goto_1a
    if-nez v0, :cond_20

    .line 100
    invoke-static {p1}, Lcom/baidu/techain/b/d;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 102
    :cond_20
    return-object v0

    .line 2086
    :catch_21
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_1a
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/techain/rp/a/a;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .registers 7

    .prologue
    .line 1486
    iget-object v1, p1, Lcom/baidu/techain/rp/a/a;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/techain/rp/a/a;->c:Ljava/lang/String;

    if-eqz p3, :cond_d

    iget-object v0, p1, Lcom/baidu/techain/rp/a/a;->d:Ljava/lang/String;

    :goto_8
    invoke-static {p0, v1, v2, v0, p2}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p1, Lcom/baidu/techain/rp/a/a;->e:Ljava/lang/String;

    goto :goto_8
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 11

    .prologue
    .line 1823
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1825
    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1826
    const-string v0, "0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1827
    const-string v0, "1"

    const-string v1, "0"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1828
    const-string v0, "2"

    const-string v1, "0"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1830
    invoke-static {p0}, Lcom/baidu/techain/b/e;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 1831
    if-eqz v0, :cond_75

    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_75

    .line 1832
    const-string v1, "3"

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1837
    :goto_33
    const-string v0, "4"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1838
    const-string v0, "5"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1839
    const-string v0, "6"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1840
    const-string v0, "7"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1841
    const-string v0, "8"

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1842
    const-string v0, "9"

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1843
    const-string v0, "10"

    invoke-virtual {v3, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1845
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1846
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_62} :catch_7d

    move-result v0

    if-nez v0, :cond_88

    .line 1848
    :try_start_65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_6a} :catch_82

    .line 1855
    :goto_6a
    :try_start_6a
    const-string v1, "Common_section"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1856
    const-string v1, "Module_section"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1862
    :goto_74
    return-object v2

    .line 1834
    :cond_75
    const-string v0, "3"

    const-string v1, "3"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_7c} :catch_7d

    goto :goto_33

    .line 50086
    :catch_7d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_74

    .line 49086
    :catch_82
    move-exception v0

    move-object v0, v1

    :try_start_84
    invoke-static {}, Lcom/baidu/techain/b;->c()V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_87} :catch_7d

    goto :goto_6a

    :cond_88
    move-object v0, v1

    goto :goto_6a
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 14

    .prologue
    const/4 v1, 0x1

    .line 1566
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1575
    const/4 v0, 0x0

    .line 1577
    :try_start_a
    const-string v3, "Common_section"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_13c

    move-result-object v0

    .line 1582
    :goto_10
    const-string v3, "10"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1583
    const-string v4, "0"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1584
    const-string v6, "1"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1585
    const-string v7, "3"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1586
    const-string v8, "8"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1588
    const-string v9, "9"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1591
    :try_start_34
    const-string v0, ""
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_36} :catch_148

    .line 1593
    :try_start_36
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1594
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_45} :catch_142

    move-result-object v0

    .line 1599
    :goto_46
    :try_start_46
    const-string v10, "1"

    invoke-virtual {v2, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1600
    const-string v0, "2"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1601
    const-string v0, "3"

    invoke-static {p0}, Lcom/baidu/techain/b/e;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1602
    const-string v0, "4"

    invoke-static {p0}, Lcom/baidu/techain/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1604
    const-string v0, "5"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1605
    const-string v0, "6"

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1606
    const-string v0, "7"

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1607
    const-string v0, "8"

    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1608
    const-string v0, "9"

    invoke-virtual {v2, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1609
    const-string v0, "10"

    invoke-virtual {v2, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1611
    new-instance v3, Lcom/baidu/techain/e;

    invoke-direct {v3, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1613
    const-string v0, "11"

    .line 38970
    iget-object v4, v3, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v5, "re_a_cv"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1613
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1614
    const-string v0, "12"

    .line 39961
    iget-object v4, v3, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v5, "re_a_lc"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1614
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1616
    const-string v4, "13"

    invoke-virtual {v3}, Lcom/baidu/techain/e;->o()Z

    move-result v0

    if-eqz v0, :cond_14d

    move v0, v1

    :goto_b0
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1618
    invoke-static {p0}, Lcom/baidu/techain/b/e;->l(Landroid/content/Context;)I

    move-result v0

    .line 1620
    const/4 v1, 0x4

    if-ne v0, v1, :cond_150

    .line 1621
    const-string v0, "14"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1626
    :goto_c0
    const-string v0, "20"

    invoke-static {p0}, Lcom/baidu/techain/b/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1627
    const-string v0, "21"

    invoke-static {p0}, Lcom/baidu/techain/b/g;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1628
    const-string v0, "22"

    invoke-static {p0}, Lcom/baidu/techain/b/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40293
    iget-object v0, v3, Lcom/baidu/techain/e;->b:Landroid/content/SharedPreferences;

    const-string v1, "xygls"

    const-string v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1630
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_e8
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_e8} :catch_148

    move-result v1

    if-eqz v1, :cond_103

    .line 1632
    :try_start_eb
    invoke-static {p0}, Lcom/baidu/techain/b/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1633
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 1634
    const-string v0, ""

    .line 40297
    :cond_f7
    iget-object v1, v3, Lcom/baidu/techain/e;->d:Landroid/content/SharedPreferences$Editor;

    const-string v4, "xygls"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40298
    iget-object v1, v3, Lcom/baidu/techain/e;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_103
    .catch Ljava/lang/Throwable; {:try_start_eb .. :try_end_103} :catch_167

    .line 1641
    :cond_103
    :goto_103
    :try_start_103
    const-string v1, "23"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1649
    const-string v0, "25"

    invoke-static {p0}, Lcom/baidu/techain/rp/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1650
    const-string v0, "26"

    invoke-static {p0}, Lcom/baidu/techain/rp/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1651
    const-string v0, "27"

    invoke-static {p0}, Lcom/baidu/techain/rp/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1652
    const-string v0, "28"

    invoke-static {p0}, Lcom/baidu/techain/b/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1653
    const-string v0, "Module_section"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1654
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_158

    .line 1655
    const-string v1, "module_section"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13b
    .catch Ljava/lang/Throwable; {:try_start_103 .. :try_end_13b} :catch_148

    .line 1664
    :goto_13b
    return-object v2

    .line 37086
    :catch_13c
    move-exception v3

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto/16 :goto_10

    .line 38086
    :catch_142
    move-exception v10

    :try_start_143
    invoke-static {}, Lcom/baidu/techain/b;->c()V
    :try_end_146
    .catch Ljava/lang/Throwable; {:try_start_143 .. :try_end_146} :catch_148

    goto/16 :goto_46

    .line 41086
    :catch_148
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_13b

    .line 1616
    :cond_14d
    const/4 v0, 0x0

    goto/16 :goto_b0

    .line 1623
    :cond_150
    :try_start_150
    const-string v0, "14"

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_c0

    .line 1657
    :cond_158
    const-string v1, "module_section"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_166
    .catch Ljava/lang/Throwable; {:try_start_150 .. :try_end_166} :catch_148

    goto :goto_13b

    :catch_167
    move-exception v1

    goto :goto_103
.end method

.method public static a()V
    .registers 0

    .prologue
    .line 86
    invoke-static {}, Lcom/baidu/techain/b;->c()V

    .line 87
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .registers 8

    .prologue
    .line 1866
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1867
    const/16 v1, 0x65

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.b.r.p"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    .line 1868
    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1871
    :try_start_17
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1a} :catch_24

    .line 1875
    :goto_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    .line 1877
    const/4 v4, 0x0

    :try_start_20
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_29

    .line 1881
    :goto_23
    return-void

    .line 50088
    :catch_24
    move-exception v2

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_1a

    .line 50090
    :catch_29
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_23
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 2021
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 2022
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2023
    if-eqz v1, :cond_12

    .line 2033
    :cond_11
    :goto_11
    return-void

    .line 2026
    :cond_12
    sget-object v1, Lcom/baidu/techain/b/e;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2027
    sget-object v1, Lcom/baidu/techain/b/e;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2028
    new-instance v0, Lcom/baidu/techain/ac/U;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/techain/ac/U;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0}, Lcom/baidu/techain/ac/U;->start()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_11

    .line 50098
    :catch_2a
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_11
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 1671
    invoke-static {p0}, Lcom/baidu/techain/b/f;->a(Landroid/content/Context;)Lcom/baidu/techain/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/techain/b/f;->a()V

    .line 1672
    invoke-static {p0}, Lcom/baidu/techain/b/f;->a(Landroid/content/Context;)Lcom/baidu/techain/b/f;

    move-result-object v0

    .line 42077
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 42078
    const/16 v2, 0x8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 42080
    iget-object v0, v0, Lcom/baidu/techain/b/f;->a:Lcom/baidu/techain/rp/f/a;

    invoke-virtual {v0, v1}, Lcom/baidu/techain/rp/f/a;->a(Landroid/os/Message;)V

    .line 1674
    new-instance v1, Lcom/baidu/techain/rp/a/a;

    invoke-direct {v1}, Lcom/baidu/techain/rp/a/a;-><init>()V

    .line 1675
    iput-object p1, v1, Lcom/baidu/techain/rp/a/a;->a:Ljava/lang/String;

    .line 1676
    iput-object p2, v1, Lcom/baidu/techain/rp/a/a;->b:Ljava/lang/String;

    .line 1677
    iput-object p3, v1, Lcom/baidu/techain/rp/a/a;->c:Ljava/lang/String;

    .line 1678
    iput-object p4, v1, Lcom/baidu/techain/rp/a/a;->d:Ljava/lang/String;

    .line 1679
    iput-object p5, v1, Lcom/baidu/techain/rp/a/a;->e:Ljava/lang/String;

    .line 1681
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1705
    :cond_34
    :goto_34
    return-void

    .line 1685
    :cond_35
    new-instance v2, Lcom/baidu/techain/e;

    invoke-direct {v2, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1687
    invoke-virtual {v2}, Lcom/baidu/techain/e;->w()Ljava/util/List;

    move-result-object v0

    .line 1688
    if-nez v0, :cond_7f

    .line 1689
    invoke-virtual {v2, v1}, Lcom/baidu/techain/e;->a(Lcom/baidu/techain/rp/a/a;)V

    .line 1698
    :goto_43
    iget-object v0, v1, Lcom/baidu/techain/rp/a/a;->e:Ljava/lang/String;

    .line 42852
    iget-object v2, v2, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "re_net_ins_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1698
    if-nez v0, :cond_70

    .line 1699
    invoke-static {p0}, Lcom/baidu/techain/b/f;->a(Landroid/content/Context;)Lcom/baidu/techain/b/f;

    move-result-object v0

    .line 43069
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 43070
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 43071
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43073
    iget-object v0, v0, Lcom/baidu/techain/b/f;->a:Lcom/baidu/techain/rp/f/a;

    invoke-virtual {v0, v2}, Lcom/baidu/techain/rp/f/a;->a(Landroid/os/Message;)V

    .line 1702
    :cond_70
    invoke-static {p0}, Lcom/baidu/techain/b/f;->a(Landroid/content/Context;)Lcom/baidu/techain/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/techain/b/f;->b()V

    .line 1703
    invoke-static {p0}, Lcom/baidu/techain/b/f;->a(Landroid/content/Context;)Lcom/baidu/techain/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/techain/b/f;->c()V

    goto :goto_34

    .line 1690
    :cond_7f
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    .line 1691
    invoke-virtual {v2, v1}, Lcom/baidu/techain/e;->a(Lcom/baidu/techain/rp/a/a;)V

    goto :goto_43

    .line 42637
    :cond_89
    if-eqz v0, :cond_bc

    .line 42641
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 42642
    const/4 v4, -0x1

    if-eq v3, v4, :cond_bc

    .line 42646
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/rp/a/a;

    .line 42647
    if-eqz v0, :cond_bc

    .line 42650
    invoke-static {v0}, Lcom/baidu/techain/rp/a/a;->a(Lcom/baidu/techain/rp/a/a;)Ljava/lang/String;

    move-result-object v0

    .line 42651
    invoke-static {v1}, Lcom/baidu/techain/rp/a/a;->a(Lcom/baidu/techain/rp/a/a;)Ljava/lang/String;

    move-result-object v1

    .line 42653
    iget-object v3, v2, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v4, "re_con"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42655
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 42657
    iget-object v1, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    const-string v3, "re_con"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42658
    iget-object v0, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1694
    :cond_bc
    invoke-static {p0}, Lcom/baidu/techain/b/f;->a(Landroid/content/Context;)Lcom/baidu/techain/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/techain/b/f;->b()V

    goto/16 :goto_34
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 827
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 877
    :goto_6
    return-void

    .line 832
    :cond_7
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 833
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 835
    const-string v0, "0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 837
    const-string v0, "1"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 839
    const-string v0, "2"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 841
    invoke-static {p0}, Lcom/baidu/techain/b/e;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 843
    if-eqz v0, :cond_aa

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_aa

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_aa

    const/4 v3, 0x1

    aget-object v3, v0, v3

    .line 844
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_aa

    .line 845
    const/4 v3, 0x0

    aget-object v0, v0, v3

    .line 849
    :goto_47
    const-string v3, "3"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 851
    const-string v0, "4"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 853
    const-string v0, "5"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 855
    const-string v0, "6"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 857
    const-string v0, "7"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 858
    const-string v0, "8"

    const-string v3, "techain"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 859
    const-string v0, "3.1.6.1"

    .line 860
    const-string v3, "9"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 861
    const-string v0, "10"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 862
    const-string v0, "Common_section"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 863
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_ad

    .line 864
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 865
    const-string v2, "Module_section"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 869
    :goto_8c
    invoke-static {p0}, Lcom/baidu/techain/rp/Report;->getInstance(Landroid/content/Context;)Lcom/baidu/techain/rp/Report;

    move-result-object v0

    .line 870
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 872
    invoke-virtual {v0, v1}, Lcom/baidu/techain/rp/Report;->s(Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a2} :catch_a4

    goto/16 :goto_6

    .line 20086
    :catch_a4
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto/16 :goto_6

    .line 847
    :cond_aa
    :try_start_aa
    const-string v0, "3"

    goto :goto_47

    .line 867
    :cond_ad
    const-string v0, "Module_section"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_aa .. :try_end_b7} :catch_a4

    goto :goto_8c
.end method

.method public static a(Landroid/content/Context;[B)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1241
    :try_start_1
    invoke-static {p0}, Lcom/baidu/techain/b/e;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 1242
    if-eqz v1, :cond_44

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_44

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    const/4 v2, 0x1

    aget-object v2, v1, v2

    .line 1243
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 1244
    const-string v2, "200080"

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.baidu.BaiduMap"

    .line 1245
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1246
    if-eqz p1, :cond_44

    .line 1247
    :goto_36
    array-length v1, p1

    if-ge v0, v1, :cond_44

    .line 1248
    aget-byte v1, p1, v0

    xor-int/lit16 v1, v1, 0xf6

    int-to-byte v1, v1

    aput-byte v1, p1, v0
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_40} :catch_43

    .line 1247
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 1256
    :catch_43
    move-exception v0

    :cond_44
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 555
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    invoke-static {p0}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 599
    :cond_b
    :goto_b
    return-void

    .line 559
    :cond_c
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 560
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 566
    :cond_15
    :try_start_15
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1a} :catch_b0
    .catchall {:try_start_15 .. :try_end_1a} :catchall_86

    .line 567
    :try_start_1a
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1f} :catch_b4
    .catchall {:try_start_1a .. :try_end_1f} :catchall_a3

    .line 570
    const/16 v1, 0x2000

    :try_start_21
    new-array v1, v1, [B

    .line 572
    :goto_23
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_47

    .line 573
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2e} :catch_2f
    .catchall {:try_start_21 .. :try_end_2e} :catchall_a5

    goto :goto_23

    .line 16086
    :catch_2f
    move-exception v1

    move-object v1, v2

    :goto_31
    :try_start_31
    invoke-static {}, Lcom/baidu/techain/b;->c()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_aa

    .line 583
    if-eqz v1, :cond_39

    .line 585
    :try_start_36
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_7e

    .line 590
    :cond_39
    :goto_39
    if-eqz v0, :cond_b

    .line 592
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_b

    .line 594
    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    goto :goto_b

    .line 576
    :cond_47
    :try_start_47
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 579
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_67} :catch_2f
    .catchall {:try_start_47 .. :try_end_67} :catchall_a5

    .line 585
    :try_start_67
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_76

    .line 592
    :goto_6a
    :try_start_6a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_b

    .line 594
    :catch_6e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    goto :goto_b

    .line 587
    :catch_76
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    goto :goto_6a

    :catch_7e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    goto :goto_39

    .line 583
    :catchall_86
    move-exception v0

    move-object v2, v1

    :goto_88
    if-eqz v2, :cond_8d

    .line 585
    :try_start_8a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_93

    .line 590
    :cond_8d
    :goto_8d
    if-eqz v1, :cond_92

    .line 592
    :try_start_8f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_9b

    .line 595
    :cond_92
    :goto_92
    throw v0

    .line 587
    :catch_93
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    goto :goto_8d

    .line 594
    :catch_9b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    goto :goto_92

    .line 583
    :catchall_a3
    move-exception v0

    goto :goto_88

    :catchall_a5
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_88

    :catchall_aa
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_88

    .line 16086
    :catch_b0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_31

    :catch_b4
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_31
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 178
    sput-object p0, Lcom/baidu/techain/b/e;->b:Ljava/lang/String;

    .line 179
    sput-object p1, Lcom/baidu/techain/b/e;->c:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 714
    const-string v0, "771"

    invoke-static {v0, p0}, Lcom/baidu/techain/b/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 717
    if-eqz p1, :cond_44

    .line 718
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 719
    const-string v2, "771"

    invoke-static {v2, v1}, Lcom/baidu/techain/b/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 722
    :cond_44
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 186
    :try_start_0
    invoke-static {p0}, Lcom/baidu/techain/b/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 187
    sget-object v1, Lcom/baidu/techain/b/e;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 188
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Lcom/baidu/techain/b/e;->a(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/techain/b/e;->g:Ljava/lang/String;

    .line 190
    :cond_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 193
    sget-object v1, Lcom/baidu/techain/b/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 203
    :goto_22
    return v0

    .line 196
    :cond_23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/baidu/techain/b/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_31

    move-result v0

    if-eqz v0, :cond_35

    .line 197
    const/4 v0, 0x1

    goto :goto_22

    .line 5086
    :catch_31
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    .line 203
    :cond_35
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public static a(Landroid/content/Context;I)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 1096
    if-ne p1, v0, :cond_2b

    invoke-static {p0}, Lcom/baidu/techain/b/e;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1097
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1098
    sget-object v2, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    if-nez v2, :cond_1f

    .line 1099
    new-instance v2, Lcom/baidu/techain/TechainReceiver;

    invoke-direct {v2}, Lcom/baidu/techain/TechainReceiver;-><init>()V

    invoke-virtual {v2}, Lcom/baidu/techain/TechainReceiver;->a()Lcom/baidu/techain/TechainReceiver;

    move-result-object v2

    sput-object v2, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    .line 1101
    :cond_1f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/baidu/techain/b/e;->d:Lcom/baidu/techain/TechainReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1102
    sput-boolean v0, Lcom/baidu/techain/b/e;->a:Z

    .line 1103
    const/4 v0, 0x0

    .line 1105
    :cond_2b
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1183
    :try_start_2
    new-instance v0, Lcom/baidu/techain/e;

    invoke-direct {v0, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1184
    invoke-virtual {v0}, Lcom/baidu/techain/e;->e()Ljava/lang/String;

    move-result-object v3

    .line 1185
    invoke-virtual {v0}, Lcom/baidu/techain/e;->f()J

    move-result-wide v4

    .line 1186
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1d

    move v0, v1

    .line 1236
    :goto_1c
    return v0

    .line 1189
    :cond_1d
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1190
    const-string v0, ""

    .line 1192
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_27} :catch_90

    move-result-object v5

    .line 1193
    const/4 v3, 0x0

    .line 1195
    const/16 v6, 0x40

    :try_start_2b
    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_8b

    move-result-object v3

    .line 1199
    :goto_2f
    if-eqz v3, :cond_98

    .line 1200
    :try_start_31
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1201
    invoke-static {v3, v5}, Lcom/baidu/techain/b/e;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    .line 1202
    if-eqz v3, :cond_96

    .line 1203
    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 1204
    if-eqz v3, :cond_60

    .line 1205
    invoke-static {p0, v3}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;[B)V

    .line 1206
    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1207
    const-string v3, "\n"

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\r"

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/b/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    :cond_60
    move v3, v1

    .line 1219
    :goto_61
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_9d

    .line 1220
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1221
    const-string v6, "p"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1222
    const-string v7, "s"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1223
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 1224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9a

    .line 1225
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9a

    move v0, v2

    .line 1226
    goto :goto_1c

    .line 28086
    :catch_8b
    move-exception v5

    invoke-static {}, Lcom/baidu/techain/b;->c()V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_8f} :catch_90

    goto :goto_2f

    .line 29086
    :catch_90
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    move v0, v2

    .line 1233
    goto :goto_1c

    :cond_96
    move v0, v2

    .line 1212
    goto :goto_1c

    :cond_98
    move v0, v2

    .line 1216
    goto :goto_1c

    .line 1219
    :cond_9a
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :cond_9d
    move v0, v1

    .line 1236
    goto/16 :goto_1c
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;ZZ)Z
    .registers 14

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 275
    .line 280
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 281
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/baidu/techain/TechainService;

    .line 282
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_22} :catch_b2

    move-result-object v3

    .line 285
    if-eqz v3, :cond_f1

    .line 286
    :try_start_25
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2c} :catch_ee

    move-result v0

    if-eqz v0, :cond_f1

    move v0, v1

    :goto_30
    move-object v5, v3

    move v3, v0

    .line 294
    :goto_32
    :try_start_32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 295
    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/baidu/techain/TechainReceiver;

    .line 296
    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v7, 0x0

    .line 299
    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 300
    if-eqz v4, :cond_b9

    .line 301
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_59} :catch_b8

    move-result v0

    if-eqz v0, :cond_b9

    move v0, v1

    .line 312
    :goto_5d
    if-nez v5, :cond_bb

    .line 313
    :try_start_5f
    const-string v4, "service"

    invoke-static {p0, p1, v4}, Lcom/baidu/techain/b/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 314
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_68} :catch_ce

    move-result v4

    if-eqz v4, :cond_ca

    move v3, v0

    move v0, v1

    .line 327
    :goto_6d
    sget-object v4, Lcom/baidu/techain/b/e;->g:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 328
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Lcom/baidu/techain/b/e;->a(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/baidu/techain/b/e;->g:Ljava/lang/String;

    .line 330
    :cond_7f
    if-eqz p3, :cond_b0

    sget-object v4, Lcom/baidu/techain/b/e;->g:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 332
    if-eqz v3, :cond_8f

    if-eqz v0, :cond_8f

    if-eqz p2, :cond_b0

    .line 334
    :cond_8f
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 335
    if-nez v3, :cond_d6

    if-nez v0, :cond_d6

    .line 336
    const-string v1, "0"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_a2
    :goto_a2
    if-eqz p2, :cond_ab

    .line 343
    const-string v1, "1"

    const-string v2, "0"

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_ab
    const-string v1, "1003140"

    invoke-static {p0, v1, v4}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 349
    :cond_b0
    and-int/2addr v0, v3

    return v0

    :catch_b2
    move-exception v0

    move-object v0, v4

    :goto_b4
    move v3, v2

    move-object v5, v0

    goto/16 :goto_32

    :catch_b8
    move-exception v0

    :cond_b9
    move v0, v2

    goto :goto_5d

    .line 317
    :cond_bb
    if-nez v4, :cond_ca

    .line 318
    :try_start_bd
    const-string v4, "receiver"

    .line 319
    invoke-static {p0, p1, v4}, Lcom/baidu/techain/b/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_c6} :catch_ce

    move-result v4

    if-eqz v4, :cond_ca

    move v0, v1

    :cond_ca
    move v9, v3

    move v3, v0

    move v0, v9

    .line 326
    goto :goto_6d

    .line 10086
    :catch_ce
    move-exception v4

    move v9, v3

    move v3, v0

    move v0, v9

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_6d

    .line 337
    :cond_d6
    if-nez v0, :cond_e2

    .line 338
    const-string v2, "0"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a2

    .line 339
    :cond_e2
    if-nez v3, :cond_a2

    .line 340
    const-string v1, "0"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a2

    :catch_ee
    move-exception v0

    move-object v0, v3

    goto :goto_b4

    :cond_f1
    move v0, v2

    goto/16 :goto_30
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 248
    const-class v2, Lcom/baidu/techain/b/e;

    monitor-enter v2

    :try_start_5
    sget v3, Lcom/baidu/techain/b/e;->h:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_12

    .line 249
    sget v3, Lcom/baidu/techain/b/e;->h:I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_2b
    .catchall {:try_start_5 .. :try_end_c} :catchall_3b

    if-ne v3, v0, :cond_10

    .line 270
    :goto_e
    monitor-exit v2

    return v0

    :cond_10
    move v0, v1

    .line 249
    goto :goto_e

    .line 252
    :cond_12
    :try_start_12
    invoke-static {p0}, Lcom/baidu/techain/b/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {p0, v0, v3, p1}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v0

    .line 261
    :goto_25
    if-eqz v0, :cond_37

    .line 262
    const/4 v3, 0x1

    sput v3, Lcom/baidu/techain/b/e;->h:I
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_2a} :catch_2b
    .catchall {:try_start_12 .. :try_end_2a} :catchall_3b

    goto :goto_e

    .line 9086
    :catch_2b
    move-exception v0

    :try_start_2c
    invoke-static {}, Lcom/baidu/techain/b;->c()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3b

    move v0, v1

    .line 270
    goto :goto_e

    .line 259
    :cond_31
    const/4 v3, 0x0

    :try_start_32
    invoke-static {p0, v0, v3, p1}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_25

    .line 264
    :cond_37
    const/4 v3, 0x0

    sput v3, Lcom/baidu/techain/b/e;->h:I
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_3a} :catch_2b
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3b

    goto :goto_e

    .line 248
    :catchall_3b
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a(Ljava/io/File;)Z
    .registers 5

    .prologue
    .line 610
    if-eqz p0, :cond_20

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    .line 611
    const/4 v0, 0x1

    .line 613
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 677
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 710
    :goto_c
    return v1

    .line 681
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 682
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 683
    if-eqz v3, :cond_21

    array-length v0, v3

    if-nez v0, :cond_2b

    :cond_21
    if-eqz p2, :cond_26

    array-length v0, p2

    if-nez v0, :cond_2b

    .line 684
    :cond_26
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    move v1, v2

    .line 685
    goto :goto_c

    .line 688
    :cond_2b
    if-eqz p2, :cond_30

    array-length v0, p2

    if-nez v0, :cond_39

    :cond_30
    if-eqz v3, :cond_39

    array-length v0, v3

    if-lez v0, :cond_39

    .line 689
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    goto :goto_c

    .line 693
    :cond_39
    if-eqz v3, :cond_3e

    array-length v0, v3

    if-nez v0, :cond_47

    :cond_3e
    if-eqz p2, :cond_47

    array-length v0, p2

    if-lez v0, :cond_47

    .line 694
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    goto :goto_c

    .line 698
    :cond_47
    array-length v0, v3

    array-length v4, p2

    if-eq v0, v4, :cond_4f

    .line 699
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    goto :goto_c

    :cond_4f
    move v0, v1

    .line 703
    :goto_50
    array-length v4, v3

    if-ge v0, v4, :cond_60

    .line 704
    aget-object v4, v3, v0

    aget-object v5, p2, v0

    if-eq v4, v5, :cond_5d

    .line 705
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    goto :goto_c

    .line 703
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 709
    :cond_60
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    move v1, v2

    .line 710
    goto :goto_c
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 798
    :try_start_0
    sget-object v0, Lcom/baidu/techain/b/n;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 799
    invoke-static {}, Lcom/baidu/techain/ac/F;->getInstance()Lcom/baidu/techain/ac/F;

    move-result-object v1

    const-string v2, "30212102dicudiab"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/techain/ac/F;->ad([B[B)[B

    move-result-object v1

    .line 800
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 802
    :goto_1a
    return-object v0

    :catch_1b
    move-exception v0

    const-string v0, ""

    goto :goto_1a
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 208
    :try_start_0
    sget-object v0, Lcom/baidu/techain/b/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 209
    sget-object v0, Lcom/baidu/techain/b/e;->f:Ljava/lang/String;

    .line 242
    :goto_a
    return-object v0

    .line 211
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".techain.ac.provider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_56

    .line 214
    const/4 v0, 0x0

    .line 216
    :try_start_1e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_36

    .line 218
    iget-boolean v2, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_36

    .line 219
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    sput-object v2, Lcom/baidu/techain/b/e;->f:Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_36} :catch_51

    .line 226
    :cond_36
    :goto_36
    if-nez v0, :cond_4e

    .line 229
    :try_start_38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/baidu/techain/TechainProvider;

    .line 230
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {p0, v0, v1}, Lcom/baidu/techain/b/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 232
    sput-object v0, Lcom/baidu/techain/b/e;->f:Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_4e} :catch_5b

    .line 242
    :cond_4e
    :goto_4e
    sget-object v0, Lcom/baidu/techain/b/e;->f:Ljava/lang/String;

    goto :goto_a

    .line 6086
    :catch_51
    move-exception v2

    :try_start_52
    invoke-static {}, Lcom/baidu/techain/b;->c()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_36

    .line 8086
    :catch_56
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_4e

    .line 7086
    :catch_5b
    move-exception v0

    :try_start_5c
    invoke-static {}, Lcom/baidu/techain/b;->c()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_56

    goto :goto_4e
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 369
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 371
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 372
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 373
    const-class v5, Landroid/content/res/AssetManager;

    const-string v6, "addAssetPath"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    .line 374
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 375
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 377
    const-string v5, "AndroidManifest.xml"

    invoke-virtual {v0, v1, v5}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 378
    if-eqz v6, :cond_1a0

    .line 382
    :cond_45
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v10, :cond_4d

    if-ne v0, v3, :cond_45

    .line 386
    :cond_4d
    if-eq v0, v10, :cond_51

    move-object v0, v4

    .line 517
    :cond_50
    :goto_50
    return-object v0

    .line 390
    :cond_51
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manifest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    move-object v0, v4

    .line 391
    goto :goto_50

    .line 394
    :cond_5f
    const/4 v0, 0x0

    const-string v1, "package"

    invoke-interface {v6, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 395
    if-eqz v7, :cond_6e

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_70

    :cond_6e
    move-object v0, v4

    .line 396
    goto :goto_50

    .line 11521
    :cond_70
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    move v5, v2

    move v0, v3

    move v1, v2

    .line 11524
    :goto_77
    if-ge v5, v8, :cond_c7

    .line 11525
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 11526
    const/16 v10, 0x61

    if-lt v9, v10, :cond_85

    const/16 v10, 0x7a

    if-le v9, v10, :cond_8d

    :cond_85
    const/16 v10, 0x41

    if-lt v9, v10, :cond_91

    const/16 v10, 0x5a

    if-gt v9, v10, :cond_91

    :cond_8d
    move v0, v2

    .line 11524
    :cond_8e
    :goto_8e
    add-int/lit8 v5, v5, 0x1

    goto :goto_77

    .line 11530
    :cond_91
    if-nez v0, :cond_9f

    .line 11531
    const/16 v10, 0x30

    if-lt v9, v10, :cond_9b

    const/16 v10, 0x39

    if-le v9, v10, :cond_8e

    :cond_9b
    const/16 v10, 0x5f

    if-eq v9, v10, :cond_8e

    .line 11535
    :cond_9f
    const/16 v0, 0x2e

    if-ne v9, v0, :cond_a6

    move v0, v3

    move v1, v3

    .line 11538
    goto :goto_8e

    .line 11540
    :cond_a6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    :goto_bb
    if-eqz v0, :cond_ce

    const-string v0, "android"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    move-object v0, v4

    .line 400
    goto :goto_50

    .line 11542
    :cond_c7
    if-eqz v1, :cond_cb

    move-object v0, v4

    goto :goto_bb

    :cond_cb
    const-string v0, "must have at least one \'.\' separator"

    goto :goto_bb

    .line 403
    :cond_ce
    const-string v0, "provider"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 404
    const-class v0, Lcom/baidu/techain/TechainProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 411
    :goto_dd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 412
    :cond_e8
    :goto_e8
    :pswitch_e8
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v3, :cond_1a0

    .line 413
    packed-switch v0, :pswitch_data_250

    goto :goto_e8

    .line 415
    :pswitch_f2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 417
    const-string v2, "provider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_fb
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_fb} :catch_19c

    move-result v2

    if-eqz v2, :cond_1a3

    .line 419
    :try_start_fe
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v2, "name"

    .line 420
    invoke-interface {v6, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 422
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v2, "multiprocess"

    invoke-interface {v6, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_149

    .line 425
    const-string v2, "true"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_123
    .catch Ljava/lang/Throwable; {:try_start_fe .. :try_end_123} :catch_196

    move-result v0

    if-eqz v0, :cond_149

    move-object v0, v4

    .line 426
    goto/16 :goto_50

    .line 406
    :cond_129
    :try_start_129
    const-string v0, "service"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 407
    const-class v0, Lcom/baidu/techain/TechainService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_dd

    .line 408
    :cond_139
    const-string v0, "receiver"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24d

    .line 409
    const-class v0, Lcom/baidu/techain/TechainReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
    :try_end_146
    .catch Ljava/lang/Throwable; {:try_start_129 .. :try_end_146} :catch_19c

    move-result-object v0

    move-object v1, v0

    goto :goto_dd

    .line 429
    :cond_149
    :try_start_149
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v2, "authorities"

    invoke-interface {v6, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_160

    .line 432
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_163

    move-object v0, v4

    .line 433
    goto/16 :goto_50

    :cond_160
    move-object v0, v4

    .line 436
    goto/16 :goto_50

    .line 438
    :cond_163
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v2, "process"

    .line 439
    invoke-interface {v6, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_190

    .line 442
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 448
    :cond_190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_193
    .catch Ljava/lang/Throwable; {:try_start_149 .. :try_end_193} :catch_196

    move-result-object v0

    goto/16 :goto_50

    .line 12086
    :catch_196
    move-exception v0

    :try_start_197
    invoke-static {}, Lcom/baidu/techain/b;->c()V
    :try_end_19a
    .catch Ljava/lang/Throwable; {:try_start_197 .. :try_end_19a} :catch_19c

    goto/16 :goto_e8

    .line 15086
    :catch_19c
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    :cond_1a0
    move-object v0, v4

    .line 517
    goto/16 :goto_50

    .line 455
    :cond_1a3
    :try_start_1a3
    const-string v2, "service"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1a8
    .catch Ljava/lang/Throwable; {:try_start_1a3 .. :try_end_1a8} :catch_19c

    move-result v2

    if-eqz v2, :cond_1f8

    .line 457
    :try_start_1ab
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v2, "name"

    .line 458
    invoke-interface {v6, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e8

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 461
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v2, "process"

    .line 462
    invoke-interface {v6, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1ec

    .line 465
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 471
    :cond_1ec
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_1ef
    .catch Ljava/lang/Throwable; {:try_start_1ab .. :try_end_1ef} :catch_1f2

    move-result-object v0

    goto/16 :goto_50

    .line 13086
    :catch_1f2
    move-exception v0

    :try_start_1f3
    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto/16 :goto_e8

    .line 479
    :cond_1f8
    const-string v2, "receiver"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1fd
    .catch Ljava/lang/Throwable; {:try_start_1f3 .. :try_end_1fd} :catch_19c

    move-result v0

    if-eqz v0, :cond_e8

    .line 481
    :try_start_200
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v2, "name"

    .line 482
    invoke-interface {v6, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e8

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 485
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v2, "process"

    .line 486
    invoke-interface {v6, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_241

    .line 489
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 495
    :cond_241
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_244
    .catch Ljava/lang/Throwable; {:try_start_200 .. :try_end_244} :catch_247

    move-result-object v0

    goto/16 :goto_50

    .line 14086
    :catch_247
    move-exception v0

    :try_start_248
    invoke-static {}, Lcom/baidu/techain/b;->c()V
    :try_end_24b
    .catch Ljava/lang/Throwable; {:try_start_248 .. :try_end_24b} :catch_19c

    goto/16 :goto_e8

    :cond_24d
    move-object v1, v4

    goto/16 :goto_dd

    .line 413
    :pswitch_data_250
    .packed-switch 0x2
        :pswitch_f2
        :pswitch_e8
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v0, 0x1

    .line 1710
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1712
    new-instance v2, Lcom/baidu/techain/e;

    invoke-direct {v2, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43691
    iget-object v2, v2, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v3, "re_net_ty"

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 1720
    const-string v2, "Common_section"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1722
    const-string v1, "0"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1723
    const-string v1, "10"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1724
    const-string v1, "5"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1725
    const-string v1, "6"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1726
    const-string v7, "7"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 1727
    const-string v8, "11"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 1728
    const-string v9, "12"

    const-string v10, ""

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1730
    if-nez v1, :cond_7b

    .line 1734
    :goto_4a
    new-instance v1, Lcom/baidu/techain/rp/c/a;

    invoke-direct {v1}, Lcom/baidu/techain/rp/c/a;-><init>()V

    .line 1735
    iput-object p1, v1, Lcom/baidu/techain/rp/c/a;->d:Ljava/lang/String;

    .line 1736
    iput-object v5, v1, Lcom/baidu/techain/rp/c/a;->b:Ljava/lang/String;

    .line 1737
    iput v6, v1, Lcom/baidu/techain/rp/c/a;->g:I

    .line 1738
    const/4 v5, 0x3

    iput v5, v1, Lcom/baidu/techain/rp/c/a;->c:I

    .line 1739
    iput-wide v3, v1, Lcom/baidu/techain/rp/c/a;->e:J

    .line 1740
    iput v0, v1, Lcom/baidu/techain/rp/c/a;->f:I

    .line 1741
    iput v7, v1, Lcom/baidu/techain/rp/c/a;->h:I

    .line 1742
    iput v8, v1, Lcom/baidu/techain/rp/c/a;->i:I

    .line 1743
    iput-object v2, v1, Lcom/baidu/techain/rp/c/a;->j:Ljava/lang/String;

    .line 1744
    invoke-static {p0}, Lcom/baidu/techain/b/f;->a(Landroid/content/Context;)Lcom/baidu/techain/b/f;

    move-result-object v0

    .line 44047
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 44048
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 44049
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 44051
    iget-object v0, v0, Lcom/baidu/techain/b/f;->a:Lcom/baidu/techain/rp/f/a;

    invoke-virtual {v0, v2}, Lcom/baidu/techain/rp/f/a;->a(Landroid/os/Message;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_75} :catch_76

    .line 1748
    :goto_75
    return-void

    .line 44086
    :catch_76
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_75

    :cond_7b
    move v0, v1

    goto :goto_4a
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 547
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 552
    :cond_c
    :goto_c
    return-void

    .line 551
    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;Ljava/io/File;)V

    goto :goto_c
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 354
    :try_start_1
    sget-object v1, Lcom/baidu/techain/b/e;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 355
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Lcom/baidu/techain/b/e;->a(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/techain/b/e;->g:Ljava/lang/String;

    .line 358
    :cond_13
    sget-object v1, Lcom/baidu/techain/b/e;->g:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_18} :catch_1d

    move-result v1

    if-nez v1, :cond_1c

    const/4 v0, 0x1

    .line 362
    :cond_1c
    :goto_1c
    return v0

    .line 11086
    :catch_1d
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_1c
.end method

.method public static c()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1812
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1813
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1814
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1815
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 747
    :try_start_0
    invoke-static {p0}, Lcom/baidu/techain/rp/Report;->getInstance(Landroid/content/Context;)Lcom/baidu/techain/rp/Report;

    move-result-object v1

    .line 748
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 750
    invoke-static {p0}, Lcom/baidu/techain/a/a;->a(Landroid/content/Context;)Lcom/baidu/techain/a/a;

    move-result-object v2

    .line 751
    invoke-virtual {v2}, Lcom/baidu/techain/a/a;->b()Ljava/util/Map;

    move-result-object v3

    .line 752
    const-string v4, "0"

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 753
    const-string v4, "1"

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 754
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 755
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 756
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 757
    const-string v5, "1003003"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 758
    const-string v0, "0"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 760
    invoke-virtual {v2}, Lcom/baidu/techain/a/a;->c()Ljava/util/Map;

    move-result-object v0

    .line 761
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 762
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_57
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 763
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_66} :catch_67

    goto :goto_57

    .line 771
    :catch_67
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    .line 773
    :goto_6e
    return-void

    .line 765
    :cond_6f
    :try_start_6f
    const-string v0, "com.baidu.techain"

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 767
    const-string v0, "2"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 768
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/techain/rp/Report;->w(Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_8f} :catch_67

    goto :goto_6e
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 1752
    new-instance v1, Lcom/baidu/techain/e;

    invoke-direct {v1, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1755
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_c4

    .line 1763
    :try_start_a
    const-string v0, "0"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1764
    if-eqz v3, :cond_53

    .line 1765
    const-string v0, ""

    .line 1766
    :cond_14
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1767
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1768
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1772
    :cond_30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 1773
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45902
    iget-object v4, v1, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "al_da"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45903
    iget-object v0, v1, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_53} :catch_c9

    .line 1781
    :cond_53
    :goto_53
    :try_start_53
    const-string v0, "1"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1782
    if-eqz v3, :cond_9c

    .line 1783
    const-string v0, ""

    .line 1784
    :cond_5d
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 1785
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1786
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 1790
    :cond_79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9c

    .line 1791
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46911
    iget-object v4, v1, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "in_da"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46912
    iget-object v0, v1, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_9c} :catch_ce

    .line 1799
    :cond_9c
    :goto_9c
    :try_start_9c
    const-string v0, "2"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1800
    if-eqz v0, :cond_c3

    .line 1801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1802
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47920
    iget-object v2, v1, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    const-string v3, "li_pk_s"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47921
    iget-object v0, v1, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_c3} :catch_d3

    .line 1809
    :cond_c3
    :goto_c3
    return-void

    .line 45086
    :catch_c4
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_c3

    .line 46086
    :catch_c9
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_53

    .line 47086
    :catch_ce
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_9c

    .line 48086
    :catch_d3
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_c3
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 602
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 603
    const/4 v0, 0x0

    .line 606
    :goto_7
    return v0

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;)Z

    move-result v0

    goto :goto_7
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1272
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_e
    move v0, v1

    .line 1288
    :cond_f
    :goto_f
    return v0

    .line 1277
    :cond_10
    :try_start_10
    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1278
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v2, v1

    .line 1279
    :goto_1d
    array-length v5, v3

    if-ge v2, v5, :cond_41

    array-length v5, v4

    if-ge v2, v5, :cond_41

    .line 1280
    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1281
    if-eqz v5, :cond_3e

    .line 1282
    if-gtz v5, :cond_f

    move v0, v1

    goto :goto_f

    .line 1279
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1286
    :cond_41
    array-length v2, v3

    array-length v3, v4
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_43} :catch_47

    if-gt v2, v3, :cond_f

    move v0, v1

    goto :goto_f

    .line 1288
    :catch_47
    move-exception v0

    move v0, v1

    goto :goto_f
.end method

.method public static d(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 776
    const-string v3, "3.1.6.1"

    .line 778
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 780
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 794
    :goto_b
    return-void

    .line 784
    :cond_c
    const-string v2, "com.baidu.techain"

    .line 785
    invoke-static {p0}, Lcom/baidu/techain/rp/Report;->getInstance(Landroid/content/Context;)Lcom/baidu/techain/rp/Report;

    move-result-object v0

    .line 788
    :try_start_12
    invoke-static {p0}, Lcom/baidu/techain/b/e;->c(Landroid/content/Context;)V

    .line 789
    const-string v1, "techain"

    const-string v4, "1003003"

    const-string v5, "1003002"

    .line 790
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/techain/rp/Report;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1e} :catch_1f

    goto :goto_b

    .line 792
    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    goto :goto_b
.end method

.method public static d(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 618
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 644
    :cond_6
    :goto_6
    return-void

    .line 622
    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 627
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 628
    if-eqz v2, :cond_54

    array-length v0, v2

    if-lez v0, :cond_54

    .line 629
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v3, :cond_54

    aget-object v4, v2, v0

    .line 630
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 631
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/techain/b/e;->d(Ljava/lang/String;)V

    .line 629
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 633
    :cond_31
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    .line 634
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " d:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_2e

    .line 17086
    :catch_4f
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_6

    .line 639
    :cond_54
    :try_start_54
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_71} :catch_4f

    goto :goto_6
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 725
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 742
    :cond_d
    :goto_d
    return v0

    .line 729
    :cond_e
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 735
    :try_start_19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 736
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_43} :catch_45

    .line 737
    const/4 v0, 0x1

    goto :goto_d

    .line 18086
    :catch_45
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_d
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 808
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 809
    const/4 v0, 0x0

    .line 810
    :goto_5
    if-ge v0, v1, :cond_1a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_17

    .line 811
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa0

    if-ne v2, v3, :cond_1a

    .line 812
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 814
    :cond_1a
    if-lez v0, :cond_20

    .line 815
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_21

    move-result-object p0

    .line 822
    :cond_20
    :goto_20
    return-object p0

    .line 19086
    :catch_21
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    .line 822
    const-string p0, ""

    goto :goto_20
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 915
    const-string v0, "connectivity"

    .line 916
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 917
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 918
    if-nez v0, :cond_12

    move v0, v1

    .line 921
    :goto_11
    return v0

    :cond_12
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v2, v0, :cond_1a

    move v0, v2

    goto :goto_11

    :cond_1a
    move v0, v1

    goto :goto_11
.end method

.method public static f(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1044
    :try_start_0
    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 1070
    :cond_4
    :goto_4
    return-void

    .line 1047
    :cond_5
    new-instance v2, Lcom/baidu/techain/e;

    sget-object v0, Lcom/baidu/techain/core/d;->b:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1048
    invoke-virtual {v2}, Lcom/baidu/techain/e;->c()Ljava/lang/String;

    move-result-object v0

    .line 1050
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1051
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1052
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    :goto_23
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1064
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1065
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/baidu/techain/e;->a(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_4

    .line 24086
    :catch_38
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_4

    .line 1054
    :cond_3d
    :try_start_3d
    invoke-static {v0}, Lcom/baidu/techain/b/e;->g(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1055
    if-eqz v1, :cond_6c

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6c

    .line 1056
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 1057
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_23

    .line 1059
    :cond_64
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_6c} :catch_38

    :cond_6c
    move-object v0, v1

    goto :goto_23
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 948
    :try_start_1
    const-string v0, "connectivity"

    .line 949
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 950
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 951
    if-nez v0, :cond_11

    move v0, v1

    .line 957
    :goto_10
    return v0

    .line 954
    :cond_11
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_16

    move-result v0

    goto :goto_10

    .line 22086
    :catch_16
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    move v0, v1

    .line 957
    goto :goto_10
.end method

.method private static g(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1023
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 1028
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1029
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1030
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1031
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1032
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_e

    .line 23086
    :catch_24
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    .line 1039
    const/4 v0, 0x0

    :goto_29
    return-object v0

    :cond_2a
    move-object v0, v2

    .line 1034
    goto :goto_29
.end method

.method public static g(Landroid/content/Context;)[Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 963
    sget-object v1, Lcom/baidu/techain/b/e;->b:Ljava/lang/String;

    .line 964
    sget-object v0, Lcom/baidu/techain/b/e;->c:Ljava/lang/String;

    .line 965
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 966
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 967
    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v6

    aput-object v0, v2, v7

    move-object v0, v2

    .line 1000
    :goto_1d
    return-object v0

    .line 970
    :cond_1e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 971
    :cond_2a
    new-instance v2, Lcom/baidu/techain/e;

    invoke-direct {v2, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/baidu/techain/e;->b()Ljava/lang/String;

    move-result-object v2

    .line 972
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 973
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 974
    if-eqz v2, :cond_49

    array-length v3, v2

    if-ne v3, v5, :cond_49

    .line 975
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    move-object v0, v2

    .line 978
    goto :goto_1d

    .line 982
    :cond_49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_55

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 983
    :cond_55
    new-instance v2, Lcom/baidu/techain/e;

    invoke-direct {v2, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 22111
    iget-object v2, v2, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v3, "svi"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 984
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 985
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 986
    if-eqz v2, :cond_7a

    array-length v3, v2

    if-ne v3, v5, :cond_7a

    .line 987
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    move-object v0, v2

    .line 990
    goto :goto_1d

    .line 994
    :cond_7a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_86

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 995
    :cond_86
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 996
    const-string v1, "3"

    .line 997
    const-string v0, "925fc15df8a49bed0b3eca8d2b44cb7b"

    .line 1000
    :cond_8d
    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v6

    aput-object v0, v2, v7

    move-object v0, v2

    goto :goto_1d
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1528
    .line 1530
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_e
    .catchall {:try_start_1 .. :try_end_6} :catchall_1b

    .line 1531
    :try_start_6
    invoke-static {v1}, Lcom/baidu/techain/b/e;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_2b
    .catchall {:try_start_6 .. :try_end_9} :catchall_29

    move-result-object v0

    .line 1537
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_25

    .line 1544
    :cond_d
    :goto_d
    return-object v0

    .line 36086
    :catch_e
    move-exception v1

    move-object v1, v0

    :goto_10
    :try_start_10
    invoke-static {}, Lcom/baidu/techain/b;->c()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_29

    .line 1536
    if-eqz v1, :cond_d

    .line 1537
    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_d

    .line 1543
    :catch_19
    move-exception v1

    goto :goto_d

    .line 1535
    :catchall_1b
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 1536
    :goto_1f
    if-eqz v1, :cond_24

    .line 1537
    :try_start_21
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_27

    .line 1541
    :cond_24
    :goto_24
    throw v0

    :catch_25
    move-exception v1

    goto :goto_d

    :catch_27
    move-exception v1

    goto :goto_24

    .line 1535
    :catchall_29
    move-exception v0

    goto :goto_1f

    .line 36086
    :catch_2b
    move-exception v2

    goto :goto_10
.end method

.method public static h(Landroid/content/Context;)[Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1004
    sget-object v0, Lcom/baidu/techain/b/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/baidu/techain/b/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1005
    new-array v0, v2, [Ljava/lang/String;

    sget-object v1, Lcom/baidu/techain/b/e;->b:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/techain/b/e;->c:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 1017
    :goto_1d
    return-object v0

    .line 1007
    :cond_1e
    new-instance v0, Lcom/baidu/techain/e;

    invoke-direct {v0, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/baidu/techain/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 1008
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 1009
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1010
    if-eqz v0, :cond_38

    array-length v1, v0

    if-eq v1, v2, :cond_3b

    .line 1011
    :cond_38
    new-array v0, v2, [Ljava/lang/String;

    goto :goto_1d

    .line 1013
    :cond_3b
    aget-object v1, v0, v3

    sput-object v1, Lcom/baidu/techain/b/e;->b:Ljava/lang/String;

    .line 1014
    aget-object v1, v0, v4

    sput-object v1, Lcom/baidu/techain/b/e;->c:Ljava/lang/String;

    goto :goto_1d

    .line 1017
    :cond_44
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static i(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 1074
    :try_start_0
    new-instance v2, Lcom/baidu/techain/e;

    invoke-direct {v2, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1075
    invoke-virtual {v2}, Lcom/baidu/techain/e;->c()Ljava/lang/String;

    move-result-object v0

    .line 1077
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 1078
    invoke-static {v0}, Lcom/baidu/techain/b/e;->g(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 1079
    if-eqz v3, :cond_4e

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4e

    .line 1080
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1081
    const/4 v0, 0x0

    move v1, v0

    :goto_22
    const/16 v0, 0xf

    if-ge v1, v0, :cond_44

    .line 1082
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1084
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_3f

    const-string v0, ""

    :goto_38
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 1084
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 1086
    :cond_44
    const-string v0, "1003137"

    invoke-static {p0, v0, v4}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1087
    const-string v0, ""

    invoke-virtual {v2, v0}, Lcom/baidu/techain/e;->a(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4e} :catch_4f

    .line 1093
    :cond_4e
    :goto_4e
    return-void

    .line 25086
    :catch_4f
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_4e
.end method

.method public static j(Landroid/content/Context;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 1110
    :try_start_1
    new-instance v4, Lcom/baidu/techain/e;

    invoke-direct {v4, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1111
    invoke-virtual {v4}, Lcom/baidu/techain/e;->e()Ljava/lang/String;

    move-result-object v0

    .line 1112
    invoke-virtual {v4}, Lcom/baidu/techain/e;->f()J

    move-result-wide v5

    .line 1113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_1b

    .line 1179
    :cond_1a
    :goto_1a
    return-void

    .line 1116
    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1117
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1118
    const-string v1, ""

    .line 1119
    const-string v0, ""

    .line 1121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2b} :catch_96

    move-result-object v7

    .line 1122
    const/4 v3, 0x0

    .line 1124
    const/16 v8, 0x40

    :try_start_2f
    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_32} :catch_91

    move-result-object v3

    .line 1128
    :goto_33
    if-eqz v3, :cond_64

    .line 1129
    :try_start_35
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1131
    invoke-static {v3, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    .line 1132
    if-eqz v3, :cond_64

    .line 1133
    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 1134
    if-eqz v3, :cond_64

    .line 1135
    invoke-static {p0, v3}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;[B)V

    .line 1136
    const/4 v1, 0x0

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 1137
    const-string v3, "\n"

    const-string v7, ""

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\r"

    const-string v7, ""

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/techain/b/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1138
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    :cond_64
    move v3, v2

    .line 1144
    :goto_65
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_9b

    .line 1145
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1146
    const-string v8, "p"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1147
    const-string v9, "s"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1148
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8e

    .line 1149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8e

    .line 1150
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 1151
    const/4 v2, 0x1

    .line 1144
    :cond_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 26086
    :catch_91
    move-exception v7

    invoke-static {}, Lcom/baidu/techain/b;->c()V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_95} :catch_96

    goto :goto_33

    .line 27086
    :catch_96
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_1a

    .line 1155
    :cond_9b
    :try_start_9b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 26279
    iget-object v3, v4, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v6, "hac"

    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 26280
    iget-object v3, v4, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1157
    if-nez v2, :cond_1a

    .line 1158
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1159
    const-string v3, "0"

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    const-string v3, "1"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f0

    .line 1162
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 1164
    const-string v0, "2"

    invoke-static {v1}, Lcom/baidu/techain/b/o;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    :goto_dd
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "1003120"

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1a

    .line 1166
    :cond_e8
    const-string v0, "2"

    const-string v1, ""

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_dd

    .line 1169
    :cond_f0
    const-string v0, "2"

    const-string v1, ""

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f7
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_f7} :catch_96

    goto :goto_dd
.end method

.method public static k(Landroid/content/Context;)V
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 1259
    new-instance v2, Lcom/baidu/techain/e;

    invoke-direct {v2, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 29234
    iget-object v0, v2, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "se_ae_fd"

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 29235
    cmp-long v5, v0, v5

    if-nez v5, :cond_1e

    .line 29236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 29237
    invoke-virtual {v2}, Lcom/baidu/techain/e;->k()V

    .line 1260
    :cond_1e
    sub-long v0, v3, v0

    const-wide/32 v3, 0x5265c00

    cmp-long v0, v0, v3

    if-lez v0, :cond_48

    .line 1261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1262
    const-string v1, "0"

    invoke-virtual {v2}, Lcom/baidu/techain/e;->n()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/baidu/techain/e;->c(I)V

    .line 1264
    invoke-virtual {v2}, Lcom/baidu/techain/e;->k()V

    .line 1265
    const-string v1, "1003119"

    invoke-static {p0, v1, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1269
    :goto_47
    return-void

    .line 1267
    :cond_48
    invoke-virtual {v2}, Lcom/baidu/techain/e;->n()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/baidu/techain/e;->c(I)V

    goto :goto_47
.end method

.method public static l(Landroid/content/Context;)I
    .registers 7

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 1294
    :try_start_3
    const-string v0, "connectivity"

    .line 1295
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1296
    if-nez v0, :cond_f

    move v0, v1

    .line 1351
    :goto_e
    return v0

    .line 1299
    :cond_f
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1300
    if-eqz v0, :cond_58

    .line 1301
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_58

    .line 1302
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_25

    .line 1303
    const/4 v0, 0x4

    goto :goto_e

    .line 1304
    :cond_25
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_52

    .line 1305
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2e} :catch_54

    move-result v0

    .line 1306
    packed-switch v0, :pswitch_data_5a

    .line 1339
    const/4 v0, 0x5

    goto :goto_e

    :pswitch_34
    move v0, v2

    .line 1308
    goto :goto_e

    :pswitch_36
    move v0, v2

    .line 1310
    goto :goto_e

    :pswitch_38
    move v0, v2

    .line 1312
    goto :goto_e

    :pswitch_3a
    move v0, v2

    .line 1314
    goto :goto_e

    :pswitch_3c
    move v0, v2

    .line 1316
    goto :goto_e

    :pswitch_3e
    move v0, v3

    .line 1318
    goto :goto_e

    :pswitch_40
    move v0, v3

    .line 1320
    goto :goto_e

    :pswitch_42
    move v0, v3

    .line 1322
    goto :goto_e

    :pswitch_44
    move v0, v3

    .line 1324
    goto :goto_e

    :pswitch_46
    move v0, v3

    .line 1326
    goto :goto_e

    :pswitch_48
    move v0, v3

    .line 1328
    goto :goto_e

    :pswitch_4a
    move v0, v3

    .line 1330
    goto :goto_e

    :pswitch_4c
    move v0, v3

    .line 1332
    goto :goto_e

    :pswitch_4e
    move v0, v3

    .line 1334
    goto :goto_e

    .line 1336
    :pswitch_50
    const/4 v0, 0x3

    goto :goto_e

    .line 1343
    :cond_52
    const/4 v0, -0x2

    goto :goto_e

    .line 30086
    :catch_54
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    :cond_58
    move v0, v1

    .line 1351
    goto :goto_e

    .line 1306
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_34
        :pswitch_36
        :pswitch_3e
        :pswitch_38
        :pswitch_40
        :pswitch_42
        :pswitch_3a
        :pswitch_44
        :pswitch_46
        :pswitch_48
        :pswitch_3c
        :pswitch_4a
        :pswitch_50
        :pswitch_4c
        :pswitch_4e
    .end packed-switch
.end method

.method public static m(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 1414
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1416
    :try_start_5
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 1417
    const-string v2, "0"

    if-nez v0, :cond_d

    const-string v0, ""

    :cond_d
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1419
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1420
    const-string v2, "1"

    if-nez v0, :cond_18

    const-string v0, ""

    :cond_18
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31294
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-le v0, v2, :cond_101

    .line 31295
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 1423
    :goto_22
    const-string v2, "2"

    if-nez v0, :cond_28

    const-string v0, ""

    :cond_28
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1425
    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    .line 1426
    const-string v2, "3"

    if-nez v0, :cond_33

    const-string v0, ""

    :cond_33
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32290
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 1429
    const-string v2, "4"

    if-nez v0, :cond_3e

    const-string v0, ""

    :cond_3e
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1431
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 1432
    const-string v2, "5"

    if-nez v0, :cond_49

    const-string v0, ""

    :cond_49
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1434
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 1435
    const-string v2, "6"

    if-nez v0, :cond_54

    const-string v0, ""

    :cond_54
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1437
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 1438
    const-string v2, "7"

    if-nez v0, :cond_5f

    const-string v0, ""

    :cond_5f
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1440
    const-string v0, "8"

    invoke-static {p0}, Lcom/baidu/techain/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32302
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 1443
    const-string v2, "9"

    if-nez v0, :cond_73

    const-string v0, ""

    :cond_73
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32306
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1446
    const-string v2, "10"

    if-nez v0, :cond_7e

    const-string v0, ""

    :cond_7e
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1448
    const-string v0, "11"

    invoke-static {p0}, Lcom/baidu/techain/b/g;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32310
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 1451
    const-string v2, "12"

    if-nez v0, :cond_92

    const-string v0, ""

    :cond_92
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1453
    const-string v0, "13"

    invoke-static {p0}, Lcom/baidu/techain/b/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1455
    const-string v0, "14"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1457
    const-string v2, "15"

    .line 32333
    invoke-static {p0}, Lcom/baidu/techain/b/g;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 32334
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11b

    .line 32337
    const-string v3, "46000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c1

    const-string v3, "46002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_105

    .line 32338
    :cond_c1
    const-string v0, "1"

    .line 1457
    :goto_c3
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1459
    const-string v0, "16"

    invoke-static {p0}, Lcom/baidu/techain/b/g;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1461
    const-string v0, "17"

    invoke-static {p0}, Lcom/baidu/techain/b/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1463
    const-string v0, "18"

    invoke-static {p0}, Lcom/baidu/techain/b/g;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1465
    const-string v0, "19"

    invoke-static {p0}, Lcom/baidu/techain/b/g;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1467
    const-string v0, "20"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1469
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 1470
    if-eqz v0, :cond_11e

    .line 1471
    const-string v2, "21"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1480
    :goto_100
    return-object v1

    .line 31297
    :cond_101
    const-string v0, ""

    goto/16 :goto_22

    .line 32339
    :cond_105
    const-string v3, "46001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 32340
    const-string v0, "2"

    goto :goto_c3

    .line 32341
    :cond_110
    const-string v3, "46003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 32342
    const-string v0, "3"

    goto :goto_c3

    .line 32345
    :cond_11b
    const-string v0, ""

    goto :goto_c3

    .line 1473
    :cond_11e
    const-string v0, "21"

    const-string v2, "-1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_125
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_125} :catch_126

    goto :goto_100

    .line 33086
    :catch_126
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_100
.end method

.method public static n(Landroid/content/Context;)I
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1491
    const-string v0, "connectivity"

    .line 1492
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1493
    const/4 v2, 0x0

    .line 1495
    :try_start_a
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_12

    move-result-object v0

    .line 1500
    :goto_e
    if-nez v0, :cond_18

    .line 1501
    const/4 v0, 0x0

    .line 1509
    :goto_11
    return v0

    .line 34086
    :catch_12
    move-exception v0

    move-object v0, v2

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_e

    .line 1503
    :cond_18
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v1, v2, :cond_20

    .line 1504
    const/4 v0, 0x2

    goto :goto_11

    .line 1505
    :cond_20
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_28

    move v0, v1

    .line 1506
    goto :goto_11

    :cond_28
    move v0, v1

    .line 1509
    goto :goto_11
.end method

.method public static o(Landroid/content/Context;)V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 1898
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1899
    invoke-static {}, Lcom/baidu/techain/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "p/1/prt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1900
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1901
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1902
    const-string v0, "pk"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1903
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2a} :catch_b1

    move-result-object v4

    .line 1904
    const/4 v0, 0x0

    .line 1906
    const/16 v5, 0x40

    :try_start_2e
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_ac

    move-result-object v0

    .line 1910
    :goto_32
    if-eqz v0, :cond_be

    .line 1911
    :try_start_34
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1912
    invoke-static {v0, v3}, Lcom/baidu/techain/b/e;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 1913
    if-eqz v0, :cond_b6

    .line 1914
    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 1915
    if-eqz v0, :cond_68

    .line 1916
    invoke-static {p0, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;[B)V

    .line 1917
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1918
    const-string v3, "\n"

    const-string v4, ""

    .line 1919
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\r"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/b/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1920
    const-string v3, "sm"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1921
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1930
    :cond_68
    :goto_68
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1931
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1932
    const/4 v2, 0x0

    .line 1933
    invoke-static {p0, v1, v0, v2}, Lcom/baidu/techain/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1935
    if-eqz v0, :cond_ab

    .line 1936
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1937
    const-string v0, "product"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1938
    const-string v2, "pt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1939
    if-eqz v0, :cond_a4

    cmp-long v3, v1, v6

    if-lez v3, :cond_a4

    .line 1940
    new-instance v3, Lcom/baidu/techain/e;

    invoke-direct {v3, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1941
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1, v2}, Lcom/baidu/techain/e;->a(Ljava/lang/String;J)V

    .line 1943
    :cond_a4
    cmp-long v0, v1, v6

    if-lez v0, :cond_ab

    .line 1944
    invoke-static {p0}, Lcom/baidu/techain/b/e;->j(Landroid/content/Context;)V

    .line 1951
    :cond_ab
    :goto_ab
    return-void

    .line 50092
    :catch_ac
    move-exception v3

    invoke-static {}, Lcom/baidu/techain/b;->c()V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_b0} :catch_b1

    goto :goto_32

    .line 50094
    :catch_b1
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_ab

    .line 1925
    :cond_b6
    :try_start_b6
    const-string v0, "sm"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_68

    .line 1928
    :cond_be
    const-string v0, "sm"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_c5} :catch_b1

    goto :goto_68
.end method

.method public static p(Landroid/content/Context;)V
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1955
    :try_start_2
    sget-object v0, Lcom/baidu/techain/b/e;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1956
    new-instance v0, Lcom/baidu/techain/e;

    invoke-direct {v0, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1957
    invoke-virtual {v0}, Lcom/baidu/techain/e;->e()Ljava/lang/String;

    move-result-object v0

    .line 1958
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1959
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2017
    :cond_19
    :goto_19
    return-void

    .line 1962
    :cond_1a
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1963
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v0, v4

    .line 1964
    :goto_25
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_58

    .line 1965
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1966
    const-string v6, "p"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1967
    const-string v7, "s"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1968
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "167:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1969
    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 1971
    :cond_58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1972
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 1973
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_66
    :goto_66
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 1974
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1975
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1976
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1977
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 1980
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1981
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1982
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1983
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1984
    invoke-static {v0, v2}, Lcom/baidu/techain/b/e;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v8

    .line 1985
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v2, "194:"

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v8, :cond_12b

    move v2, v3

    :goto_a9
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1986
    if-eqz v8, :cond_66

    .line 1987
    invoke-interface {v8}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v8

    .line 1988
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v2, "197:"

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v8, :cond_12e

    move v2, v3

    :goto_bf
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1989
    if-eqz v8, :cond_66

    .line 1990
    invoke-static {p0, v8}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;[B)V

    .line 1991
    const/4 v2, 0x0

    invoke-static {v8, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 1992
    const-string v8, "\n"

    const-string v9, ""

    .line 1993
    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "\r"

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/techain/b/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1994
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1995
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_66

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1996
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1997
    const-string v8, "pk"

    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1998
    const-string v8, "av"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1999
    const-string v0, "sm"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2000
    const-string v0, "dm"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2001
    const-string v0, "al"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2002
    sget-object v0, Lcom/baidu/techain/b/e;->e:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_123
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_123} :catch_125

    goto/16 :goto_66

    .line 50096
    :catch_125
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto/16 :goto_19

    :cond_12b
    move v2, v4

    .line 1985
    goto/16 :goto_a9

    :cond_12e
    move v2, v4

    .line 1988
    goto :goto_bf
.end method

.method private static q(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1355
    const-string v0, "1.0.0"

    .line 1358
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_12} :catch_13

    .line 1363
    :goto_12
    return-object v0

    .line 31086
    :catch_13
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b;->c()V

    goto :goto_12
.end method
