.class public Lorg/acra/sender/HttpSender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/acra/sender/ReportSender;


# instance fields
.field private final a:Lorg/acra/config/ACRAConfiguration;

.field private final b:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/acra/ReportField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lorg/acra/sender/HttpSender$Method;

.field private final e:Lorg/acra/sender/HttpSender$Type;

.field private f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/acra/config/ACRAConfiguration;Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .param p1    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/acra/sender/HttpSender$Method;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/acra/sender/HttpSender$Type;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/config/ACRAConfiguration;",
            "Lorg/acra/sender/HttpSender$Method;",
            "Lorg/acra/sender/HttpSender$Type;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lorg/acra/ReportField;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lorg/acra/sender/HttpSender;->a:Lorg/acra/config/ACRAConfiguration;

    .line 161
    iput-object p2, p0, Lorg/acra/sender/HttpSender;->d:Lorg/acra/sender/HttpSender$Method;

    .line 162
    if-nez p4, :cond_16

    move-object v0, v1

    :goto_b
    iput-object v0, p0, Lorg/acra/sender/HttpSender;->b:Landroid/net/Uri;

    .line 163
    iput-object p5, p0, Lorg/acra/sender/HttpSender;->c:Ljava/util/Map;

    .line 164
    iput-object p3, p0, Lorg/acra/sender/HttpSender;->e:Lorg/acra/sender/HttpSender$Type;

    .line 165
    iput-object v1, p0, Lorg/acra/sender/HttpSender;->f:Ljava/lang/String;

    .line 166
    iput-object v1, p0, Lorg/acra/sender/HttpSender;->g:Ljava/lang/String;

    .line 167
    return-void

    .line 162
    :cond_16
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_b
.end method

.method public constructor <init>(Lorg/acra/config/ACRAConfiguration;Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/util/Map;)V
    .registers 11
    .param p1    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/acra/sender/HttpSender$Method;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/acra/sender/HttpSender$Type;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/config/ACRAConfiguration;",
            "Lorg/acra/sender/HttpSender$Method;",
            "Lorg/acra/sender/HttpSender$Type;",
            "Ljava/util/Map",
            "<",
            "Lorg/acra/ReportField;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/acra/sender/HttpSender;-><init>(Lorg/acra/config/ACRAConfiguration;Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/lang/String;Ljava/util/Map;)V

    .line 136
    return-void
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/acra/ReportField;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lorg/acra/sender/HttpSender;->a:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->getReportFields()Lorg/acra/a/d;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 240
    new-instance v0, Lorg/acra/a/d;

    sget-object v1, Lorg/acra/a;->c:[Lorg/acra/ReportField;

    invoke-direct {v0, v1}, Lorg/acra/a/d;-><init>([Ljava/lang/Object;)V

    .line 243
    :cond_13
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 244
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/ReportField;

    .line 245
    iget-object v3, p0, Lorg/acra/sender/HttpSender;->c:Ljava/util/Map;

    if-eqz v3, :cond_38

    iget-object v3, p0, Lorg/acra/sender/HttpSender;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_44

    .line 246
    :cond_38
    invoke-virtual {v0}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 248
    :cond_44
    iget-object v3, p0, Lorg/acra/sender/HttpSender;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 251
    :cond_52
    return-object v1
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 255
    if-eqz p1, :cond_a

    const-string v0, "ACRA-NULL-STRING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public send(Landroid/content/Context;Lorg/acra/collector/CrashReportData;Lorg/acra/config/ACRAConfiguration;Ljava/io/File;Ljava/lang/String;I)V
    .registers 13
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/acra/collector/CrashReportData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 188
    :try_start_1
    iget-object v1, p0, Lorg/acra/sender/HttpSender;->b:Landroid/net/Uri;

    if-nez v1, :cond_c9

    new-instance v2, Ljava/net/URL;

    invoke-virtual {p3}, Lorg/acra/config/ACRAConfiguration;->formUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 189
    :goto_e
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v3, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lorg/acra/sender/HttpSender;->f:Ljava/lang/String;

    if-eqz v1, :cond_104

    iget-object v1, p0, Lorg/acra/sender/HttpSender;->f:Ljava/lang/String;

    move-object v3, v1

    .line 192
    :goto_33
    iget-object v1, p0, Lorg/acra/sender/HttpSender;->g:Ljava/lang/String;

    if-eqz v1, :cond_118

    iget-object v0, p0, Lorg/acra/sender/HttpSender;->g:Ljava/lang/String;

    move-object v1, v0

    .line 194
    :goto_3a
    new-instance v0, Lorg/acra/util/f;

    invoke-direct {v0, p3}, Lorg/acra/util/f;-><init>(Lorg/acra/config/ACRAConfiguration;)V

    .line 195
    invoke-virtual {p3}, Lorg/acra/config/ACRAConfiguration;->connectionTimeout()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/acra/util/f;->a(I)V

    .line 196
    invoke-virtual {p3}, Lorg/acra/config/ACRAConfiguration;->socketTimeout()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/acra/util/f;->b(I)V

    .line 197
    invoke-virtual {v0, v3}, Lorg/acra/util/f;->a(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, v1}, Lorg/acra/util/f;->b(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p3}, Lorg/acra/config/ACRAConfiguration;->getHttpHeaders()Lorg/acra/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/acra/util/f;->a(Ljava/util/Map;)V

    .line 203
    sget-object v1, Lorg/acra/sender/HttpSender$1;->a:[I

    iget-object v3, p0, Lorg/acra/sender/HttpSender;->e:Lorg/acra/sender/HttpSender$Type;

    invoke-virtual {v3}, Lorg/acra/sender/HttpSender$Type;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_166

    .line 209
    invoke-direct {p0, p2}, Lorg/acra/sender/HttpSender;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 210
    invoke-static {v1}, Lorg/acra/util/f;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 215
    :goto_6f
    sget-object v1, Lorg/acra/sender/HttpSender$1;->b:[I

    iget-object v3, p0, Lorg/acra/sender/HttpSender;->d:Lorg/acra/sender/HttpSender$Method;

    invoke-virtual {v3}, Lorg/acra/sender/HttpSender$Method;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_16c

    .line 222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/sender/HttpSender;->d:Lorg/acra/sender/HttpSender$Method;

    invoke-virtual {v2}, Lorg/acra/sender/HttpSender$Method;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9b} :catch_9b
    .catch Lorg/acra/util/i$a; {:try_start_1 .. :try_end_9b} :catch_d6

    .line 226
    :catch_9b
    move-exception v0

    .line 227
    new-instance v1, Lorg/acra/sender/ReportSenderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lorg/acra/config/ACRAConfiguration;->reportType()Lorg/acra/sender/HttpSender$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " report via Http "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/sender/HttpSender;->d:Lorg/acra/sender/HttpSender$Method;

    invoke-virtual {v3}, Lorg/acra/sender/HttpSender$Method;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 188
    :cond_c9
    :try_start_c9
    new-instance v2, Ljava/net/URL;

    iget-object v1, p0, Lorg/acra/sender/HttpSender;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_d4} :catch_9b
    .catch Lorg/acra/util/i$a; {:try_start_c9 .. :try_end_d4} :catch_d6

    goto/16 :goto_e

    .line 229
    :catch_d6
    move-exception v0

    .line 230
    new-instance v1, Lorg/acra/sender/ReportSenderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lorg/acra/config/ACRAConfiguration;->reportType()Lorg/acra/sender/HttpSender$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " report via Http "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/sender/HttpSender;->d:Lorg/acra/sender/HttpSender$Method;

    invoke-virtual {v3}, Lorg/acra/sender/HttpSender$Method;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 191
    :cond_104
    :try_start_104
    invoke-virtual {p3}, Lorg/acra/config/ACRAConfiguration;->formUriBasicAuthLogin()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/acra/sender/HttpSender;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_111

    move-object v3, v0

    goto/16 :goto_33

    :cond_111
    invoke-virtual {p3}, Lorg/acra/config/ACRAConfiguration;->formUriBasicAuthLogin()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_33

    .line 192
    :cond_118
    invoke-virtual {p3}, Lorg/acra/config/ACRAConfiguration;->formUriBasicAuthPassword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/acra/sender/HttpSender;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_125

    move-object v1, v0

    goto/16 :goto_3a

    :cond_125
    invoke-virtual {p3}, Lorg/acra/config/ACRAConfiguration;->formUriBasicAuthPassword()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_3a

    .line 205
    :pswitch_12c
    invoke-virtual {p2}, Lorg/acra/collector/CrashReportData;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6f

    .line 219
    :pswitch_136
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    invoke-virtual {p2, v3}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 224
    :pswitch_15d
    iget-object v3, p0, Lorg/acra/sender/HttpSender;->d:Lorg/acra/sender/HttpSender$Method;

    iget-object v5, p0, Lorg/acra/sender/HttpSender;->e:Lorg/acra/sender/HttpSender$Type;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/acra/util/f;->a(Landroid/content/Context;Ljava/net/URL;Lorg/acra/sender/HttpSender$Method;Ljava/lang/String;Lorg/acra/sender/HttpSender$Type;)V
    :try_end_165
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_165} :catch_9b
    .catch Lorg/acra/util/i$a; {:try_start_104 .. :try_end_165} :catch_d6

    .line 233
    return-void

    .line 203
    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_12c
    .end packed-switch

    .line 215
    :pswitch_data_16c
    .packed-switch 0x1
        :pswitch_15d
        :pswitch_136
    .end packed-switch
.end method
