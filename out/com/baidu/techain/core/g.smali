.class public final Lcom/baidu/techain/core/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/baidu/techain/core/g;

.field private static f:Landroid/app/Application;

.field private static g:Ljava/util/Random;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/techain/core/ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Z

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/techain/core/ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/techain/TechainReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/baidu/techain/core/g;->e:Lcom/baidu/techain/core/g;

    .line 68
    sput-object v0, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    .line 70
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/baidu/techain/core/g;->g:Ljava/util/Random;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/techain/core/g;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/techain/core/g;->h:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/techain/core/g;->a:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/techain/core/g;->i:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 537
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    invoke-static {}, Lcom/baidu/techain/b/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "p/1/pdl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 539
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 540
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 541
    const-string v5, "pk"

    invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    const-string v5, "m"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 543
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 544
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 546
    sget-object v4, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    const/4 v5, 0x0

    .line 547
    invoke-static {v4, v2, v3, v5}, Lcom/baidu/techain/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 549
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_56

    move-object v0, v1

    .line 595
    :goto_55
    return-object v0

    .line 553
    :cond_56
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 554
    new-instance v2, Landroid/content/pm/PackageInfo;

    invoke-direct {v2}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 555
    const-string v4, "p"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 556
    const-string v4, "v"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 557
    new-instance v4, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 558
    const-string v5, "n"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 559
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a6

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 560
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 562
    :cond_a6
    const-string v5, "t"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 563
    iput-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 564
    const-string v4, "a"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 565
    if-eqz v3, :cond_147

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_147

    .line 566
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 567
    :goto_c3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c6} :catch_12c

    move-result v5

    if-ge v0, v5, :cond_133

    .line 569
    :try_start_c9
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 570
    if-eqz v5, :cond_124

    .line 571
    new-instance v6, Landroid/content/pm/ActivityInfo;

    invoke-direct {v6}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 572
    const-string v7, "n"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 573
    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_105

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_105

    .line 574
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 576
    :cond_105
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 577
    const-string v7, "t"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/content/pm/ActivityInfo;->theme:I

    .line 578
    const-string v7, "l"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v6, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 579
    iget-object v5, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_124

    .line 580
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_124
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_124} :catch_127

    .line 567
    :cond_124
    :goto_124
    add-int/lit8 v0, v0, 0x1

    goto :goto_c3

    .line 584
    :catch_127
    move-exception v5

    :try_start_128
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_12b
    .catch Ljava/lang/Throwable; {:try_start_128 .. :try_end_12b} :catch_12c

    goto :goto_124

    .line 594
    :catch_12c
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    move-object v0, v1

    .line 595
    goto/16 :goto_55

    .line 587
    :cond_133
    :try_start_133
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_147

    .line 588
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/ActivityInfo;

    .line 589
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_147
    .catch Ljava/lang/Throwable; {:try_start_133 .. :try_end_147} :catch_12c

    :cond_147
    move-object v0, v2

    .line 592
    goto/16 :goto_55
.end method

.method public static a()Lcom/baidu/techain/core/g;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/baidu/techain/core/g;->e:Lcom/baidu/techain/core/g;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/techain/core/g;
    .registers 2

    .prologue
    .line 74
    sget-object v0, Lcom/baidu/techain/core/g;->e:Lcom/baidu/techain/core/g;

    if-nez v0, :cond_13

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    .line 76
    new-instance v0, Lcom/baidu/techain/core/g;

    invoke-direct {v0}, Lcom/baidu/techain/core/g;-><init>()V

    sput-object v0, Lcom/baidu/techain/core/g;->e:Lcom/baidu/techain/core/g;

    .line 78
    :cond_13
    sget-object v0, Lcom/baidu/techain/core/g;->e:Lcom/baidu/techain/core/g;

    return-object v0
.end method

.method private static a(Landroid/content/IntentFilter;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 151
    if-nez p0, :cond_6

    .line 152
    const-string v0, ""

    .line 254
    :goto_5
    return-object v0

    .line 154
    :cond_6
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v3

    .line 156
    if-lez v3, :cond_72

    .line 157
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_16} :catch_2e

    move v0, v1

    .line 158
    :goto_17
    if-ge v0, v3, :cond_32

    .line 160
    :try_start_19
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    .line 161
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 162
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_26} :catch_29

    .line 158
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 165
    :catch_29
    move-exception v5

    :try_start_2a
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_26

    .line 254
    :catch_2e
    move-exception v0

    const-string v0, ""

    goto :goto_5

    .line 168
    :cond_32
    :try_start_32
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4f

    .line 169
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 170
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 174
    :cond_4f
    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_54
    :goto_54
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v3

    .line 180
    if-lez v3, :cond_bd

    .line 181
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_5f} :catch_2e

    move v0, v1

    .line 182
    :goto_60
    if-ge v0, v3, :cond_7d

    .line 184
    :try_start_62
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v5

    .line 185
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6f

    .line 186
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_6f} :catch_78

    .line 182
    :cond_6f
    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 177
    :cond_72
    :try_start_72
    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 189
    :catch_78
    move-exception v5

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_6f

    .line 192
    :cond_7d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9a

    .line 193
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 194
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    .line 198
    :cond_9a
    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_9f
    :goto_9f
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    .line 204
    if-lez v0, :cond_108

    .line 205
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_aa} :catch_2e

    move v0, v1

    .line 206
    :goto_ab
    if-ge v0, v3, :cond_c8

    .line 208
    :try_start_ad
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ba

    .line 210
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_ba} :catch_c3

    .line 206
    :cond_ba
    :goto_ba
    add-int/lit8 v0, v0, 0x1

    goto :goto_ab

    .line 201
    :cond_bd
    :try_start_bd
    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 213
    :catch_c3
    move-exception v5

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_ba

    .line 216
    :cond_c8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e5

    .line 217
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 218
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ea

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d5

    .line 222
    :cond_e5
    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_ea
    :goto_ea
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v3

    .line 228
    if-lez v3, :cond_13b

    .line 229
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_f5
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_f5} :catch_2e

    move v0, v1

    .line 230
    :goto_f6
    if-ge v0, v3, :cond_113

    .line 232
    :try_start_f8
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_105

    .line 234
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_105
    .catch Ljava/lang/Throwable; {:try_start_f8 .. :try_end_105} :catch_10e

    .line 230
    :cond_105
    :goto_105
    add-int/lit8 v0, v0, 0x1

    goto :goto_f6

    .line 225
    :cond_108
    :try_start_108
    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ea

    .line 237
    :catch_10e
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_105

    .line 240
    :cond_113
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_130

    .line 241
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 242
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_120
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_135

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_120

    .line 246
    :cond_130
    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_135
    :goto_135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 249
    :cond_13b
    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_140
    .catch Ljava/lang/Throwable; {:try_start_108 .. :try_end_140} :catch_2e

    goto :goto_135
.end method

.method private static a(Landroid/app/Application;Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 837
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 838
    const-class v0, Landroid/app/Application;

    .line 839
    :goto_6
    if-eqz v0, :cond_29

    .line 841
    :try_start_8
    const-string v2, "mBase"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 842
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 843
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 844
    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1f} :catch_24

    .line 849
    :cond_1f
    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_6

    .line 847
    :catch_24
    move-exception v2

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_1f

    .line 851
    :cond_29
    return-void
.end method

.method private a(Lcom/baidu/techain/core/ApkInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x8

    .line 654
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 656
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p1

    move-object v1, p2

    .line 658
    invoke-static/range {v0 .. v5}, Lcom/baidu/techain/core/g;->a(Lcom/baidu/techain/core/ApkInfo;Ljava/lang/String;Ljava/util/HashSet;Ljava/lang/StringBuilder;ZZ)V

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "java.library.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 661
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-lt v1, v4, :cond_30

    .line 662
    const-string v0, ""

    .line 664
    :cond_30
    const-string v1, ""

    .line 666
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21d

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 668
    const/4 v1, 0x0

    .line 670
    :try_start_54
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_79

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 671
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_78} :catch_204

    move-result-object v1

    .line 676
    :cond_79
    :goto_79
    if-eqz v1, :cond_20a

    .line 677
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 697
    :cond_96
    :goto_96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_251

    .line 698
    const-string v4, "armeabi-v7a"

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    const-string v4, "armeabi"

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c4

    :cond_ae
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_251

    const-string v4, "armeabi-v7a"

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 699
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_251

    const-string v4, "armeabi"

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_251

    .line 700
    :cond_c4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/armeabi"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 704
    :goto_dc
    iput-object v6, p1, Lcom/baidu/techain/core/ApkInfo;->libPath:Ljava/lang/String;

    .line 707
    new-instance v7, Ldalvik/system/PathClassLoader;

    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->hostContext:Landroid/content/Context;

    .line 708
    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 714
    :try_start_fc
    new-instance v0, Ljava/io/File;

    const-string v1, "apkDex"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 715
    invoke-static {v0}, Lcom/baidu/techain/b/e;->d(Ljava/lang/String;)V

    .line 716
    invoke-static {v0}, Lcom/baidu/techain/core/g;->e(Ljava/lang/String;)Z

    .line 717
    new-instance v1, Lcom/baidu/techain/core/f;

    iget-object v4, p1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v1, v4, v0, v6, v7}, Lcom/baidu/techain/core/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v1, p1, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    .line 720
    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    const-string v1, "com.baidu.techain.engine.EngineImpl"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 722
    if-eqz v0, :cond_135

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24e

    .line 723
    :cond_135
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "class ForHostApp.ENGINE_IMPL_CLASS_FULL_PATH loaded is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13d
    .catch Ljava/lang/Throwable; {:try_start_fc .. :try_end_13d} :catch_13d

    .line 726
    :catch_13d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 729
    :try_start_141
    new-instance v0, Ljava/io/File;

    const-string v1, "apkDex"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 730
    invoke-static {v0}, Lcom/baidu/techain/b/e;->d(Ljava/lang/String;)V

    .line 731
    new-instance v0, Ljava/io/File;

    const-string v1, "dexDex"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 732
    invoke-static {v8}, Lcom/baidu/techain/b/e;->d(Ljava/lang/String;)V

    .line 733
    invoke-static {v8}, Lcom/baidu/techain/core/g;->e(Ljava/lang/String;)Z

    .line 736
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/baidu/techain/core/g;->a(Lcom/baidu/techain/core/ApkInfo;Ljava/lang/String;Ljava/util/HashSet;Ljava/lang/StringBuilder;ZZ)V

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 738
    new-instance v0, Lcom/baidu/techain/core/f;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8, v6, v7}, Lcom/baidu/techain/core/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    .line 741
    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    const-string v1, "com.baidu.techain.engine.EngineImpl"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 745
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 746
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1ad

    .line 747
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 749
    :cond_1ad
    if-eqz v0, :cond_1b9

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24e

    .line 750
    :cond_1b9
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "class ForHostApp.ENGINE_IMPL_CLASS_FULL_PATH loaded is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c1
    .catch Ljava/lang/Throwable; {:try_start_141 .. :try_end_1c1} :catch_1c1

    .line 753
    :catch_1c1
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 755
    if-eqz p1, :cond_1df

    .line 756
    :try_start_1c7
    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/techain/b/e;->d(Ljava/lang/String;)V

    .line 757
    sget-object v0, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    if-eqz v0, :cond_1df

    .line 758
    sget-object v0, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    iget-object v1, p1, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/b/e;->d(Ljava/lang/String;)V
    :try_end_1df
    .catch Ljava/lang/Throwable; {:try_start_1c7 .. :try_end_1df} :catch_24f

    .line 764
    :cond_1df
    :goto_1df
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t load EngineImpl by both dexFile:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and ZipFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :catch_204
    move-exception v5

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_79

    .line 680
    :cond_20a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_96

    .line 687
    :cond_21d
    :try_start_21d
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_96

    sget-object v4, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 688
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_245
    .catch Ljava/lang/Throwable; {:try_start_21d .. :try_end_245} :catch_248

    move-result-object v1

    goto/16 :goto_96

    .line 692
    :catch_248
    move-exception v4

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_96

    .line 767
    :cond_24e
    return-void

    :catch_24f
    move-exception v0

    goto :goto_1df

    :cond_251
    move-object v6, v1

    goto/16 :goto_dc
.end method

.method private static a(Lcom/baidu/techain/core/ApkInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;[BLjava/lang/StringBuilder;ZZ)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/techain/core/ApkInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/StringBuilder;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 1027
    new-instance v4, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1029
    const/4 v1, 0x0

    .line 1031
    :cond_d
    :goto_d
    :try_start_d
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_1b8

    .line 1032
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1033
    const-string v0, "lib/"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1d6

    if-eqz p6, :cond_1d6

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1035
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_10b

    .line 1036
    const/4 v0, 0x0

    .line 1038
    :try_start_35
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x8

    if-lt v6, v7, :cond_3d

    .line 1039
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3d} :catch_105
    .catchall {:try_start_35 .. :try_end_3d} :catchall_10b

    .line 1044
    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1045
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_70

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_52

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_70

    .line 1046
    :cond_52
    const-string v6, "armeabi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "armeabi-v7a"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 1047
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "armeabi-v7a"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1051
    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, ".so"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".so"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "l="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", n="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", f="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1053
    const/4 v0, 0x0

    const/16 v6, 0x2f

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1055
    const/16 v6, 0x2f

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1057
    invoke-static {v0}, Lcom/baidu/techain/core/g;->e(Ljava/lang/String;)Z

    .line 1058
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1060
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1062
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_ed
    .catchall {:try_start_3d .. :try_end_ed} :catchall_10b

    .line 1064
    :goto_ed
    :try_start_ed
    invoke-virtual {v4, p4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_10d

    .line 1065
    const/4 v6, 0x0

    invoke-virtual {v0, p4, v6, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_f7
    .catchall {:try_start_ed .. :try_end_f7} :catchall_f8

    goto :goto_ed

    .line 1106
    :catchall_f8
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 1107
    :goto_fc
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V

    .line 1109
    if-eqz v1, :cond_104

    .line 1110
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_104
    throw v0

    .line 1042
    :catch_105
    move-exception v6

    :try_start_106
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_109
    .catchall {:try_start_106 .. :try_end_109} :catchall_10b

    goto/16 :goto_3d

    .line 1106
    :catchall_10b
    move-exception v0

    goto :goto_fc

    .line 1068
    :cond_10d
    :try_start_10d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1070
    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/baidu/techain/b/e;->a(Ljava/lang/String;Z)V
    :try_end_114
    .catchall {:try_start_10d .. :try_end_114} :catchall_f8

    .line 1072
    :goto_114
    const/4 v3, 0x0

    .line 1074
    :try_start_115
    const-string v1, ".dex"

    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b6

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1b6

    if-eqz p7, :cond_1b6

    .line 1075
    iget-object v1, p0, Lcom/baidu/techain/core/ApkInfo;->dataDir:Ljava/lang/String;

    .line 1076
    invoke-static {v1}, Lcom/baidu/techain/core/g;->e(Ljava/lang/String;)Z

    .line 1077
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_150
    .catch Ljava/lang/Throwable; {:try_start_115 .. :try_end_150} :catch_1cb
    .catchall {:try_start_115 .. :try_end_150} :catchall_1c1

    .line 1078
    :try_start_150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1079
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1080
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1081
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_16a
    .catch Ljava/lang/Throwable; {:try_start_150 .. :try_end_16a} :catch_1d0
    .catchall {:try_start_150 .. :try_end_16a} :catchall_1c1

    .line 1083
    :goto_16a
    :try_start_16a
    invoke-virtual {v4, p4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_199

    .line 1084
    const/4 v3, 0x0

    invoke-virtual {v1, p4, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_174
    .catch Ljava/lang/Throwable; {:try_start_16a .. :try_end_174} :catch_175
    .catchall {:try_start_16a .. :try_end_174} :catchall_10b

    goto :goto_16a

    .line 1096
    :catch_175
    move-exception v0

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    .line 1097
    :goto_179
    :try_start_179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1098
    if-eqz v1, :cond_193

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_193

    .line 1099
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_193
    .catchall {:try_start_179 .. :try_end_193} :catchall_1c7

    :cond_193
    move-object v1, v2

    .line 1102
    :goto_194
    :try_start_194
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_197
    .catchall {:try_start_194 .. :try_end_197} :catchall_10b

    goto/16 :goto_d

    .line 1087
    :cond_199
    :try_start_199
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1089
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1a6

    .line 1090
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1092
    :cond_1a6
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/baidu/techain/b/e;->a(Ljava/lang/String;Z)V
    :try_end_1b5
    .catch Ljava/lang/Throwable; {:try_start_199 .. :try_end_1b5} :catch_175
    .catchall {:try_start_199 .. :try_end_1b5} :catchall_10b

    move-object v0, v1

    :cond_1b6
    move-object v1, v0

    .line 1101
    goto :goto_194

    .line 1107
    :cond_1b8
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V

    .line 1109
    if-eqz v1, :cond_1c0

    .line 1110
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1114
    :cond_1c0
    return-void

    .line 1106
    :catchall_1c1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_fc

    :catchall_1c7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_fc

    .line 1096
    :catch_1cb
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_179

    :catch_1d0
    move-exception v1

    move-object v9, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_179

    :cond_1d6
    move-object v0, v1

    goto/16 :goto_114
.end method

.method private static a(Lcom/baidu/techain/core/ApkInfo;Ljava/lang/String;Ljava/util/HashSet;Ljava/lang/StringBuilder;ZZ)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/techain/core/ApkInfo;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 876
    const/4 v6, 0x0

    .line 877
    const/4 v2, 0x0

    .line 878
    const/4 v4, 0x0

    .line 879
    const-string v3, ""

    .line 880
    iget-object v1, p0, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 881
    iget-object v1, p0, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    const-string v3, "."

    const-string v5, ""

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 883
    :cond_17
    const/16 v1, 0x1000

    new-array v5, v1, [B

    .line 886
    :try_start_1b
    new-instance v8, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_22} :catch_135
    .catch Ljava/util/zip/ZipException; {:try_start_1b .. :try_end_22} :catch_166
    .catch Ljava/io/EOFException; {:try_start_1b .. :try_end_22} :catch_1aa
    .catchall {:try_start_1b .. :try_end_22} :catchall_218

    .line 917
    :goto_22
    :try_start_22
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_25
    .catch Ljava/util/zip/ZipException; {:try_start_22 .. :try_end_25} :catch_351
    .catch Ljava/io/EOFException; {:try_start_22 .. :try_end_25} :catch_32d
    .catchall {:try_start_22 .. :try_end_25} :catchall_30e

    move-result-object v9

    .line 918
    :cond_26
    :goto_26
    :try_start_26
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2ff

    .line 919
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 920
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 921
    const-string v6, "lib/"

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_376

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_376

    if-eqz p4, :cond_376

    .line 922
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
    :try_end_48
    .catch Ljava/util/zip/ZipException; {:try_start_26 .. :try_end_48} :catch_249
    .catch Ljava/io/EOFException; {:try_start_26 .. :try_end_48} :catch_345
    .catchall {:try_start_26 .. :try_end_48} :catchall_30e

    .line 923
    const/4 v6, 0x0

    .line 925
    :try_start_49
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x8

    if-lt v11, v12, :cond_51

    .line 926
    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_51} :catch_243
    .catch Ljava/util/zip/ZipException; {:try_start_49 .. :try_end_51} :catch_249
    .catch Ljava/io/EOFException; {:try_start_49 .. :try_end_51} :catch_345
    .catchall {:try_start_49 .. :try_end_51} :catchall_30e

    .line 931
    :cond_51
    :goto_51
    :try_start_51
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 932
    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_84

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_66

    invoke-virtual {v10, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_84

    .line 933
    :cond_66
    const-string v11, "armeabi"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_26

    const-string v11, "armeabi-v7a"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_84

    .line 934
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_26

    const-string v7, "armeabi-v7a"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 938
    :cond_84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v10, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v11, ".so"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".so"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 939
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "l="

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ", n="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ", f="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 940
    const/4 v6, 0x0

    const/16 v11, 0x2f

    invoke-virtual {v7, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    invoke-virtual {v7, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 942
    const/16 v11, 0x2f

    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 944
    invoke-static {v6}, Lcom/baidu/techain/core/g;->e(Ljava/lang/String;)Z

    .line 945
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 948
    invoke-virtual {v8, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_102
    .catch Ljava/util/zip/ZipException; {:try_start_51 .. :try_end_102} :catch_249
    .catch Ljava/io/EOFException; {:try_start_51 .. :try_end_102} :catch_345
    .catchall {:try_start_51 .. :try_end_102} :catchall_30e

    move-result-object v6

    .line 949
    :try_start_103
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_108
    .catch Ljava/util/zip/ZipException; {:try_start_103 .. :try_end_108} :catch_363
    .catch Ljava/io/EOFException; {:try_start_103 .. :try_end_108} :catch_34b
    .catchall {:try_start_103 .. :try_end_108} :catchall_323

    .line 952
    :goto_108
    :try_start_108
    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 953
    if-lez v4, :cond_24f

    .line 954
    const/4 v11, 0x0

    invoke-virtual {v2, v5, v11, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_112
    .catch Ljava/util/zip/ZipException; {:try_start_108 .. :try_end_112} :catch_113
    .catch Ljava/io/EOFException; {:try_start_108 .. :try_end_112} :catch_333
    .catchall {:try_start_108 .. :try_end_112} :catchall_311

    goto :goto_108

    .line 1006
    :catch_113
    move-exception v1

    move-object v9, v2

    move-object v10, v6

    move-object v11, v8

    :goto_117
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    :try_start_122
    invoke-static/range {v1 .. v8}, Lcom/baidu/techain/core/g;->a(Lcom/baidu/techain/core/ApkInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;[BLjava/lang/StringBuilder;ZZ)V
    :try_end_125
    .catchall {:try_start_122 .. :try_end_125} :catchall_327

    .line 1012
    if-eqz v11, :cond_12a

    .line 1013
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V

    .line 1015
    :cond_12a
    if-eqz v10, :cond_12f

    .line 1016
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 1018
    :cond_12f
    if-eqz v9, :cond_134

    .line 1019
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 1022
    :cond_134
    :goto_134
    return-void

    .line 888
    :catch_135
    move-exception v1

    :try_start_136
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 889
    new-instance v1, Ljava/io/File;

    iget-object v8, p0, Lcom/baidu/techain/core/ApkInfo;->hostContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, ".b_techain"

    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 890
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_16b

    .line 891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "--backupDir not exists"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 892
    new-instance v7, Ljava/io/FileNotFoundException;

    invoke-direct {v7, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1006
    :catch_166
    move-exception v1

    move-object v9, v4

    move-object v10, v2

    move-object v11, v6

    goto :goto_117

    .line 895
    :cond_16b
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 896
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1cd

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "--backupFile not exists"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 898
    new-instance v7, Ljava/io/FileNotFoundException;

    invoke-direct {v7, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1aa
    .catch Ljava/util/zip/ZipException; {:try_start_136 .. :try_end_1aa} :catch_166
    .catch Ljava/io/EOFException; {:try_start_136 .. :try_end_1aa} :catch_1aa
    .catchall {:try_start_136 .. :try_end_1aa} :catchall_218

    .line 1009
    :catch_1aa
    move-exception v1

    move-object v9, v4

    move-object v10, v2

    move-object v11, v6

    :goto_1ae
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    :try_start_1b9
    invoke-static/range {v1 .. v8}, Lcom/baidu/techain/core/g;->a(Lcom/baidu/techain/core/ApkInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;[BLjava/lang/StringBuilder;ZZ)V
    :try_end_1bc
    .catchall {:try_start_1b9 .. :try_end_1bc} :catchall_327

    .line 1012
    if-eqz v11, :cond_1c1

    .line 1013
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V

    .line 1015
    :cond_1c1
    if-eqz v10, :cond_1c6

    .line 1016
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 1018
    :cond_1c6
    if-eqz v9, :cond_134

    .line 1019
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_134

    .line 900
    :cond_1cd
    :try_start_1cd
    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 901
    invoke-static {v8, v1}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;Ljava/io/File;)V

    .line 902
    iget-object v9, p0, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/baidu/techain/b/e;->a(Ljava/lang/String;Z)V

    .line 903
    invoke-static {v1}, Lcom/baidu/techain/c;->a(Ljava/io/File;)V

    .line 904
    iget-object v9, p0, Lcom/baidu/techain/core/ApkInfo;->hostContext:Landroid/content/Context;

    iget v10, p0, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v9, v10, v1, v8}, Lcom/baidu/techain/c;->a(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 905
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1ea
    .catch Ljava/util/zip/ZipException; {:try_start_1cd .. :try_end_1ea} :catch_166
    .catch Ljava/io/EOFException; {:try_start_1cd .. :try_end_1ea} :catch_1aa
    .catchall {:try_start_1cd .. :try_end_1ea} :catchall_218

    move-result v1

    if-eqz v1, :cond_22a

    .line 907
    :try_start_1ed
    new-instance v8, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1f4
    .catch Ljava/lang/Throwable; {:try_start_1ed .. :try_end_1f4} :catch_1f6
    .catch Ljava/util/zip/ZipException; {:try_start_1ed .. :try_end_1f4} :catch_166
    .catch Ljava/io/EOFException; {:try_start_1ed .. :try_end_1f4} :catch_1aa
    .catchall {:try_start_1ed .. :try_end_1f4} :catchall_218

    goto/16 :goto_22

    .line 908
    :catch_1f6
    move-exception v1

    .line 909
    :try_start_1f7
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "--"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_218
    .catch Ljava/util/zip/ZipException; {:try_start_1f7 .. :try_end_218} :catch_166
    .catch Ljava/io/EOFException; {:try_start_1f7 .. :try_end_218} :catch_1aa
    .catchall {:try_start_1f7 .. :try_end_218} :catchall_218

    .line 1012
    :catchall_218
    move-exception v1

    move-object v8, v6

    :goto_21a
    if-eqz v8, :cond_21f

    .line 1013
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V

    .line 1015
    :cond_21f
    if-eqz v2, :cond_224

    .line 1016
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1018
    :cond_224
    if-eqz v4, :cond_229

    .line 1019
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_229
    throw v1

    .line 913
    :cond_22a
    :try_start_22a
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--file not exists after copy"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_243
    .catch Ljava/util/zip/ZipException; {:try_start_22a .. :try_end_243} :catch_166
    .catch Ljava/io/EOFException; {:try_start_22a .. :try_end_243} :catch_1aa
    .catchall {:try_start_22a .. :try_end_243} :catchall_218

    .line 929
    :catch_243
    move-exception v11

    :try_start_244
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_247
    .catch Ljava/util/zip/ZipException; {:try_start_244 .. :try_end_247} :catch_249
    .catch Ljava/io/EOFException; {:try_start_244 .. :try_end_247} :catch_345
    .catchall {:try_start_244 .. :try_end_247} :catchall_30e

    goto/16 :goto_51

    .line 1006
    :catch_249
    move-exception v1

    move-object v9, v4

    move-object v10, v2

    move-object v11, v8

    goto/16 :goto_117

    .line 960
    :cond_24f
    :try_start_24f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 962
    if-eqz v6, :cond_257

    .line 963
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 965
    :cond_257
    const/4 v4, 0x1

    invoke-static {v7, v4}, Lcom/baidu/techain/b/e;->a(Ljava/lang/String;Z)V
    :try_end_25b
    .catch Ljava/util/zip/ZipException; {:try_start_24f .. :try_end_25b} :catch_113
    .catch Ljava/io/EOFException; {:try_start_24f .. :try_end_25b} :catch_333
    .catchall {:try_start_24f .. :try_end_25b} :catchall_311

    move-object v4, v6

    .line 967
    :goto_25c
    const/4 v7, 0x0

    .line 969
    :try_start_25d
    const-string v6, ".dex"

    invoke-virtual {v10, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2fa

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2fa

    if-eqz p5, :cond_2fa

    .line 970
    iget-object v10, p0, Lcom/baidu/techain/core/ApkInfo;->dataDir:Ljava/lang/String;

    .line 971
    invoke-static {v10}, Lcom/baidu/techain/core/g;->e(Ljava/lang/String;)Z

    .line 972
    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".dex"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_298
    .catch Ljava/lang/Throwable; {:try_start_25d .. :try_end_298} :catch_369
    .catch Ljava/util/zip/ZipException; {:try_start_25d .. :try_end_298} :catch_357
    .catch Ljava/io/EOFException; {:try_start_25d .. :try_end_298} :catch_339
    .catchall {:try_start_25d .. :try_end_298} :catchall_316

    .line 973
    :try_start_298
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "e: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 974
    invoke-virtual {v8, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 975
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2b2
    .catch Ljava/lang/Throwable; {:try_start_298 .. :try_end_2b2} :catch_36f
    .catch Ljava/util/zip/ZipException; {:try_start_298 .. :try_end_2b2} :catch_357
    .catch Ljava/io/EOFException; {:try_start_298 .. :try_end_2b2} :catch_339
    .catchall {:try_start_298 .. :try_end_2b2} :catchall_316

    .line 977
    :goto_2b2
    :try_start_2b2
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 978
    if-lez v2, :cond_2e0

    .line 979
    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2bc
    .catch Ljava/lang/Throwable; {:try_start_2b2 .. :try_end_2bc} :catch_2bd
    .catch Ljava/util/zip/ZipException; {:try_start_2b2 .. :try_end_2bc} :catch_35d
    .catch Ljava/io/EOFException; {:try_start_2b2 .. :try_end_2bc} :catch_33f
    .catchall {:try_start_2b2 .. :try_end_2bc} :catchall_31c

    goto :goto_2b2

    .line 995
    :catch_2bd
    move-exception v2

    move-object v14, v2

    move-object v2, v6

    move-object v6, v4

    move-object v4, v1

    move-object v1, v14

    .line 996
    :goto_2c3
    :try_start_2c3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 997
    if-eqz v2, :cond_2dd

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2dd

    .line 998
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2dd
    .catch Ljava/util/zip/ZipException; {:try_start_2c3 .. :try_end_2dd} :catch_363
    .catch Ljava/io/EOFException; {:try_start_2c3 .. :try_end_2dd} :catch_34b
    .catchall {:try_start_2c3 .. :try_end_2dd} :catchall_323

    :cond_2dd
    move-object v2, v6

    .line 1002
    goto/16 :goto_26

    .line 986
    :cond_2e0
    :try_start_2e0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 988
    if-eqz v4, :cond_2e8

    .line 989
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 991
    :cond_2e8
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    invoke-static {v2, v7}, Lcom/baidu/techain/b/e;->a(Ljava/lang/String;Z)V
    :try_end_2f9
    .catch Ljava/lang/Throwable; {:try_start_2e0 .. :try_end_2f9} :catch_2bd
    .catch Ljava/util/zip/ZipException; {:try_start_2e0 .. :try_end_2f9} :catch_35d
    .catch Ljava/io/EOFException; {:try_start_2e0 .. :try_end_2f9} :catch_33f
    .catchall {:try_start_2e0 .. :try_end_2f9} :catchall_31c

    move-object v2, v1

    :cond_2fa
    move-object v14, v2

    move-object v2, v4

    move-object v4, v14

    .line 1000
    goto/16 :goto_26

    .line 1013
    :cond_2ff
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V

    .line 1015
    if-eqz v2, :cond_307

    .line 1016
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1018
    :cond_307
    if-eqz v4, :cond_134

    .line 1019
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_134

    .line 1012
    :catchall_30e
    move-exception v1

    goto/16 :goto_21a

    :catchall_311
    move-exception v1

    move-object v4, v2

    move-object v2, v6

    goto/16 :goto_21a

    :catchall_316
    move-exception v1

    move-object v14, v2

    move-object v2, v4

    move-object v4, v14

    goto/16 :goto_21a

    :catchall_31c
    move-exception v2

    move-object v14, v2

    move-object v2, v4

    move-object v4, v1

    move-object v1, v14

    goto/16 :goto_21a

    :catchall_323
    move-exception v1

    move-object v2, v6

    goto/16 :goto_21a

    :catchall_327
    move-exception v1

    move-object v4, v9

    move-object v2, v10

    move-object v8, v11

    goto/16 :goto_21a

    .line 1009
    :catch_32d
    move-exception v1

    move-object v9, v4

    move-object v10, v2

    move-object v11, v8

    goto/16 :goto_1ae

    :catch_333
    move-exception v1

    move-object v9, v2

    move-object v10, v6

    move-object v11, v8

    goto/16 :goto_1ae

    :catch_339
    move-exception v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v8

    goto/16 :goto_1ae

    :catch_33f
    move-exception v2

    move-object v9, v1

    move-object v10, v4

    move-object v11, v8

    goto/16 :goto_1ae

    :catch_345
    move-exception v1

    move-object v9, v4

    move-object v10, v2

    move-object v11, v8

    goto/16 :goto_1ae

    :catch_34b
    move-exception v1

    move-object v9, v4

    move-object v10, v6

    move-object v11, v8

    goto/16 :goto_1ae

    .line 1006
    :catch_351
    move-exception v1

    move-object v9, v4

    move-object v10, v2

    move-object v11, v8

    goto/16 :goto_117

    :catch_357
    move-exception v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v8

    goto/16 :goto_117

    :catch_35d
    move-exception v2

    move-object v9, v1

    move-object v10, v4

    move-object v11, v8

    goto/16 :goto_117

    :catch_363
    move-exception v1

    move-object v9, v4

    move-object v10, v6

    move-object v11, v8

    goto/16 :goto_117

    .line 995
    :catch_369
    move-exception v1

    move-object v6, v4

    move-object v4, v2

    move-object v2, v7

    goto/16 :goto_2c3

    :catch_36f
    move-exception v1

    move-object v14, v6

    move-object v6, v4

    move-object v4, v2

    move-object v2, v14

    goto/16 :goto_2c3

    :cond_376
    move-object v14, v4

    move-object v4, v2

    move-object v2, v14

    goto/16 :goto_25c
.end method

.method private declared-synchronized a(Lcom/baidu/techain/core/ApkInfo;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 355
    monitor-enter p0

    if-eqz p1, :cond_d

    :try_start_5
    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_23d

    move-result v0

    if-eqz v0, :cond_10

    :cond_d
    move v0, v2

    .line 532
    :goto_e
    monitor-exit p0

    return v0

    .line 359
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/baidu/techain/core/g;->h:Ljava/util/Map;

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;

    .line 360
    if-eqz v0, :cond_30

    .line 361
    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 362
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    move v0, v1

    .line 363
    goto :goto_e

    .line 365
    :cond_2b
    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/techain/core/g;->a(Ljava/lang/String;)Z

    .line 370
    :cond_30
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-static {v0}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 373
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 376
    const-string v1, "0"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v1, "1"

    iget v3, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v1, "2"

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v1, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "1003117"

    invoke-static {v1, v3, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_6c
    .catchall {:try_start_10 .. :try_end_6c} :catchall_23d

    move v0, v2

    .line 381
    goto :goto_e

    .line 385
    :cond_6e
    :try_start_6e
    sget-object v0, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    iput-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->hostContext:Landroid/content/Context;

    .line 387
    iget v0, p1, Lcom/baidu/techain/core/ApkInfo;->apkParseSuc:I

    if-ne v0, v1, :cond_3fd

    .line 388
    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_79} :catch_d6
    .catchall {:try_start_6e .. :try_end_79} :catchall_23d

    .line 390
    :try_start_79
    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_89

    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_164

    .line 391
    :cond_89
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "packageName or pkgPath miss"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_91} :catch_91
    .catchall {:try_start_79 .. :try_end_91} :catchall_23d

    .line 413
    :catch_91
    move-exception v0

    .line 414
    :try_start_92
    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/techain/core/g;->a(Ljava/lang/String;)Z

    move v0, v1

    .line 415
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 420
    :goto_9b
    iget v3, p1, Lcom/baidu/techain/core/ApkInfo;->apkParseSuc:I

    if-ne v3, v1, :cond_a1

    if-eqz v0, :cond_3f1

    .line 421
    :cond_a1
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 424
    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->cloudPkgInfo:Landroid/content/pm/PackageInfo;

    .line 425
    if-eqz v0, :cond_1f9

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f9

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 426
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f9

    .line 427
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    move-object v4, v0

    .line 443
    :goto_bc
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ce

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.baidu.techain"

    .line 444
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_240

    .line 445
    :cond_ce
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "package name check failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_d6} :catch_d6
    .catchall {:try_start_92 .. :try_end_d6} :catchall_23d

    .line 495
    :catch_d6
    move-exception v0

    .line 497
    :try_start_d7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    .line 498
    iget-object v1, p1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/baidu/techain/core/g;->a(Ljava/lang/String;)Z

    .line 500
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 501
    invoke-static {v0}, Lcom/baidu/techain/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n isUpgrade="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/baidu/techain/core/g;->d:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    const-string v3, "space left"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_114

    .line 512
    sget-object v3, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    iget-object v4, p1, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v0, v4}, Lcom/baidu/techain/b/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    :cond_114
    const-string v3, "0"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v3, "1"

    iget v4, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v3, "2"

    iget-object v4, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v3, "3"

    .line 518
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\t"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\r"

    const-string v5, ""

    .line 519
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "1003117"

    invoke-static {v0, v3, v1}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_161
    .catch Ljava/lang/Throwable; {:try_start_d7 .. :try_end_161} :catch_3f4
    .catchall {:try_start_d7 .. :try_end_161} :catchall_23d

    :goto_161
    move v0, v2

    .line 524
    goto/16 :goto_e

    .line 393
    :cond_164
    :try_start_164
    sget-object v0, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/.techain_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->dataDir:Ljava/lang/String;

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/dex"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/baidu/techain/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/lib/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/techain/core/g;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    sget-object v4, Lcom/baidu/techain/core/g;->g:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 400
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-static {v0}, Lcom/baidu/techain/core/g;->e(Ljava/lang/String;)Z

    .line 403
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/baidu/techain/b/e;->a(Ljava/lang/String;Z)V

    .line 405
    invoke-static {v3}, Lcom/baidu/techain/core/g;->e(Ljava/lang/String;)Z

    .line 407
    invoke-direct {p0, p1, v3, v0}, Lcom/baidu/techain/core/g;->a(Lcom/baidu/techain/core/ApkInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/baidu/techain/core/g;->h:Ljava/util/Map;

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Lcom/baidu/techain/core/g;->a:Ljava/util/Map;

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->className:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/baidu/techain/core/g;->a(Lcom/baidu/techain/core/ApkInfo;Ljava/lang/String;)Z
    :try_end_1f6
    .catch Ljava/lang/Throwable; {:try_start_164 .. :try_end_1f6} :catch_91
    .catchall {:try_start_164 .. :try_end_1f6} :catchall_23d

    move v0, v2

    .line 416
    goto/16 :goto_9b

    .line 430
    :cond_1f9
    :try_start_1f9
    sget-object v0, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 431
    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_218

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_218

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 433
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3fa

    .line 434
    :cond_218
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 435
    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->apkMD5:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/baidu/techain/core/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_235

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_235

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 437
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3fa

    .line 438
    :cond_235
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "requestCloudPackageInfo failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23d
    .catch Ljava/lang/Throwable; {:try_start_1f9 .. :try_end_23d} :catch_d6
    .catchall {:try_start_1f9 .. :try_end_23d} :catchall_23d

    .line 355
    :catchall_23d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 448
    :cond_240
    :try_start_240
    iget v0, p1, Lcom/baidu/techain/core/ApkInfo;->apkParseSuc:I

    if-eq v0, v1, :cond_32a

    iget v0, p1, Lcom/baidu/techain/core/ApkInfo;->initStatus:I

    if-eq v0, v1, :cond_32a

    .line 449
    iget-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->apkMD5:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 1601
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_258

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2d5

    .line 1602
    :cond_258
    new-instance v0, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, ""

    invoke-direct {v0, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v0

    .line 450
    :goto_265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 451
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_32a

    .line 452
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 453
    const-string v0, "0"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v0, "1"

    iget v5, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const-string v0, "2"

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string v4, "3"

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 457
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\n"

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\t"

    const-string v5, ""

    .line 458
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\r"

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "1003117"

    invoke-static {v0, v3, v1}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    move v0, v2

    .line 460
    goto/16 :goto_e

    .line 1604
    :cond_2d5
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1605
    invoke-static {v5}, Lcom/baidu/techain/b/e;->a(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2ef

    .line 1606
    new-instance v0, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, ""

    invoke-direct {v0, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v0

    goto/16 :goto_265

    .line 1608
    :cond_2ef
    invoke-static {v5}, Lcom/baidu/techain/b/o;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 1609
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_308

    .line 1610
    new-instance v0, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, ""

    invoke-direct {v0, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v0

    goto/16 :goto_265

    .line 1613
    :cond_308
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31b

    .line 1614
    new-instance v0, Landroid/util/Pair;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v0

    goto/16 :goto_265

    .line 1617
    :cond_31b
    new-instance v0, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, ""

    invoke-direct {v0, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v0

    goto/16 :goto_265

    .line 464
    :cond_32a
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "p="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", v="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 467
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    iput-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->className:Ljava/lang/String;

    .line 469
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 470
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    iput-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 471
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    iput v0, p1, Lcom/baidu/techain/core/ApkInfo;->applicationTheme:I

    .line 472
    sget-object v0, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/.techain_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/techain/core/ApkInfo;->dataDir:Ljava/lang/String;

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/dex"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/baidu/techain/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/lib/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/baidu/techain/core/g;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 481
    sget-object v5, Lcom/baidu/techain/core/g;->g:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    .line 482
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 484
    invoke-static {v0}, Lcom/baidu/techain/core/g;->e(Ljava/lang/String;)Z

    .line 485
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/baidu/techain/b/e;->a(Ljava/lang/String;Z)V

    .line 487
    invoke-static {v3}, Lcom/baidu/techain/core/g;->e(Ljava/lang/String;)Z

    .line 488
    invoke-direct {p0, p1, v3, v0}, Lcom/baidu/techain/core/g;->a(Lcom/baidu/techain/core/ApkInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/baidu/techain/core/g;->h:Ljava/util/Map;

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object v0, p0, Lcom/baidu/techain/core/g;->a:Ljava/util/Map;

    iget-object v3, p1, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/baidu/techain/core/g;->a(Lcom/baidu/techain/core/ApkInfo;Ljava/lang/String;)Z
    :try_end_3f1
    .catch Ljava/lang/Throwable; {:try_start_240 .. :try_end_3f1} :catch_d6
    .catchall {:try_start_240 .. :try_end_3f1} :catchall_23d

    :cond_3f1
    move v0, v1

    .line 532
    goto/16 :goto_e

    .line 522
    :catch_3f4
    move-exception v0

    :try_start_3f5
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_3f8
    .catchall {:try_start_3f5 .. :try_end_3f8} :catchall_23d

    goto/16 :goto_161

    :cond_3fa
    move-object v4, v0

    goto/16 :goto_bc

    :cond_3fd
    move v0, v2

    goto/16 :goto_9b
.end method

.method private static a(Lcom/baidu/techain/core/ApkInfo;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 629
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 630
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    .line 649
    :goto_13
    return v0

    .line 633
    :cond_14
    iget-object v0, p0, Lcom/baidu/techain/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    .line 635
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 636
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 638
    const-class v2, Landroid/app/Application;

    sget-object v3, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    invoke-static {v2, v3, v0}, Lcom/baidu/techain/f;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 641
    sget-object v2, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    invoke-static {v0, v2}, Lcom/baidu/techain/core/g;->a(Landroid/app/Application;Landroid/content/Context;)V

    .line 643
    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2f} :catch_31

    move v0, v1

    .line 649
    goto :goto_13

    .line 645
    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    .line 646
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static e(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 855
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_14

    .line 857
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 859
    :cond_14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 860
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1f

    .line 866
    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    return v0

    .line 863
    :catch_1f
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 864
    const/4 v0, 0x0

    goto :goto_1e
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/baidu/techain/core/h;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 99
    monitor-enter p0

    :try_start_2
    iget-object v0, p1, Lcom/baidu/techain/core/h;->d:Landroid/content/IntentFilter;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4} :catch_94
    .catchall {:try_start_2 .. :try_end_4} :catchall_9a

    if-nez v0, :cond_8

    .line 147
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 102
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/baidu/techain/core/g;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/baidu/techain/core/h;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;

    .line 103
    if-eqz v0, :cond_6

    .line 104
    iget-object v1, v0, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;

    if-nez v1, :cond_1f

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;

    :cond_1f
    move v3, v2

    .line 108
    :goto_20
    iget-object v1, v0, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3a

    .line 109
    iget-object v1, v0, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/techain/core/h;

    .line 110
    invoke-virtual {p1, v1}, Lcom/baidu/techain/core/h;->a(Lcom/baidu/techain/core/h;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 108
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_20

    .line 115
    :cond_3a
    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p1, Lcom/baidu/techain/core/h;->d:Landroid/content/IntentFilter;

    .line 117
    invoke-static {v0}, Lcom/baidu/techain/core/g;->a(Landroid/content/IntentFilter;)Ljava/lang/String;

    move-result-object v1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 119
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "____"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 122
    iget-object v0, p0, Lcom/baidu/techain/core/g;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.intent.action.PACKAGE_REMOVED__package"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 124
    new-instance v3, Lcom/baidu/techain/TechainReceiver;

    invoke-direct {v3}, Lcom/baidu/techain/TechainReceiver;-><init>()V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_77} :catch_94
    .catchall {:try_start_8 .. :try_end_77} :catchall_9a

    .line 127
    :try_start_77
    sget-object v0, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    iget-object v4, p1, Lcom/baidu/techain/core/h;->d:Landroid/content/IntentFilter;

    invoke-virtual {v0, v3, v4}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_7e} :catch_9d
    .catchall {:try_start_77 .. :try_end_7e} :catchall_9a

    move v0, v2

    .line 131
    :goto_7f
    if-eqz v0, :cond_8d

    .line 133
    const-wide/16 v4, 0xbb8

    :try_start_83
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_86
    .catch Ljava/lang/InterruptedException; {:try_start_83 .. :try_end_86} :catch_a0
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_86} :catch_94
    .catchall {:try_start_83 .. :try_end_86} :catchall_9a

    .line 137
    :goto_86
    :try_start_86
    sget-object v0, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    iget-object v2, p1, Lcom/baidu/techain/core/h;->d:Landroid/content/IntentFilter;

    invoke-virtual {v0, v3, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    :cond_8d
    iget-object v0, p0, Lcom/baidu/techain/core/g;->i:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_92} :catch_94
    .catchall {:try_start_86 .. :try_end_92} :catchall_9a

    goto/16 :goto_6

    .line 144
    :catch_94
    move-exception v0

    :try_start_95
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_9a

    goto/16 :goto_6

    .line 99
    :catchall_9a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 129
    :catch_9d
    move-exception v0

    const/4 v0, 0x1

    goto :goto_7f

    .line 135
    :catch_a0
    move-exception v0

    :try_start_a1
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a4} :catch_94
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_9a

    goto :goto_86
.end method

.method public final a(Lcom/baidu/techain/core/ApkInfo;Z)Z
    .registers 9

    .prologue
    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 347
    iput-boolean p2, p0, Lcom/baidu/techain/core/g;->d:Z

    .line 348
    iget-object v2, p1, Lcom/baidu/techain/core/ApkInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/techain/core/g;->c:Ljava/lang/String;

    .line 349
    invoke-direct {p0, p1}, Lcom/baidu/techain/core/g;->a(Lcom/baidu/techain/core/ApkInfo;)Z

    move-result v2

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 351
    return v2
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 772
    iget-object v0, p0, Lcom/baidu/techain/core/g;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;

    .line 773
    if-eqz v0, :cond_30

    .line 774
    iget-object v1, p0, Lcom/baidu/techain/core/g;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v1, p0, Lcom/baidu/techain/core/g;->a:Ljava/util/Map;

    iget-object v2, v0, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget-object v1, v0, Lcom/baidu/techain/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/techain/b/e;->d(Ljava/lang/String;)V

    .line 779
    sget-object v1, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    if-eqz v1, :cond_2e

    .line 780
    sget-object v1, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/Application;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/b/e;->d(Ljava/lang/String;)V

    .line 782
    :cond_2e
    const/4 v0, 0x1

    .line 784
    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public final b()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/techain/core/ApkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 328
    iget-object v0, p0, Lcom/baidu/techain/core/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 329
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    iget-object v3, p0, Lcom/baidu/techain/core/g;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_f

    .line 334
    :catch_25
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 336
    :try_start_29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2e} :catch_31

    .line 339
    :goto_2e
    return-object v0

    :cond_2f
    move-object v0, v1

    .line 332
    goto :goto_2e

    .line 338
    :catch_31
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 339
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public final declared-synchronized b(Lcom/baidu/techain/core/h;)V
    .registers 7

    .prologue
    .line 261
    monitor-enter p0

    :try_start_1
    iget-object v0, p1, Lcom/baidu/techain/core/h;->d:Landroid/content/IntentFilter;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3} :catch_64
    .catchall {:try_start_1 .. :try_end_3} :catchall_69

    if-nez v0, :cond_7

    .line 323
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 264
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/baidu/techain/core/g;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/baidu/techain/core/h;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;

    .line 265
    if-eqz v0, :cond_7d

    .line 266
    iget-object v1, v0, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;

    if-eqz v1, :cond_7d

    .line 267
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 268
    const/4 v1, 0x0

    move v2, v1

    :goto_1e
    iget-object v1, v0, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3f

    .line 269
    iget-object v1, v0, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/techain/core/h;

    .line 270
    invoke-virtual {p1, v1}, Lcom/baidu/techain/core/h;->a(Lcom/baidu/techain/core/h;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 271
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_3b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1e

    .line 275
    :cond_3f
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_43
    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 276
    if-eqz v0, :cond_43

    iget-object v3, v0, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_57} :catch_64
    .catchall {:try_start_7 .. :try_end_57} :catchall_69

    if-eqz v3, :cond_43

    .line 278
    :try_start_59
    iget-object v3, v0, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5e} :catch_5f
    .catchall {:try_start_59 .. :try_end_5e} :catchall_69

    goto :goto_43

    .line 280
    :catch_5f
    move-exception v1

    :try_start_60
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_63} :catch_64
    .catchall {:try_start_60 .. :try_end_63} :catchall_69

    goto :goto_43

    .line 320
    :catch_64
    move-exception v0

    :try_start_65
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_5

    .line 261
    :catchall_69
    move-exception v0

    monitor-exit p0

    throw v0

    .line 287
    :cond_6c
    if-eqz v0, :cond_7d

    :try_start_6e
    iget-object v1, v0, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;

    if-eqz v1, :cond_7d

    iget-object v1, v0, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;

    .line 288
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7d

    .line 289
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;

    .line 293
    :cond_7d
    iget-object v0, p1, Lcom/baidu/techain/core/h;->d:Landroid/content/IntentFilter;

    invoke-static {v0}, Lcom/baidu/techain/core/g;->a(Landroid/content/IntentFilter;)Ljava/lang/String;

    move-result-object v1

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 295
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.intent.action.PACKAGE_REMOVED__package"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 298
    invoke-virtual {p0}, Lcom/baidu/techain/core/g;->b()Ljava/util/List;

    move-result-object v0

    .line 299
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;

    .line 300
    iget-object v3, v0, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;

    if-eqz v3, :cond_a4

    iget-object v3, v0, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a4

    .line 301
    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->intentFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/h;

    .line 302
    iget-object v0, v0, Lcom/baidu/techain/core/h;->d:Landroid/content/IntentFilter;

    invoke-static {v0}, Lcom/baidu/techain/core/g;->a(Landroid/content/IntentFilter;)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c2

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    goto/16 :goto_5

    .line 314
    :cond_ed
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 315
    iget-object v0, p0, Lcom/baidu/techain/core/g;->i:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/TechainReceiver;

    .line 316
    sget-object v2, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 317
    iget-object v0, p0, Lcom/baidu/techain/core/g;->i:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_10a} :catch_64
    .catchall {:try_start_6e .. :try_end_10a} :catchall_69

    goto/16 :goto_5
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 788
    iget-object v0, p0, Lcom/baidu/techain/core/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;

    .line 789
    if-eqz v0, :cond_52

    .line 790
    iget-object v1, p0, Lcom/baidu/techain/core/g;->h:Ljava/util/Map;

    iget-object v2, v0, Lcom/baidu/techain/core/ApkInfo;->pkgPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    iget-object v1, p0, Lcom/baidu/techain/core/g;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    iget-object v1, v0, Lcom/baidu/techain/core/ApkInfo;->dataDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/techain/b/e;->d(Ljava/lang/String;)V

    .line 797
    sget-object v1, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    if-eqz v1, :cond_2e

    .line 798
    sget-object v1, Lcom/baidu/techain/core/g;->f:Landroid/app/Application;

    iget-object v0, v0, Lcom/baidu/techain/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/Application;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/b/e;->d(Ljava/lang/String;)V

    .line 800
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/techain/core/g;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/techain/core/g;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 802
    const/4 v0, 0x1

    .line 804
    :goto_51
    return v0

    :cond_52
    const/4 v0, 0x0

    goto :goto_51
.end method

.method public final c(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;
    .registers 3

    .prologue
    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/baidu/techain/core/g;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    .line 812
    :goto_8
    return-object v0

    .line 811
    :catch_9
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 812
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final d(Ljava/lang/String;)Lcom/baidu/techain/core/ApkInfo;
    .registers 3

    .prologue
    .line 818
    :try_start_0
    iget-object v0, p0, Lcom/baidu/techain/core/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/core/ApkInfo;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    .line 821
    :goto_8
    return-object v0

    .line 820
    :catch_9
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 821
    const/4 v0, 0x0

    goto :goto_8
.end method
