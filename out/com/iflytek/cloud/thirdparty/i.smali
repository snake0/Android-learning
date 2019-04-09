.class public Lcom/iflytek/cloud/thirdparty/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "data_encoding"

    aput-object v1, v0, v6

    const-string v1, "dte"

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "data_source"

    aput-object v2, v1, v6

    const-string v2, "dsrc"

    aput-object v2, v1, v7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "client_timestamp"

    aput-object v3, v2, v6

    const-string v3, "ctimestamp"

    aput-object v3, v2, v7

    const/16 v3, 0x9

    new-array v3, v3, [[Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "data_status"

    aput-object v5, v4, v6

    const-string v5, "dts"

    aput-object v5, v4, v7

    aput-object v4, v3, v6

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "data_type"

    aput-object v5, v4, v6

    const-string v5, "dtype"

    aput-object v5, v4, v7

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "data_format"

    aput-object v5, v4, v6

    const-string v5, "dtf"

    aput-object v5, v4, v7

    aput-object v4, v3, v8

    const/4 v4, 0x3

    aput-object v0, v3, v4

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const/4 v0, 0x5

    new-array v1, v8, [Ljava/lang/String;

    const-string v4, "stream_id"

    aput-object v4, v1, v6

    const-string v4, "stmid"

    aput-object v4, v1, v7

    aput-object v1, v3, v0

    const/4 v0, 0x6

    new-array v1, v8, [Ljava/lang/String;

    const-string v4, "associate_id"

    aput-object v4, v1, v6

    const-string v4, "asid"

    aput-object v4, v1, v7

    aput-object v1, v3, v0

    const/4 v0, 0x7

    aput-object v2, v3, v0

    const/16 v0, 0x8

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "event_id"

    aput-object v2, v1, v6

    const-string v2, "evid"

    aput-object v2, v1, v7

    aput-object v1, v3, v0

    sput-object v3, Lcom/iflytek/cloud/thirdparty/i;->a:[[Ljava/lang/String;

    return-void
.end method
