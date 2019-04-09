.class public Lcom/mqunar/tools/DateTimeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATETIME_FIELD_REFERSH:I = 0xa

.field public static final HH_mm:Ljava/lang/String; = "HH:mm"

.field public static final HH_mm_ss:Ljava/lang/String; = "HH:mm:ss"

.field public static final KEY_TSLGAPM:Ljava/lang/String; = "chaos.liu.tslgapm"

.field public static final MM_Yue_dd_Ri:Ljava/lang/String; = "MM\u6708dd\u65e5"

.field public static final MM_dd:Ljava/lang/String; = "MM-dd"

.field public static final MM_yy:Ljava/lang/String; = "MM/yy"

.field public static final M_Yue_d_Ri:Ljava/lang/String; = "M\u6708d\u65e5"

.field public static final ONE_DAY:J = 0x5265c00L

.field public static final ONE_HOUR:J = 0x36ee80L

.field public static final ONE_MINUTE:J = 0xea60L

.field public static final ONE_SECOND:J = 0x3e8L

.field private static final a:[Ljava/lang/String;

.field private static b:[Ljava/lang/String; = null

.field private static c:[Ljava/lang/String; = null

.field public static final d_Ri:Ljava/lang/String; = "d\u65e5"

.field public static final dd_MM:Ljava/lang/String; = "dd/MM"

.field public static hasServerTime:Z = false

.field public static tslgapm:J = 0x0L

.field public static tss:Ljava/lang/String; = null

.field public static final yyyyMMdd:Ljava/lang/String; = "yyyyMMdd"

.field public static final yyyyMMddHHmmss:Ljava/lang/String; = "yyyyMMddHHmmss"

.field public static final yyyy_MM:Ljava/lang/String; = "yyyy-MM"

.field public static final yyyy_MM_dd:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final yyyy_MM_dd_HH_mm:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field public static final yyyy_MM_dd_HH_mm_ss:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final yyyy_Nian_MM_Yue:Ljava/lang/String; = "yyyy\u5e74MM\u6708"

.field public static final yyyy_Nian_MM_Yue_dd_Ri:Ljava/lang/String; = "yyyy\u5e74MM\u6708dd\u65e5"


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    aput-object v1, v0, v3

    const-string v1, "yyyy-MM-dd HH:mm"

    aput-object v1, v0, v4

    const-string v1, "yyyy-MM-dd"

    aput-object v1, v0, v5

    const-string v1, "yyyyMMdd"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mqunar/tools/DateTimeUtils;->a:[Ljava/lang/String;

    .line 267
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "\u5468\u65e5"

    aput-object v1, v0, v4

    const-string v1, "\u5468\u4e00"

    aput-object v1, v0, v5

    const-string v1, "\u5468\u4e8c"

    aput-object v1, v0, v6

    const-string v1, "\u5468\u4e09"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u5468\u56db"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5468\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u5468\u516d"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mqunar/tools/DateTimeUtils;->b:[Ljava/lang/String;

    .line 268
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "\u661f\u671f\u65e5"

    aput-object v1, v0, v4

    const-string v1, "\u661f\u671f\u4e00"

    aput-object v1, v0, v5

    const-string v1, "\u661f\u671f\u4e8c"

    aput-object v1, v0, v6

    const-string v1, "\u661f\u671f\u4e09"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u661f\u671f\u56db"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u661f\u671f\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u661f\u671f\u516d"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mqunar/tools/DateTimeUtils;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 119
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 132
    :goto_8
    return-object p0

    .line 123
    :cond_9
    const-string v0, "[\u5e74\u6708\u65e5]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 124
    array-length v1, v0

    if-ne v1, v5, :cond_18

    .line 125
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_18
    move v1, v2

    .line 127
    :goto_19
    const/4 v3, 0x3

    if-ge v1, v3, :cond_3e

    .line 128
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_3b

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 127
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 132
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static cleanCalendarTime(Ljava/util/Calendar;)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 48
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 49
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 50
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 51
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 52
    return-void
.end method

.method public static compareCalendarIgnoreTime(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .registers 8

    .prologue
    const/4 v1, -0x1

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 331
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-le v2, v3, :cond_f

    .line 346
    :cond_e
    :goto_e
    return v0

    .line 333
    :cond_f
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v2, v3, :cond_1b

    move v0, v1

    .line 334
    goto :goto_e

    .line 336
    :cond_1b
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-gt v2, v3, :cond_e

    .line 338
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v2, v3, :cond_31

    move v0, v1

    .line 339
    goto :goto_e

    .line 341
    :cond_31
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-gt v2, v3, :cond_e

    .line 343
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v0, v2, :cond_47

    move v0, v1

    .line 344
    goto :goto_e

    .line 346
    :cond_47
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static getCalendar(Ljava/lang/Object;)Ljava/util/Calendar;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 81
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setLenient(Z)V

    .line 82
    if-nez p0, :cond_c

    .line 112
    :cond_b
    :goto_b
    return-object v0

    .line 84
    :cond_c
    instance-of v2, p0, Ljava/util/Calendar;

    if-eqz v2, :cond_1b

    .line 85
    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :goto_19
    move-object v0, v1

    .line 112
    goto :goto_b

    .line 86
    :cond_1b
    instance-of v2, p0, Ljava/util/Date;

    if-eqz v2, :cond_25

    .line 87
    check-cast p0, Ljava/util/Date;

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_19

    .line 88
    :cond_25
    instance-of v2, p0, Ljava/lang/Long;

    if-eqz v2, :cond_33

    .line 89
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_19

    .line 90
    :cond_33
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_75

    .line 91
    check-cast p0, Ljava/lang/String;

    .line 92
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 97
    :try_start_3f
    const-string v0, "\\d{4}\u5e74\\d{1,2}\u6708\\d{1,2}\u65e5"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 98
    invoke-static {p0}, Lcom/mqunar/tools/DateTimeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 99
    const-string v0, "yyyy-MM-dd"

    invoke-static {p0, v0}, Lcom/mqunar/tools/DateTimeUtils;->getCalendarByPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_b

    .line 101
    :cond_5a
    sget-object v0, Lcom/mqunar/tools/DateTimeUtils;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/mqunar/tools/DateTimeUtils;->getCalendarByPatterns(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Calendar;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5f} :catch_61

    move-result-object v0

    goto :goto_b

    .line 102
    :catch_61
    move-exception v0

    .line 104
    :try_start_62
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_6d} :catch_6e

    goto :goto_19

    .line 105
    :catch_6e
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 110
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getCalendar(Ljava/lang/Object;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .prologue
    .line 62
    if-eqz p0, :cond_8

    .line 64
    :try_start_2
    invoke-static {p0}, Lcom/mqunar/tools/DateTimeUtils;->getCalendar(Ljava/lang/Object;)Ljava/util/Calendar;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    move-result-object v0

    .line 69
    :goto_6
    return-object v0

    .line 65
    :catch_7
    move-exception v0

    .line 69
    :cond_8
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    goto :goto_6
.end method

.method public static getCalendarByPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .registers 6

    .prologue
    .line 145
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 147
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 148
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 149
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setLenient(Z)V

    .line 150
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 151
    return-object v1

    .line 152
    :catch_1f
    move-exception v0

    .line 153
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getCalendarByPatterns(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Calendar;
    .registers 5

    .prologue
    .line 166
    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_f

    aget-object v2, p1, v0

    .line 168
    :try_start_6
    invoke-static {p0, v2}, Lcom/mqunar/tools/DateTimeUtils;->getCalendarByPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    .line 169
    :catch_b
    move-exception v2

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 174
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getCurrentDateTime()Ljava/util/Calendar;
    .registers 5

    .prologue
    .line 194
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 196
    sget-boolean v1, Lcom/mqunar/tools/DateTimeUtils;->hasServerTime:Z

    if-eqz v1, :cond_16

    .line 197
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/mqunar/tools/DateTimeUtils;->tslgapm:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 199
    :cond_16
    return-object v0
.end method

.method public static getDateAdd(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 4

    .prologue
    .line 215
    if-nez p0, :cond_4

    .line 216
    const/4 v0, 0x0

    .line 220
    :goto_3
    return-object v0

    .line 218
    :cond_4
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 219
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    goto :goto_3
.end method

.method public static getIntervalDays(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {p0}, Lcom/mqunar/tools/DateTimeUtils;->getCalendar(Ljava/lang/Object;)Ljava/util/Calendar;

    move-result-object v0

    .line 261
    invoke-static {p1}, Lcom/mqunar/tools/DateTimeUtils;->getCalendar(Ljava/lang/Object;)Ljava/util/Calendar;

    move-result-object v1

    .line 262
    invoke-static {v0}, Lcom/mqunar/tools/DateTimeUtils;->cleanCalendarTime(Ljava/util/Calendar;)V

    .line 263
    invoke-static {v1}, Lcom/mqunar/tools/DateTimeUtils;->cleanCalendarTime(Ljava/util/Calendar;)V

    .line 264
    const-wide/32 v2, 0x5265c00

    invoke-static {v0, v1, v2, v3}, Lcom/mqunar/tools/DateTimeUtils;->getIntervalTimes(Ljava/util/Calendar;Ljava/util/Calendar;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getIntervalDays(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 256
    :cond_5
    :goto_5
    return v0

    .line 253
    :cond_6
    invoke-static {p0, p2}, Lcom/mqunar/tools/DateTimeUtils;->getCalendarByPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 254
    invoke-static {p1, p2}, Lcom/mqunar/tools/DateTimeUtils;->getCalendarByPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 256
    invoke-static {v0, v1}, Lcom/mqunar/tools/DateTimeUtils;->getIntervalDays(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_5
.end method

.method public static getIntervalTimes(Ljava/util/Calendar;Ljava/util/Calendar;J)J
    .registers 8

    .prologue
    .line 233
    if-eqz p0, :cond_4

    if-nez p1, :cond_7

    .line 234
    :cond_4
    const-wide/16 v0, 0x0

    .line 236
    :goto_6
    return-wide v0

    :cond_7
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    div-long/2addr v0, p2

    goto :goto_6
.end method

.method public static getLoginServerDate()Ljava/util/Calendar;
    .registers 1

    .prologue
    .line 208
    sget-object v0, Lcom/mqunar/tools/DateTimeUtils;->tss:Ljava/lang/String;

    invoke-static {v0}, Lcom/mqunar/tools/DateTimeUtils;->getCalendar(Ljava/lang/Object;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getWeekDayFromCalendar(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 274
    if-nez p0, :cond_8

    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 277
    :cond_8
    sget-object v0, Lcom/mqunar/tools/DateTimeUtils;->b:[Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getWeekDayFromCalendar1(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 284
    if-nez p0, :cond_8

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 287
    :cond_8
    sget-object v0, Lcom/mqunar/tools/DateTimeUtils;->c:[Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static isLeapyear(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 298
    invoke-static {p0}, Lcom/mqunar/tools/DateTimeUtils;->getCalendar(Ljava/lang/Object;)Ljava/util/Calendar;

    move-result-object v2

    .line 299
    if-eqz v2, :cond_1b

    .line 300
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 301
    rem-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_19

    rem-int/lit8 v3, v2, 0x64

    if-nez v3, :cond_18

    rem-int/lit16 v2, v2, 0x190

    if-nez v2, :cond_19

    .line 303
    :cond_18
    :goto_18
    return v0

    :cond_19
    move v0, v1

    .line 301
    goto :goto_18

    :cond_1b
    move v0, v1

    .line 303
    goto :goto_18
.end method

.method public static isRefersh(J)Z
    .registers 4

    .prologue
    .line 308
    const-wide/32 v0, 0x927c0

    invoke-static {v0, v1, p0, p1}, Lcom/mqunar/tools/DateTimeUtils;->isRefersh(JJ)Z

    move-result v0

    return v0
.end method

.method public static isRefersh(JJ)Z
    .registers 6

    .prologue
    .line 313
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    cmp-long v0, v0, p0

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static printCalendarByPattern(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 317
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 318
    :cond_4
    const/4 v0, 0x0

    .line 322
    :goto_5
    return-object v0

    .line 320
    :cond_6
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 321
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 322
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static setTimeWithHHmm(Ljava/util/Calendar;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 353
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p0, :cond_9

    .line 367
    :cond_8
    :goto_8
    return-void

    .line 356
    :cond_9
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 357
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 361
    :try_start_13
    invoke-static {p0}, Lcom/mqunar/tools/DateTimeUtils;->cleanCalendarTime(Ljava/util/Calendar;)V

    .line 362
    const/16 v1, 0xb

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 363
    const/16 v1, 0xc

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_36} :catch_37

    goto :goto_8

    .line 364
    :catch_37
    move-exception v0

    goto :goto_8
.end method
