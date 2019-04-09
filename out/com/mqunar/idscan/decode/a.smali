.class public final Lcom/mqunar/idscan/decode/a;
.super Landroid/os/Handler;


# static fields
.field public static a:Z


# instance fields
.field private final b:Ljava/text/SimpleDateFormat;

.field private final c:Lcom/mqunar/idscan/activity/a;

.field private d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mqunar/idscan/decode/a;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/mqunar/idscan/activity/a;)V
    .registers 5

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/idscan/decode/a;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/idscan/decode/a;->e:I

    iput-object p1, p0, Lcom/mqunar/idscan/decode/a;->c:Lcom/mqunar/idscan/activity/a;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mqunar/idscan/decode/a;->b:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/mqunar/idscan/decode/a;->b:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    return-void
.end method

.method static synthetic a(Lcom/mqunar/idscan/decode/a;)Lcom/mqunar/idscan/activity/a;
    .registers 2

    iget-object v0, p0, Lcom/mqunar/idscan/decode/a;->c:Lcom/mqunar/idscan/activity/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_4

    :try_start_2
    const-string p1, "0"

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x58

    if-ne v0, v1, :cond_13

    const/4 v0, 0x5

    iput v0, p0, Lcom/mqunar/idscan/decode/a;->e:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mqunar/idscan/decode/a;->a:Z

    :goto_12
    return-void

    :cond_13
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/mqunar/idscan/decode/a;->e:I

    if-le v0, v1, :cond_26

    iput v0, p0, Lcom/mqunar/idscan/decode/a;->e:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mqunar/idscan/decode/a;->a:Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_12

    :catch_21
    move-exception v0

    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_12

    :cond_26
    const/4 v0, 0x0

    :try_start_27
    sput-boolean v0, Lcom/mqunar/idscan/decode/a;->a:Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_29} :catch_21

    goto :goto_12
.end method

.method private b(Ljava/lang/String;)Lcom/mqunar/idscan/model/ScanPassportResultData;
    .registers 11

    const/16 v8, 0x15

    const/16 v7, 0xd

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/mqunar/idscan/model/ScanPassportResultData;

    invoke-direct {v2}, Lcom/mqunar/idscan/model/ScanPassportResultData;-><init>()V

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x58

    if-eq v0, v3, :cond_18

    :cond_16
    move-object v0, v2

    :goto_17
    return-object v0

    :cond_18
    const-string v0, "P"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_111

    iput-boolean v5, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->isPP:Z

    const-string v0, "PP"

    iput-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_type:Ljava/lang/String;

    const-string v0, "\u62a4\u7167"

    iput-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_name:Ljava/lang/String;

    :goto_2a
    const/16 v0, 0x2c

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const-string v4, "<<"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->isPP:Z

    if-eqz v4, :cond_6a

    if-eqz v3, :cond_6a

    array-length v4, v3

    if-le v4, v5, :cond_6a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v3, v1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v3, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->cvName:Ljava/lang/String;

    iput-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->name:Ljava/lang/String;

    aget-object v0, v3, v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_6a
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "<"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_number:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x13

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mqunar/idscan/decode/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->birthday:Ljava/lang/String;

    const/16 v5, 0x14

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "M"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14c

    const-string v5, "1"

    iput-object v5, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->gender:Ljava/lang/String;

    :goto_a4
    const/16 v5, 0x1b

    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mqunar/idscan/decode/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_invalidday:Ljava/lang/String;

    invoke-static {}, Lcom/mqunar/idscan/utils/b;->a()Lcom/mqunar/idscan/utils/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mqunar/idscan/utils/b;->b()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_18c

    :goto_ba
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_160

    iget-object v5, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_cardlssuePlace2Code:Ljava/lang/String;

    if-eqz v5, :cond_dc

    iget-object v5, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_cardlssuePlace2Code:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_dc

    iget-object v5, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->nationality2Code:Ljava/lang/String;

    if-eqz v5, :cond_dc

    iget-object v5, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->nationality2Code:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_160

    :cond_dc
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    const-string v6, "country3code"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "country2code"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "nameZh"

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_104

    iput-object v7, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_cardlssuePlace2Code:Ljava/lang/String;

    iput-object v5, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_cardlssuePlaceName:Ljava/lang/String;

    :cond_104
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10e

    iput-object v7, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->nationality2Code:Ljava/lang/String;

    iput-object v5, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->nationalityName:Ljava/lang/String;

    :cond_10e
    add-int/lit8 v1, v1, 0x1

    goto :goto_ba

    :cond_111
    const-string v0, "W<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_123

    const-string v0, "GA"

    iput-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_type:Ljava/lang/String;

    const-string v0, "\u6e2f\u6fb3\u901a\u884c\u8bc1"

    iput-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_name:Ljava/lang/String;

    goto/16 :goto_2a

    :cond_123
    const-string v0, "D<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_135

    const-string v0, "TW"

    iput-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_type:Ljava/lang/String;

    const-string v0, "\u5927\u9646\u5c45\u6c11\u5f80\u6765\u53f0\u6e7e\u901a\u884c\u8bc1"

    iput-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_name:Ljava/lang/String;

    goto/16 :goto_2a

    :cond_135
    const-string v0, "T<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_147

    const-string v0, "TB"

    iput-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_type:Ljava/lang/String;

    const-string v0, "\u53f0\u80de\u8bc1"

    iput-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_name:Ljava/lang/String;

    goto/16 :goto_2a

    :cond_147
    iput-boolean v1, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->ok:Z

    move-object v0, v2

    goto/16 :goto_17

    :cond_14c
    const-string v6, "F"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15a

    const-string v5, "2"

    iput-object v5, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->gender:Ljava/lang/String;

    goto/16 :goto_a4

    :cond_15a
    const-string v5, ""

    iput-object v5, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->gender:Ljava/lang/String;

    goto/16 :goto_a4

    :cond_160
    iget-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_cardlssuePlace2Code:Ljava/lang/String;

    if-eqz v0, :cond_16e

    iget-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_cardlssuePlace2Code:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_176

    :cond_16e
    const-string v0, "CN"

    iput-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_cardlssuePlace2Code:Ljava/lang/String;

    const-string v0, "\u4e2d\u56fd"

    iput-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_cardlssuePlaceName:Ljava/lang/String;

    :cond_176
    iget-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->nationality2Code:Ljava/lang/String;

    if-eqz v0, :cond_184

    iget-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->nationality2Code:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18c

    :cond_184
    const-string v0, "CN"

    iput-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->nationality2Code:Ljava/lang/String;

    const-string v0, "\u4e2d\u56fd"

    iput-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->nationalityName:Ljava/lang/String;

    :cond_18c
    move-object v0, v2

    goto/16 :goto_17
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v5, :cond_f

    :cond_c
    const-string v0, ""

    :goto_e
    return-object v0

    :cond_f
    const-string v1, "S"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "S"

    const-string v2, "5"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1f
    const-string v1, "O"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "O"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2f
    const-string v1, "Z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v1, "Z"

    const-string v2, "2"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3f
    const-string v1, "U"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v1, "U"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_4f
    const-string v1, "D"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string v1, "D"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_5f
    const-string v1, "I"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6f

    const-string v1, "I"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_6f
    const-string v1, "B"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7f

    const-string v1, "B"

    const-string v2, "8"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_7f
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :try_start_8b
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_d2

    move-result v0

    :goto_8f
    const/16 v4, 0x1e

    if-le v0, v4, :cond_d7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "19"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_c3
    iget-object v1, p0, Lcom/mqunar/idscan/decode/a;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c8} :catch_ca

    goto/16 :goto_e

    :catch_ca
    move-exception v0

    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    const-string v0, ""

    goto/16 :goto_e

    :catch_d2
    move-exception v4

    invoke-static {v4}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8f

    :cond_d7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "20"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a2
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 10

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/mqunar/idscan/decode/a;->d:Z

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1ac

    goto :goto_5

    :pswitch_c
    :try_start_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p0, Lcom/mqunar/idscan/decode/a;->c:Lcom/mqunar/idscan/activity/a;

    invoke-virtual {v3}, Lcom/mqunar/idscan/activity/a;->d()Lcom/mqunar/idscan/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mqunar/idscan/a/f;->g()Landroid/graphics/Rect;

    move-result-object v4

    iget v3, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v5

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int v6, v3, v6

    iget v3, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static/range {v0 .. v6}, Lcom/mqunar/idscan/algo/i;->a([BIIIIII)Ljava/lang/String;

    move-result-object v1

    const-string v0, "-200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/mqunar/idscan/decode/a;->c:Lcom/mqunar/idscan/activity/a;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mqunar/idscan/decode/a;->c:Lcom/mqunar/idscan/activity/a;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u529f\u80fd\u6682\u65f6\u65e0\u6cd5\u4f7f\u7528\uff0c\u8bf7\u60a8\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/mqunar/idscan/R$string;->idscan_sure:I

    new-instance v2, Lcom/mqunar/idscan/decode/b;

    invoke-direct {v2, p0}, Lcom/mqunar/idscan/decode/b;-><init>(Lcom/mqunar/idscan/decode/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_5e} :catch_5f

    goto :goto_5

    :catch_5f
    move-exception v0

    goto :goto_5

    :cond_61
    if-eqz v1, :cond_182

    :try_start_63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x58

    if-ne v0, v2, :cond_182

    invoke-direct {p0, v1}, Lcom/mqunar/idscan/decode/a;->b(Ljava/lang/String;)Lcom/mqunar/idscan/model/ScanPassportResultData;

    move-result-object v2

    iput-object v1, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->scanResult:Ljava/lang/String;

    iget-boolean v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->ok:Z

    if-nez v0, :cond_96

    move v0, v7

    :goto_76
    if-eqz v0, :cond_164

    const-string v0, "isUsable"

    const-string v1, "\u56fe\u7247\u53ef\u7528"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mqunar/idscan/decode/a;->c:Lcom/mqunar/idscan/activity/a;

    invoke-virtual {v0}, Lcom/mqunar/idscan/activity/a;->c()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_5

    :catch_93
    move-exception v0

    goto/16 :goto_5

    :cond_96
    iget-boolean v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->isPP:Z

    if-eqz v0, :cond_ba

    iget-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->name:Ljava/lang/String;

    if-eqz v0, :cond_a8

    const-string v0, ""

    iget-object v3, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    :cond_a8
    move v0, v7

    goto :goto_76

    :cond_aa
    iget-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->cvName:Ljava/lang/String;

    if-eqz v0, :cond_b8

    const-string v0, ""

    iget-object v3, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->cvName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    :cond_b8
    move v0, v7

    goto :goto_76

    :cond_ba
    iget-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->gender:Ljava/lang/String;

    if-eqz v0, :cond_c8

    const-string v0, ""

    iget-object v3, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->gender:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    :cond_c8
    move v0, v7

    goto :goto_76

    :cond_ca
    iget-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->birthday:Ljava/lang/String;

    if-eqz v0, :cond_d8

    const-string v0, ""

    iget-object v3, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    :cond_d8
    move v0, v7

    goto :goto_76

    :cond_da
    iget-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->nationality2Code:Ljava/lang/String;

    if-eqz v0, :cond_e8

    const-string v0, ""

    iget-object v3, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->nationality2Code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    :cond_e8
    move v0, v7

    goto :goto_76

    :cond_ea
    iget-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->nationalityName:Ljava/lang/String;

    if-eqz v0, :cond_f8

    const-string v0, ""

    iget-object v3, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->nationalityName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    :cond_f8
    move v0, v7

    goto/16 :goto_76

    :cond_fb
    iget-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_type:Ljava/lang/String;

    if-eqz v0, :cond_109

    const-string v0, ""

    iget-object v3, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    :cond_109
    move v0, v7

    goto/16 :goto_76

    :cond_10c
    iget-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_number:Ljava/lang/String;

    if-eqz v0, :cond_11a

    const-string v0, ""

    iget-object v3, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_number:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    :cond_11a
    move v0, v7

    goto/16 :goto_76

    :cond_11d
    iget-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_name:Ljava/lang/String;

    if-eqz v0, :cond_12b

    const-string v0, ""

    iget-object v3, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12e

    :cond_12b
    move v0, v7

    goto/16 :goto_76

    :cond_12e
    iget-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_cardlssuePlace2Code:Ljava/lang/String;

    if-eqz v0, :cond_13c

    const-string v0, ""

    iget-object v3, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_cardlssuePlace2Code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13f

    :cond_13c
    move v0, v7

    goto/16 :goto_76

    :cond_13f
    iget-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_cardlssuePlaceName:Ljava/lang/String;

    if-eqz v0, :cond_14d

    const-string v0, ""

    iget-object v3, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_cardlssuePlaceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_150

    :cond_14d
    move v0, v7

    goto/16 :goto_76

    :cond_150
    iget-object v0, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_invalidday:Ljava/lang/String;

    if-eqz v0, :cond_15e

    const-string v0, ""

    iget-object v3, v2, Lcom/mqunar/idscan/model/ScanPassportResultData;->certs_invalidday:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    :cond_15e
    move v0, v7

    goto/16 :goto_76

    :cond_161
    const/4 v0, 0x1

    goto/16 :goto_76

    :cond_164
    const-string v0, "isUsable"

    const-string v2, "\u5b57\u6bb5\u4e0d\u5168"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/mqunar/idscan/decode/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mqunar/idscan/decode/a;->c:Lcom/mqunar/idscan/activity/a;

    invoke-virtual {v0}, Lcom/mqunar/idscan/activity/a;->c()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_5

    :cond_182
    const-string v0, "isUsable"

    const-string v2, "\u56fe\u7247\u4e0d\u53ef\u7528"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/mqunar/idscan/decode/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mqunar/idscan/decode/a;->c:Lcom/mqunar/idscan/activity/a;

    invoke-virtual {v0}, Lcom/mqunar/idscan/activity/a;->c()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_19e} :catch_93

    goto/16 :goto_5

    :pswitch_1a0
    iput-boolean v7, p0, Lcom/mqunar/idscan/decode/a;->d:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_5

    nop

    :pswitch_data_1ac
    .packed-switch 0x14
        :pswitch_c
        :pswitch_1a0
    .end packed-switch
.end method
