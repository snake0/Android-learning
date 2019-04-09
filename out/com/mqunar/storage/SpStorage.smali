.class public Lcom/mqunar/storage/SpStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/storage/IStorage;


# static fields
.field private static e:Landroid/os/HandlerThread;

.field private static f:Landroid/os/Handler;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/storage/SpStorage;->a:Landroid/content/SharedPreferences;

    .line 45
    iput-object p3, p0, Lcom/mqunar/storage/SpStorage;->b:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    .line 47
    iput-object p2, p0, Lcom/mqunar/storage/SpStorage;->c:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private static a([B)J
    .registers 9

    .prologue
    .line 987
    const-wide/16 v1, 0x0

    .line 989
    const/4 v0, 0x0

    :goto_3
    const/16 v3, 0x8

    if-ge v0, v3, :cond_17

    .line 990
    rsub-int/lit8 v3, v0, 0x7

    mul-int/lit8 v3, v3, 0x8

    .line 991
    aget-byte v4, p0, v0

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    shl-long v3, v4, v3

    add-long/2addr v1, v3

    .line 989
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 993
    :cond_17
    return-wide v1
.end method

.method private a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mqunar/storage/SpStorage;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/mqunar/storage/SpStorage;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mqunar/storage/SpStorage;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 865
    new-instance v0, Lcom/mqunar/storage/a;

    invoke-direct {v0, p0, p2, p1}, Lcom/mqunar/storage/a;-><init>(Lcom/mqunar/storage/SpStorage;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 876
    invoke-direct {p0}, Lcom/mqunar/storage/SpStorage;->c()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 877
    iget-object v1, p0, Lcom/mqunar/storage/SpStorage;->c:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 878
    invoke-direct {p0}, Lcom/mqunar/storage/SpStorage;->c()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 879
    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 906
    if-nez p0, :cond_3

    .line 912
    :goto_2
    return-void

    .line 909
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 910
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private a(ILjava/lang/String;[B)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    if-eqz p3, :cond_7

    array-length v2, p3

    if-nez v2, :cond_2b

    .line 76
    :cond_7
    iget-object v1, p0, Lcom/mqunar/storage/SpStorage;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mqunar/storage/SpStorage;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    :goto_2a
    return v0

    .line 83
    :cond_2b
    :try_start_2b
    array-length v2, p3

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    .line 84
    const/4 v3, 0x0

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    .line 85
    const/4 v3, 0x0

    const/4 v4, 0x1

    array-length v5, p3

    invoke-static {p3, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    invoke-static {v2}, Lcom/mqunar/storage/EggRoll;->ea([B)[B

    move-result-object v2

    .line 88
    iget-object v3, p0, Lcom/mqunar/storage/SpStorage;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 89
    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mqunar/storage/SpStorage;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_64} :catch_65

    goto :goto_2a

    .line 94
    :catch_65
    move-exception v0

    move v0, v1

    .line 96
    goto :goto_2a
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 885
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 886
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const/4 v0, 0x1

    .line 889
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private a(ILjava/lang/String;)[B
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-direct {p0, p2}, Lcom/mqunar/storage/SpStorage;->b(Ljava/lang/String;)[B

    move-result-object v1

    .line 147
    if-eqz v1, :cond_22

    array-length v0, v1

    if-lez v0, :cond_22

    .line 149
    aget-byte v0, v1, v4

    int-to-byte v2, p1

    if-eq v0, v2, :cond_17

    .line 150
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u7c7b\u578b\u4e0d\u5339\u914d"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_17
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    .line 153
    const/4 v2, 0x1

    array-length v3, v0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    :goto_21
    return-object v0

    :cond_22
    move-object v0, v1

    goto :goto_21
.end method

.method private static a(J)[B
    .registers 9

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 957
    new-array v0, v6, [B

    .line 959
    const/4 v1, 0x0

    const/16 v2, 0x38

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 960
    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 961
    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 962
    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 963
    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 964
    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 965
    const/4 v1, 0x6

    shr-long v2, p0, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 966
    const/4 v1, 0x7

    and-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 967
    return-object v0
.end method

.method private a(Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 133
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/mqunar/storage/EggRoll;->da([B)[B

    move-result-object v0

    .line 137
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private b()Landroid/os/HandlerThread;
    .registers 3

    .prologue
    .line 920
    sget-object v0, Lcom/mqunar/storage/SpStorage;->e:Landroid/os/HandlerThread;

    if-nez v0, :cond_12

    .line 921
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SmoothSpStorage"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mqunar/storage/SpStorage;->e:Landroid/os/HandlerThread;

    .line 922
    sget-object v0, Lcom/mqunar/storage/SpStorage;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 924
    :cond_12
    sget-object v0, Lcom/mqunar/storage/SpStorage;->e:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private static b([B)Ljava/lang/String;
    .registers 6

    .prologue
    .line 1017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1018
    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_23

    .line 1019
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1020
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    .line 1021
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1023
    :cond_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1025
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(ILjava/lang/String;[B)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    if-eqz p3, :cond_7

    array-length v2, p3

    if-nez v2, :cond_2b

    .line 107
    :cond_7
    iget-object v1, p0, Lcom/mqunar/storage/SpStorage;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mqunar/storage/SpStorage;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-direct {p0, v1, p2}, Lcom/mqunar/storage/SpStorage;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 127
    :goto_2a
    return v0

    .line 114
    :cond_2b
    :try_start_2b
    array-length v2, p3

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    .line 115
    const/4 v3, 0x0

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    .line 116
    const/4 v3, 0x0

    const/4 v4, 0x1

    array-length v5, p3

    invoke-static {p3, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    invoke-static {v2}, Lcom/mqunar/storage/EggRoll;->ea([B)[B

    move-result-object v2

    .line 119
    iget-object v3, p0, Lcom/mqunar/storage/SpStorage;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 120
    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mqunar/storage/SpStorage;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-direct {p0, v3, p2}, Lcom/mqunar/storage/SpStorage;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_64} :catch_65

    goto :goto_2a

    .line 125
    :catch_65
    move-exception v0

    move v0, v1

    .line 127
    goto :goto_2a
.end method

.method private b(Ljava/lang/String;)[B
    .registers 5

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mqunar/storage/SpStorage;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-direct {p0, v0}, Lcom/mqunar/storage/SpStorage;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static b2i([B)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 977
    move v1, v0

    .line 979
    :goto_2
    const/4 v2, 0x4

    if-ge v0, v2, :cond_13

    .line 980
    rsub-int/lit8 v2, v0, 0x3

    mul-int/lit8 v2, v2, 0x8

    .line 981
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    add-int/2addr v1, v2

    .line 979
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 983
    :cond_13
    return v1
.end method

.method private c()Landroid/os/Handler;
    .registers 4

    .prologue
    .line 929
    sget-object v0, Lcom/mqunar/storage/SpStorage;->f:Landroid/os/Handler;

    if-nez v0, :cond_1b

    .line 930
    const-class v1, Lcom/mqunar/storage/SpStorage;

    monitor-enter v1

    .line 931
    :try_start_7
    sget-object v0, Lcom/mqunar/storage/SpStorage;->f:Landroid/os/Handler;

    if-nez v0, :cond_1a

    .line 932
    new-instance v0, Landroid/os/Handler;

    invoke-direct {p0}, Lcom/mqunar/storage/SpStorage;->b()Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mqunar/storage/SpStorage;->f:Landroid/os/Handler;

    .line 934
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1e

    .line 936
    :cond_1b
    sget-object v0, Lcom/mqunar/storage/SpStorage;->f:Landroid/os/Handler;

    return-object v0

    .line 934
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 896
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 897
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 899
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1001
    if-nez p0, :cond_4

    .line 1002
    const/4 v0, 0x0

    .line 1012
    :goto_3
    return-object v0

    .line 1006
    :cond_4
    :try_start_4
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1007
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 1008
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/storage/SpStorage;->b([B)Ljava/lang/String;
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_18} :catch_1a

    move-result-object v0

    goto :goto_3

    .line 1009
    :catch_1a
    move-exception v0

    .line 1010
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static i2b(I)[B
    .registers 4

    .prologue
    .line 947
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 949
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 950
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 951
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 952
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 953
    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/storage/IStorage;
    .registers 4

    .prologue
    .line 51
    new-instance v0, Lcom/mqunar/storage/SpStorage;

    invoke-direct {v0, p0, p1, p2}, Lcom/mqunar/storage/SpStorage;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public cleanAllStorage()Z
    .registers 6

    .prologue
    .line 827
    monitor-enter p0

    .line 829
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 831
    invoke-direct {p0}, Lcom/mqunar/storage/SpStorage;->c()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/storage/SpStorage;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 833
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 834
    if-eqz v0, :cond_6d

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 835
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 836
    invoke-direct {p0}, Lcom/mqunar/storage/SpStorage;->a()Ljava/lang/String;

    move-result-object v2

    .line 837
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 838
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 839
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 851
    :catchall_44
    move-exception v0

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_44

    throw v0

    .line 842
    :cond_47
    :try_start_47
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 843
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 844
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 845
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_57

    .line 847
    :cond_67
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 848
    const/4 v0, 0x1

    monitor-exit p0

    .line 852
    :goto_6c
    return v0

    .line 851
    :cond_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_47 .. :try_end_6e} :catchall_44

    .line 852
    const/4 v0, 0x0

    goto :goto_6c
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 697
    monitor-enter p0

    .line 699
    :try_start_2
    iget-object v1, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/mqunar/storage/SpStorage;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mqunar/storage/SpStorage;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_2a
    .catchall {:try_start_2 .. :try_end_24} :catchall_2d

    move-result v1

    if-eqz v1, :cond_28

    :cond_27
    const/4 v0, 0x1

    :cond_28
    :try_start_28
    monitor-exit p0

    .line 702
    :goto_29
    return v0

    .line 700
    :catch_2a
    move-exception v1

    .line 702
    monitor-exit p0

    goto :goto_29

    .line 703
    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 738
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 741
    monitor-enter p0

    .line 742
    :try_start_9
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 743
    if-eqz v1, :cond_48

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    .line 744
    invoke-direct {p0}, Lcom/mqunar/storage/SpStorage;->a()Ljava/lang/String;

    move-result-object v4

    .line 745
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_23
    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 746
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 747
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 748
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 756
    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_45

    throw v0

    .line 752
    :cond_48
    :try_start_48
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    if-eqz v0, :cond_122

    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_122

    .line 754
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v7, v0

    .line 756
    :goto_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_48 .. :try_end_5d} :catchall_45

    .line 758
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_65
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 759
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 760
    invoke-direct {p0, v1}, Lcom/mqunar/storage/SpStorage;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 762
    if-eqz v4, :cond_90

    array-length v1, v4

    if-lez v1, :cond_90

    .line 763
    aget-byte v6, v4, v3

    .line 764
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [B

    .line 765
    array-length v10, v1

    invoke-static {v4, v2, v1, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 768
    packed-switch v6, :pswitch_data_126

    :cond_90
    move-object v1, v5

    .line 816
    :goto_91
    :pswitch_91
    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    :pswitch_95
    move v4, v3

    move v6, v3

    .line 775
    :goto_97
    const/4 v10, 0x2

    if-ge v4, v10, :cond_a9

    .line 776
    rsub-int/lit8 v10, v4, 0x1

    mul-int/lit8 v10, v10, 0x8

    .line 777
    aget-byte v11, v1, v4

    and-int/lit16 v11, v11, 0xff

    shl-int v10, v11, v10

    add-int/2addr v6, v10

    int-to-short v6, v6

    .line 775
    add-int/lit8 v4, v4, 0x1

    goto :goto_97

    .line 779
    :cond_a9
    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_91

    .line 782
    :pswitch_ae
    invoke-static {v1}, Lcom/mqunar/storage/SpStorage;->b2i([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_91

    .line 785
    :pswitch_b7
    invoke-static {v1}, Lcom/mqunar/storage/SpStorage;->a([B)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_91

    .line 788
    :pswitch_c0
    invoke-static {v1}, Lcom/mqunar/storage/SpStorage;->b2i([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_91

    .line 791
    :pswitch_cd
    invoke-static {v1}, Lcom/mqunar/storage/SpStorage;->a([B)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_91

    .line 794
    :pswitch_da
    aget-byte v1, v1, v3

    if-ne v1, v2, :cond_e4

    move v1, v2

    :goto_df
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_91

    :cond_e4
    move v1, v3

    goto :goto_df

    .line 798
    :pswitch_e6
    :try_start_e6
    new-instance v4, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v4, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_ed
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e6 .. :try_end_ed} :catch_ef

    move-object v1, v4

    .line 800
    goto :goto_91

    .line 799
    :catch_ef
    move-exception v1

    move-object v1, v5

    .line 801
    goto :goto_91

    .line 806
    :pswitch_f2
    :try_start_f2
    new-instance v4, Ljava/io/ObjectInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_fc
    .catch Ljava/lang/Throwable; {:try_start_f2 .. :try_end_fc} :catch_104
    .catchall {:try_start_f2 .. :try_end_fc} :catchall_10b

    .line 807
    :try_start_fc
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_ff
    .catch Ljava/lang/Throwable; {:try_start_fc .. :try_end_ff} :catch_11f
    .catchall {:try_start_fc .. :try_end_ff} :catchall_11c

    move-result-object v1

    .line 810
    invoke-static {v4}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    goto :goto_91

    .line 808
    :catch_104
    move-exception v1

    move-object v1, v5

    .line 810
    :goto_106
    invoke-static {v1}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    move-object v1, v5

    .line 811
    goto :goto_91

    .line 810
    :catchall_10b
    move-exception v0

    :goto_10c
    invoke-static {v5}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    throw v0

    .line 818
    :cond_110
    if-eqz v7, :cond_11b

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11b

    .line 819
    invoke-interface {v8, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 821
    :cond_11b
    return-object v8

    .line 810
    :catchall_11c
    move-exception v0

    move-object v5, v4

    goto :goto_10c

    .line 808
    :catch_11f
    move-exception v1

    move-object v1, v4

    goto :goto_106

    :cond_122
    move-object v7, v5

    goto/16 :goto_5c

    .line 768
    nop

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_91
        :pswitch_95
        :pswitch_ae
        :pswitch_b7
        :pswitch_c0
        :pswitch_cd
        :pswitch_da
        :pswitch_e6
        :pswitch_f2
    .end packed-switch
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 631
    monitor-enter p0

    .line 635
    :try_start_3
    invoke-direct {p0, p1}, Lcom/mqunar/storage/SpStorage;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 636
    if-eqz v0, :cond_11

    .line 637
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_e} :catch_25
    .catchall {:try_start_3 .. :try_end_e} :catchall_20

    move-result v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_20

    .line 646
    :goto_10
    return v0

    .line 640
    :cond_11
    const/4 v0, 0x6

    :try_start_12
    invoke-direct {p0, v0, p1}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;)[B

    move-result-object v0

    .line 641
    if-eqz v0, :cond_28

    .line 642
    const/4 v3, 0x0

    aget-byte v0, v0, v3
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1b} :catch_25
    .catchall {:try_start_12 .. :try_end_1b} :catchall_20

    if-ne v0, v1, :cond_23

    move v0, v1

    .line 646
    :goto_1e
    :try_start_1e
    monitor-exit p0

    goto :goto_10

    .line 647
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    move v0, v2

    .line 642
    goto :goto_1e

    .line 644
    :catch_25
    move-exception v0

    move v0, p2

    goto :goto_1e

    :cond_28
    move v0, p2

    goto :goto_1e
.end method

.method public getBytes(Ljava/lang/String;[B)[B
    .registers 5

    .prologue
    .line 192
    monitor-enter p0

    .line 195
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mqunar/storage/SpStorage;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_e

    .line 197
    check-cast v0, [B

    check-cast v0, [B
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_1d
    .catchall {:try_start_1 .. :try_end_b} :catchall_1a

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_1a

    move-object p2, v0

    .line 207
    :goto_d
    return-object p2

    .line 200
    :cond_e
    const/4 v0, 0x0

    :try_start_f
    invoke-direct {p0, v0, p1}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;)[B

    move-result-object v0

    .line 201
    if-eqz v0, :cond_18

    array-length v1, v0
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_16} :catch_1d
    .catchall {:try_start_f .. :try_end_16} :catchall_1a

    if-nez v1, :cond_20

    .line 204
    :cond_18
    :goto_18
    :try_start_18
    monitor-exit p0

    goto :goto_d

    .line 208
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v0

    .line 205
    :catch_1d
    move-exception v0

    .line 207
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1a

    goto :goto_d

    :cond_20
    move-object p2, v0

    goto :goto_18
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 6

    .prologue
    .line 589
    monitor-enter p0

    .line 593
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mqunar/storage/SpStorage;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_f

    .line 595
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_24
    .catchall {:try_start_1 .. :try_end_c} :catchall_21

    move-result-wide v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_21

    .line 604
    :goto_e
    return-wide v0

    .line 598
    :cond_f
    const/4 v0, 0x5

    :try_start_10
    invoke-direct {p0, v0, p1}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;)[B

    move-result-object v0

    .line 599
    if-eqz v0, :cond_1e

    .line 600
    invoke-static {v0}, Lcom/mqunar/storage/SpStorage;->a([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1d} :catch_24
    .catchall {:try_start_10 .. :try_end_1d} :catchall_21

    move-result-wide p2

    :cond_1e
    move-wide v0, p2

    .line 604
    :goto_1f
    :try_start_1f
    monitor-exit p0

    goto :goto_e

    .line 605
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_21

    throw v0

    .line 602
    :catch_24
    move-exception v0

    move-wide v0, p2

    goto :goto_1f
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 4

    .prologue
    .line 568
    monitor-enter p0

    .line 572
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mqunar/storage/SpStorage;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_f

    .line 574
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_24
    .catchall {:try_start_1 .. :try_end_c} :catchall_21

    move-result v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_21

    .line 583
    :goto_e
    return v0

    .line 577
    :cond_f
    const/4 v0, 0x4

    :try_start_10
    invoke-direct {p0, v0, p1}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;)[B

    move-result-object v0

    .line 578
    if-eqz v0, :cond_1e

    .line 579
    invoke-static {v0}, Lcom/mqunar/storage/SpStorage;->b2i([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1d} :catch_24
    .catchall {:try_start_10 .. :try_end_1d} :catchall_21

    move-result p2

    :cond_1e
    move v0, p2

    .line 583
    :goto_1f
    :try_start_1f
    monitor-exit p0

    goto :goto_e

    .line 584
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_21

    throw v0

    .line 581
    :catch_24
    move-exception v0

    move v0, p2

    goto :goto_1f
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 526
    monitor-enter p0

    .line 530
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mqunar/storage/SpStorage;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_f

    .line 532
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_20
    .catchall {:try_start_1 .. :try_end_c} :catchall_1d

    move-result v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_1d

    .line 541
    :goto_e
    return v0

    .line 535
    :cond_f
    const/4 v0, 0x2

    :try_start_10
    invoke-direct {p0, v0, p1}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;)[B

    move-result-object v0

    .line 536
    if-eqz v0, :cond_1a

    .line 537
    invoke-static {v0}, Lcom/mqunar/storage/SpStorage;->b2i([B)I
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_19} :catch_20
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    move-result p2

    :cond_1a
    move v0, p2

    .line 541
    :goto_1b
    :try_start_1b
    monitor-exit p0

    goto :goto_e

    .line 542
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v0

    .line 539
    :catch_20
    move-exception v0

    move v0, p2

    goto :goto_1b
.end method

.method public getKeys()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 710
    const/4 v0, 0x0

    .line 712
    monitor-enter p0

    .line 713
    :try_start_2
    iget-object v1, p0, Lcom/mqunar/storage/SpStorage;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 714
    iget-object v1, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_65

    .line 715
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    .line 717
    :goto_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_51

    .line 719
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 720
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    .line 721
    invoke-direct {p0}, Lcom/mqunar/storage/SpStorage;->a()Ljava/lang/String;

    move-result-object v4

    .line 722
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_33
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 723
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 724
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 725
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 717
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0

    .line 730
    :cond_54
    if-eqz v1, :cond_5f

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 731
    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 733
    :cond_5f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_65
    move-object v1, v0

    goto :goto_1b
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6

    .prologue
    .line 547
    monitor-enter p0

    .line 551
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mqunar/storage/SpStorage;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 552
    if-eqz v0, :cond_f

    .line 553
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_20
    .catchall {:try_start_1 .. :try_end_c} :catchall_1d

    move-result-wide v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_1d

    .line 562
    :goto_e
    return-wide v0

    .line 556
    :cond_f
    const/4 v0, 0x3

    :try_start_10
    invoke-direct {p0, v0, p1}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;)[B

    move-result-object v0

    .line 557
    if-eqz v0, :cond_1a

    .line 558
    invoke-static {v0}, Lcom/mqunar/storage/SpStorage;->a([B)J
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_19} :catch_20
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    move-result-wide p2

    :cond_1a
    move-wide v0, p2

    .line 562
    :goto_1b
    :try_start_1b
    monitor-exit p0

    goto :goto_e

    .line 563
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v0

    .line 560
    :catch_20
    move-exception v0

    move-wide v0, p2

    goto :goto_1b
.end method

.method public getSerializable(Ljava/lang/String;Ljava/lang/Class;Ljava/io/Serializable;)Ljava/io/Serializable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 653
    monitor-enter p0

    .line 654
    const/4 v1, 0x0

    .line 659
    :try_start_2
    invoke-direct {p0, p1}, Lcom/mqunar/storage/SpStorage;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 660
    if-eqz v0, :cond_f

    .line 661
    check-cast v0, Ljava/io/Serializable;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a} :catch_2f
    .catchall {:try_start_2 .. :try_end_a} :catchall_36

    .line 671
    :try_start_a
    invoke-static {v1}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_2c

    .line 673
    :goto_e
    return-object v0

    .line 664
    :cond_f
    const/16 v0, 0x8

    :try_start_11
    invoke-direct {p0, v0, p1}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;)[B

    move-result-object v0

    .line 665
    if-eqz v0, :cond_41

    .line 666
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_21} :catch_2f
    .catchall {:try_start_11 .. :try_end_21} :catchall_36

    .line 667
    :try_start_21
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_27} :catch_3e
    .catchall {:try_start_21 .. :try_end_27} :catchall_3b

    .line 671
    :goto_27
    :try_start_27
    invoke-static {v2}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    .line 673
    :goto_2a
    monitor-exit p0

    goto :goto_e

    .line 674
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2c

    throw v0

    .line 669
    :catch_2f
    move-exception v0

    move-object v0, v1

    .line 671
    :goto_31
    :try_start_31
    invoke-static {v0}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    move-object v0, p3

    .line 672
    goto :goto_2a

    .line 671
    :catchall_36
    move-exception v0

    :goto_37
    invoke-static {v1}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_2c

    :catchall_3b
    move-exception v0

    move-object v1, v2

    goto :goto_37

    .line 669
    :catch_3e
    move-exception v0

    move-object v0, v2

    goto :goto_31

    :cond_41
    move-object v0, p3

    move-object v2, v1

    goto :goto_27
.end method

.method public getShort(Ljava/lang/String;S)S
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 500
    monitor-enter p0

    .line 504
    :try_start_2
    invoke-direct {p0, p1}, Lcom/mqunar/storage/SpStorage;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_10

    .line 506
    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_31
    .catchall {:try_start_2 .. :try_end_d} :catchall_2e

    move-result v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_2e

    .line 520
    :goto_f
    return v0

    .line 509
    :cond_10
    const/4 v0, 0x1

    :try_start_11
    invoke-direct {p0, v0, p1}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;)[B

    move-result-object v2

    .line 510
    if-eqz v2, :cond_2b

    move v0, v1

    move p2, v1

    .line 513
    :goto_19
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2b

    .line 514
    rsub-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x8

    .line 515
    aget-byte v3, v2, v0
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_22} :catch_31
    .catchall {:try_start_11 .. :try_end_22} :catchall_2e

    and-int/lit16 v3, v3, 0xff

    shl-int v1, v3, v1

    add-int/2addr v1, p2

    int-to-short p2, v1

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2b
    move v0, p2

    .line 520
    :goto_2c
    :try_start_2c
    monitor-exit p0

    goto :goto_f

    .line 521
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_2e

    throw v0

    .line 518
    :catch_31
    move-exception v0

    move v0, p2

    goto :goto_2c
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 610
    monitor-enter p0

    .line 614
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mqunar/storage/SpStorage;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_b

    .line 616
    check-cast v0, Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_20
    .catchall {:try_start_1 .. :try_end_9} :catchall_1d

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1d

    .line 625
    :goto_a
    return-object v0

    .line 619
    :cond_b
    const/4 v0, 0x7

    :try_start_c
    invoke-direct {p0, v0, p1}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;)[B

    move-result-object v1

    .line 620
    if-eqz v1, :cond_1a

    .line 621
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_19} :catch_20
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    move-object p2, v0

    :cond_1a
    move-object v0, p2

    .line 625
    :goto_1b
    :try_start_1b
    monitor-exit p0

    goto :goto_a

    .line 626
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v0

    .line 623
    :catch_20
    move-exception v0

    move-object v0, p2

    goto :goto_1b
.end method

.method public putBoolean(Ljava/lang/String;Z)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 411
    monitor-enter p0

    .line 412
    :try_start_3
    iget-object v2, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 413
    iget-object v2, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_14
    if-eqz p2, :cond_24

    :goto_16
    int-to-byte v0, v0

    .line 416
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 417
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v1}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;[B)Z

    move-result v0

    monitor-exit p0

    return v0

    :cond_24
    move v0, v1

    .line 415
    goto :goto_16

    .line 418
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public putBytes(Ljava/lang/String;[B)Z
    .registers 4

    .prologue
    .line 169
    monitor-enter p0

    .line 170
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 171
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;[B)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 174
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public putDouble(Ljava/lang/String;D)Z
    .registers 6

    .prologue
    .line 343
    monitor-enter p0

    .line 344
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 345
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_12
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mqunar/storage/SpStorage;->a(J)[B

    move-result-object v0

    .line 348
    const/4 v1, 0x5

    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;[B)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 349
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public putFloat(Ljava/lang/String;F)Z
    .registers 5

    .prologue
    .line 313
    monitor-enter p0

    .line 314
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 315
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_12
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/mqunar/storage/SpStorage;->i2b(I)[B

    move-result-object v0

    .line 318
    const/4 v1, 0x4

    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;[B)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 319
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public putInt(Ljava/lang/String;I)Z
    .registers 5

    .prologue
    .line 217
    monitor-enter p0

    .line 218
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 219
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_12
    invoke-static {p2}, Lcom/mqunar/storage/SpStorage;->i2b(I)[B

    move-result-object v0

    .line 222
    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;[B)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 223
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public putLong(Ljava/lang/String;J)Z
    .registers 6

    .prologue
    .line 283
    monitor-enter p0

    .line 284
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 285
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_12
    invoke-static {p2, p3}, Lcom/mqunar/storage/SpStorage;->a(J)[B

    move-result-object v0

    .line 288
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;[B)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 289
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 442
    monitor-enter p0

    .line 443
    :try_start_2
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 444
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_42

    .line 447
    :cond_13
    if-eqz p2, :cond_2f

    .line 451
    :try_start_15
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_37
    .catchall {:try_start_15 .. :try_end_1a} :catchall_45

    .line 452
    :try_start_1a
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_55
    .catchall {:try_start_1a .. :try_end_1f} :catchall_4e

    .line 453
    :try_start_1f
    invoke-virtual {v0, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 454
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 455
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_28} :catch_57
    .catchall {:try_start_1f .. :try_end_28} :catchall_50

    move-result-object v1

    .line 459
    :try_start_29
    invoke-static {v0}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    .line 460
    invoke-static {v2}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    .line 463
    :cond_2f
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;[B)Z

    move-result v0

    monitor-exit p0

    :goto_36
    return v0

    .line 456
    :catch_37
    move-exception v0

    move-object v2, v1

    .line 457
    :goto_39
    const/4 v0, 0x0

    .line 459
    invoke-static {v1}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    .line 460
    invoke-static {v2}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    monitor-exit p0

    goto :goto_36

    .line 464
    :catchall_42
    move-exception v0

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_42

    throw v0

    .line 459
    :catchall_45
    move-exception v0

    move-object v2, v1

    :goto_47
    :try_start_47
    invoke-static {v1}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    .line 460
    invoke-static {v2}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_42

    .line 459
    :catchall_4e
    move-exception v0

    goto :goto_47

    :catchall_50
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_47

    .line 456
    :catch_55
    move-exception v0

    goto :goto_39

    :catch_57
    move-exception v1

    move-object v1, v0

    goto :goto_39
.end method

.method public putShort(Ljava/lang/String;S)Z
    .registers 6

    .prologue
    .line 247
    monitor-enter p0

    .line 248
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 249
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_12
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 253
    const/4 v1, 0x0

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 254
    const/4 v1, 0x1

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 255
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;[B)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 256
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public putSmoothBoolean(Ljava/lang/String;Z)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 429
    monitor-enter p0

    .line 430
    :try_start_3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/mqunar/storage/SpStorage;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 431
    if-eqz p2, :cond_1a

    :goto_c
    int-to-byte v0, v0

    .line 432
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 433
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v1}, Lcom/mqunar/storage/SpStorage;->b(ILjava/lang/String;[B)Z

    move-result v0

    monitor-exit p0

    return v0

    :cond_1a
    move v0, v1

    .line 431
    goto :goto_c

    .line 434
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public putSmoothBytes(Ljava/lang/String;[B)Z
    .registers 4

    .prologue
    .line 185
    monitor-enter p0

    .line 186
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/mqunar/storage/SpStorage;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/mqunar/storage/SpStorage;->b(ILjava/lang/String;[B)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 188
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public putSmoothDouble(Ljava/lang/String;D)Z
    .registers 6

    .prologue
    .line 360
    monitor-enter p0

    .line 361
    :try_start_1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mqunar/storage/SpStorage;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 362
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mqunar/storage/SpStorage;->a(J)[B

    move-result-object v0

    .line 363
    const/4 v1, 0x5

    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/SpStorage;->b(ILjava/lang/String;[B)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 364
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public putSmoothFloat(Ljava/lang/String;F)Z
    .registers 5

    .prologue
    .line 330
    monitor-enter p0

    .line 331
    :try_start_1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mqunar/storage/SpStorage;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 332
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/mqunar/storage/SpStorage;->i2b(I)[B

    move-result-object v0

    .line 333
    const/4 v1, 0x4

    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/SpStorage;->b(ILjava/lang/String;[B)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 334
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public putSmoothInt(Ljava/lang/String;I)Z
    .registers 5

    .prologue
    .line 234
    monitor-enter p0

    .line 235
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mqunar/storage/SpStorage;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 236
    invoke-static {p2}, Lcom/mqunar/storage/SpStorage;->i2b(I)[B

    move-result-object v0

    .line 237
    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/SpStorage;->b(ILjava/lang/String;[B)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 238
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public putSmoothLong(Ljava/lang/String;J)Z
    .registers 6

    .prologue
    .line 300
    monitor-enter p0

    .line 301
    :try_start_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mqunar/storage/SpStorage;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 302
    invoke-static {p2, p3}, Lcom/mqunar/storage/SpStorage;->a(J)[B

    move-result-object v0

    .line 303
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/SpStorage;->b(ILjava/lang/String;[B)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 304
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public putSmoothSerializable(Ljava/lang/String;Ljava/io/Serializable;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 475
    monitor-enter p0

    .line 476
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/mqunar/storage/SpStorage;->a(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_34

    .line 478
    if-eqz p2, :cond_21

    .line 482
    :try_start_7
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_29
    .catchall {:try_start_7 .. :try_end_c} :catchall_37

    .line 483
    :try_start_c
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_47
    .catchall {:try_start_c .. :try_end_11} :catchall_40

    .line 484
    :try_start_11
    invoke-virtual {v0, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 485
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 486
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_49
    .catchall {:try_start_11 .. :try_end_1a} :catchall_42

    move-result-object v1

    .line 490
    :try_start_1b
    invoke-static {v0}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    .line 491
    invoke-static {v2}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    .line 494
    :cond_21
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/mqunar/storage/SpStorage;->b(ILjava/lang/String;[B)Z

    move-result v0

    monitor-exit p0

    :goto_28
    return v0

    .line 487
    :catch_29
    move-exception v0

    move-object v2, v1

    .line 488
    :goto_2b
    const/4 v0, 0x0

    .line 490
    invoke-static {v1}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    .line 491
    invoke-static {v2}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    monitor-exit p0

    goto :goto_28

    .line 495
    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_34

    throw v0

    .line 490
    :catchall_37
    move-exception v0

    move-object v2, v1

    :goto_39
    :try_start_39
    invoke-static {v1}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    .line 491
    invoke-static {v2}, Lcom/mqunar/storage/SpStorage;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_34

    .line 490
    :catchall_40
    move-exception v0

    goto :goto_39

    :catchall_42
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_39

    .line 487
    :catch_47
    move-exception v0

    goto :goto_2b

    :catch_49
    move-exception v1

    move-object v1, v0

    goto :goto_2b
.end method

.method public putSmoothShort(Ljava/lang/String;S)Z
    .registers 6

    .prologue
    .line 267
    monitor-enter p0

    .line 268
    :try_start_1
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mqunar/storage/SpStorage;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 269
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 271
    const/4 v1, 0x0

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 272
    const/4 v1, 0x1

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 273
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/SpStorage;->b(ILjava/lang/String;[B)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 274
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public putSmoothString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 394
    monitor-enter p0

    .line 395
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/mqunar/storage/SpStorage;->a(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1c

    .line 397
    if-nez p2, :cond_e

    const/4 v0, 0x0

    .line 398
    :goto_7
    const/4 v1, 0x7

    :try_start_8
    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/SpStorage;->b(ILjava/lang/String;[B)Z
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_b} :catch_15
    .catchall {:try_start_8 .. :try_end_b} :catchall_1c

    move-result v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_1c

    return v0

    .line 397
    :cond_e
    :try_start_e
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_13} :catch_15
    .catchall {:try_start_e .. :try_end_13} :catchall_1c

    move-result-object v0

    goto :goto_7

    .line 399
    :catch_15
    move-exception v0

    .line 400
    :try_start_16
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 402
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 373
    monitor-enter p0

    .line 374
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 375
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_2a

    .line 378
    :cond_12
    if-nez p2, :cond_1c

    const/4 v0, 0x0

    .line 379
    :goto_15
    const/4 v1, 0x7

    :try_start_16
    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/SpStorage;->a(ILjava/lang/String;[B)Z
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_19} :catch_23
    .catchall {:try_start_16 .. :try_end_19} :catchall_2a

    move-result v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_2a

    return v0

    .line 378
    :cond_1c
    :try_start_1c
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_21} :catch_23
    .catchall {:try_start_1c .. :try_end_21} :catchall_2a

    move-result-object v0

    goto :goto_15

    .line 380
    :catch_23
    move-exception v0

    .line 381
    :try_start_24
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 383
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 679
    monitor-enter p0

    .line 681
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 682
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :cond_12
    iget-object v0, p0, Lcom/mqunar/storage/SpStorage;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mqunar/storage/SpStorage;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 687
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_36
    .catchall {:try_start_1 .. :try_end_33} :catchall_3a

    .line 688
    const/4 v0, 0x1

    :try_start_34
    monitor-exit p0

    .line 690
    :goto_35
    return v0

    .line 689
    :catch_36
    move-exception v0

    .line 690
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_35

    .line 692
    :catchall_3a
    move-exception v0

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3a

    throw v0
.end method
