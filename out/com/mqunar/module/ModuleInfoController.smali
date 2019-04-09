.class public Lcom/mqunar/module/ModuleInfoController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static LIB_PATH:Ljava/lang/String;

.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/module/MInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Landroid/content/BroadcastReceiver;

.field private static g:[Ljava/lang/String;

.field private static h:Z

.field public static modules:Lcom/mqunar/module/Modules;

.field public static preLoad:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    new-instance v0, Lcom/mqunar/module/Modules;

    invoke-direct {v0}, Lcom/mqunar/module/Modules;-><init>()V

    sput-object v0, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    .line 73
    sget-object v0, Lcom/mqunar/BuildConfig;->SPIDER_DEPENDENCIES:[Ljava/lang/String;

    sput-object v0, Lcom/mqunar/module/ModuleInfoController;->g:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;)Lcom/alibaba/fastjson/JSONObject;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .prologue
    .line 1051
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1052
    new-instance v6, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1053
    const-string v0, "lib/armeabi/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    .line 1054
    const/4 v1, 0x0

    .line 1056
    :try_start_11
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1c} :catch_1a4
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a0

    .line 1058
    :try_start_1c
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    .line 1059
    :cond_20
    :goto_20
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_190

    .line 1060
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 1061
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "lib/armeabi/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1063
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    const-wide/16 v9, 0x0

    cmp-long v1, v3, v9

    if-lez v1, :cond_20

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v3

    const-wide/16 v9, 0x0

    cmp-long v1, v3, v9

    if-lez v1, :cond_20

    .line 1064
    new-instance v9, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v9}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1066
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1069
    const-string v1, "n"

    const/4 v4, 0x0

    const-string v10, "."

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    const/4 v1, 0x0

    .line 1073
    const-string v4, "libq_lib_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7a

    const-string v4, "libq_atom_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_112

    :cond_7a
    const/4 v4, 0x1

    .line 1075
    :goto_7b
    sget-object v10, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mt6592"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_115

    if-eqz v4, :cond_115

    .line 1077
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const-string v11, "."

    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1093
    :cond_a9
    :goto_a9
    if-nez v1, :cond_fb

    .line 1094
    const-string v1, "r"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v9, v1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    const-string v1, "s"

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    const-string v1, "libq_lib_"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d2

    const-string v1, "libq_atom_"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14a

    .line 1098
    :cond_d2
    sget-object v1, Lcom/mqunar/module/ModuleInfoController;->c:Ljava/lang/String;

    .line 1104
    :goto_d4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12

    cmp-long v1, v10, v12

    if-nez v1, :cond_f1

    invoke-static {v2, v0, v4}, Lcom/mqunar/core/ModuleParser;->checkEquals(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)Z
    :try_end_ee
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_ee} :catch_100
    .catchall {:try_start_1c .. :try_end_ee} :catchall_148

    move-result v1

    if-nez v1, :cond_187

    .line 1107
    :cond_f1
    :try_start_f1
    invoke-static {v2, v0, v4}, Lcom/mqunar/module/ModuleInfoController;->copyFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V

    .line 1108
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_fb
    .catch Ljava/lang/Throwable; {:try_start_f1 .. :try_end_fb} :catch_14d
    .catchall {:try_start_f1 .. :try_end_fb} :catchall_148

    .line 1117
    :cond_fb
    :goto_fb
    :try_start_fb
    invoke-virtual {v6, v9}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z
    :try_end_fe
    .catch Ljava/lang/Throwable; {:try_start_fb .. :try_end_fe} :catch_100
    .catchall {:try_start_fb .. :try_end_fe} :catchall_148

    goto/16 :goto_20

    .line 1121
    :catch_100
    move-exception v0

    move-object v1, v2

    .line 1122
    :goto_102
    :try_start_102
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "copy file error on init!!"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_10a
    .catchall {:try_start_102 .. :try_end_10a} :catchall_10a

    .line 1124
    :catchall_10a
    move-exception v0

    move-object v2, v1

    :goto_10c
    if-eqz v2, :cond_111

    .line 1126
    :try_start_10e
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_19d

    .line 1128
    :cond_111
    :goto_111
    throw v0

    .line 1073
    :cond_112
    const/4 v4, 0x0

    goto/16 :goto_7b

    .line 1079
    :cond_115
    :try_start_115
    new-instance v4, Ljava/io/File;

    sget-object v10, Lcom/mqunar/module/ModuleInfoController;->LIB_PATH:Ljava/lang/String;

    invoke-direct {v4, v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_a9

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_a9

    .line 1082
    const/4 v1, 0x1

    .line 1084
    sget-object v10, Lcom/mqunar/module/ModuleInfoController;->c:Ljava/lang/String;

    .line 1085
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_13f

    .line 1087
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 1089
    :cond_13f
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a9

    .line 1124
    :catchall_148
    move-exception v0

    goto :goto_10c

    .line 1100
    :cond_14a
    sget-object v1, Lcom/mqunar/module/ModuleInfoController;->d:Ljava/lang/String;

    goto :goto_d4

    .line 1109
    :catch_14d
    move-exception v1

    .line 1110
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file name is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",zipEntry.getSize() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",zipEntry.getCompressedSize() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1113
    :cond_187
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_18e
    .catch Ljava/lang/Throwable; {:try_start_115 .. :try_end_18e} :catch_100
    .catchall {:try_start_115 .. :try_end_18e} :catchall_148

    goto/16 :goto_fb

    .line 1124
    :cond_190
    if-eqz v2, :cond_195

    .line 1126
    :try_start_192
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_195} :catch_19b

    .line 1132
    :cond_195
    :goto_195
    const-string v0, "list"

    invoke-virtual {v5, v0, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    return-object v5

    .line 1127
    :catch_19b
    move-exception v0

    goto :goto_195

    :catch_19d
    move-exception v1

    goto/16 :goto_111

    .line 1124
    :catchall_1a0
    move-exception v0

    move-object v2, v1

    goto/16 :goto_10c

    .line 1121
    :catch_1a4
    move-exception v0

    goto/16 :goto_102
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 902
    if-eqz p0, :cond_39

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_39

    .line 904
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 906
    :try_start_1d
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_22} :catch_5c
    .catchall {:try_start_1d .. :try_end_22} :catchall_4e

    .line 907
    const/16 v0, 0x1000

    :try_start_24
    new-array v0, v0, [B

    .line 909
    :goto_26
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3b

    .line 910
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_31} :catch_32
    .catchall {:try_start_24 .. :try_end_31} :catchall_5a

    goto :goto_26

    .line 913
    :catch_32
    move-exception v0

    move-object v0, v2

    .line 915
    :goto_34
    if-eqz v0, :cond_39

    .line 917
    :try_start_36
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_56

    :cond_39
    :goto_39
    move-object v0, v1

    .line 923
    :cond_3a
    :goto_3a
    return-object v0

    .line 912
    :cond_3b
    :try_start_3b
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_46} :catch_32
    .catchall {:try_start_3b .. :try_end_46} :catchall_5a

    .line 915
    if-eqz v2, :cond_3a

    .line 917
    :try_start_48
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_3a

    .line 918
    :catch_4c
    move-exception v1

    goto :goto_3a

    .line 915
    :catchall_4e
    move-exception v0

    move-object v2, v1

    :goto_50
    if-eqz v2, :cond_55

    .line 917
    :try_start_52
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_58

    .line 919
    :cond_55
    :goto_55
    throw v0

    .line 918
    :catch_56
    move-exception v0

    goto :goto_39

    :catch_58
    move-exception v1

    goto :goto_55

    .line 915
    :catchall_5a
    move-exception v0

    goto :goto_50

    .line 913
    :catch_5c
    move-exception v0

    move-object v0, v1

    goto :goto_34
.end method

.method private static a(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 959
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->getVid()Ljava/lang/String;

    move-result-object v3

    .line 960
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->getRCid()Ljava/lang/String;

    move-result-object v4

    .line 961
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 962
    new-instance v5, Ljava/io/File;

    const-string v2, "spider_entries.json"

    invoke-direct {v5, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 963
    invoke-static {v5}, Lcom/mqunar/module/ModuleInfoController;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 965
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_78

    .line 966
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 967
    const-string v2, "rcid"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 968
    const-string v6, "v"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 969
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_46

    .line 970
    :cond_42
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-object v0, v1

    .line 974
    :cond_46
    :goto_46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 975
    if-eqz v0, :cond_75

    .line 976
    const-string v2, "list"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/mqunar/module/ModuleInfoController;->a(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 977
    if-nez v2, :cond_72

    move-object v0, v2

    .line 982
    :goto_5a
    if-nez v1, :cond_71

    .line 984
    invoke-static {p0, v0}, Lcom/mqunar/module/ModuleInfoController;->a(Landroid/content/Context;Ljava/util/List;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 986
    const-string v2, "rcid"

    invoke-virtual {v1, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    const-string v2, "v"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/mqunar/module/ModuleInfoController;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 991
    :cond_71
    return-object v0

    :cond_72
    move-object v1, v0

    move-object v0, v2

    goto :goto_5a

    :cond_75
    move-object v1, v0

    move-object v0, v2

    goto :goto_5a

    :cond_78
    move-object v0, v1

    goto :goto_46
.end method

.method private static a(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1009
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_bd

    .line 1011
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 1012
    const-string v1, "n"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1013
    const/4 v1, 0x1

    .line 1014
    const-string v2, "r"

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1015
    const-string v1, "r"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1018
    :cond_29
    const-string v2, "libq_lib_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "libq_atom_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 1020
    :cond_39
    sget-object v2, Lcom/mqunar/module/ModuleInfoController;->c:Ljava/lang/String;

    .line 1021
    sget-object v6, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mt6592"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 1022
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".jar"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1030
    :goto_5c
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    if-eqz v1, :cond_9e

    .line 1033
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/mqunar/module/ModuleInfoController;->LIB_PATH:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    :goto_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1024
    :cond_74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".so"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5c

    .line 1027
    :cond_88
    sget-object v2, Lcom/mqunar/module/ModuleInfoController;->d:Ljava/lang/String;

    .line 1028
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".so"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5c

    .line 1036
    :cond_9e
    const-string v1, "s"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 1039
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b3

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v2

    int-to-long v7, v1

    cmp-long v1, v2, v7

    if-eqz v1, :cond_b5

    .line 1040
    :cond_b3
    const/4 v0, 0x0

    .line 1046
    :goto_b4
    return-object v0

    .line 1042
    :cond_b5
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    :cond_bd
    move-object v0, v4

    .line 1046
    goto :goto_b4
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/mqunar/module/ModuleInfoController;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/module/ModuleInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/module/ModuleInfo;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/mqunar/module/ModuleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 770
    new-instance v8, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 773
    invoke-static {p2}, Lcom/mqunar/module/ModuleInfoController;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    move v3, v4

    .line 776
    :goto_13
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_79

    .line 777
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/dependency/AtomNode;

    move v5, v4

    .line 778
    :goto_20
    iget-object v1, v0, Lcom/mqunar/core/dependency/AtomNode;->versionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_68

    .line 779
    iget-object v1, v0, Lcom/mqunar/core/dependency/AtomNode;->versionList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/module/ModuleInfo;

    .line 782
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_34
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/module/ModuleInfo;

    .line 783
    iget-object v11, v1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v11, v11, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    iget-object v12, v2, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v12, v12, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_34

    .line 788
    :goto_4e
    if-eqz v2, :cond_68

    .line 791
    iget-object v10, v1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v10, v10, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    iget-object v2, v2, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v2, v2, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    if-gt v10, v2, :cond_64

    .line 792
    iget-object v2, v0, Lcom/mqunar/core/dependency/AtomNode;->versionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 793
    invoke-static {p0, v1}, Lcom/mqunar/module/ModuleInfoController;->deleteSo(Landroid/content/Context;Lcom/mqunar/module/ModuleInfo;)V

    .line 794
    add-int/lit8 v5, v5, -0x1

    .line 778
    :cond_64
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_20

    .line 801
    :cond_68
    iget-object v1, v0, Lcom/mqunar/core/dependency/AtomNode;->versionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 802
    invoke-interface {v9, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 803
    add-int/lit8 v3, v3, -0x1

    .line 776
    :cond_75
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_13

    .line 807
    :cond_79
    new-instance v2, Lcom/mqunar/module/d;

    invoke-direct {v2, p0}, Lcom/mqunar/module/d;-><init>(Landroid/content/Context;)V

    .line 815
    :cond_7e
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v6

    :goto_83
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/dependency/AtomNode;

    .line 816
    invoke-virtual {v0}, Lcom/mqunar/core/dependency/AtomNode;->needCheck()Z

    move-result v5

    if-eqz v5, :cond_f3

    .line 818
    sget-object v1, Lcom/mqunar/module/ModuleInfoController;->g:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v9, v7}, Lcom/mqunar/core/dependency/AtomNode;->getCanLoadDependency([Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/mqunar/core/dependency/AtomNode$DeleteSoCallback;)Lcom/mqunar/module/ModuleInfo;

    move v0, v4

    :goto_9b
    move v1, v0

    .line 820
    goto :goto_83

    .line 821
    :cond_9d
    if-eqz v1, :cond_7e

    .line 826
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a3
    :goto_a3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/dependency/AtomNode;

    .line 827
    sget-object v3, Lcom/mqunar/module/ModuleInfoController;->g:[Ljava/lang/String;

    invoke-virtual {v0, v3, p1, v9, v2}, Lcom/mqunar/core/dependency/AtomNode;->getCanLoadDependency([Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/mqunar/core/dependency/AtomNode$DeleteSoCallback;)Lcom/mqunar/module/ModuleInfo;

    move-result-object v0

    .line 828
    if-eqz v0, :cond_a3

    .line 829
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 837
    :cond_bb
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_bf
    :goto_bf
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 839
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_cf
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/module/ModuleInfo;

    .line 840
    iget-object v1, v1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v1, v1, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v5, v5, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    move v1, v6

    .line 845
    :goto_ea
    if-nez v1, :cond_bf

    .line 847
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_bf

    .line 851
    :cond_f0
    return-object v8

    :cond_f1
    move v1, v4

    goto :goto_ea

    :cond_f3
    move v0, v1

    goto :goto_9b

    :cond_f5
    move-object v2, v7

    goto/16 :goto_4e
.end method

.method static synthetic a(Lcom/mqunar/module/ModuleInfo;)V
    .registers 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/mqunar/module/ModuleInfoController;->b(Lcom/mqunar/module/ModuleInfo;)V

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 927
    const/4 v1, 0x0

    .line 929
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 930
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_1c
    .catchall {:try_start_1 .. :try_end_d} :catchall_26

    .line 931
    :try_start_d
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_16} :catch_36
    .catchall {:try_start_d .. :try_end_16} :catchall_31

    .line 934
    if-eqz v0, :cond_1b

    .line 936
    :try_start_18
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_2d

    .line 941
    :cond_1b
    :goto_1b
    return-void

    .line 932
    :catch_1c
    move-exception v0

    move-object v0, v1

    .line 934
    :goto_1e
    if-eqz v0, :cond_1b

    .line 936
    :try_start_20
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_1b

    .line 937
    :catch_24
    move-exception v0

    goto :goto_1b

    .line 934
    :catchall_26
    move-exception v0

    :goto_27
    if-eqz v1, :cond_2c

    .line 936
    :try_start_29
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2f

    .line 938
    :cond_2c
    :goto_2c
    throw v0

    .line 937
    :catch_2d
    move-exception v0

    goto :goto_1b

    :catch_2f
    move-exception v1

    goto :goto_2c

    .line 934
    :catchall_31
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_27

    .line 932
    :catch_36
    move-exception v1

    goto :goto_1e
.end method

.method private static a(Ljava/util/List;Lcom/mqunar/module/ModuleInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/module/ModuleInfo;",
            ">;",
            "Lcom/mqunar/module/ModuleInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1449
    iget-object v0, p1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    .line 1451
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1453
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1455
    iget-object v1, v0, Lcom/mqunar/core/dependency/Dependency;->atomDependenciesList:Ljava/util/List;

    if-eqz v1, :cond_46

    iget-object v1, v0, Lcom/mqunar/core/dependency/Dependency;->atomDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    .line 1456
    iget-object v0, v0, Lcom/mqunar/core/dependency/Dependency;->atomDependenciesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/dependency/Atom;

    .line 1457
    sget-object v1, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    iget-object v4, v0, Lcom/mqunar/core/dependency/Atom;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/mqunar/module/Modules;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/module/ModuleInfo;

    .line 1458
    sget-object v4, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    iget-object v0, v0, Lcom/mqunar/core/dependency/Atom;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/mqunar/module/Modules;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    invoke-static {v0}, Lcom/mqunar/core/QunarApkLoader;->checkModuleIsLoaded(Lcom/mqunar/module/ModuleInfo;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1459
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 1464
    :cond_46
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4a
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 1465
    iget-object v3, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    if-eqz v3, :cond_4a

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 1467
    invoke-static {p0, v0}, Lcom/mqunar/module/ModuleInfoController;->a(Ljava/util/List;Lcom/mqunar/module/ModuleInfo;)V

    goto :goto_4a

    .line 1472
    :cond_64
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 1473
    invoke-static {v0}, Lcom/mqunar/core/QunarApkLoader;->add(Lcom/mqunar/module/ModuleInfo;)Z

    goto :goto_68

    .line 1476
    :cond_78
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1477
    return-void
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/module/ModuleInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/core/dependency/AtomNode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 696
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 697
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 698
    const/4 v3, 0x0

    .line 699
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/core/dependency/AtomNode;

    .line 702
    iget-object v2, v1, Lcom/mqunar/core/dependency/AtomNode;->versionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_31
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mqunar/module/ModuleInfo;

    .line 703
    iget-object v2, v2, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v2, v2, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v9, v9, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 704
    const/4 v2, 0x1

    .line 709
    :goto_4c
    if-eqz v2, :cond_1f

    .line 714
    :goto_4e
    if-nez v1, :cond_8f

    .line 715
    new-instance v1, Lcom/mqunar/core/dependency/AtomNode;

    invoke-direct {v1}, Lcom/mqunar/core/dependency/AtomNode;-><init>()V

    .line 716
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lcom/mqunar/core/dependency/AtomNode;->versionList:Ljava/util/List;

    .line 717
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 721
    :goto_61
    iget-object v1, v2, Lcom/mqunar/core/dependency/AtomNode;->versionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    move v3, v4

    .line 722
    :goto_68
    iget-object v1, v2, Lcom/mqunar/core/dependency/AtomNode;->versionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_8d

    .line 723
    iget-object v1, v2, Lcom/mqunar/core/dependency/AtomNode;->versionList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/module/ModuleInfo;

    .line 724
    iget-object v1, v1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v1, v1, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    iget-object v8, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v8, v8, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    if-gt v1, v8, :cond_88

    .line 730
    :goto_82
    iget-object v1, v2, Lcom/mqunar/core/dependency/AtomNode;->versionList:Ljava/util/List;

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_e

    .line 722
    :cond_88
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_68

    .line 734
    :cond_8c
    return-object v6

    :cond_8d
    move v3, v5

    goto :goto_82

    :cond_8f
    move-object v2, v1

    goto :goto_61

    :cond_91
    move v2, v4

    goto :goto_4c

    :cond_93
    move-object v1, v3

    goto :goto_4e
.end method

.method private static b(Landroid/content/Context;)V
    .registers 15

    .prologue
    const/4 v3, 0x0

    .line 1161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1163
    invoke-static {p0}, Lcom/mqunar/module/ModuleInfoController;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 1165
    const-string v4, "ModuleInfoController-WASTE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkinstall cost "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1168
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mqunar/module/ModuleInfoController;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1170
    if-eqz v1, :cond_59

    array-length v0, v1

    if-lez v0, :cond_59

    .line 1171
    array-length v6, v1

    move v0, v3

    :goto_45
    if-ge v0, v6, :cond_59

    aget-object v7, v1, v0

    .line 1172
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_56

    .line 1173
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1171
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 1178
    :cond_59
    const-string v0, "ModuleInfoController-WASTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "qlibFile delete cost "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1182
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_8a
    if-ltz v1, :cond_b2

    .line 1183
    new-instance v6, Ljava/io/File;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1187
    const-string v6, "libq_lib_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_ae

    const-string v6, "libq_atom_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ae

    .line 1188
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1182
    :cond_ae
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_8a

    .line 1192
    :cond_b2
    const-string v0, "ModuleInfoController-WASTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lidSoList remove cost "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1195
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1200
    invoke-static {v0}, Lcom/mqunar/core/ModuleParser;->parseModuleDependency(Ljava/lang/String;)Lcom/mqunar/module/ModuleInfo;

    move-result-object v2

    .line 1201
    const-string v9, "ModuleInfoController-WASTE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " parseModuleDependency "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v7, v11, v7

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v9, v7, v8}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1202
    if-eqz v2, :cond_125

    .line 1203
    iput-boolean v3, v2, Lcom/mqunar/module/ModuleInfo;->isDataFile:Z

    .line 1204
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e5

    .line 1206
    :cond_125
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u6790lib\u5931\u8d25,filename is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1210
    :cond_13e
    const-string v0, "ModuleInfoController-WASTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v4, v7, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1214
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1215
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    :try_start_16c
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mqunar/module/ModuleInfoController;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 1219
    if-eqz v9, :cond_1d8

    move v4, v3

    .line 1220
    :goto_17a
    array-length v0, v9

    if-ge v4, v0, :cond_1d8

    .line 1221
    aget-object v0, v9, v4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1c7

    .line 1222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_188
    .catch Ljava/lang/Throwable; {:try_start_16c .. :try_end_188} :catch_2cb

    move-result-wide v10

    .line 1223
    const/4 v1, 0x0

    .line 1225
    :try_start_18a
    aget-object v0, v9, v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/ModuleParser;->parseModuleDependency(Ljava/lang/String;)Lcom/mqunar/module/ModuleInfo;
    :try_end_193
    .catch Ljava/lang/Throwable; {:try_start_18a .. :try_end_193} :catch_1cb

    move-result-object v0

    .line 1230
    :goto_194
    if-eqz v0, :cond_19c

    .line 1231
    const/4 v1, 0x1

    :try_start_197
    iput-boolean v1, v0, Lcom/mqunar/module/ModuleInfo;->isDataFile:Z

    .line 1232
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1234
    :cond_19c
    const-string v0, "ModuleInfoController-WASTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v9, v4

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, " parseModuleDependency "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v10, v12, v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v10}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1220
    :cond_1c7
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_17a

    .line 1226
    :catch_1cb
    move-exception v0

    .line 1227
    const-string v12, ""

    invoke-static {v0, v12}, Lcom/mqunar/tools/log/QLog;->crash(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1228
    aget-object v0, v9, v4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-object v0, v1

    goto :goto_194

    .line 1238
    :cond_1d8
    const-string v0, "scanData-WASTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v7, v9, v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1242
    invoke-static {}, Lcom/mqunar/module/ModuleInfoController;->c()Ljava/util/List;

    move-result-object v4

    move v1, v3

    .line 1243
    :goto_202
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_223

    .line 1244
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 1245
    iget-object v9, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v9, v9, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_442

    .line 1246
    invoke-static {p0, v0}, Lcom/mqunar/module/ModuleInfoController;->deleteSo(Landroid/content/Context;Lcom/mqunar/module/ModuleInfo;)V

    .line 1247
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1248
    add-int/lit8 v0, v1, -0x1

    .line 1243
    :goto_220
    add-int/lit8 v1, v0, 0x1

    goto :goto_202

    .line 1251
    :cond_223
    const-string v0, "ModuleInfoController-WASTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5904\u7406\u4e0b\u7ebf cost "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v7, v9, v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1253
    invoke-static {p0, v6, v5}, Lcom/mqunar/module/ModuleInfoController;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    :try_end_251
    .catch Ljava/lang/Throwable; {:try_start_197 .. :try_end_251} :catch_2cb

    move-result-object v0

    .line 1254
    :try_start_252
    const-string v1, "ModuleInfoController-WASTE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mergeDependency cost "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v7, v9, v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_279
    .catch Ljava/lang/Throwable; {:try_start_252 .. :try_end_279} :catch_43f

    move-object v1, v0

    .line 1259
    :goto_27a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1260
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d5

    .line 1262
    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1272
    :cond_287
    const-string v0, "ModuleInfoController-WASTE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "libApkDependencyList dependency cost "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v6, v9, v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1276
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b5
    :goto_2b5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2ef

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 1277
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b5

    .line 1278
    invoke-virtual {v0}, Lcom/mqunar/module/ModuleInfo;->freeZipFile()V

    goto :goto_2b5

    .line 1255
    :catch_2cb
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 1256
    :goto_2ce
    const-string v2, "\u89e3\u6790data\u76ee\u5f55\u5931\u8d25!"

    invoke-static {v1, v2}, Lcom/mqunar/tools/log/QLog;->crash(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_27a

    .line 1265
    :cond_2d5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d9
    :goto_2d9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 1266
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d9

    .line 1267
    invoke-virtual {v0}, Lcom/mqunar/module/ModuleInfo;->freeZipFile()V

    goto :goto_2d9

    .line 1282
    :cond_2ef
    const-string v0, "ModuleInfoController-WASTE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataApkDependencyList dependency cost "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1285
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1287
    invoke-static {p0}, Lcom/mqunar/core/QunarApkLoader;->getDexCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1288
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1289
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_32e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 1290
    invoke-static {v0}, Lcom/mqunar/module/ModuleInfoController;->b(Lcom/mqunar/module/ModuleInfo;)V

    .line 1292
    iget-object v1, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v1, v1, Lcom/mqunar/core/dependency/Dependency;->atomDependenciesList:Ljava/util/List;

    invoke-static {v1}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_36f

    .line 1293
    iget-object v1, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v1, v1, Lcom/mqunar/core/dependency/Dependency;->atomDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_34f
    :goto_34f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/core/dependency/Atom;

    .line 1294
    iget-object v1, v1, Lcom/mqunar/core/dependency/Atom;->packageName:Ljava/lang/String;

    const-string v9, "com.mqunar.atom.order"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34f

    .line 1295
    const-string v1, "Atom"

    iget-object v9, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v1, v9, v10}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_34f

    .line 1300
    :cond_36f
    sget-object v1, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    invoke-virtual {v1, v0}, Lcom/mqunar/module/Modules;->put(Lcom/mqunar/module/ModuleInfo;)V

    .line 1301
    new-instance v1, Ljava/io/File;

    iget-object v8, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v6}, Lcom/mqunar/core/DexPathList;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 1302
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1304
    iget-object v1, v0, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    if-eqz v1, :cond_32e

    .line 1306
    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo$DexInfo;

    .line 1307
    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->dexOutPath:Ljava/io/File;

    invoke-static {v0, v6}, Lcom/mqunar/core/DexPathList;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 1308
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38c

    .line 1312
    :cond_3a2
    const-string v0, "ModuleInfoController-WASTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadedDexPath cost "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v4, v7, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1315
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1316
    if-eqz v1, :cond_3eb

    array-length v0, v1

    if-lez v0, :cond_3eb

    .line 1317
    array-length v6, v1

    move v0, v3

    :goto_3d7
    if-ge v0, v6, :cond_3eb

    aget-object v7, v1, v0

    .line 1318
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e8

    .line 1319
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1317
    :cond_3e8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d7

    .line 1323
    :cond_3eb
    const-string v0, "ModuleInfoController-WASTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dexDir cost delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1326
    invoke-static {}, Lcom/mqunar/core/QunarApkLoader;->onRegisterOk()V

    .line 1327
    const-string v2, "ModuleInfoController-WASTE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRegisterOk cost delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1329
    return-void

    .line 1255
    :catch_43f
    move-exception v1

    goto/16 :goto_2ce

    :cond_442
    move v0, v1

    goto/16 :goto_220
.end method

.method private static b(Lcom/mqunar/module/ModuleInfo;)V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 259
    invoke-virtual {p0}, Lcom/mqunar/module/ModuleInfo;->initDexList()V

    .line 261
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v0, v0, Lcom/mqunar/core/dependency/Dependency;->components:Ljava/util/List;

    invoke-static {v0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_133

    .line 262
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 263
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v0, v0, Lcom/mqunar/core/dependency/Dependency;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_127

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/dependency/Dependency$Component;

    .line 264
    new-instance v5, Lcom/mqunar/core/Component;

    invoke-direct {v5}, Lcom/mqunar/core/Component;-><init>()V

    .line 265
    iget-object v1, v0, Lcom/mqunar/core/dependency/Dependency$Component;->name:Ljava/lang/String;

    iput-object v1, v5, Lcom/mqunar/core/Component;->name:Ljava/lang/String;

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v5, Lcom/mqunar/core/Component;->intentFilters:Ljava/util/List;

    .line 267
    iget-object v1, v0, Lcom/mqunar/core/dependency/Dependency$Component;->intentFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_122

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter;

    .line 268
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    iget-object v2, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter;->action:Ljava/util/List;

    invoke-static {v2}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 271
    iget-object v2, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter;->action:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 272
    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_5c

    .line 275
    :cond_6c
    iget-object v2, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter;->category:Ljava/util/List;

    invoke-static {v2}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 276
    iget-object v2, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter;->category:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 277
    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_7a

    .line 281
    :cond_8a
    iget-object v2, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter;->data:Ljava/util/List;

    invoke-static {v2}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_f7

    .line 282
    iget-object v1, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_98
    :goto_98
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter$Data;

    .line 283
    iget-object v8, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter$Data;->schema:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_98

    .line 284
    iget-object v8, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter$Data;->schema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 286
    iget-object v8, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter$Data;->mimeType:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_be

    .line 287
    iget-object v8, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter$Data;->mimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 290
    :cond_be
    iget-object v8, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter$Data;->host:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_cd

    .line 291
    iget-object v8, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter$Data;->host:Ljava/lang/String;

    iget-object v9, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter$Data;->port:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_cd
    iget-object v8, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter$Data;->path:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_da

    .line 295
    iget-object v8, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter$Data;->path:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 298
    :cond_da
    iget-object v8, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter$Data;->pathPrefix:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e8

    .line 299
    iget-object v8, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter$Data;->pathPrefix:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 302
    :cond_e8
    iget-object v8, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter$Data;->pathPattern:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_98

    .line 303
    iget-object v1, v1, Lcom/mqunar/core/dependency/Dependency$Component$IntentFilter$Data;->pathPattern:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-virtual {v7, v1, v8}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_98

    .line 309
    :cond_f7
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 310
    invoke-virtual {v7}, Landroid/content/IntentFilter;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 311
    if-eqz v1, :cond_11b

    .line 312
    :cond_105
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 313
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 314
    iget-object v1, v0, Lcom/mqunar/core/dependency/Dependency$Component;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/mqunar/module/ModuleInfo;->launcherClassName:Ljava/lang/String;

    .line 321
    :cond_11b
    iget-object v1, v5, Lcom/mqunar/core/Component;->intentFilters:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d

    .line 324
    :cond_122
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 327
    :cond_127
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v0, v0, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v1, v1, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    invoke-static {v0, v1, v3}, Lcom/mqunar/dispatcher/SchemeManager;->addScheme(Ljava/lang/String;ILjava/util/List;)V

    .line 332
    :goto_132
    return-void

    .line 329
    :cond_133
    const-string v0, "COMPONENTS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "components size = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_132
.end method

.method static synthetic b()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->g:[Ljava/lang/String;

    return-object v0
.end method

.method private static c()Ljava/util/List;
    .registers 3
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
    .line 1137
    invoke-static {}, Lcom/mqunar/module/ModuleInfoController;->getMInfoList()Ljava/util/List;

    .line 1138
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1139
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1140
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->getVid()Ljava/lang/String;

    move-result-object v0

    .line 1141
    sget-object v1, Lcom/mqunar/module/ModuleInfoController;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1142
    if-ltz v0, :cond_48

    .line 1144
    new-instance v1, Ljava/util/ArrayList;

    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1145
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/MInfo;

    .line 1146
    iget-object v0, v0, Lcom/mqunar/module/MInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_46
    move-object v0, v1

    .line 1153
    :goto_47
    return-object v0

    .line 1152
    :cond_48
    invoke-static {}, Lcom/mqunar/dispatcher/SchemeManager;->getMappingInAsset()Ljava/util/Map;

    move-result-object v1

    .line 1153
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_47
.end method

.method public static checkAndInstallModuleDependency(Lcom/mqunar/module/ModuleInfo;)V
    .registers 2

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    if-eqz v0, :cond_c

    .line 1443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, p0}, Lcom/mqunar/module/ModuleInfoController;->a(Ljava/util/List;Lcom/mqunar/module/ModuleInfo;)V

    .line 1445
    :cond_c
    invoke-static {p0}, Lcom/mqunar/core/QunarApkLoader;->add(Lcom/mqunar/module/ModuleInfo;)Z

    .line 1446
    return-void
.end method

.method public static clearLocalModules(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1423
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->e:Ljava/lang/String;

    if-nez v0, :cond_1d

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mqunar/storage/Storage;->getAppFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/module/ModuleInfoController;->e:Ljava/lang/String;

    .line 1426
    :cond_1d
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mqunar/module/ModuleInfoController;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1427
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1439
    :cond_2a
    return-void

    .line 1431
    :cond_2b
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1432
    if-eqz v1, :cond_2a

    .line 1433
    const/4 v0, 0x0

    :goto_32
    array-length v2, v1

    if-ge v0, v2, :cond_2a

    .line 1434
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1435
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1433
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_32
.end method

.method public static copyFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V
    .registers 14

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 855
    .line 856
    const/4 v0, 0x1

    .line 860
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_54
    .catchall {:try_start_3 .. :try_end_6} :catchall_67

    move-result-object v1

    .line 861
    :try_start_7
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 862
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_13} :catch_83
    .catchall {:try_start_7 .. :try_end_13} :catchall_7e

    .line 863
    :try_start_13
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    .line 864
    const/16 v5, 0x1000

    new-array v8, v5, [B

    move v5, v4

    .line 867
    :goto_1c
    invoke-virtual {v1, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_29

    .line 868
    const/4 v10, 0x0

    invoke-virtual {v3, v8, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 869
    add-int/2addr v5, v9

    goto :goto_1c

    .line 871
    :cond_29
    int-to-long v8, v5

    cmp-long v5, v8, v6

    if-eqz v5, :cond_36

    .line 873
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v0, "\u6587\u4ef6\u672a\u8bfb\u5b8c!"

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move v0, v4

    .line 875
    :cond_36
    if-eqz v0, :cond_3b

    .line 876
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_3b} :catch_85
    .catchall {:try_start_13 .. :try_end_3b} :catchall_81

    .line 882
    :cond_3b
    if-eqz v3, :cond_40

    .line 884
    :try_start_3d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_75

    .line 888
    :cond_40
    :goto_40
    if-eqz v1, :cond_8b

    .line 890
    :try_start_42
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_51

    move-object v1, v2

    .line 895
    :goto_46
    if-nez v0, :cond_7d

    .line 896
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 897
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 891
    :catch_51
    move-exception v1

    move-object v1, v2

    .line 892
    goto :goto_46

    .line 878
    :catch_54
    move-exception v0

    move-object v1, v2

    .line 882
    :goto_56
    if-eqz v2, :cond_5b

    .line 884
    :try_start_58
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_77

    .line 888
    :cond_5b
    :goto_5b
    if-eqz v1, :cond_88

    .line 890
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_63

    move-object v1, v0

    move v0, v4

    .line 892
    goto :goto_46

    .line 891
    :catch_63
    move-exception v1

    move-object v1, v0

    move v0, v4

    .line 892
    goto :goto_46

    .line 882
    :catchall_67
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_6a
    if-eqz v3, :cond_6f

    .line 884
    :try_start_6c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_79

    .line 888
    :cond_6f
    :goto_6f
    if-eqz v1, :cond_74

    .line 890
    :try_start_71
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_7b

    .line 892
    :cond_74
    :goto_74
    throw v0

    .line 885
    :catch_75
    move-exception v3

    goto :goto_40

    :catch_77
    move-exception v2

    goto :goto_5b

    :catch_79
    move-exception v2

    goto :goto_6f

    .line 891
    :catch_7b
    move-exception v1

    goto :goto_74

    .line 899
    :cond_7d
    return-void

    .line 882
    :catchall_7e
    move-exception v0

    move-object v3, v2

    goto :goto_6a

    :catchall_81
    move-exception v0

    goto :goto_6a

    .line 878
    :catch_83
    move-exception v0

    goto :goto_56

    :catch_85
    move-exception v0

    move-object v2, v3

    goto :goto_56

    :cond_88
    move-object v1, v0

    move v0, v4

    goto :goto_46

    :cond_8b
    move-object v1, v2

    goto :goto_46
.end method

.method public static deleteSo(Landroid/content/Context;Lcom/mqunar/module/ModuleInfo;)V
    .registers 8

    .prologue
    .line 738
    invoke-virtual {p1}, Lcom/mqunar/module/ModuleInfo;->freeZipFile()V

    .line 739
    new-instance v1, Ljava/io/File;

    iget-object v0, p1, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 740
    invoke-static {p0}, Lcom/mqunar/core/QunarApkLoader;->getDexCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_75

    .line 742
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 743
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    invoke-static {v1, v3}, Lcom/mqunar/core/DexPathList;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 746
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 747
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_30
    iget-object v0, p1, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    if-eqz v0, :cond_5b

    .line 751
    iget-object v0, p1, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3a
    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo$DexInfo;

    .line 752
    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->dexOutPath:Ljava/io/File;

    invoke-static {v0, v3}, Lcom/mqunar/core/DexPathList;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 754
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 759
    :cond_5b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5f
    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 760
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 761
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_5f

    .line 766
    :cond_75
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 767
    return-void
.end method

.method public static getDownloadJson(Lcom/mqunar/module/ModuleInfo;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 204
    invoke-static {}, Lcom/mqunar/module/ModuleInfoController;->getMInfoList()Ljava/util/List;

    move-result-object v0

    .line 205
    invoke-static {v0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_96

    .line 206
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mqunar/module/ModuleInfoController;->isWifi(Landroid/content/Context;)Z

    move-result v3

    .line 207
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 210
    :cond_1d
    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 211
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/MInfo;

    .line 212
    iget-byte v1, v0, Lcom/mqunar/module/MInfo;->downloadFlag:B

    if-eq v1, v8, :cond_1d

    .line 215
    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v1, v1, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/mqunar/module/MInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 216
    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v1, v1, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    iget v6, v0, Lcom/mqunar/module/MInfo;->version:I

    if-ge v1, v6, :cond_1d

    .line 218
    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/mqunar/module/MInfo;->fileName:Ljava/lang/String;

    .line 219
    iput-byte v8, v0, Lcom/mqunar/module/MInfo;->downloadFlag:B

    .line 220
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 223
    :cond_4b
    sget-object v1, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    iget-object v6, v0, Lcom/mqunar/module/MInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/mqunar/module/Modules;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/module/ModuleInfo;

    .line 224
    if-eqz v1, :cond_81

    .line 225
    iget-object v6, v1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v6, v6, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    iget v7, v0, Lcom/mqunar/module/MInfo;->version:I

    if-ge v6, v7, :cond_1d

    .line 227
    iget-object v1, v1, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/mqunar/module/MInfo;->fileName:Ljava/lang/String;

    .line 228
    iget-object v1, v0, Lcom/mqunar/module/MInfo;->patchUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_79

    iget-object v1, v0, Lcom/mqunar/module/MInfo;->md5:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 230
    iput-byte v8, v0, Lcom/mqunar/module/MInfo;->downloadFlag:B

    .line 231
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 232
    :cond_79
    if-eqz v3, :cond_1d

    .line 234
    iput-byte v8, v0, Lcom/mqunar/module/MInfo;->downloadFlag:B

    .line 235
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 238
    :cond_81
    if-eqz v3, :cond_1d

    .line 239
    iput-byte v8, v0, Lcom/mqunar/module/MInfo;->downloadFlag:B

    .line 240
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 244
    :cond_89
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_91

    move-object v0, v2

    .line 249
    :goto_90
    return-object v0

    .line 247
    :cond_91
    invoke-static {v4}, Lcom/mqunar/json/JsonUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_90

    :cond_96
    move-object v0, v2

    .line 249
    goto :goto_90
.end method

.method public static getMInfo(Lcom/mqunar/module/ModuleInfo;)Lcom/mqunar/module/MInfo;
    .registers 2

    .prologue
    .line 114
    if-eqz p0, :cond_b

    .line 115
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v0, v0, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mqunar/module/ModuleInfoController;->getMInfo(Ljava/lang/String;)Lcom/mqunar/module/MInfo;

    move-result-object v0

    .line 118
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getMInfo(Ljava/lang/String;)Lcom/mqunar/module/MInfo;
    .registers 4

    .prologue
    .line 122
    invoke-static {}, Lcom/mqunar/module/ModuleInfoController;->getMInfoList()Ljava/util/List;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_21

    if-eqz p0, :cond_21

    .line 124
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 125
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/MInfo;

    .line 127
    iget-object v2, v0, Lcom/mqunar/module/MInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 133
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public static getMInfoList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/module/MInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    sget-boolean v0, Lcom/mqunar/module/ModuleInfoController;->h:Z

    if-nez v0, :cond_43

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mqunar/module/ModuleInfoController;->h:Z

    .line 79
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 80
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "spider_minfo"

    invoke-static {v0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_43

    .line 82
    const-string v0, "minfo_json"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 84
    sget-object v2, Lcom/mqunar/module/ModuleInfoController;->a:Ljava/util/List;

    invoke-static {v2}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 86
    :try_start_31
    const-class v2, Lcom/mqunar/module/MInfo;

    invoke-static {v0, v2}, Lcom/mqunar/json/JsonUtils;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mqunar/module/ModuleInfoController;->a:Ljava/util/List;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_39} :catch_46

    .line 92
    :cond_39
    :goto_39
    const-string v0, "minfo_vid"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/module/ModuleInfoController;->b:Ljava/lang/String;

    .line 96
    :cond_43
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->a:Ljava/util/List;

    return-object v0

    .line 87
    :catch_46
    move-exception v0

    .line 88
    const-string v2, "parse minfo json error!"

    invoke-static {v0, v2}, Lcom/mqunar/tools/log/QLog;->crash(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_39
.end method

.method public static getSystemLibPath()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1157
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 102
    const/4 v3, 0x0

    .line 104
    :try_start_b
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_19

    move-result-object v0

    .line 107
    :goto_f
    if-eqz v0, :cond_1e

    .line 108
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1c

    move v0, v1

    .line 110
    :goto_18
    return v0

    .line 105
    :catch_19
    move-exception v0

    move-object v0, v3

    goto :goto_f

    :cond_1c
    move v0, v2

    .line 108
    goto :goto_18

    :cond_1e
    move v0, v2

    .line 110
    goto :goto_18
.end method

.method public static loadApk(Landroid/content/Context;)V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 1334
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    invoke-virtual {v0}, Lcom/mqunar/module/Modules;->mapCopy()Ljava/util/Map;

    move-result-object v0

    .line 1335
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1336
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 1337
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1338
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 1339
    iget-byte v3, v0, Lcom/mqunar/module/ModuleInfo;->type:B

    if-ne v3, v12, :cond_10

    .line 1343
    :try_start_26
    const-string v3, "com.mqunar.ochatsdk"

    iget-object v4, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v4, v4, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "com.mqunar.imsdk"

    iget-object v4, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v4, v4, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1347
    invoke-static {v0}, Lcom/mqunar/core/QunarApkLoader;->add(Lcom/mqunar/module/ModuleInfo;)Z

    move-result v5

    .line 1348
    const-string v6, "ModuleInfoController-WASTE"

    const-string v7, "PreLoad Library LOAD so filename(%s) name(%s) time(%d)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v10, v10, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v3, v10, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-static {v6, v7, v8}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_69} :catch_ab

    .line 1354
    if-nez v5, :cond_10

    .line 1355
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signature failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",md5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mqunar/core/ModuleParser;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1349
    :catch_ab
    move-exception v1

    .line 1350
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fatal error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1352
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",md5:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mqunar/core/ModuleParser;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1362
    :cond_ec
    const-string v0, "PRELOAD_MODULE"

    invoke-static {p0, v0}, Lcom/mqunar/core/ModuleParser;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1364
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_126

    .line 1365
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/mqunar/module/ModuleInfoController;->preLoad:[Ljava/lang/String;

    .line 1371
    :goto_fc
    sget-object v2, Lcom/mqunar/module/ModuleInfoController;->preLoad:[Ljava/lang/String;

    array-length v3, v2

    :goto_ff
    if-ge v1, v3, :cond_1e2

    aget-object v4, v2, v1

    .line 1372
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    invoke-virtual {v0, v4}, Lcom/mqunar/module/Modules;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 1373
    if-nez v0, :cond_12f

    .line 1374
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fatal error,can not found:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1367
    :cond_126
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/module/ModuleInfoController;->preLoad:[Ljava/lang/String;

    goto :goto_fc

    .line 1379
    :cond_12f
    :try_start_12f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1380
    invoke-static {v0}, Lcom/mqunar/core/QunarApkLoader;->add(Lcom/mqunar/module/ModuleInfo;)Z

    move-result v6

    .line 1381
    const-string v7, "ModuleInfoController-WASTE"

    const-string v8, "PreLoad LOAD so filename(%s) name(%s) time(%d)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v11, v11, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v4, v11, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v10

    invoke-static {v7, v8, v9}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_15a
    .catch Ljava/lang/Throwable; {:try_start_12f .. :try_end_15a} :catch_19c

    .line 1387
    if-nez v6, :cond_1dd

    .line 1388
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signature failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",md5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mqunar/core/ModuleParser;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1382
    :catch_19c
    move-exception v1

    .line 1383
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fatal error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1385
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",md5:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mqunar/core/ModuleParser;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1371
    :cond_1dd
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_ff

    .line 1394
    :cond_1e2
    return-void
.end method

.method public static matchModule(Ljava/lang/String;)Lcom/mqunar/module/ModuleInfo;
    .registers 8

    .prologue
    .line 1403
    const/4 v3, 0x0

    .line 1405
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    invoke-virtual {v0}, Lcom/mqunar/module/Modules;->mapCopy()Ljava/util/Map;

    move-result-object v4

    .line 1407
    const/4 v2, -0x1

    .line 1408
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1409
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1410
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1411
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1412
    if-le v1, v2, :cond_35

    .line 1414
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    move v6, v1

    move-object v1, v0

    move v0, v6

    :goto_31
    move v2, v0

    move-object v3, v1

    .line 1417
    goto :goto_10

    .line 1418
    :cond_34
    return-object v3

    :cond_35
    move v0, v2

    move-object v1, v3

    goto :goto_31
.end method

.method public static registModules(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 335
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    invoke-virtual {v0}, Lcom/mqunar/module/Modules;->size()I

    move-result v0

    if-eqz v0, :cond_a

    .line 691
    :cond_9
    return-void

    .line 338
    :cond_a
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->LIB_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    sput-object v0, Lcom/mqunar/module/ModuleInfoController;->LIB_PATH:Ljava/lang/String;

    .line 340
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mqunar/module/ModuleInfoController;->LIB_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_42

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/module/ModuleInfoController;->LIB_PATH:Ljava/lang/String;

    .line 345
    :cond_42
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->d:Ljava/lang/String;

    if-nez v0, :cond_60

    .line 346
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "/sys_qlib/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 348
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 350
    :cond_5a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/module/ModuleInfoController;->d:Ljava/lang/String;

    .line 352
    :cond_60
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->c:Ljava/lang/String;

    if-nez v0, :cond_8d

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mqunar/storage/Storage;->getAppFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/qlib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/module/ModuleInfoController;->c:Ljava/lang/String;

    .line 360
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mqunar/module/ModuleInfoController;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 362
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 370
    :cond_8d
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mqunar/storage/Storage;->getAppFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/module/ModuleInfoController;->e:Ljava/lang/String;

    .line 373
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mqunar/module/ModuleInfoController;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f8

    .line 375
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_f8

    .line 376
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fatal error! can not create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mqunar/module/ModuleInfoController;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",versionName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 377
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    .line 376
    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->crash(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 383
    :cond_f8
    new-instance v0, Lcom/mqunar/module/a;

    invoke-direct {v0}, Lcom/mqunar/module/a;-><init>()V

    sput-object v0, Lcom/mqunar/module/ModuleInfoController;->f:Landroid/content/BroadcastReceiver;

    .line 679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 680
    invoke-static {p0}, Lcom/mqunar/module/ModuleInfoController;->b(Landroid/content/Context;)V

    .line 681
    const-string v2, "ModuleInfoController-WASTE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registLocalModules "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 684
    const-string v1, "com.mqunar.spider.module.download"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 685
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    sget-object v2, Lcom/mqunar/module/ModuleInfoController;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 687
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    invoke-virtual {v0}, Lcom/mqunar/module/Modules;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 688
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Fatal error, no module found!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static updateModuleInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v10, -0x1

    .line 143
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "spider_minfo"

    invoke-static {v0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    .line 144
    const-string v1, "minfo_json"

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    const-string v1, "minfo_vid"

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mqunar/atomenv/GlobalEnv;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 148
    const-class v0, Lcom/mqunar/module/MInfo;

    invoke-static {p0, v0}, Lcom/mqunar/json/JsonUtils;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mqunar/module/ModuleInfoController;->a:Ljava/util/List;

    .line 149
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->getVid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/module/ModuleInfoController;->b:Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/module/ModuleInfoController;->isWifi(Landroid/content/Context;)Z

    move-result v3

    .line 151
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 152
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->a:Ljava/util/List;

    if-eqz v0, :cond_c0

    .line 153
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 154
    :cond_4c
    :goto_4c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 155
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/MInfo;

    .line 156
    sget-object v1, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    iget-object v2, v0, Lcom/mqunar/module/MInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mqunar/module/Modules;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/module/ModuleInfo;

    .line 157
    if-eqz v1, :cond_b8

    .line 159
    iget-object v2, v1, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    iput-object v2, v0, Lcom/mqunar/module/MInfo;->fileName:Ljava/lang/String;

    .line 161
    iget-object v2, v1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v2, v2, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    iget v6, v0, Lcom/mqunar/module/MInfo;->version:I

    if-ge v2, v6, :cond_4c

    .line 163
    if-eqz v3, :cond_78

    .line 164
    iput-byte v10, v0, Lcom/mqunar/module/MInfo;->downloadFlag:B

    .line 165
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 168
    :cond_78
    iget-byte v2, v0, Lcom/mqunar/module/MInfo;->restart:B

    const/4 v6, 0x1

    if-ne v2, v6, :cond_83

    .line 169
    iput-byte v10, v0, Lcom/mqunar/module/MInfo;->downloadFlag:B

    .line 170
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 171
    :cond_83
    iget-object v2, v0, Lcom/mqunar/module/MInfo;->patchUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_99

    iget-object v2, v0, Lcom/mqunar/module/MInfo;->md5:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_99

    .line 173
    iput-byte v10, v0, Lcom/mqunar/module/MInfo;->downloadFlag:B

    .line 174
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 175
    :cond_99
    sget-object v2, Lcom/mqunar/module/ModuleInfoController;->preLoad:[Ljava/lang/String;

    if-eqz v2, :cond_4c

    .line 177
    sget-object v6, Lcom/mqunar/module/ModuleInfoController;->preLoad:[Ljava/lang/String;

    array-length v7, v6

    const/4 v2, 0x0

    :goto_a1
    if-ge v2, v7, :cond_4c

    aget-object v8, v6, v2

    .line 178
    iget-object v9, v1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v9, v9, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 179
    iput-byte v10, v0, Lcom/mqunar/module/MInfo;->downloadFlag:B

    .line 180
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 177
    :cond_b5
    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    .line 189
    :cond_b8
    if-eqz v3, :cond_4c

    .line 190
    iput-byte v10, v0, Lcom/mqunar/module/MInfo;->downloadFlag:B

    .line 191
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 196
    :cond_c0
    invoke-static {v4}, Lcom/mqunar/json/JsonUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_c4
    return-object v0

    :cond_c5
    const/4 v0, 0x0

    goto :goto_c4
.end method
