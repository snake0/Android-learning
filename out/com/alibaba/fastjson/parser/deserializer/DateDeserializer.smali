.class public Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 20
    if-nez p4, :cond_5

    move-object p4, v0

    .line 57
    :cond_4
    :goto_4
    return-object p4

    .line 24
    :cond_5
    instance-of v1, p4, Ljava/util/Date;

    if-nez v1, :cond_4

    .line 26
    instance-of v1, p4, Ljava/lang/Number;

    if-eqz v1, :cond_1a

    .line 27
    new-instance v0, Ljava/util/Date;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object p4, v0

    goto :goto_4

    .line 28
    :cond_1a
    instance-of v1, p4, Ljava/lang/String;

    if-eqz v1, :cond_64

    .line 29
    check-cast p4, Ljava/lang/String;

    .line 30
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_28

    move-object p4, v0

    .line 31
    goto :goto_4

    .line 34
    :cond_28
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, p4}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    :try_start_2e
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 37
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object p4

    .line 39
    const-class v0, Ljava/util/Calendar;
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_54

    if-ne p2, v0, :cond_40

    .line 46
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_4

    .line 43
    :cond_40
    :try_start_40
    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_54

    move-result-object p4

    .line 46
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_4

    :cond_48
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 49
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 51
    :try_start_4f
    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_52
    .catch Ljava/text/ParseException; {:try_start_4f .. :try_end_52} :catch_59

    move-result-object p4

    goto :goto_4

    .line 46
    :catchall_54
    move-exception v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    .line 52
    :catch_59
    move-exception v0

    .line 56
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 57
    new-instance p4, Ljava/util/Date;

    invoke-direct {p4, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_4

    .line 60
    :cond_64
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "parse error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFastMatchToken()I
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x2

    return v0
.end method