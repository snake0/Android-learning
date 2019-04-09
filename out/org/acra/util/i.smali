.class public final Lorg/acra/util/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 164
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 165
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 177
    :cond_d
    :goto_d
    return-object p0

    .line 166
    :cond_e
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 167
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_d

    .line 169
    :cond_1c
    const-string v0, "(?:^|\\s)([1-9](?:\\d*|(?:\\d{0,2})(?:,\\d{3})*)(?:\\.\\d*[1-9])?|0?\\.\\d*[1-9]|0)(?:\\s|$)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 170
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 172
    :try_start_2a
    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_2d
    .catch Ljava/text/ParseException; {:try_start_2a .. :try_end_2d} :catch_2f

    move-result-object p0

    goto :goto_d

    .line 173
    :catch_2f
    move-exception v0

    goto :goto_d
.end method

.method public static a(Lorg/acra/collector/CrashReportData;)Lorg/json/JSONObject;
    .registers 12
    .param p0    # Lorg/acra/collector/CrashReportData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 72
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0}, Lorg/acra/collector/CrashReportData;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/ReportField;

    .line 78
    :try_start_1a
    invoke-virtual {v0}, Lorg/acra/ReportField;->containsKeyValuePairs()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 79
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 80
    invoke-virtual {p0, v0}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v6

    .line 81
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x400

    invoke-direct {v1, v7, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_35} :catch_a8
    .catchall {:try_start_1a .. :try_end_35} :catchall_9f

    .line 84
    :goto_35
    :try_start_35
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 85
    invoke-static {v5, v2}, Lorg/acra/util/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3e} :catch_3f
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_3e} :catch_82
    .catchall {:try_start_35 .. :try_end_3e} :catchall_a5

    goto :goto_35

    .line 87
    :catch_3f
    move-exception v2

    .line 88
    :try_start_40
    sget-object v6, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v7, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while converting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lorg/acra/ReportField;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to JSON."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :cond_64
    invoke-virtual {v0}, Lorg/acra/ReportField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_6b} :catch_82
    .catchall {:try_start_40 .. :try_end_6b} :catchall_a5

    move-object v0, v1

    .line 98
    :goto_6c
    invoke-static {v0}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    move-object v2, v0

    .line 100
    goto :goto_e

    .line 93
    :cond_71
    :try_start_71
    invoke-virtual {v0}, Lorg/acra/ReportField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/acra/util/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_71 .. :try_end_80} :catch_a8
    .catchall {:try_start_71 .. :try_end_80} :catchall_9f

    move-object v0, v2

    goto :goto_6c

    .line 95
    :catch_82
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    .line 96
    :goto_86
    :try_start_86
    new-instance v3, Lorg/acra/util/i$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create JSON object for key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lorg/acra/util/i$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_9f
    .catchall {:try_start_86 .. :try_end_9f} :catchall_9f

    .line 98
    :catchall_9f
    move-exception v0

    :goto_a0
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    throw v0

    .line 101
    :cond_a4
    return-object v3

    .line 98
    :catchall_a5
    move-exception v0

    move-object v2, v1

    goto :goto_a0

    .line 95
    :catch_a8
    move-exception v1

    goto :goto_86
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 143
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 144
    if-lez v0, :cond_3f

    .line 145
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 146
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Lorg/acra/util/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2e

    .line 149
    check-cast v0, Ljava/lang/String;

    const-string v2, "\\\\n"

    const-string v3, "\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_2e
    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 152
    array-length v3, v2

    if-le v3, v4, :cond_3b

    .line 153
    invoke-static {p0, v2, v0}, Lorg/acra/util/i;->a(Lorg/json/JSONObject;[Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    :goto_3a
    return-void

    .line 155
    :cond_3b
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3a

    .line 158
    :cond_3f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_3a
.end method

.method private static a(Lorg/json/JSONObject;[Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 194
    move v0, v1

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_36

    .line 195
    aget-object v3, p1, v0

    .line 196
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_52

    .line 197
    const/4 v2, 0x0

    .line 198
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 199
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 200
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1b
    move-object p0, v2

    .line 194
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 202
    :cond_1f
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 203
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_37

    .line 204
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 217
    :cond_2b
    :goto_2b
    if-nez v2, :cond_1b

    .line 218
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "Unknown json subtree type, see issue #186"

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_36
    return-void

    .line 205
    :cond_37
    instance-of v4, v4, Lorg/json/JSONArray;

    if-eqz v4, :cond_2b

    .line 207
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move-object v3, v2

    move v2, v1

    .line 208
    :goto_41
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_56

    .line 209
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 210
    if-eqz v3, :cond_4f

    move-object v2, v3

    .line 212
    goto :goto_2b

    .line 208
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 225
    :cond_52
    invoke-virtual {p0, v3, p2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1c

    :cond_56
    move-object v2, v3

    goto :goto_2b
.end method
