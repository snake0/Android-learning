.class public final Lorg/acra/collector/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lorg/acra/config/ACRAConfiguration;

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Ljava/util/Map;
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

.field private final e:Ljava/util/Calendar;

.field private final f:Ljava/lang/String;

.field private final g:Lorg/acra/builder/LastActivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Landroid/content/SharedPreferences;Ljava/util/Calendar;Ljava/lang/String;Lorg/acra/builder/LastActivityManager;)V
    .registers 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lorg/acra/builder/LastActivityManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/acra/collector/c;->d:Ljava/util/Map;

    .line 127
    iput-object p1, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lorg/acra/collector/c;->b:Lorg/acra/config/ACRAConfiguration;

    .line 129
    iput-object p3, p0, Lorg/acra/collector/c;->c:Landroid/content/SharedPreferences;

    .line 130
    iput-object p4, p0, Lorg/acra/collector/c;->e:Ljava/util/Calendar;

    .line 131
    iput-object p5, p0, Lorg/acra/collector/c;->f:Ljava/lang/String;

    .line 132
    iput-object p6, p0, Lorg/acra/collector/c;->g:Lorg/acra/builder/LastActivityManager;

    .line 133
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 760
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 761
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 763
    if-eqz p0, :cond_15

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 764
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    move-object v0, p1

    .line 770
    :goto_16
    if-eqz v0, :cond_20

    .line 771
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 772
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_16

    .line 776
    :cond_20
    if-eqz p1, :cond_65

    instance-of v0, p1, Lorg/acra/anr/ANRException;

    if-eqz v0, :cond_65

    move-object v0, p1

    .line 777
    check-cast v0, Lorg/acra/anr/ANRException;

    iget-object v0, v0, Lorg/acra/anr/ANRException;->mainThreadInfo:Ljava/lang/String;

    if-eqz v0, :cond_4b

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p1

    check-cast v0, Lorg/acra/anr/ANRException;

    iget-object v0, v0, Lorg/acra/anr/ANRException;->mainThreadInfo:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lorg/acra/anr/ANRException;

    iget-object v1, p1, Lorg/acra/anr/ANRException;->ANRInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 787
    :goto_47
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 789
    return-object v0

    .line 780
    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lorg/acra/anr/ANRException;

    iget-object v1, p1, Lorg/acra/anr/ANRException;->ANRInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    .line 782
    :cond_65
    if-eqz p1, :cond_9b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Violation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    .line 785
    :cond_9b
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_47
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 8
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 796
    :goto_5
    if-eqz p1, :cond_27

    .line 797
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 798
    array-length v3, v2

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_22

    aget-object v4, v2, v0

    .line 799
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 802
    :cond_22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_5

    .line 805
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 733
    iget-object v1, p0, Lorg/acra/collector/c;->d:Ljava/util/Map;

    .line 735
    if-eqz p1, :cond_57

    .line 736
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 737
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 740
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 741
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 742
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    const-string v1, " = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 748
    if-eqz v0, :cond_4c

    .line 749
    const-string v1, "\n"

    const-string v4, "\\\\n"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    :goto_46
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 751
    :cond_4c
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 755
    :cond_52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_57
    move-object v0, v1

    goto :goto_c
.end method

.method private b()Ljava/lang/Class;
    .registers 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 810
    iget-object v0, p0, Lorg/acra/collector/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->buildConfigClass()Ljava/lang/Class;

    move-result-object v0

    .line 811
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 819
    :goto_e
    return-object v0

    .line 817
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".BuildConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    :try_start_28
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_2b} :catch_2d

    move-result-object v0

    goto :goto_e

    .line 820
    :catch_2d
    move-exception v1

    .line 821
    sget-object v2, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v3, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not adding buildConfig to log. Class Not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ". Please configure \'buildConfigClass\' in your ACRA config"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    iget-object v0, p0, Lorg/acra/collector/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 150
    iget-object v0, p0, Lorg/acra/collector/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Lorg/acra/builder/ReportBuilder;)Lorg/acra/collector/CrashReportData;
    .registers 12
    .param p1    # Lorg/acra/builder/ReportBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/16 v9, 0x10

    const/4 v1, 0x1

    .line 188
    new-instance v2, Lorg/acra/collector/CrashReportData;

    invoke-direct {v2}, Lorg/acra/collector/CrashReportData;-><init>()V

    .line 190
    :try_start_8
    iget-object v0, p0, Lorg/acra/collector/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->getReportFields()Lorg/acra/a/d;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_d} :catch_4fc

    move-result-object v3

    .line 198
    :try_start_e
    sget-object v0, Lorg/acra/ReportField;->SCREENSHOT:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 200
    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/acra/ne/NativeException;

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/acra/ne/NativeException;

    iget-boolean v0, v0, Lorg/acra/ne/NativeException;->noSendDmp:Z

    if-nez v0, :cond_4e

    :cond_28
    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Violation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 202
    sget-object v0, Lorg/acra/ReportField;->SCREENSHOT:Lorg/acra/ReportField;

    new-instance v4, Lorg/acra/collector/r;

    iget-object v5, p0, Lorg/acra/collector/c;->g:Lorg/acra/builder/LastActivityManager;

    invoke-direct {v4, v5}, Lorg/acra/collector/r;-><init>(Lorg/acra/builder/LastActivityManager;)V

    iget-object v5, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lorg/acra/collector/r;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_4e} :catch_4df
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_4e} :catch_4fc

    .line 210
    :cond_4e
    :goto_4e
    :try_start_4e
    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/acra/anr/ANRException;
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_54} :catch_4fc

    if-eqz v0, :cond_7a

    .line 214
    :try_start_56
    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/acra/anr/ANRException;

    iget v0, v0, Lorg/acra/anr/ANRException;->monitorMode:I

    packed-switch v0, :pswitch_data_7e2

    .line 222
    :goto_61
    iget-object v4, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/acra/anr/ANRException;

    invoke-static {v4, v0}, Lorg/acra/collector/v;->a(Landroid/content/Context;Lorg/acra/anr/ANRException;)Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 224
    sget-object v4, Lorg/acra/ReportField;->TRACES_FILE:Lorg/acra/ReportField;

    invoke-virtual {v2, v4, v0}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_7a} :catch_510
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_7a} :catch_4fc

    .line 232
    :cond_7a
    :goto_7a
    :try_start_7a
    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/acra/ne/NativeException;
    :try_end_80
    .catch Ljava/lang/RuntimeException; {:try_start_7a .. :try_end_80} :catch_4fc

    if-eqz v0, :cond_cc

    .line 235
    :try_start_82
    sget-object v4, Lorg/acra/ReportField;->NATIVE_CRASH:Lorg/acra/ReportField;

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/acra/ne/NativeException;

    invoke-virtual {v0}, Lorg/acra/ne/NativeException;->getCrashFileDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_91
    .catch Ljava/lang/RuntimeException; {:try_start_82 .. :try_end_91} :catch_525

    .line 242
    :goto_91
    :try_start_91
    sget-object v0, Lorg/acra/ReportField;->JAVA_STACK_TRACE:Lorg/acra/ReportField;

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/acra/collector/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a2
    .catch Ljava/lang/RuntimeException; {:try_start_91 .. :try_end_a2} :catch_531

    .line 248
    :goto_a2
    :try_start_a2
    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/acra/ne/NativeException;

    iget-boolean v0, v0, Lorg/acra/ne/NativeException;->noSendDmp:Z
    :try_end_aa
    .catch Ljava/lang/RuntimeException; {:try_start_a2 .. :try_end_aa} :catch_4fc

    if-eqz v0, :cond_cc

    .line 251
    :try_start_ac
    const-string v4, "no_send_dump"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/acra/ne/NativeException;

    iget-boolean v0, v0, Lorg/acra/ne/NativeException;->noSendDmp:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lorg/acra/collector/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_cc
    .catch Ljava/lang/RuntimeException; {:try_start_ac .. :try_end_cc} :catch_53d

    .line 260
    :cond_cc
    :goto_cc
    :try_start_cc
    sget-object v0, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/acra/collector/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_dd
    .catch Ljava/lang/RuntimeException; {:try_start_cc .. :try_end_dd} :catch_549

    .line 267
    :goto_dd
    :try_start_dd
    sget-object v0, Lorg/acra/ReportField;->ENV:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_e2
    .catch Ljava/lang/RuntimeException; {:try_start_dd .. :try_end_e2} :catch_4fc

    move-result v0

    if-eqz v0, :cond_ee

    .line 269
    :try_start_e5
    sget-object v0, Lorg/acra/ReportField;->ENV:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/collector/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_ee} :catch_555
    .catch Ljava/lang/RuntimeException; {:try_start_e5 .. :try_end_ee} :catch_4fc

    .line 276
    :cond_ee
    :goto_ee
    :try_start_ee
    sget-object v0, Lorg/acra/ReportField;->NETWORK_STATE:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_f3
    .catch Ljava/lang/RuntimeException; {:try_start_ee .. :try_end_f3} :catch_4fc

    move-result v0

    if-eqz v0, :cond_107

    .line 278
    :try_start_f6
    iget-object v0, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/acra/collector/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_107

    .line 280
    sget-object v4, Lorg/acra/ReportField;->NETWORK_STATE:Lorg/acra/ReportField;

    invoke-virtual {v2, v4, v0}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_107
    .catch Ljava/lang/Throwable; {:try_start_f6 .. :try_end_107} :catch_561
    .catch Ljava/lang/RuntimeException; {:try_start_f6 .. :try_end_107} :catch_4fc

    .line 288
    :cond_107
    :goto_107
    :try_start_107
    sget-object v0, Lorg/acra/ReportField;->ACRA_VERSION:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_10c
    .catch Ljava/lang/RuntimeException; {:try_start_107 .. :try_end_10c} :catch_4fc

    move-result v0

    if-eqz v0, :cond_116

    .line 290
    :try_start_10f
    sget-object v0, Lorg/acra/ReportField;->ACRA_VERSION:Lorg/acra/ReportField;

    const-string v4, "2.1.2"

    invoke-virtual {v2, v0, v4}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_116
    .catch Ljava/lang/RuntimeException; {:try_start_10f .. :try_end_116} :catch_56d

    .line 297
    :cond_116
    :goto_116
    :try_start_116
    sget-object v0, Lorg/acra/ReportField;->VM_VERSION:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_11b
    .catch Ljava/lang/RuntimeException; {:try_start_116 .. :try_end_11b} :catch_4fc

    move-result v0

    if-eqz v0, :cond_127

    .line 299
    :try_start_11e
    sget-object v0, Lorg/acra/ReportField;->VM_VERSION:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/collector/x;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_127} :catch_579
    .catch Ljava/lang/RuntimeException; {:try_start_11e .. :try_end_127} :catch_4fc

    .line 306
    :cond_127
    :goto_127
    :try_start_127
    sget-object v0, Lorg/acra/ReportField;->PROPERTY:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_12c
    .catch Ljava/lang/RuntimeException; {:try_start_127 .. :try_end_12c} :catch_4fc

    move-result v0

    if-eqz v0, :cond_138

    .line 308
    :try_start_12f
    sget-object v0, Lorg/acra/ReportField;->PROPERTY:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/collector/o;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_138
    .catch Ljava/lang/RuntimeException; {:try_start_12f .. :try_end_138} :catch_585

    .line 316
    :cond_138
    :goto_138
    :try_start_138
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_145

    .line 317
    const-string v0, "monkey"

    const-string v4, "true"

    invoke-virtual {p0, v0, v4}, Lorg/acra/collector/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_145
    .catch Ljava/lang/RuntimeException; {:try_start_138 .. :try_end_145} :catch_591

    .line 325
    :cond_145
    :goto_145
    :try_start_145
    new-instance v4, Lorg/acra/util/PackageManagerWrapper;

    iget-object v0, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    invoke-direct {v4, v0}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V
    :try_end_14c
    .catch Ljava/lang/RuntimeException; {:try_start_145 .. :try_end_14c} :catch_4fc

    .line 329
    :try_start_14c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_7df

    .line 330
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v4, v0}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    .line 332
    :goto_156
    if-eqz v0, :cond_167

    iget-object v0, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/acra/collector/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 333
    const-string v0, "cloud"

    const-string v5, "true"

    invoke-virtual {p0, v0, v5}, Lorg/acra/collector/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_167
    .catch Ljava/lang/Throwable; {:try_start_14c .. :try_end_167} :catch_59d
    .catch Ljava/lang/RuntimeException; {:try_start_14c .. :try_end_167} :catch_4fc

    .line 343
    :cond_167
    :goto_167
    :try_start_167
    const-string v0, "android.permission.READ_LOGS"

    invoke-virtual {v4, v0}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_173

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_5be

    :cond_173
    move v0, v1

    .line 344
    :goto_174
    iget-object v1, p0, Lorg/acra/collector/c;->c:Landroid/content/SharedPreferences;

    const-string v5, "acra.syslog.enable"

    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5f1

    if-eqz v0, :cond_5f1

    .line 345
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v5, "READ_LOGS granted! ACRA can include LogCat and DropBox data."

    invoke-interface {v0, v1, v5}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v1, Lorg/acra/collector/i;

    invoke-direct {v1}, Lorg/acra/collector/i;-><init>()V

    .line 347
    sget-object v0, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_194
    .catch Ljava/lang/RuntimeException; {:try_start_167 .. :try_end_194} :catch_4fc

    move-result v0

    if-eqz v0, :cond_1a3

    .line 349
    :try_start_197
    sget-object v0, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    iget-object v5, p0, Lorg/acra/collector/c;->b:Lorg/acra/config/ACRAConfiguration;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/acra/collector/i;->a(Lorg/acra/config/ACRAConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a3
    .catch Ljava/lang/RuntimeException; {:try_start_197 .. :try_end_1a3} :catch_5c1

    .line 354
    :cond_1a3
    :goto_1a3
    :try_start_1a3
    sget-object v0, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_1a8
    .catch Ljava/lang/RuntimeException; {:try_start_1a3 .. :try_end_1a8} :catch_4fc

    move-result v0

    if-eqz v0, :cond_1b8

    .line 356
    :try_start_1ab
    sget-object v0, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    iget-object v5, p0, Lorg/acra/collector/c;->b:Lorg/acra/config/ACRAConfiguration;

    const-string v6, "events"

    invoke-virtual {v1, v5, v6}, Lorg/acra/collector/i;->a(Lorg/acra/config/ACRAConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b8
    .catch Ljava/lang/RuntimeException; {:try_start_1ab .. :try_end_1b8} :catch_5cd

    .line 361
    :cond_1b8
    :goto_1b8
    :try_start_1b8
    sget-object v0, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_1bd
    .catch Ljava/lang/RuntimeException; {:try_start_1b8 .. :try_end_1bd} :catch_4fc

    move-result v0

    if-eqz v0, :cond_1cd

    .line 363
    :try_start_1c0
    sget-object v0, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    iget-object v5, p0, Lorg/acra/collector/c;->b:Lorg/acra/config/ACRAConfiguration;

    const-string v6, "radio"

    invoke-virtual {v1, v5, v6}, Lorg/acra/collector/i;->a(Lorg/acra/config/ACRAConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1cd
    .catch Ljava/lang/RuntimeException; {:try_start_1c0 .. :try_end_1cd} :catch_5d9

    .line 368
    :cond_1cd
    :goto_1cd
    :try_start_1cd
    sget-object v0, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_1d2
    .catch Ljava/lang/RuntimeException; {:try_start_1cd .. :try_end_1d2} :catch_4fc

    move-result v0

    if-eqz v0, :cond_1e7

    .line 370
    :try_start_1d5
    sget-object v0, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    new-instance v1, Lorg/acra/collector/f;

    invoke-direct {v1}, Lorg/acra/collector/f;-><init>()V

    iget-object v5, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    iget-object v6, p0, Lorg/acra/collector/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1, v5, v6}, Lorg/acra/collector/f;->a(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e7
    .catch Ljava/lang/RuntimeException; {:try_start_1d5 .. :try_end_1e7} :catch_5e5

    .line 380
    :cond_1e7
    :goto_1e7
    :try_start_1e7
    sget-object v0, Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;

    iget-object v1, p0, Lorg/acra/collector/c;->e:Ljava/util/Calendar;

    invoke-static {v1}, Lorg/acra/util/j;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f2
    .catch Ljava/lang/RuntimeException; {:try_start_1e7 .. :try_end_1f2} :catch_5fc

    .line 385
    :goto_1f2
    :try_start_1f2
    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->isSendSilently()Z

    move-result v0

    if-eqz v0, :cond_1ff

    .line 386
    sget-object v0, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    const-string v1, "true"

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1ff
    .catch Ljava/lang/RuntimeException; {:try_start_1f2 .. :try_end_1ff} :catch_4fc

    .line 391
    :cond_1ff
    :try_start_1ff
    sget-object v0, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20c
    .catch Ljava/lang/RuntimeException; {:try_start_1ff .. :try_end_20c} :catch_608

    .line 398
    :goto_20c
    :try_start_20c
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 399
    sget-object v1, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    invoke-static {v0}, Lorg/acra/util/j;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21a
    .catch Ljava/lang/RuntimeException; {:try_start_20c .. :try_end_21a} :catch_614

    .line 405
    :goto_21a
    :try_start_21a
    sget-object v0, Lorg/acra/ReportField;->STACK_TRACE_HASH:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_21f
    .catch Ljava/lang/RuntimeException; {:try_start_21a .. :try_end_21f} :catch_4fc

    move-result v0

    if-eqz v0, :cond_22f

    .line 407
    :try_start_222
    sget-object v0, Lorg/acra/ReportField;->STACK_TRACE_HASH:Lorg/acra/ReportField;

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/acra/collector/c;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22f
    .catch Ljava/lang/RuntimeException; {:try_start_222 .. :try_end_22f} :catch_620

    .line 414
    :cond_22f
    :goto_22f
    :try_start_22f
    sget-object v0, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_234
    .catch Ljava/lang/RuntimeException; {:try_start_22f .. :try_end_234} :catch_4fc

    move-result v0

    if-eqz v0, :cond_242

    .line 416
    :try_start_237
    sget-object v0, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    iget-object v1, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lorg/acra/util/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_242
    .catch Ljava/lang/RuntimeException; {:try_start_237 .. :try_end_242} :catch_62c

    .line 423
    :cond_242
    :goto_242
    :try_start_242
    sget-object v0, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_247
    .catch Ljava/lang/RuntimeException; {:try_start_242 .. :try_end_247} :catch_4fc

    move-result v0

    if-eqz v0, :cond_251

    .line 425
    :try_start_24a
    sget-object v0, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    iget-object v1, p0, Lorg/acra/collector/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_251
    .catch Ljava/lang/RuntimeException; {:try_start_24a .. :try_end_251} :catch_638

    .line 430
    :cond_251
    :goto_251
    :try_start_251
    sget-object v0, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_256
    .catch Ljava/lang/RuntimeException; {:try_start_251 .. :try_end_256} :catch_4fc

    move-result v0

    if-eqz v0, :cond_264

    .line 432
    :try_start_259
    sget-object v0, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    iget-object v1, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lorg/acra/collector/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_264
    .catch Ljava/lang/RuntimeException; {:try_start_259 .. :try_end_264} :catch_644

    .line 439
    :cond_264
    :goto_264
    :try_start_264
    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/OutOfMemoryError;

    if-nez v0, :cond_27d

    sget-object v0, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_271
    .catch Ljava/lang/RuntimeException; {:try_start_264 .. :try_end_271} :catch_4fc

    move-result v0

    if-eqz v0, :cond_27d

    .line 441
    :try_start_274
    sget-object v0, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/collector/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27d
    .catch Ljava/lang/RuntimeException; {:try_start_274 .. :try_end_27d} :catch_650

    .line 448
    :cond_27d
    :goto_27d
    :try_start_27d
    sget-object v0, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_282
    .catch Ljava/lang/RuntimeException; {:try_start_27d .. :try_end_282} :catch_4fc

    move-result v0

    if-eqz v0, :cond_290

    .line 450
    :try_start_285
    sget-object v0, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    iget-object v1, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_290
    .catch Ljava/lang/RuntimeException; {:try_start_285 .. :try_end_290} :catch_65c

    .line 457
    :cond_290
    :goto_290
    :try_start_290
    sget-object v0, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_295
    .catch Ljava/lang/RuntimeException; {:try_start_290 .. :try_end_295} :catch_4fc

    move-result v0

    if-eqz v0, :cond_2bc

    .line 459
    :try_start_298
    sget-object v0, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Landroid/os/Build;

    invoke-static {v5}, Lorg/acra/collector/p;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v5, Landroid/os/Build$VERSION;

    const-string v6, "VERSION"

    invoke-static {v5, v6}, Lorg/acra/collector/p;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2bc
    .catch Ljava/lang/RuntimeException; {:try_start_298 .. :try_end_2bc} :catch_668

    .line 466
    :cond_2bc
    :goto_2bc
    :try_start_2bc
    sget-object v0, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_2c1
    .catch Ljava/lang/RuntimeException; {:try_start_2bc .. :try_end_2c1} :catch_4fc

    move-result v0

    if-eqz v0, :cond_2cb

    .line 468
    :try_start_2c4
    sget-object v0, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2cb
    .catch Ljava/lang/RuntimeException; {:try_start_2c4 .. :try_end_2cb} :catch_674

    .line 474
    :cond_2cb
    :goto_2cb
    :try_start_2cb
    sget-object v0, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_2d0
    .catch Ljava/lang/RuntimeException; {:try_start_2cb .. :try_end_2d0} :catch_4fc

    move-result v0

    if-eqz v0, :cond_2da

    .line 476
    :try_start_2d3
    sget-object v0, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2da
    .catch Ljava/lang/RuntimeException; {:try_start_2d3 .. :try_end_2da} :catch_680

    .line 483
    :cond_2da
    :goto_2da
    :try_start_2da
    sget-object v0, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_2df
    .catch Ljava/lang/RuntimeException; {:try_start_2da .. :try_end_2df} :catch_4fc

    move-result v0

    if-eqz v0, :cond_2e9

    .line 485
    :try_start_2e2
    sget-object v0, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e9
    .catch Ljava/lang/RuntimeException; {:try_start_2e2 .. :try_end_2e9} :catch_68c

    .line 490
    :cond_2e9
    :goto_2e9
    :try_start_2e9
    sget-object v0, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_2ee
    .catch Ljava/lang/RuntimeException; {:try_start_2e9 .. :try_end_2ee} :catch_4fc

    move-result v0

    if-eqz v0, :cond_2f8

    .line 492
    :try_start_2f1
    sget-object v0, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f8
    .catch Ljava/lang/RuntimeException; {:try_start_2f1 .. :try_end_2f8} :catch_698

    .line 499
    :cond_2f8
    :goto_2f8
    :try_start_2f8
    sget-object v0, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_2fd
    .catch Ljava/lang/RuntimeException; {:try_start_2f8 .. :try_end_2fd} :catch_4fc

    move-result v0

    if-eqz v0, :cond_30d

    .line 501
    :try_start_300
    sget-object v0, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/util/j;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30d
    .catch Ljava/lang/RuntimeException; {:try_start_300 .. :try_end_30d} :catch_6a4

    .line 506
    :cond_30d
    :goto_30d
    :try_start_30d
    sget-object v0, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_312
    .catch Ljava/lang/RuntimeException; {:try_start_30d .. :try_end_312} :catch_4fc

    move-result v0

    if-eqz v0, :cond_322

    .line 508
    :try_start_315
    sget-object v0, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/util/j;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_322
    .catch Ljava/lang/RuntimeException; {:try_start_315 .. :try_end_322} :catch_6b0

    .line 515
    :cond_322
    :goto_322
    :try_start_322
    sget-object v0, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_327
    .catch Ljava/lang/RuntimeException; {:try_start_322 .. :try_end_327} :catch_4fc

    move-result v0

    if-eqz v0, :cond_335

    .line 517
    :try_start_32a
    sget-object v0, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    iget-object v1, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lorg/acra/util/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_335
    .catch Ljava/lang/RuntimeException; {:try_start_32a .. :try_end_335} :catch_6bc

    .line 524
    :cond_335
    :goto_335
    :try_start_335
    sget-object v0, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_33a
    .catch Ljava/lang/RuntimeException; {:try_start_335 .. :try_end_33a} :catch_4fc

    move-result v0

    if-eqz v0, :cond_348

    .line 526
    :try_start_33d
    sget-object v0, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    iget-object v1, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lorg/acra/collector/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_348
    .catch Ljava/lang/RuntimeException; {:try_start_33d .. :try_end_348} :catch_6c8

    .line 533
    :cond_348
    :goto_348
    :try_start_348
    sget-object v0, Lorg/acra/ReportField;->BUILD_CONFIG:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_34d
    .catch Ljava/lang/RuntimeException; {:try_start_348 .. :try_end_34d} :catch_4fc

    move-result v0

    if-eqz v0, :cond_35d

    .line 535
    :try_start_350
    invoke-direct {p0}, Lorg/acra/collector/c;->b()Ljava/lang/Class;

    move-result-object v0

    .line 536
    sget-object v1, Lorg/acra/ReportField;->BUILD_CONFIG:Lorg/acra/ReportField;

    invoke-static {v0}, Lorg/acra/collector/p;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_350 .. :try_end_35d} :catch_7dc
    .catch Ljava/lang/RuntimeException; {:try_start_350 .. :try_end_35d} :catch_6d4

    .line 545
    :cond_35d
    :goto_35d
    :try_start_35d
    sget-object v0, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_362
    .catch Ljava/lang/RuntimeException; {:try_start_35d .. :try_end_362} :catch_4fc

    move-result v0

    if-eqz v0, :cond_374

    .line 547
    :try_start_365
    sget-object v0, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    iget-object v1, p0, Lorg/acra/collector/c;->c:Landroid/content/SharedPreferences;

    const-string v5, "acra.user.email"

    const-string v6, "N/A"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_374
    .catch Ljava/lang/RuntimeException; {:try_start_365 .. :try_end_374} :catch_6e0

    .line 554
    :cond_374
    :goto_374
    :try_start_374
    sget-object v0, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_379
    .catch Ljava/lang/RuntimeException; {:try_start_374 .. :try_end_379} :catch_4fc

    move-result v0

    if-eqz v0, :cond_387

    .line 556
    :try_start_37c
    sget-object v0, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    iget-object v1, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lorg/acra/collector/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_387
    .catch Ljava/lang/RuntimeException; {:try_start_37c .. :try_end_387} :catch_6ec

    .line 563
    :cond_387
    :goto_387
    :try_start_387
    sget-object v0, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_38c
    .catch Ljava/lang/RuntimeException; {:try_start_387 .. :try_end_38c} :catch_4fc

    move-result v0

    if-eqz v0, :cond_39a

    .line 565
    :try_start_38f
    sget-object v0, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    const-class v1, Landroid/os/Environment;

    invoke-static {v1}, Lorg/acra/collector/p;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39a
    .catch Ljava/lang/RuntimeException; {:try_start_38f .. :try_end_39a} :catch_6f8

    .line 571
    :cond_39a
    :goto_39a
    :try_start_39a
    new-instance v1, Lorg/acra/collector/s;

    iget-object v0, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    iget-object v5, p0, Lorg/acra/collector/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v1, v0, v5}, Lorg/acra/collector/s;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    .line 573
    sget-object v0, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_3a8
    .catch Ljava/lang/RuntimeException; {:try_start_39a .. :try_end_3a8} :catch_4fc

    move-result v0

    if-eqz v0, :cond_3b4

    .line 575
    :try_start_3ab
    sget-object v0, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    invoke-virtual {v1}, Lorg/acra/collector/s;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b4
    .catch Ljava/lang/RuntimeException; {:try_start_3ab .. :try_end_3b4} :catch_704

    .line 582
    :cond_3b4
    :goto_3b4
    :try_start_3b4
    sget-object v0, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_3b9
    .catch Ljava/lang/RuntimeException; {:try_start_3b4 .. :try_end_3b9} :catch_4fc

    move-result v0

    if-eqz v0, :cond_3c5

    .line 584
    :try_start_3bc
    sget-object v0, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    invoke-virtual {v1}, Lorg/acra/collector/s;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c5
    .catch Ljava/lang/RuntimeException; {:try_start_3bc .. :try_end_3c5} :catch_710

    .line 591
    :cond_3c5
    :goto_3c5
    :try_start_3c5
    sget-object v0, Lorg/acra/ReportField;->SETTINGS_GLOBAL:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_3ca
    .catch Ljava/lang/RuntimeException; {:try_start_3c5 .. :try_end_3ca} :catch_4fc

    move-result v0

    if-eqz v0, :cond_3d6

    .line 594
    :try_start_3cd
    sget-object v0, Lorg/acra/ReportField;->SETTINGS_GLOBAL:Lorg/acra/ReportField;

    invoke-virtual {v1}, Lorg/acra/collector/s;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d6
    .catch Ljava/lang/RuntimeException; {:try_start_3cd .. :try_end_3d6} :catch_71c

    .line 601
    :cond_3d6
    :goto_3d6
    :try_start_3d6
    sget-object v0, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_3db
    .catch Ljava/lang/RuntimeException; {:try_start_3d6 .. :try_end_3db} :catch_4fc

    move-result v0

    if-eqz v0, :cond_3f0

    .line 603
    :try_start_3de
    sget-object v0, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    new-instance v1, Lorg/acra/collector/t;

    iget-object v5, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    iget-object v6, p0, Lorg/acra/collector/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v1, v5, v6}, Lorg/acra/collector/t;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    invoke-virtual {v1}, Lorg/acra/collector/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f0
    .catch Ljava/lang/RuntimeException; {:try_start_3de .. :try_end_3f0} :catch_728

    .line 612
    :cond_3f0
    :goto_3f0
    :try_start_3f0
    invoke-virtual {v4}, Lorg/acra/util/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 613
    if-eqz v0, :cond_738

    .line 615
    sget-object v1, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_409

    .line 616
    sget-object v1, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    :cond_409
    sget-object v1, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41c

    .line 619
    sget-object v1, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v5, :cond_734

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_419
    invoke-virtual {v2, v1, v0}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41c
    .catch Ljava/lang/RuntimeException; {:try_start_3f0 .. :try_end_41c} :catch_741

    .line 630
    :cond_41c
    :goto_41c
    :try_start_41c
    sget-object v0, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_439

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v4, v0}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z
    :try_end_429
    .catch Ljava/lang/RuntimeException; {:try_start_41c .. :try_end_429} :catch_4fc

    move-result v0

    if-eqz v0, :cond_439

    .line 632
    :try_start_42c
    iget-object v0, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/acra/util/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 633
    if-eqz v0, :cond_439

    .line 634
    sget-object v1, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    invoke-virtual {v2, v1, v0}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_439
    .catch Ljava/lang/RuntimeException; {:try_start_42c .. :try_end_439} :catch_74d

    .line 643
    :cond_439
    :goto_439
    :try_start_439
    sget-object v0, Lorg/acra/ReportField;->APPLICATION_LOG:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_43e
    .catch Ljava/lang/RuntimeException; {:try_start_439 .. :try_end_43e} :catch_4fc

    move-result v0

    if-eqz v0, :cond_45d

    .line 645
    :try_start_441
    new-instance v0, Lorg/acra/collector/j;

    invoke-direct {v0}, Lorg/acra/collector/j;-><init>()V

    iget-object v1, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    iget-object v4, p0, Lorg/acra/collector/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v4}, Lorg/acra/config/ACRAConfiguration;->applicationLogFile()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/acra/collector/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v5}, Lorg/acra/config/ACRAConfiguration;->applicationLogFileLines()I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lorg/acra/collector/j;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 646
    sget-object v1, Lorg/acra/ReportField;->APPLICATION_LOG:Lorg/acra/ReportField;

    invoke-virtual {v2, v1, v0}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45d
    .catch Ljava/io/IOException; {:try_start_441 .. :try_end_45d} :catch_759
    .catch Ljava/lang/RuntimeException; {:try_start_441 .. :try_end_45d} :catch_77c

    .line 656
    :cond_45d
    :goto_45d
    :try_start_45d
    sget-object v0, Lorg/acra/ReportField;->MEDIA_CODEC_LIST:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_462
    .catch Ljava/lang/RuntimeException; {:try_start_45d .. :try_end_462} :catch_4fc

    move-result v0

    if-eqz v0, :cond_46e

    .line 658
    :try_start_465
    sget-object v0, Lorg/acra/ReportField;->MEDIA_CODEC_LIST:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/collector/MediaCodecListCollector;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46e
    .catch Ljava/lang/RuntimeException; {:try_start_465 .. :try_end_46e} :catch_788

    .line 665
    :cond_46e
    :goto_46e
    :try_start_46e
    sget-object v0, Lorg/acra/ReportField;->THREAD_DETAILS:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_473
    .catch Ljava/lang/RuntimeException; {:try_start_46e .. :try_end_473} :catch_4fc

    move-result v0

    if-eqz v0, :cond_483

    .line 667
    :try_start_476
    sget-object v0, Lorg/acra/ReportField;->THREAD_DETAILS:Lorg/acra/ReportField;

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getUncaughtExceptionThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Lorg/acra/collector/u;->a(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_483
    .catch Ljava/lang/RuntimeException; {:try_start_476 .. :try_end_483} :catch_794

    .line 674
    :cond_483
    :goto_483
    :try_start_483
    sget-object v0, Lorg/acra/ReportField;->USER_IP:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_488
    .catch Ljava/lang/RuntimeException; {:try_start_483 .. :try_end_488} :catch_4fc

    move-result v0

    if-eqz v0, :cond_494

    .line 676
    :try_start_48b
    sget-object v0, Lorg/acra/ReportField;->USER_IP:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/util/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_494
    .catch Ljava/lang/RuntimeException; {:try_start_48b .. :try_end_494} :catch_7a0

    .line 683
    :cond_494
    :goto_494
    :try_start_494
    sget-object v0, Lorg/acra/ReportField;->PROCESS_NAME:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_499
    .catch Ljava/lang/RuntimeException; {:try_start_494 .. :try_end_499} :catch_4fc

    move-result v0

    if-eqz v0, :cond_4a7

    .line 685
    :try_start_49c
    sget-object v0, Lorg/acra/ReportField;->PROCESS_NAME:Lorg/acra/ReportField;

    iget-object v1, p0, Lorg/acra/collector/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lorg/acra/collector/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a7
    .catch Ljava/lang/Throwable; {:try_start_49c .. :try_end_4a7} :catch_7ac
    .catch Ljava/lang/RuntimeException; {:try_start_49c .. :try_end_4a7} :catch_4fc

    .line 692
    :cond_4a7
    :goto_4a7
    :try_start_4a7
    sget-object v0, Lorg/acra/ReportField;->PROCESS_ID:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_4ac
    .catch Ljava/lang/RuntimeException; {:try_start_4a7 .. :try_end_4ac} :catch_4fc

    move-result v0

    if-eqz v0, :cond_4b8

    .line 694
    :try_start_4af
    sget-object v0, Lorg/acra/ReportField;->PROCESS_ID:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/collector/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b8
    .catch Ljava/lang/Throwable; {:try_start_4af .. :try_end_4b8} :catch_7b8
    .catch Ljava/lang/RuntimeException; {:try_start_4af .. :try_end_4b8} :catch_4fc

    .line 701
    :cond_4b8
    :goto_4b8
    :try_start_4b8
    sget-object v0, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_4bd
    .catch Ljava/lang/RuntimeException; {:try_start_4b8 .. :try_end_4bd} :catch_4fc

    move-result v0

    if-eqz v0, :cond_4cd

    .line 703
    :try_start_4c0
    sget-object v0, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    invoke-virtual {p1}, Lorg/acra/builder/ReportBuilder;->getCustomData()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/acra/collector/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4cd
    .catch Ljava/lang/RuntimeException; {:try_start_4c0 .. :try_end_4cd} :catch_7c4

    .line 710
    :cond_4cd
    :goto_4cd
    :try_start_4cd
    sget-object v0, Lorg/acra/ReportField;->IS_ROOT:Lorg/acra/ReportField;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_4d2
    .catch Ljava/lang/RuntimeException; {:try_start_4cd .. :try_end_4d2} :catch_4fc

    move-result v0

    if-eqz v0, :cond_4de

    .line 712
    :try_start_4d5
    sget-object v0, Lorg/acra/ReportField;->IS_ROOT:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/collector/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4de
    .catch Ljava/lang/Throwable; {:try_start_4d5 .. :try_end_4de} :catch_7d0
    .catch Ljava/lang/RuntimeException; {:try_start_4d5 .. :try_end_4de} :catch_4fc

    .line 722
    :cond_4de
    :goto_4de
    return-object v2

    .line 205
    :catch_4df
    move-exception v0

    .line 206
    :try_start_4e0
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "screen failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4fa
    .catch Ljava/lang/RuntimeException; {:try_start_4e0 .. :try_end_4fa} :catch_4fc

    goto/16 :goto_4e

    .line 718
    :catch_4fc
    move-exception v0

    .line 719
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v3, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v4, "Error while retrieving crash data"

    invoke-interface {v1, v3, v4, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4de

    .line 216
    :pswitch_507
    :try_start_507
    const-string v0, "ANR MONITOR"

    const-string v4, "FileObserver"

    invoke-virtual {p0, v0, v4}, Lorg/acra/collector/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_50e
    .catch Ljava/lang/Exception; {:try_start_507 .. :try_end_50e} :catch_510
    .catch Ljava/lang/RuntimeException; {:try_start_507 .. :try_end_50e} :catch_4fc

    goto/16 :goto_61

    .line 226
    :catch_510
    move-exception v0

    .line 227
    :try_start_511
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving traces file"

    invoke-interface {v4, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51a
    .catch Ljava/lang/RuntimeException; {:try_start_511 .. :try_end_51a} :catch_4fc

    goto/16 :goto_7a

    .line 219
    :pswitch_51c
    :try_start_51c
    const-string v0, "ANR MONITOR"

    const-string v4, "WatchDog"

    invoke-virtual {p0, v0, v4}, Lorg/acra/collector/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_523
    .catch Ljava/lang/Exception; {:try_start_51c .. :try_end_523} :catch_510
    .catch Ljava/lang/RuntimeException; {:try_start_51c .. :try_end_523} :catch_4fc

    goto/16 :goto_61

    .line 236
    :catch_525
    move-exception v0

    .line 237
    :try_start_526
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving Native data"

    invoke-interface {v4, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_91

    .line 243
    :catch_531
    move-exception v0

    .line 244
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving JAVA_STACK_TRACE data"

    invoke-interface {v4, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a2

    .line 252
    :catch_53d
    move-exception v0

    .line 253
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "put no send dmp file"

    invoke-interface {v4, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_cc

    .line 261
    :catch_549
    move-exception v0

    .line 262
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving STACK_TRACE data"

    invoke-interface {v4, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_dd

    .line 270
    :catch_555
    move-exception v0

    .line 271
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving ENV data"

    invoke-interface {v4, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_ee

    .line 282
    :catch_561
    move-exception v0

    .line 283
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving network state data"

    invoke-interface {v4, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_107

    .line 291
    :catch_56d
    move-exception v0

    .line 292
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving ACRA\u2014\u2014VERSION data"

    invoke-interface {v4, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_116

    .line 300
    :catch_579
    move-exception v0

    .line 301
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving VM_VERSION data"

    invoke-interface {v4, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_127

    .line 309
    :catch_585
    move-exception v0

    .line 310
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving PROPERTY data"

    invoke-interface {v4, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_138

    .line 319
    :catch_591
    move-exception v0

    .line 320
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while put monkey data"

    invoke-interface {v4, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_145

    .line 335
    :catch_59d
    move-exception v0

    .line 336
    sget-object v5, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v6, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot get cloudTestInfo"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_167

    .line 343
    :cond_5be
    const/4 v0, 0x0

    goto/16 :goto_174

    .line 350
    :catch_5c1
    move-exception v0

    .line 351
    sget-object v5, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v6, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v7, "Error while retrieving LOGCAT data"

    invoke-interface {v5, v6, v7, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a3

    .line 357
    :catch_5cd
    move-exception v0

    .line 358
    sget-object v5, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v6, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v7, "Error while retrieving EVENTSLOG data"

    invoke-interface {v5, v6, v7, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b8

    .line 364
    :catch_5d9
    move-exception v0

    .line 365
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving RADIOLOG data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1cd

    .line 371
    :catch_5e5
    move-exception v0

    .line 372
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving DROPBOX data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e7

    .line 376
    :cond_5f1
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v5, "READ_LOGS not allowed. ACRA will not include LogCat and DropBox data."

    invoke-interface {v0, v1, v5}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e7

    .line 381
    :catch_5fc
    move-exception v0

    .line 382
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving USER_APP_START_DATE data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f2

    .line 392
    :catch_608
    move-exception v0

    .line 393
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving REPORT_ID data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20c

    .line 400
    :catch_614
    move-exception v0

    .line 401
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving USER_CRASH_DATE data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21a

    .line 408
    :catch_620
    move-exception v0

    .line 409
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving STACK_TRACE_HASH data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22f

    .line 417
    :catch_62c
    move-exception v0

    .line 418
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving INSTALLATION_ID data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_242

    .line 426
    :catch_638
    move-exception v0

    .line 427
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving INITIAL_CONFIGURATION data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_251

    .line 433
    :catch_644
    move-exception v0

    .line 434
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving CRASH_CONFIGURATION data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_264

    .line 442
    :catch_650
    move-exception v0

    .line 443
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving DUMPSYS_MEMINFO data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27d

    .line 451
    :catch_65c
    move-exception v0

    .line 452
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving PACKAGE_NAME data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_290

    .line 460
    :catch_668
    move-exception v0

    .line 461
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving BUILD data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2bc

    .line 469
    :catch_674
    move-exception v0

    .line 470
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving PHONE_MODEL data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2cb

    .line 477
    :catch_680
    move-exception v0

    .line 478
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving ANDROID_VERSION data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2da

    .line 486
    :catch_68c
    move-exception v0

    .line 487
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving BRAND data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e9

    .line 493
    :catch_698
    move-exception v0

    .line 494
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving PRODUCT data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f8

    .line 502
    :catch_6a4
    move-exception v0

    .line 503
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving TOTAL_MEM_SIZE data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30d

    .line 509
    :catch_6b0
    move-exception v0

    .line 510
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving AVAILABLE_MEM_SIZE data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_322

    .line 518
    :catch_6bc
    move-exception v0

    .line 519
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving FILE_PATH data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_335

    .line 527
    :catch_6c8
    move-exception v0

    .line 528
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving DISPLAY data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_348

    .line 539
    :catch_6d4
    move-exception v0

    .line 540
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving BUILD_CONFIG data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35d

    .line 548
    :catch_6e0
    move-exception v0

    .line 549
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving USER_EMAIL data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_374

    .line 557
    :catch_6ec
    move-exception v0

    .line 558
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving DEVICE_FEATURES data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_387

    .line 566
    :catch_6f8
    move-exception v0

    .line 567
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving ENVIRONMENT data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39a

    .line 576
    :catch_704
    move-exception v0

    .line 577
    sget-object v5, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v6, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v7, "Error while retrieving SETTINGS_SYSTEM data"

    invoke-interface {v5, v6, v7, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b4

    .line 585
    :catch_710
    move-exception v0

    .line 586
    sget-object v5, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v6, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v7, "Error while retrieving SETTINGS_SECURE data"

    invoke-interface {v5, v6, v7, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3c5

    .line 595
    :catch_71c
    move-exception v0

    .line 596
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving SETTINGS_GLOBAL data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d6

    .line 604
    :catch_728
    move-exception v0

    .line 605
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving SHARED_PREFERENCES data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_732
    .catch Ljava/lang/RuntimeException; {:try_start_526 .. :try_end_732} :catch_4fc

    goto/16 :goto_3f0

    .line 619
    :cond_734
    :try_start_734
    const-string v0, "not set"

    goto/16 :goto_419

    .line 623
    :cond_738
    sget-object v0, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    const-string v1, "Package info unavailable"

    invoke-virtual {v2, v0, v1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73f
    .catch Ljava/lang/RuntimeException; {:try_start_734 .. :try_end_73f} :catch_741

    goto/16 :goto_41c

    .line 625
    :catch_741
    move-exception v0

    .line 626
    :try_start_742
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "Error while retrieving APP_VERSION_CODE and APP_VERSION_NAME data"

    invoke-interface {v1, v5, v6, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41c

    .line 637
    :catch_74d
    move-exception v0

    .line 638
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v4, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v5, "Error while retrieving DEVICE_ID data"

    invoke-interface {v1, v4, v5, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_439

    .line 647
    :catch_759
    move-exception v0

    .line 648
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v4, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while reading application log file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/acra/collector/c;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v6}, Lorg/acra/config/ACRAConfiguration;->applicationLogFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_45d

    .line 649
    :catch_77c
    move-exception v0

    .line 650
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v4, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v5, "Error while retrieving APPLICATION_LOG data"

    invoke-interface {v1, v4, v5, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_45d

    .line 659
    :catch_788
    move-exception v0

    .line 660
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v4, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v5, "Error while retrieving MEDIA_CODEC_LIST data"

    invoke-interface {v1, v4, v5, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_46e

    .line 668
    :catch_794
    move-exception v0

    .line 669
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v4, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v5, "Error while retrieving THREAD_DETAILS data"

    invoke-interface {v1, v4, v5, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_483

    .line 677
    :catch_7a0
    move-exception v0

    .line 678
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v4, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v5, "Error while retrieving USER_IP data"

    invoke-interface {v1, v4, v5, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_494

    .line 686
    :catch_7ac
    move-exception v0

    .line 687
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v4, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v5, "Error while retrieving process name"

    invoke-interface {v1, v4, v5, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4a7

    .line 695
    :catch_7b8
    move-exception v0

    .line 696
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v4, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v5, "Error while retrieving process id"

    invoke-interface {v1, v4, v5, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4b8

    .line 704
    :catch_7c4
    move-exception v0

    .line 705
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v4, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v5, "Error while retrieving CUSTOM_DATA data"

    invoke-interface {v1, v4, v5, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4cd

    .line 713
    :catch_7d0
    move-exception v0

    .line 714
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v3, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v4, "Error while retrieving root data"

    invoke-interface {v1, v3, v4, v0}, Lorg/acra/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7da
    .catch Ljava/lang/RuntimeException; {:try_start_742 .. :try_end_7da} :catch_4fc

    goto/16 :goto_4de

    .line 537
    :catch_7dc
    move-exception v0

    goto/16 :goto_35d

    :cond_7df
    move v0, v1

    goto/16 :goto_156

    .line 214
    :pswitch_data_7e2
    .packed-switch 0x1
        :pswitch_507
        :pswitch_51c
    .end packed-switch
.end method

.method public a()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/acra/collector/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 168
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 177
    iget-object v0, p0, Lorg/acra/collector/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
