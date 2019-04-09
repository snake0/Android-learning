.class public Lcom/baidu/tts/tools/DateTool;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(JLjava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 39
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 40
    invoke-static {v0, p2}, Lcom/baidu/tts/tools/DateTool;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 59
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 60
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 61
    invoke-static {v0, p2}, Lcom/baidu/tts/tools/DateTool;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    .line 63
    :goto_f
    return-object v0

    .line 62
    :catch_10
    move-exception v0

    .line 63
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 50
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 51
    invoke-static {v0, p1}, Lcom/baidu/tts/tools/DateTool;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 53
    :goto_8
    return-object v0

    .line 52
    :catch_9
    move-exception v0

    .line 53
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 45
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatCurrentDate(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0, p0}, Lcom/baidu/tts/tools/DateTool;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatInChinaDate(J)Ljava/lang/String;
    .registers 3

    .prologue
    .line 27
    const-string v0, "yyyy\u5e74M\u6708d\u65e5"

    invoke-static {p0, p1, v0}, Lcom/baidu/tts/tools/DateTool;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatInHHmm(J)Ljava/lang/String;
    .registers 3

    .prologue
    .line 35
    const-string v0, "HH:mm"

    invoke-static {p0, p1, v0}, Lcom/baidu/tts/tools/DateTool;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatInyyyyMMdd(J)Ljava/lang/String;
    .registers 3

    .prologue
    .line 31
    const-string v0, "yyyy.MM.dd"

    invoke-static {p0, p1, v0}, Lcom/baidu/tts/tools/DateTool;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCalendar(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .registers 4

    .prologue
    .line 69
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 70
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 75
    :goto_12
    return-object v0

    .line 74
    :catch_13
    move-exception v0

    .line 75
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .registers 4

    .prologue
    .line 93
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 95
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v0

    .line 98
    :goto_b
    return-object v0

    .line 96
    :catch_c
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 98
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static getDateRange(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v5, 0x5

    .line 80
    invoke-static {p0, p1}, Lcom/baidu/tts/tools/DateTool;->getCalendar(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 82
    new-array v3, p2, [Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    :goto_c
    if-ge v0, p2, :cond_29

    .line 84
    sub-int v4, p2, v0

    add-int/lit8 v4, v4, -0x1

    neg-int v4, v4

    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 85
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 86
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 87
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 89
    :cond_29
    return-object v3
.end method

.method public static simpleFormatCurrentDate()Ljava/lang/String;
    .registers 1

    .prologue
    .line 20
    const-string v0, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss:SSS"

    invoke-static {v0}, Lcom/baidu/tts/tools/DateTool;->formatCurrentDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
