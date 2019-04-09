.class public final Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected buf:[C

.field protected count:I

.field private features:I

.field private final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    check-cast v0, Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 59
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 61
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 63
    if-eqz v0, :cond_21

    .line 64
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 65
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 68
    :cond_21
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez v0, :cond_2b

    .line 69
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 71
    :cond_2b
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .registers 6

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 109
    if-gtz p2, :cond_20

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_20
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 113
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 80
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 82
    if-eqz v0, :cond_1e

    .line 83
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 84
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 87
    :cond_1e
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez v0, :cond_28

    .line 88
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 92
    :cond_28
    array-length v2, p2

    move v0, v1

    :goto_2a
    if-ge v0, v2, :cond_36

    aget-object v3, p2, v0

    .line 93
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v3

    or-int/2addr v1, v3

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 95
    :cond_36
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 96
    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .registers 3

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 75
    return-void
.end method

.method static final isSpecial(CI)Z
    .registers 6

    .prologue
    const/16 v3, 0x5c

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1120
    const/16 v2, 0x20

    if-ne p0, v2, :cond_9

    .line 1136
    :cond_8
    :goto_8
    return v0

    .line 1124
    :cond_9
    const/16 v2, 0x2f

    if-ne p0, v2, :cond_17

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v0, v1

    .line 1125
    goto :goto_8

    .line 1128
    :cond_17
    const/16 v2, 0x23

    if-le p0, v2, :cond_1d

    if-ne p0, v3, :cond_8

    .line 1132
    :cond_1d
    const/16 v2, 0x1f

    if-le p0, v2, :cond_27

    if-eq p0, v3, :cond_27

    const/16 v2, 0x22

    if-ne p0, v2, :cond_8

    :cond_27
    move v0, v1

    .line 1133
    goto :goto_8
.end method

.method private writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;Z)V
    .registers 16

    .prologue
    .line 923
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 926
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 928
    if-nez p3, :cond_22

    .line 929
    const/4 v0, 0x4

    .line 930
    add-int/lit8 v3, v2, 0x8

    add-int/2addr v1, v3

    .line 936
    :goto_c
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v1, v3, :cond_2f

    .line 937
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_2c

    .line 938
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 939
    const/16 v0, 0x3a

    invoke-direct {p0, p2, v0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    .line 940
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    .line 1113
    :goto_21
    return-void

    .line 932
    :cond_22
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 933
    add-int v3, v2, v0

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    goto :goto_c

    .line 943
    :cond_2c
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 946
    :cond_2f
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v3, v4

    .line 948
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, 0x2

    .line 949
    add-int v4, v3, v2

    .line 951
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x22

    aput-char v7, v5, v6

    .line 952
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p2, v5, v2, v6, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 954
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 956
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v3, 0x22

    aput-char v3, v2, v4

    .line 958
    add-int/lit8 v2, v4, 0x1

    .line 959
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x3a

    aput-char v5, v3, v2

    .line 961
    if-nez p3, :cond_80

    .line 962
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    const/16 v2, 0x6e

    aput-char v2, v0, v4

    .line 963
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x75

    aput-char v3, v0, v1

    .line 964
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x6c

    aput-char v3, v0, v2

    .line 965
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    goto :goto_21

    .line 969
    :cond_80
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v4, 0x1

    const/16 v3, 0x22

    aput-char v3, v2, v4

    .line 972
    add-int v7, v8, v0

    .line 974
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p3, v2, v0, v3, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 976
    if-eqz p4, :cond_14d

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCheckSpecialChar:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_14d

    .line 977
    const/4 v5, 0x0

    .line 978
    const/4 v4, -0x1

    .line 979
    const/4 v0, -0x1

    .line 980
    const/4 v3, 0x0

    move v6, v1

    move v1, v8

    .line 982
    :goto_a0
    if-ge v1, v7, :cond_fb

    .line 983
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v2, v2, v1

    .line 985
    const/16 v9, 0x2028

    if-ne v2, v9, :cond_be

    .line 986
    add-int/lit8 v3, v5, 0x1

    .line 989
    add-int/lit8 v4, v6, 0x4

    .line 991
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2ba

    move v0, v2

    move v5, v4

    move v4, v3

    move v2, v1

    move v3, v1

    .line 982
    :goto_b6
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    move v0, v2

    goto :goto_a0

    .line 997
    :cond_be
    const/16 v9, 0x5d

    if-lt v2, v9, :cond_d9

    .line 998
    const/16 v9, 0x7f

    if-lt v2, v9, :cond_2c5

    const/16 v9, 0xa0

    if-gt v2, v9, :cond_2c5

    .line 999
    const/4 v3, -0x1

    if-ne v0, v3, :cond_ce

    move v0, v1

    .line 1003
    :cond_ce
    add-int/lit8 v3, v5, 0x1

    .line 1006
    add-int/lit8 v4, v6, 0x4

    move v5, v4

    move v4, v3

    move v3, v1

    move v10, v0

    move v0, v2

    move v2, v10

    goto :goto_b6

    .line 1012
    :cond_d9
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-static {v2, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isSpecial(CI)Z

    move-result v9

    if-eqz v9, :cond_2c5

    .line 1013
    add-int/lit8 v3, v5, 0x1

    .line 1017
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v4, v4

    if-ge v2, v4, :cond_2c2

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v4, v4, v2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2c2

    .line 1020
    add-int/lit8 v6, v6, 0x4

    move v4, v6

    .line 1023
    :goto_f2
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2ba

    move v0, v2

    move v5, v4

    move v4, v3

    move v2, v1

    move v3, v1

    .line 1024
    goto :goto_b6

    .line 1029
    :cond_fb
    if-lez v5, :cond_14d

    .line 1030
    add-int v1, v6, v5

    .line 1031
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_107

    .line 1032
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1034
    :cond_107
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1036
    const/4 v1, 0x1

    if-ne v5, v1, :cond_1dc

    .line 1037
    const/16 v0, 0x2028

    if-ne v3, v0, :cond_159

    .line 1038
    add-int/lit8 v0, v4, 0x1

    .line 1039
    add-int/lit8 v1, v4, 0x6

    .line 1040
    sub-int v2, v7, v4

    add-int/lit8 v2, v2, -0x1

    .line 1041
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v3, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1042
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v1, 0x5c

    aput-char v1, v0, v4

    .line 1043
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 1044
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x32

    aput-char v2, v0, v1

    .line 1045
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x30

    aput-char v2, v0, v1

    .line 1046
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x32

    aput-char v2, v0, v1

    .line 1047
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x38

    aput-char v2, v0, v1

    .line 1112
    :cond_14d
    :goto_14d
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    goto/16 :goto_21

    .line 1050
    :cond_159
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v0, v0

    if-ge v3, v0, :cond_1bb

    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v0, v0, v3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1bb

    .line 1052
    add-int/lit8 v0, v4, 0x1

    .line 1053
    add-int/lit8 v1, v4, 0x6

    .line 1054
    sub-int v2, v7, v4

    add-int/lit8 v2, v2, -0x1

    .line 1055
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1058
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    const/16 v2, 0x5c

    aput-char v2, v0, v4

    .line 1059
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x75

    aput-char v4, v0, v1

    .line 1060
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v2, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 1061
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v1

    .line 1062
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v2, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 1063
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_14d

    .line 1065
    :cond_1bb
    add-int/lit8 v0, v4, 0x1

    .line 1066
    add-int/lit8 v1, v4, 0x2

    .line 1067
    sub-int v2, v7, v4

    add-int/lit8 v2, v2, -0x1

    .line 1068
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1069
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v1, 0x5c

    aput-char v1, v0, v4

    .line 1070
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto/16 :goto_14d

    .line 1073
    :cond_1dc
    const/4 v1, 0x1

    if-le v5, v1, :cond_14d

    .line 1074
    sub-int v1, v0, v8

    move v2, v7

    move v10, v0

    move v0, v1

    move v1, v10

    .line 1076
    :goto_1e5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_14d

    .line 1077
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1079
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v3, v3

    if-ge v4, v3, :cond_1fa

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v3, v3, v4

    if-nez v3, :cond_206

    :cond_1fa
    const/16 v3, 0x2f

    if-ne v4, v3, :cond_265

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_265

    .line 1082
    :cond_206
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0x5c

    aput-char v6, v3, v1

    .line 1083
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v1, v1, v4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_258

    .line 1084
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x75

    aput-char v6, v1, v5

    .line 1085
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 1086
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    .line 1087
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 1088
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 1089
    add-int/lit8 v2, v2, 0x5

    .line 1076
    :goto_255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e5

    .line 1091
    :cond_258
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 1092
    add-int/lit8 v2, v2, 0x1

    goto :goto_255

    .line 1095
    :cond_265
    const/16 v3, 0x2028

    if-ne v4, v3, :cond_2b2

    .line 1096
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0x5c

    aput-char v6, v3, v1

    .line 1097
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x75

    aput-char v6, v1, v5

    .line 1098
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 1099
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    .line 1100
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 1101
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 1102
    add-int/lit8 v2, v2, 0x5

    goto :goto_255

    .line 1104
    :cond_2b2
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v1, 0x1

    aput-char v4, v5, v1

    move v1, v3

    goto :goto_255

    :cond_2ba
    move v5, v4

    move v4, v3

    move v3, v1

    move v10, v0

    move v0, v2

    move v2, v10

    goto/16 :goto_b6

    :cond_2c2
    move v4, v6

    goto/16 :goto_f2

    :cond_2c5
    move v2, v0

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_b6
.end method

.method private writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V
    .registers 14

    .prologue
    .line 1257
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    .line 1259
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1260
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v6

    add-int/lit8 v3, v0, 0x1

    .line 1261
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v3, v0, :cond_72

    .line 1262
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_6f

    .line 1263
    if-nez v6, :cond_26

    .line 1264
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1265
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1266
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1354
    :goto_25
    return-void

    .line 1270
    :cond_26
    const/4 v0, 0x0

    .line 1271
    const/4 v1, 0x0

    :goto_28
    if-ge v1, v6, :cond_14b

    .line 1272
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1273
    array-length v3, v5

    if-ge v2, v3, :cond_5b

    aget-byte v2, v5, v2

    if-eqz v2, :cond_5b

    .line 1274
    const/4 v0, 0x1

    move v1, v0

    .line 1279
    :goto_37
    if-eqz v1, :cond_3e

    .line 1280
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1282
    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    if-ge v0, v6, :cond_62

    .line 1283
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1284
    array-length v3, v5

    if-ge v2, v3, :cond_5e

    aget-byte v3, v5, v2

    if-eqz v3, :cond_5e

    .line 1285
    const/16 v3, 0x5c

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1286
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v2, v3, v2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1282
    :goto_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 1271
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1288
    :cond_5e
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_58

    .line 1291
    :cond_62
    if-eqz v1, :cond_69

    .line 1292
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1294
    :cond_69
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_25

    .line 1297
    :cond_6f
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1300
    :cond_72
    if-nez v6, :cond_aa

    .line 1301
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x3

    .line 1302
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_84

    .line 1303
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1305
    :cond_84
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 1306
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 1307
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    goto/16 :goto_25

    .line 1311
    :cond_aa
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1312
    add-int v2, v4, v6

    .line 1314
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v0, v6, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1315
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1317
    const/4 v1, 0x0

    move v0, v4

    .line 1319
    :goto_b8
    if-ge v0, v2, :cond_13f

    .line 1320
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v6, v6, v0

    .line 1321
    array-length v7, v5

    if-ge v6, v7, :cond_110

    aget-byte v7, v5, v6

    if-eqz v7, :cond_110

    .line 1322
    if-nez v1, :cond_113

    .line 1323
    add-int/lit8 v3, v3, 0x3

    .line 1324
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v3, v1, :cond_d1

    .line 1325
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1327
    :cond_d1
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1329
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v0, 0x3

    sub-int v10, v2, v0

    add-int/lit8 v10, v10, -0x1

    invoke-static {v1, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1330
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v9, 0x1

    invoke-static {v1, v7, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1331
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v7, 0x22

    aput-char v7, v1, v4

    .line 1332
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x1

    const/16 v7, 0x5c

    aput-char v7, v1, v0

    .line 1333
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v7, v6

    aput-char v6, v1, v0

    .line 1334
    add-int/lit8 v2, v2, 0x2

    .line 1335
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v6, -0x2

    const/16 v7, 0x22

    aput-char v7, v1, v6

    .line 1337
    const/4 v1, 0x1

    .line 1319
    :cond_110
    :goto_110
    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    .line 1339
    :cond_113
    add-int/lit8 v3, v3, 0x1

    .line 1340
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v3, v7, :cond_11d

    .line 1341
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1343
    :cond_11d
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1345
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v0, 0x1

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v0, 0x2

    sub-int v11, v2, v0

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1346
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v8, 0x5c

    aput-char v8, v7, v0

    .line 1347
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v8, v6

    aput-char v6, v7, v0

    .line 1348
    add-int/lit8 v2, v2, 0x1

    goto :goto_110

    .line 1353
    :cond_13f
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    goto/16 :goto_25

    :cond_14b
    move v1, v0

    goto/16 :goto_37
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
    .registers 14

    .prologue
    .line 1357
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 1359
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1360
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v6

    add-int/lit8 v3, v0, 0x1

    .line 1361
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v3, v0, :cond_72

    .line 1362
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_6f

    .line 1363
    if-nez v6, :cond_26

    .line 1364
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1365
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1366
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1455
    :goto_25
    return-void

    .line 1370
    :cond_26
    const/4 v0, 0x0

    .line 1371
    const/4 v1, 0x0

    :goto_28
    if-ge v1, v6, :cond_149

    .line 1372
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1373
    array-length v3, v5

    if-ge v2, v3, :cond_5b

    aget-byte v2, v5, v2

    if-eqz v2, :cond_5b

    .line 1374
    const/4 v0, 0x1

    move v1, v0

    .line 1379
    :goto_37
    if-eqz v1, :cond_3e

    .line 1380
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1382
    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    if-ge v0, v6, :cond_62

    .line 1383
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1384
    array-length v3, v5

    if-ge v2, v3, :cond_5e

    aget-byte v3, v5, v2

    if-eqz v3, :cond_5e

    .line 1385
    const/16 v3, 0x5c

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1386
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v2, v3, v2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1382
    :goto_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 1371
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1388
    :cond_5e
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_58

    .line 1391
    :cond_62
    if-eqz v1, :cond_69

    .line 1392
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1394
    :cond_69
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_25

    .line 1398
    :cond_6f
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1401
    :cond_72
    if-nez v6, :cond_aa

    .line 1402
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x3

    .line 1403
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_84

    .line 1404
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1406
    :cond_84
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v2, 0x27

    aput-char v2, v0, v1

    .line 1407
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v2, 0x27

    aput-char v2, v0, v1

    .line 1408
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    goto/16 :goto_25

    .line 1412
    :cond_aa
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1413
    add-int v2, v4, v6

    .line 1415
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v0, v6, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1416
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1418
    const/4 v1, 0x0

    move v0, v4

    .line 1420
    :goto_b8
    if-ge v0, v2, :cond_13f

    .line 1421
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v6, v6, v0

    .line 1422
    array-length v7, v5

    if-ge v6, v7, :cond_110

    aget-byte v7, v5, v6

    if-eqz v7, :cond_110

    .line 1423
    if-nez v1, :cond_113

    .line 1424
    add-int/lit8 v3, v3, 0x3

    .line 1425
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v3, v1, :cond_d1

    .line 1426
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1428
    :cond_d1
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1430
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v0, 0x3

    sub-int v10, v2, v0

    add-int/lit8 v10, v10, -0x1

    invoke-static {v1, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1431
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v9, 0x1

    invoke-static {v1, v7, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1432
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v7, 0x27

    aput-char v7, v1, v4

    .line 1433
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x1

    const/16 v7, 0x5c

    aput-char v7, v1, v0

    .line 1434
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v7, v6

    aput-char v6, v1, v0

    .line 1435
    add-int/lit8 v2, v2, 0x2

    .line 1436
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v6, -0x2

    const/16 v7, 0x27

    aput-char v7, v1, v6

    .line 1438
    const/4 v1, 0x1

    .line 1420
    :cond_110
    :goto_110
    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    .line 1440
    :cond_113
    add-int/lit8 v3, v3, 0x1

    .line 1441
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v3, v7, :cond_11d

    .line 1442
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1444
    :cond_11d
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1446
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v0, 0x1

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v0, 0x2

    sub-int v11, v2, v0

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1447
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v8, 0x5c

    aput-char v8, v7, v0

    .line 1448
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v8, v6

    aput-char v6, v7, v0

    .line 1449
    add-int/lit8 v2, v2, 0x1

    goto :goto_110

    .line 1454
    :cond_13f
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v3, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    goto/16 :goto_25

    :cond_149
    move v1, v0

    goto/16 :goto_37
.end method

.method private writeStringWithDoubleQuote(Ljava/lang/String;C)V
    .registers 4

    .prologue
    .line 508
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    .line 509
    return-void
.end method

.method private writeStringWithDoubleQuote(Ljava/lang/String;CZ)V
    .registers 15

    .prologue
    .line 512
    if-nez p1, :cond_b

    .line 513
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 514
    if-eqz p2, :cond_a

    .line 515
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 837
    :cond_a
    :goto_a
    return-void

    .line 520
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 521
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 522
    if-eqz p2, :cond_18

    .line 523
    add-int/lit8 v0, v0, 0x1

    .line 526
    :cond_18
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v0, v2, :cond_107

    .line 527
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v2, :cond_104

    .line 528
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 530
    const/4 v0, 0x0

    :goto_27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_f8

    .line 531
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 533
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 534
    const/16 v2, 0x8

    if-eq v1, v2, :cond_59

    const/16 v2, 0xc

    if-eq v1, v2, :cond_59

    const/16 v2, 0xa

    if-eq v1, v2, :cond_59

    const/16 v2, 0xd

    if-eq v1, v2, :cond_59

    const/16 v2, 0x9

    if-eq v1, v2, :cond_59

    const/16 v2, 0x22

    if-eq v1, v2, :cond_59

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_59

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_68

    .line 542
    :cond_59
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 543
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 530
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 547
    :cond_68
    const/16 v2, 0x20

    if-ge v1, v2, :cond_95

    .line 548
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 549
    const/16 v2, 0x75

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 550
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 551
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 552
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v3, v1, 0x2

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 553
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_65

    .line 557
    :cond_95
    const/16 v2, 0x7f

    if-lt v1, v2, :cond_f3

    .line 558
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 559
    const/16 v2, 0x75

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 560
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 561
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v3, v1, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 562
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 563
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_65

    .line 567
    :cond_ce
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v2, v2

    if-ge v1, v2, :cond_d9

    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_e5

    :cond_d9
    const/16 v2, 0x2f

    if-ne v1, v2, :cond_f3

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 570
    :cond_e5
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 571
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto/16 :goto_65

    .line 576
    :cond_f3
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto/16 :goto_65

    .line 579
    :cond_f8
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 580
    if-eqz p2, :cond_a

    .line 581
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto/16 :goto_a

    .line 585
    :cond_104
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 588
    :cond_107
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v2, 0x1

    .line 589
    add-int v7, v8, v1

    .line 591
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v4, 0x22

    aput-char v4, v2, v3

    .line 592
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v2, v1, v3, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 594
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 596
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_2ac

    .line 597
    const/4 v1, -0x1

    move v2, v0

    move v0, v1

    move v1, v8

    .line 599
    :goto_129
    if-ge v1, v7, :cond_16d

    .line 600
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v3, v3, v1

    .line 602
    const/16 v4, 0x22

    if-eq v3, v4, :cond_13b

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_13b

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_142

    .line 606
    :cond_13b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    .line 599
    :cond_13f
    :goto_13f
    add-int/lit8 v1, v1, 0x1

    goto :goto_129

    .line 610
    :cond_142
    const/16 v4, 0x8

    if-eq v3, v4, :cond_156

    const/16 v4, 0xc

    if-eq v3, v4, :cond_156

    const/16 v4, 0xa

    if-eq v3, v4, :cond_156

    const/16 v4, 0xd

    if-eq v3, v4, :cond_156

    const/16 v4, 0x9

    if-ne v3, v4, :cond_15b

    .line 616
    :cond_156
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    .line 617
    goto :goto_13f

    .line 620
    :cond_15b
    const/16 v4, 0x20

    if-ge v3, v4, :cond_164

    .line 622
    add-int/lit8 v0, v2, 0x5

    move v2, v0

    move v0, v1

    .line 623
    goto :goto_13f

    .line 626
    :cond_164
    const/16 v4, 0x7f

    if-lt v3, v4, :cond_13f

    .line 628
    add-int/lit8 v0, v2, 0x5

    move v2, v0

    move v0, v1

    .line 629
    goto :goto_13f

    .line 633
    :cond_16d
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v2, v1, :cond_175

    .line 634
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 636
    :cond_175
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move v1, v0

    move v0, v7

    .line 638
    :goto_179
    if-lt v1, v8, :cond_28a

    .line 639
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v2, v2, v1

    .line 641
    const/16 v3, 0x8

    if-eq v2, v3, :cond_193

    const/16 v3, 0xc

    if-eq v2, v3, :cond_193

    const/16 v3, 0xa

    if-eq v2, v3, :cond_193

    const/16 v3, 0xd

    if-eq v2, v3, :cond_193

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1b7

    .line 646
    :cond_193
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x2

    sub-int v7, v0, v1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 647
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    .line 648
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v2, v5, v2

    aput-char v2, v3, v4

    .line 649
    add-int/lit8 v0, v0, 0x1

    .line 638
    :cond_1b4
    :goto_1b4
    add-int/lit8 v1, v1, -0x1

    goto :goto_179

    .line 653
    :cond_1b7
    const/16 v3, 0x22

    if-eq v2, v3, :cond_1c3

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_1c3

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_1e1

    .line 656
    :cond_1c3
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x2

    sub-int v7, v0, v1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 657
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    .line 658
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    aput-char v2, v3, v4

    .line 659
    add-int/lit8 v0, v0, 0x1

    .line 660
    goto :goto_1b4

    .line 663
    :cond_1e1
    const/16 v3, 0x20

    if-ge v2, v3, :cond_22f

    .line 664
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x6

    sub-int v7, v0, v1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 665
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    .line 666
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x75

    aput-char v5, v3, v4

    .line 667
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x2

    const/16 v5, 0x30

    aput-char v5, v3, v4

    .line 668
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x3

    const/16 v5, 0x30

    aput-char v5, v3, v4

    .line 669
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x4

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v6, v2, 0x2

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 670
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x5

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-char v2, v5, v2

    aput-char v2, v3, v4

    .line 671
    add-int/lit8 v0, v0, 0x5

    .line 672
    goto :goto_1b4

    .line 675
    :cond_22f
    const/16 v3, 0x7f

    if-lt v2, v3, :cond_1b4

    .line 676
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x6

    sub-int v7, v0, v1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    .line 678
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x75

    aput-char v5, v3, v4

    .line 679
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x2

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v2, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 680
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x3

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v2, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 681
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x4

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v2, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 682
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x5

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v5, v2

    aput-char v2, v3, v4

    .line 683
    add-int/lit8 v0, v0, 0x5

    goto/16 :goto_1b4

    .line 687
    :cond_28a
    if-eqz p2, :cond_2a0

    .line 688
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 689
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    aput-char p2, v0, v1

    goto/16 :goto_a

    .line 691
    :cond_2a0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    goto/16 :goto_a

    .line 697
    :cond_2ac
    const/4 v5, 0x0

    .line 698
    const/4 v4, -0x1

    .line 699
    const/4 v2, -0x1

    .line 700
    const/4 v3, 0x0

    .line 701
    if-eqz p3, :cond_362

    move v1, v8

    move v6, v0

    move v0, v2

    .line 702
    :goto_2b5
    if-ge v1, v7, :cond_310

    .line 703
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v2, v2, v1

    .line 705
    const/16 v9, 0x2028

    if-ne v2, v9, :cond_2d3

    .line 706
    add-int/lit8 v3, v5, 0x1

    .line 709
    add-int/lit8 v4, v6, 0x4

    .line 711
    const/4 v5, -0x1

    if-ne v0, v5, :cond_4e5

    move v0, v2

    move v5, v4

    move v4, v3

    move v2, v1

    move v3, v1

    .line 702
    :goto_2cb
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    move v0, v2

    goto :goto_2b5

    .line 717
    :cond_2d3
    const/16 v9, 0x5d

    if-lt v2, v9, :cond_2ee

    .line 718
    const/16 v9, 0x7f

    if-lt v2, v9, :cond_4f0

    const/16 v9, 0xa0

    if-gt v2, v9, :cond_4f0

    .line 719
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2e3

    move v0, v1

    .line 723
    :cond_2e3
    add-int/lit8 v3, v5, 0x1

    .line 726
    add-int/lit8 v4, v6, 0x4

    move v5, v4

    move v4, v3

    move v3, v1

    move v10, v0

    move v0, v2

    move v2, v10

    goto :goto_2cb

    .line 731
    :cond_2ee
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-static {v2, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isSpecial(CI)Z

    move-result v9

    if-eqz v9, :cond_4f0

    .line 732
    add-int/lit8 v3, v5, 0x1

    .line 736
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v4, v4

    if-ge v2, v4, :cond_4ed

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v4, v4, v2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4ed

    .line 739
    add-int/lit8 v6, v6, 0x4

    move v4, v6

    .line 742
    :goto_307
    const/4 v5, -0x1

    if-ne v0, v5, :cond_4e5

    move v0, v2

    move v5, v4

    move v4, v3

    move v2, v1

    move v3, v1

    .line 743
    goto :goto_2cb

    .line 748
    :cond_310
    if-lez v5, :cond_362

    .line 749
    add-int v1, v6, v5

    .line 750
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_31c

    .line 751
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 753
    :cond_31c
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 755
    const/4 v1, 0x1

    if-ne v5, v1, :cond_3fb

    .line 756
    const/16 v0, 0x2028

    if-ne v3, v0, :cond_378

    .line 757
    add-int/lit8 v0, v4, 0x1

    .line 758
    add-int/lit8 v1, v4, 0x6

    .line 759
    sub-int v2, v7, v4

    add-int/lit8 v2, v2, -0x1

    .line 760
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v3, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 761
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v1, 0x5c

    aput-char v1, v0, v4

    .line 762
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 763
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x32

    aput-char v2, v0, v1

    .line 764
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x30

    aput-char v2, v0, v1

    .line 765
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x32

    aput-char v2, v0, v1

    .line 766
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x38

    aput-char v2, v0, v1

    .line 831
    :cond_362
    :goto_362
    if-eqz p2, :cond_4d9

    .line 832
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 833
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    aput-char p2, v0, v1

    goto/16 :goto_a

    .line 769
    :cond_378
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v0, v0

    if-ge v3, v0, :cond_3da

    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v0, v0, v3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3da

    .line 771
    add-int/lit8 v0, v4, 0x1

    .line 772
    add-int/lit8 v1, v4, 0x6

    .line 773
    sub-int v2, v7, v4

    add-int/lit8 v2, v2, -0x1

    .line 774
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    const/16 v2, 0x5c

    aput-char v2, v0, v4

    .line 778
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x75

    aput-char v4, v0, v1

    .line 779
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v2, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 780
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v1

    .line 781
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v2, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 782
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_362

    .line 784
    :cond_3da
    add-int/lit8 v0, v4, 0x1

    .line 785
    add-int/lit8 v1, v4, 0x2

    .line 786
    sub-int v2, v7, v4

    add-int/lit8 v2, v2, -0x1

    .line 787
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v1, 0x5c

    aput-char v1, v0, v4

    .line 789
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto/16 :goto_362

    .line 792
    :cond_3fb
    const/4 v1, 0x1

    if-le v5, v1, :cond_362

    .line 793
    sub-int v1, v0, v8

    move v2, v7

    move v10, v0

    move v0, v1

    move v1, v10

    .line 795
    :goto_404
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_362

    .line 796
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 798
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v3, v3

    if-ge v4, v3, :cond_419

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v3, v3, v4

    if-nez v3, :cond_425

    :cond_419
    const/16 v3, 0x2f

    if-ne v4, v3, :cond_484

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_484

    .line 801
    :cond_425
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0x5c

    aput-char v6, v3, v1

    .line 802
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v1, v1, v4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_477

    .line 803
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x75

    aput-char v6, v1, v5

    .line 804
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 805
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    .line 806
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 807
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 808
    add-int/lit8 v2, v2, 0x5

    .line 795
    :goto_474
    add-int/lit8 v0, v0, 0x1

    goto :goto_404

    .line 810
    :cond_477
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 811
    add-int/lit8 v2, v2, 0x1

    goto :goto_474

    .line 814
    :cond_484
    const/16 v3, 0x2028

    if-ne v4, v3, :cond_4d1

    .line 815
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0x5c

    aput-char v6, v3, v1

    .line 816
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x75

    aput-char v6, v1, v5

    .line 817
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 818
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    .line 819
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 820
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 821
    add-int/lit8 v2, v2, 0x5

    goto :goto_474

    .line 823
    :cond_4d1
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v1, 0x1

    aput-char v4, v5, v1

    move v1, v3

    goto :goto_474

    .line 835
    :cond_4d9
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    goto/16 :goto_a

    :cond_4e5
    move v5, v4

    move v4, v3

    move v3, v1

    move v10, v0

    move v0, v2

    move v2, v10

    goto/16 :goto_2cb

    :cond_4ed
    move v4, v6

    goto/16 :goto_307

    :cond_4f0
    move v2, v0

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_2cb
.end method

.method private writeStringWithSingleQuote(Ljava/lang/String;)V
    .registers 16

    .prologue
    const/16 v12, 0x2f

    const/16 v11, 0xd

    const/4 v0, 0x0

    const/16 v10, 0x5c

    const/16 v9, 0x27

    .line 1148
    if-nez p1, :cond_24

    .line 1149
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, 0x4

    .line 1150
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_17

    .line 1151
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1153
    :cond_17
    const-string v2, "null"

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v2, v0, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1154
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1228
    :goto_23
    return-void

    .line 1158
    :cond_24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1159
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v6, v2, 0x2

    .line 1160
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v6, v2, :cond_6b

    .line 1161
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v2, :cond_68

    .line 1162
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1163
    :goto_39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_64

    .line 1164
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1165
    if-le v1, v11, :cond_53

    if-eq v1, v10, :cond_53

    if-eq v1, v9, :cond_53

    if-ne v1, v12, :cond_60

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1167
    :cond_53
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1168
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1163
    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 1170
    :cond_60
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_5d

    .line 1173
    :cond_64
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_23

    .line 1176
    :cond_68
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1179
    :cond_6b
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v2, 0x1

    .line 1180
    add-int v7, v5, v1

    .line 1182
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v9, v2, v3

    .line 1183
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v0, v1, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1184
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1187
    const/4 v2, -0x1

    move v3, v5

    move v4, v0

    .line 1189
    :goto_81
    if-ge v3, v7, :cond_a1

    .line 1190
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v1, v1, v3

    .line 1191
    if-le v1, v11, :cond_97

    if-eq v1, v10, :cond_97

    if-eq v1, v9, :cond_97

    if-ne v1, v12, :cond_136

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v8

    if-eqz v8, :cond_136

    .line 1193
    :cond_97
    add-int/lit8 v0, v4, 0x1

    move v2, v0

    move v0, v1

    move v1, v3

    .line 1189
    :goto_9c
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    move v2, v1

    goto :goto_81

    .line 1199
    :cond_a1
    add-int v1, v6, v4

    .line 1200
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v1, v3, :cond_ab

    .line 1201
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1203
    :cond_ab
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1205
    const/4 v1, 0x1

    if-ne v4, v1, :cond_d7

    .line 1206
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v2, 0x2

    sub-int v6, v7, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1207
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v10, v1, v2

    .line 1208
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v0, v3, v0

    aput-char v0, v1, v2

    .line 1227
    :cond_cd
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    aput-char v9, v0, v1

    goto/16 :goto_23

    .line 1209
    :cond_d7
    const/4 v1, 0x1

    if-le v4, v1, :cond_cd

    .line 1210
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v2, 0x2

    sub-int v8, v7, v2

    add-int/lit8 v8, v8, -0x1

    invoke-static {v1, v3, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1211
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v10, v1, v2

    .line 1212
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v0, v3, v0

    aput-char v0, v1, v2

    .line 1213
    add-int/lit8 v1, v7, 0x1

    .line 1214
    add-int/lit8 v0, v2, -0x2

    move v13, v0

    move v0, v1

    move v1, v13

    :goto_fe
    if-lt v1, v5, :cond_cd

    .line 1215
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v2, v2, v1

    .line 1217
    if-le v2, v11, :cond_114

    if-eq v2, v10, :cond_114

    if-eq v2, v9, :cond_114

    if-ne v2, v12, :cond_133

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_133

    .line 1219
    :cond_114
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x2

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1220
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v10, v3, v1

    .line 1221
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v2, v6, v2

    aput-char v2, v3, v4

    .line 1222
    add-int/lit8 v0, v0, 0x1

    .line 1214
    :cond_133
    add-int/lit8 v1, v1, -0x1

    goto :goto_fe

    :cond_136
    move v1, v2

    move v2, v4

    goto/16 :goto_9c
.end method


# virtual methods
.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .registers 2

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 275
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .registers 5

    .prologue
    .line 262
    if-nez p1, :cond_d

    const-string v0, "null"

    .line 263
    :goto_4
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 264
    return-object p0

    .line 262
    :cond_d
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .registers 7

    .prologue
    .line 268
    if-nez p1, :cond_4

    const-string p1, "null"

    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 270
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .registers 3

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 3

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 5

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 4

    .prologue
    .line 326
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-lez v0, :cond_b

    .line 327
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 329
    :cond_b
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_1e

    .line 330
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 333
    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 334
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .registers 5

    .prologue
    .line 116
    if-eqz p2, :cond_c

    .line 117
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 121
    :goto_b
    return-void

    .line 119
    :cond_c
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_b
.end method

.method public expandCapacity(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 198
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 200
    if-ge v0, p1, :cond_18

    .line 203
    :goto_c
    new-array v0, p1, [C

    .line 204
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 206
    return-void

    :cond_18
    move p1, v0

    goto :goto_c
.end method

.method public flush()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1458
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_6

    .line 1469
    :goto_5
    return-void

    .line 1463
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 1464
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_15} :catch_18

    .line 1468
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_5

    .line 1465
    :catch_18
    move-exception v0

    .line 1466
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBufferLength()I
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    return v0
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .registers 3

    .prologue
    .line 124
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 280
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 314
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return v0
.end method

.method public toBytes(Ljava/lang/String;)[B
    .registers 6

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_c

    .line 299
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_c
    if-nez p1, :cond_10

    .line 303
    const-string p1, "UTF-8"

    .line 307
    :cond_10
    :try_start_10
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_1d} :catch_1f

    move-result-object v0

    return-object v0

    .line 308
    :catch_1f
    move-exception v0

    .line 309
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "toBytes error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toCharArray()[C
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 288
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_d

    .line 289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_d
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    new-array v0, v0, [C

    .line 293
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 318
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(C)V
    .registers 5

    .prologue
    .line 145
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 146
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_10

    .line 147
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_19

    .line 148
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 154
    :cond_10
    :goto_10
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v1, v2

    .line 155
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 156
    return-void

    .line 150
    :cond_19
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 151
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public write(I)V
    .registers 6

    .prologue
    .line 131
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 132
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_10

    .line 133
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1a

    .line 134
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 140
    :cond_10
    :goto_10
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 141
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 142
    return-void

    .line 136
    :cond_1a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 137
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public write(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 337
    if-nez p1, :cond_6

    .line 338
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 343
    :goto_5
    return-void

    .line 342
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    goto :goto_5
.end method

.method public write(Ljava/lang/String;II)V
    .registers 9

    .prologue
    .line 216
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 217
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_3d

    .line 218
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1d

    .line 219
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    move v4, v0

    move v0, p3

    move p3, v4

    .line 232
    :goto_12
    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 233
    iput p3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 234
    return-void

    .line 222
    :cond_1d
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v0, v1

    .line 223
    add-int v1, p2, v0

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 224
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 225
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 226
    sub-int/2addr p3, v0

    .line 227
    add-int/2addr p2, v0

    .line 228
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-gt p3, v0, :cond_1d

    move v0, p3

    .line 229
    goto :goto_12

    :cond_3d
    move v4, v0

    move v0, p3

    move p3, v4

    goto :goto_12
.end method

.method public write(Z)V
    .registers 3

    .prologue
    .line 840
    if-eqz p1, :cond_8

    .line 841
    const-string v0, "true"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 845
    :goto_7
    return-void

    .line 843
    :cond_8
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public write([CII)V
    .registers 8

    .prologue
    .line 166
    if-ltz p2, :cond_10

    array-length v0, p1

    if-gt p2, v0, :cond_10

    if-ltz p3, :cond_10

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_10

    add-int v0, p2, p3

    if-gez v0, :cond_16

    .line 171
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 172
    :cond_16
    if-nez p3, :cond_19

    .line 195
    :goto_18
    return-void

    .line 176
    :cond_19
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 177
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_53

    .line 178
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_35

    .line 179
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    move v3, v0

    move v0, p3

    move p3, v3

    .line 192
    :goto_2b
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iput p3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_18

    .line 182
    :cond_35
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v0, v1

    .line 183
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 185
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 186
    sub-int/2addr p3, v0

    .line 187
    add-int/2addr p2, v0

    .line 188
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-gt p3, v0, :cond_35

    move v0, p3

    .line 189
    goto :goto_2b

    :cond_53
    move v3, v0

    move v0, p3

    move p3, v3

    goto :goto_2b
.end method

.method public writeByteArray([B)V
    .registers 16

    .prologue
    const/16 v1, 0x3d

    const/4 v13, 0x2

    const/4 v0, 0x0

    .line 371
    array-length v5, p1

    .line 372
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    .line 373
    if-eqz v3, :cond_1a

    const/16 v2, 0x27

    move v4, v2

    .line 375
    :goto_10
    if-nez v5, :cond_21

    .line 376
    if-eqz v3, :cond_1e

    const-string v0, "\'\'"

    .line 377
    :goto_16
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 449
    :goto_19
    return-void

    .line 373
    :cond_1a
    const/16 v2, 0x22

    move v4, v2

    goto :goto_10

    .line 376
    :cond_1e
    const-string v0, "\"\""

    goto :goto_16

    .line 381
    :cond_21
    sget-object v6, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    .line 383
    div-int/lit8 v2, v5, 0x3

    mul-int/lit8 v7, v2, 0x3

    .line 384
    add-int/lit8 v2, v5, -0x1

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x2

    .line 386
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 387
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v8

    add-int/lit8 v8, v2, 0x2

    .line 388
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v8, v2, :cond_bb

    .line 389
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v2, :cond_b8

    .line 390
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    move v2, v0

    .line 392
    :goto_43
    if-ge v2, v7, :cond_80

    .line 394
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v8, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v2

    add-int/lit8 v2, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v3, v8

    .line 397
    ushr-int/lit8 v8, v3, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v6, v8

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 398
    ushr-int/lit8 v8, v3, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v6, v8

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 399
    ushr-int/lit8 v8, v3, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v6, v8

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 400
    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v6, v3

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_43

    .line 404
    :cond_80
    sub-int v2, v5, v7

    .line 405
    if-lez v2, :cond_b1

    .line 407
    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xa

    if-ne v2, v13, :cond_94

    add-int/lit8 v0, v5, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    :cond_94
    or-int/2addr v0, v3

    .line 410
    shr-int/lit8 v3, v0, 0xc

    aget-char v3, v6, v3

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 411
    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v6, v3

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 412
    if-ne v2, v13, :cond_b6

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v6, v0

    :goto_ab
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 413
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 416
    :cond_b1
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto/16 :goto_19

    :cond_b6
    move v0, v1

    .line 412
    goto :goto_ab

    .line 419
    :cond_b8
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 421
    :cond_bb
    iput v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 422
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v3, 0x1

    aput-char v4, v9, v3

    move v3, v0

    .line 425
    :goto_c4
    if-ge v3, v7, :cond_10d

    .line 427
    add-int/lit8 v9, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v3

    add-int/lit8 v3, v10, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    .line 430
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v2, 0x1

    ushr-int/lit8 v12, v9, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v6, v12

    aput-char v12, v10, v2

    .line 431
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v11, 0x1

    ushr-int/lit8 v12, v9, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v6, v12

    aput-char v12, v2, v11

    .line 432
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v10, 0x1

    ushr-int/lit8 v12, v9, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v6, v12

    aput-char v12, v2, v10

    .line 433
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v11, 0x1

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v6, v9

    aput-char v9, v10, v11

    goto :goto_c4

    .line 437
    :cond_10d
    sub-int v2, v5, v7

    .line 438
    if-lez v2, :cond_14a

    .line 440
    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xa

    if-ne v2, v13, :cond_121

    add-int/lit8 v0, v5, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    :cond_121
    or-int/2addr v0, v3

    .line 443
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v8, -0x5

    shr-int/lit8 v7, v0, 0xc

    aget-char v7, v6, v7

    aput-char v7, v3, v5

    .line 444
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v8, -0x4

    ushr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-char v7, v6, v7

    aput-char v7, v3, v5

    .line 445
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v8, -0x3

    if-ne v2, v13, :cond_152

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v6, v0

    :goto_142
    aput-char v0, v3, v5

    .line 446
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v8, -0x2

    aput-char v1, v0, v2

    .line 448
    :cond_14a
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v8, -0x1

    aput-char v4, v0, v1

    goto/16 :goto_19

    :cond_152
    move v0, v1

    .line 445
    goto :goto_142
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 1232
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;Z)V
    .registers 5

    .prologue
    const/16 v1, 0x3a

    .line 1235
    if-nez p1, :cond_a

    .line 1236
    const-string v0, "null:"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1254
    :goto_9
    return-void

    .line 1240
    :cond_a
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1241
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1242
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_9

    .line 1245
    :cond_21
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_9

    .line 1248
    :cond_25
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1249
    invoke-direct {p0, p1, v1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto :goto_9

    .line 1251
    :cond_31
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public writeFieldValue(CLjava/lang/String;J)V
    .registers 11

    .prologue
    .line 848
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p3, v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 849
    :cond_e
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue1(CLjava/lang/String;J)V

    .line 884
    :goto_11
    return-void

    .line 853
    :cond_12
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/16 v0, 0x27

    move v1, v0

    .line 855
    :goto_1d
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-gez v0, :cond_4b

    neg-long v2, p3

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 857
    :goto_2a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 858
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 859
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v0, v3, :cond_53

    .line 860
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_50

    .line 861
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 862
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_11

    .line 853
    :cond_47
    const/16 v0, 0x22

    move v1, v0

    goto :goto_1d

    .line 855
    :cond_4b
    invoke-static {p3, p4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_2a

    .line 866
    :cond_50
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 869
    :cond_53
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 870
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 872
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v0, v3

    .line 874
    add-int v0, v3, v2

    add-int/lit8 v0, v0, 0x1

    .line 876
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v1, v4, v5

    .line 878
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p2, v4, v2, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 880
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v0, 0x1

    aput-char v1, v2, v3

    .line 881
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x2

    const/16 v2, 0x3a

    aput-char v2, v1, v0

    .line 883
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, p4, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    goto :goto_11
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 893
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 894
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 895
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 896
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 897
    if-nez p3, :cond_1c

    .line 898
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 920
    :goto_1b
    return-void

    .line 900
    :cond_1c
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_1b

    .line 903
    :cond_20
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 904
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 905
    const/16 v0, 0x3a

    invoke-direct {p0, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 906
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_1b

    .line 908
    :cond_35
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1b

    .line 912
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 913
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 914
    if-nez p3, :cond_46

    .line 915
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_1b

    .line 917
    :cond_46
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public writeFieldValue1(CLjava/lang/String;J)V
    .registers 5

    .prologue
    .line 887
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 888
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 890
    return-void
.end method

.method public writeInt(I)V
    .registers 6

    .prologue
    .line 346
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_a

    .line 347
    const-string v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 368
    :goto_9
    return-void

    .line 351
    :cond_a
    if-gez p1, :cond_2b

    neg-int v0, p1

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 353
    :goto_13
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    .line 354
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_22

    .line 355
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_30

    .line 356
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 365
    :cond_22
    int-to-long v2, p1

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v2, v3, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 367
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_9

    .line 351
    :cond_2b
    invoke-static {p1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    goto :goto_13

    .line 358
    :cond_30
    new-array v1, v0, [C

    .line 359
    int-to-long v2, p1

    invoke-static {v2, v3, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 360
    const/4 v0, 0x0

    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto :goto_9
.end method

.method public writeLong(J)V
    .registers 6

    .prologue
    .line 479
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 480
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 501
    :goto_b
    return-void

    .line 484
    :cond_c
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_30

    neg-long v0, p1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 486
    :goto_19
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    .line 487
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_28

    .line 488
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_35

    .line 489
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 498
    :cond_28
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 500
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_b

    .line 484
    :cond_30
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_19

    .line 491
    :cond_35
    new-array v1, v0, [C

    .line 492
    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 493
    const/4 v0, 0x0

    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto :goto_b
.end method

.method public writeLongAndChar(JC)V
    .registers 7

    .prologue
    .line 452
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    .line 453
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 476
    :goto_e
    return-void

    .line 458
    :cond_f
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_31

    neg-long v0, p1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 460
    :goto_1c
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v1

    .line 461
    add-int/lit8 v1, v0, 0x1

    .line 463
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_39

    .line 464
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v2, :cond_36

    .line 465
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 466
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_e

    .line 458
    :cond_31
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_1c

    .line 469
    :cond_36
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 472
    :cond_39
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v0, v2}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 473
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p3, v2, v0

    .line 475
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_e
.end method

.method public writeNull()V
    .registers 2

    .prologue
    .line 504
    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1140
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1141
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 1145
    :goto_b
    return-void

    .line 1143
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_b
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 250
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 251
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 7

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_c

    .line 255
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_c
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 258
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 259
    return-void
.end method

.method public writeTo(Ljava/io/Writer;)V
    .registers 5

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_c

    .line 244
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 247
    return-void
.end method
