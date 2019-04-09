.class public Lorg/apache/commons/codecc/language/DoubleMetaphone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codecc/StringEncoder;


# static fields
.field private static final ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

.field private static final L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

.field private static final L_T_K_S_N_M_B_Z:[Ljava/lang/String;

.field private static final SILENT_START:[Ljava/lang/String;

.field private static final VOWELS:Ljava/lang/String; = "AEIOUY"


# instance fields
.field private maxCodeLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GN"

    aput-object v1, v0, v3

    const-string v1, "KN"

    aput-object v1, v0, v4

    const-string v1, "PN"

    aput-object v1, v0, v5

    const-string v1, "WR"

    aput-object v1, v0, v6

    const-string v1, "PS"

    aput-object v1, v0, v7

    .line 44
    sput-object v0, Lorg/apache/commons/codecc/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    .line 47
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "L"

    aput-object v1, v0, v3

    const-string v1, "R"

    aput-object v1, v0, v4

    const-string v1, "N"

    aput-object v1, v0, v5

    const-string v1, "M"

    aput-object v1, v0, v6

    const-string v1, "B"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "H"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " "

    aput-object v2, v0, v1

    .line 46
    sput-object v0, Lorg/apache/commons/codecc/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    .line 49
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ES"

    aput-object v1, v0, v3

    const-string v1, "EP"

    aput-object v1, v0, v4

    const-string v1, "EB"

    aput-object v1, v0, v5

    const-string v1, "EL"

    aput-object v1, v0, v6

    const-string v1, "EY"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "IB"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EI"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ER"

    aput-object v2, v0, v1

    .line 48
    sput-object v0, Lorg/apache/commons/codecc/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "L"

    aput-object v1, v0, v3

    const-string v1, "T"

    aput-object v1, v0, v4

    const-string v1, "K"

    aput-object v1, v0, v5

    const-string v1, "S"

    aput-object v1, v0, v6

    const-string v1, "N"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "M"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Z"

    aput-object v2, v0, v1

    .line 50
    sput-object v0, Lorg/apache/commons/codecc/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codecc/language/DoubleMetaphone;->maxCodeLen:I

    .line 63
    return-void
.end method

.method private cleanInput(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 918
    if-nez p1, :cond_4

    .line 925
    :cond_3
    :goto_3
    return-object v0

    .line 921
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 922
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 925
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private conditionC0(Ljava/lang/String;I)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 809
    const/4 v2, 0x4

    const-string v3, "CHIA"

    invoke-static {p1, p2, v2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 819
    :cond_b
    :goto_b
    return v0

    .line 811
    :cond_c
    if-gt p2, v0, :cond_10

    move v0, v1

    .line 812
    goto :goto_b

    .line 813
    :cond_10
    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->isVowel(C)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v0, v1

    .line 814
    goto :goto_b

    .line 815
    :cond_1e
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x3

    const-string v4, "ACH"

    invoke-static {p1, v2, v3, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    move v0, v1

    .line 816
    goto :goto_b

    .line 818
    :cond_2b
    add-int/lit8 v2, p2, 0x2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    .line 819
    const/16 v3, 0x49

    if-eq v2, v3, :cond_39

    const/16 v3, 0x45

    if-ne v2, v3, :cond_b

    .line 820
    :cond_39
    add-int/lit8 v2, p2, -0x2

    const/4 v3, 0x6

    const-string v4, "BACHER"

    const-string v5, "MACHER"

    invoke-static {p1, v2, v3, v4, v5}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    .line 819
    goto :goto_b
.end method

.method private conditionCH0(Ljava/lang/String;I)Z
    .registers 12

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 828
    if-eqz p2, :cond_6

    move v0, v7

    .line 836
    :goto_5
    return v0

    .line 830
    :cond_6
    add-int/lit8 v0, p2, 0x1

    const-string v1, "HARAC"

    const-string v2, "HARIS"

    invoke-static {p1, v0, v8, v1, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 831
    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x3

    const-string v3, "HOR"

    const-string v4, "HYM"

    const-string v5, "HIA"

    const-string v6, "HEM"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v7

    .line 832
    goto :goto_5

    .line 833
    :cond_26
    const-string v0, "CHORE"

    invoke-static {p1, v7, v8, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v7

    .line 834
    goto :goto_5

    .line 836
    :cond_30
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private conditionCH1(Ljava/lang/String;I)Z
    .registers 12

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 844
    const/4 v0, 0x4

    const-string v1, "VAN "

    const-string v2, "VON "

    invoke-static {p1, v7, v0, v1, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 845
    const/4 v0, 0x3

    const-string v1, "SCH"

    .line 844
    invoke-static {p1, v7, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    .line 845
    if-nez v0, :cond_5c

    .line 846
    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x6

    const-string v3, "ORCHES"

    const-string v4, "ARCHIT"

    const-string v5, "ORCHID"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 847
    add-int/lit8 v0, p2, 0x2

    const-string v1, "T"

    const-string v2, "S"

    invoke-static {p1, v0, v8, v1, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 848
    add-int/lit8 v1, p2, -0x1

    const-string v3, "A"

    const-string v4, "O"

    const-string v5, "U"

    const-string v6, "E"

    move-object v0, p1

    move v2, v8

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    if-nez p2, :cond_5a

    .line 849
    :cond_46
    add-int/lit8 v0, p2, 0x2

    sget-object v1, Lorg/apache/commons/codecc/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    invoke-static {p1, v0, v8, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_5c

    :cond_5a
    move v0, v7

    .line 844
    :goto_5b
    return v0

    :cond_5c
    move v0, v8

    goto :goto_5b
.end method

.method private conditionL0(Ljava/lang/String;I)Z
    .registers 10

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x1

    .line 856
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-ne p2, v0, :cond_1b

    .line 857
    add-int/lit8 v1, p2, -0x1

    const-string v3, "ILLO"

    const-string v4, "ILLA"

    const-string v5, "ALLE"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v6

    .line 864
    :goto_1a
    return v0

    .line 859
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x2

    const-string v3, "AS"

    const-string v4, "OS"

    invoke-static {p1, v0, v1, v3, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 860
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "A"

    const-string v3, "O"

    invoke-static {p1, v0, v6, v1, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 861
    :cond_3c
    add-int/lit8 v0, p2, -0x1

    const-string v1, "ALLE"

    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    move v0, v6

    .line 862
    goto :goto_1a

    .line 864
    :cond_48
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private conditionM0(Ljava/lang/String;I)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 872
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_c

    .line 875
    :cond_b
    :goto_b
    return v0

    :cond_c
    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x3

    const-string v3, "UMB"

    invoke-static {p1, v1, v2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 876
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_b

    .line 877
    add-int/lit8 v1, p2, 0x2

    const/4 v2, 0x2

    const-string v3, "ER"

    .line 876
    invoke-static {p1, v1, v2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    .line 877
    if-nez v1, :cond_b

    .line 875
    :cond_2c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 6

    .prologue
    .line 945
    .line 946
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 945
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 954
    .line 955
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    .line 954
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .prologue
    .line 964
    .line 965
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    .line 964
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .prologue
    .line 974
    .line 975
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    .line 976
    aput-object p6, v0, v1

    .line 974
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .prologue
    .line 986
    .line 987
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    .line 988
    aput-object p6, v0, v1

    const/4 v1, 0x4

    aput-object p7, v0, v1

    .line 986
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .prologue
    .line 998
    .line 999
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    .line 1000
    aput-object p6, v0, v1

    const/4 v1, 0x4

    aput-object p7, v0, v1

    const/4 v1, 0x5

    aput-object p8, v0, v1

    .line 998
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static contains(Ljava/lang/String;II[Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1009
    .line 1010
    if-ltz p1, :cond_15

    add-int v0, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_15

    .line 1011
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 1013
    :goto_12
    array-length v3, p3

    if-lt v0, v3, :cond_16

    .line 1020
    :cond_15
    :goto_15
    return v1

    .line 1014
    :cond_16
    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1015
    const/4 v1, 0x1

    .line 1016
    goto :goto_15

    .line 1013
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method private handleAEIOUY(Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 4

    .prologue
    .line 269
    if-nez p2, :cond_7

    .line 270
    const/16 v0, 0x41

    invoke-virtual {p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 272
    :cond_7
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method private handleC(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 14

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x58

    const/16 v7, 0x4b

    const/16 v6, 0x53

    const/4 v2, 0x2

    .line 281
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->conditionC0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 282
    invoke-virtual {p2, v7}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 283
    add-int/lit8 v0, p3, 0x2

    .line 326
    :goto_13
    return v0

    .line 284
    :cond_14
    if-nez p3, :cond_25

    const/4 v0, 0x6

    const-string v1, "CAESAR"

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 285
    invoke-virtual {p2, v6}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 286
    add-int/lit8 v0, p3, 0x2

    .line 287
    goto :goto_13

    :cond_25
    const-string v0, "CH"

    invoke-static {p1, p3, v2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 288
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleCH(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_13

    .line 289
    :cond_32
    const-string v0, "CZ"

    invoke-static {p1, p3, v2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 290
    add-int/lit8 v0, p3, -0x2

    const/4 v1, 0x4

    const-string v3, "WICZ"

    invoke-static {p1, v0, v1, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 292
    invoke-virtual {p2, v6, v8}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 293
    add-int/lit8 v0, p3, 0x2

    .line 294
    goto :goto_13

    :cond_4b
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x3

    const-string v3, "CIA"

    invoke-static {p1, v0, v1, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 296
    invoke-virtual {p2, v8}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 297
    add-int/lit8 v0, p3, 0x3

    .line 298
    goto :goto_13

    :cond_5c
    const-string v0, "CC"

    invoke-static {p1, p3, v2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 299
    if-ne p3, v9, :cond_6f

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_74

    .line 301
    :cond_6f
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleCC(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_13

    .line 302
    :cond_74
    const-string v3, "CK"

    const-string v4, "CG"

    const-string v5, "CQ"

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 303
    invoke-virtual {p2, v7}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 304
    add-int/lit8 v0, p3, 0x2

    .line 305
    goto :goto_13

    :cond_88
    const-string v3, "CI"

    const-string v4, "CE"

    const-string v5, "CY"

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 307
    const/4 v2, 0x3

    const-string v3, "CIO"

    const-string v4, "CIE"

    const-string v5, "CIA"

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 308
    invoke-virtual {p2, v6, v8}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 312
    :goto_a8
    add-int/lit8 v0, p3, 0x2

    .line 313
    goto/16 :goto_13

    .line 310
    :cond_ac
    invoke-virtual {p2, v6}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_a8

    .line 314
    :cond_b0
    invoke-virtual {p2, v7}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 21
    add-int/lit8 v1, p3, 0x1

    const-string v3, " C"

    const-string v4, " Q"

    const-string v5, " G"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 49
    add-int/lit8 v0, p3, 0x3

    .line 318
    goto/16 :goto_13

    :cond_c6
    add-int/lit8 v4, p3, 0x1

    const-string v6, "C"

    const-string v7, "K"

    const-string v8, "Q"

    move-object v3, p1

    move v5, v9

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 319
    add-int/lit8 v0, p3, 0x1

    const-string v1, "CE"

    const-string v3, "CI"

    invoke-static {p1, v0, v2, v1, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e6

    .line 320
    add-int/lit8 v0, p3, 0x2

    .line 321
    goto/16 :goto_13

    .line 322
    :cond_e6
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_13
.end method

.method private handleCC(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 10

    .prologue
    const/4 v2, 0x1

    .line 335
    add-int/lit8 v1, p3, 0x2

    const-string v3, "I"

    const-string v4, "E"

    const-string v5, "H"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 336
    add-int/lit8 v0, p3, 0x2

    const/4 v1, 0x2

    const-string v3, "HU"

    invoke-static {p1, v0, v1, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 338
    if-ne p3, v2, :cond_27

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_34

    .line 339
    :cond_27
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x5

    const-string v2, "UCCEE"

    const-string v3, "UCCES"

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 341
    :cond_34
    const-string v0, "KS"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 346
    :goto_39
    add-int/lit8 v0, p3, 0x3

    .line 352
    :goto_3b
    return v0

    .line 344
    :cond_3c
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_39

    .line 348
    :cond_42
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 349
    add-int/lit8 v0, p3, 0x2

    goto :goto_3b
.end method

.method private handleCH(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 9

    .prologue
    const/16 v4, 0x58

    const/16 v3, 0x4b

    .line 361
    if-lez p3, :cond_15

    const/4 v0, 0x4

    const-string v1, "CHAE"

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 362
    invoke-virtual {p2, v3, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 363
    add-int/lit8 v0, p3, 0x2

    .line 382
    :goto_14
    return v0

    .line 364
    :cond_15
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->conditionCH0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 366
    invoke-virtual {p2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 367
    add-int/lit8 v0, p3, 0x2

    goto :goto_14

    .line 368
    :cond_21
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->conditionCH1(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 370
    invoke-virtual {p2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 371
    add-int/lit8 v0, p3, 0x2

    goto :goto_14

    .line 373
    :cond_2d
    if-lez p3, :cond_43

    .line 374
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "MC"

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 375
    invoke-virtual {p2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 382
    :goto_3c
    add-int/lit8 v0, p3, 0x2

    goto :goto_14

    .line 377
    :cond_3f
    invoke-virtual {p2, v4, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_3c

    .line 380
    :cond_43
    invoke-virtual {p2, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_3c
.end method

.method private handleD(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 10

    .prologue
    const/16 v3, 0x54

    const/4 v2, 0x2

    .line 392
    const-string v0, "DG"

    invoke-static {p1, p3, v2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 394
    add-int/lit8 v1, p3, 0x2

    const/4 v2, 0x1

    const-string v3, "I"

    const-string v4, "E"

    const-string v5, "Y"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 395
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 396
    add-int/lit8 v0, p3, 0x3

    .line 409
    :goto_22
    return v0

    .line 399
    :cond_23
    const-string v0, "TK"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 400
    add-int/lit8 v0, p3, 0x2

    .line 402
    goto :goto_22

    :cond_2b
    const-string v0, "DT"

    const-string v1, "DD"

    invoke-static {p1, p3, v2, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 403
    invoke-virtual {p2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 404
    add-int/lit8 v0, p3, 0x2

    .line 405
    goto :goto_22

    .line 406
    :cond_3b
    invoke-virtual {p2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 407
    add-int/lit8 v0, p3, 0x1

    goto :goto_22
.end method

.method private handleG(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .registers 11

    .prologue
    .line 419
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_f

    .line 420
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleGH(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 465
    :goto_e
    return v0

    .line 421
    :cond_f
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_58

    .line 422
    const/4 v0, 0x1

    if-ne p3, v0, :cond_33

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_33

    if-nez p4, :cond_33

    .line 423
    const-string v0, "KN"

    const-string v1, "N"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :goto_30
    add-int/lit8 v0, p3, 0x2

    .line 431
    goto :goto_e

    .line 424
    :cond_33
    add-int/lit8 v0, p3, 0x2

    const/4 v1, 0x2

    const-string v2, "EY"

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 425
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-eq v0, v1, :cond_52

    if-nez p4, :cond_52

    .line 426
    const-string v0, "N"

    const-string v1, "KN"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 428
    :cond_52
    const-string v0, "KN"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_30

    .line 431
    :cond_58
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    const-string v2, "LI"

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    if-nez p4, :cond_6f

    .line 432
    const-string v0, "KL"

    const-string v1, "L"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    add-int/lit8 v0, p3, 0x2

    .line 434
    goto :goto_e

    :cond_6f
    if-nez p3, :cond_91

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-eq v0, v1, :cond_86

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/commons/codecc/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 436
    :cond_86
    const/16 v0, 0x4b

    const/16 v1, 0x4a

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 437
    add-int/lit8 v0, p3, 0x2

    .line 438
    goto/16 :goto_e

    :cond_91
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    const-string v2, "ER"

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a6

    .line 439
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-ne v0, v1, :cond_da

    .line 440
    :cond_a6
    const/4 v1, 0x0

    const/4 v2, 0x6

    const-string v3, "DANGER"

    const-string v4, "RANGER"

    const-string v5, "MANGER"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_da

    .line 441
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x1

    const-string v2, "E"

    const-string v3, "I"

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_da

    .line 442
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x3

    const-string v2, "RGY"

    const-string v3, "OGY"

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_da

    .line 444
    const/16 v0, 0x4b

    const/16 v1, 0x4a

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 445
    add-int/lit8 v0, p3, 0x2

    .line 446
    goto/16 :goto_e

    :cond_da
    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    const-string v3, "E"

    const-string v4, "I"

    const-string v5, "Y"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f7

    .line 447
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x4

    const-string v2, "AGGI"

    const-string v3, "OGGI"

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 449
    :cond_f7
    const/4 v0, 0x0

    const/4 v1, 0x4

    const-string v2, "VAN "

    const-string v3, "VON "

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_118

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, "SCH"

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_118

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    const-string v2, "ET"

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 451
    :cond_118
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 457
    :goto_11d
    add-int/lit8 v0, p3, 0x2

    .line 458
    goto/16 :goto_e

    .line 452
    :cond_121
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x3

    const-string v2, "IER"

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 453
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_11d

    .line 455
    :cond_132
    const/16 v0, 0x4a

    const/16 v1, 0x4b

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_11d

    .line 458
    :cond_13a
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_14d

    .line 459
    add-int/lit8 v0, p3, 0x2

    .line 460
    const/16 v1, 0x4b

    invoke-virtual {p2, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto/16 :goto_e

    .line 462
    :cond_14d
    add-int/lit8 v0, p3, 0x1

    .line 463
    const/16 v1, 0x4b

    invoke-virtual {p2, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto/16 :goto_e
.end method

.method private handleGH(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 14

    .prologue
    const/16 v9, 0x49

    const/4 v6, 0x2

    const/16 v8, 0x4b

    const/4 v2, 0x1

    .line 474
    if-lez p3, :cond_1a

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 475
    invoke-virtual {p2, v8}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 476
    add-int/lit8 v0, p3, 0x2

    .line 499
    :goto_19
    return v0

    .line 477
    :cond_1a
    if-nez p3, :cond_30

    .line 478
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v9, :cond_2c

    .line 479
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 483
    :goto_29
    add-int/lit8 v0, p3, 0x2

    .line 484
    goto :goto_19

    .line 481
    :cond_2c
    invoke-virtual {p2, v8}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_29

    .line 484
    :cond_30
    if-le p3, v2, :cond_41

    add-int/lit8 v1, p3, -0x2

    const-string v3, "B"

    const-string v4, "H"

    const-string v5, "D"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 485
    :cond_41
    if-le p3, v6, :cond_52

    add-int/lit8 v1, p3, -0x3

    const-string v3, "B"

    const-string v4, "H"

    const-string v5, "D"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 486
    :cond_52
    const/4 v0, 0x3

    if-le p3, v0, :cond_64

    add-int/lit8 v0, p3, -0x4

    const-string v1, "B"

    const-string v3, "H"

    invoke-static {p1, v0, v2, v1, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 488
    :cond_61
    add-int/lit8 v0, p3, 0x2

    .line 489
    goto :goto_19

    .line 490
    :cond_64
    if-le p3, v6, :cond_8b

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x55

    if-ne v0, v1, :cond_8b

    .line 491
    add-int/lit8 v1, p3, -0x3

    const-string v3, "C"

    const-string v4, "G"

    const-string v5, "L"

    const-string v6, "R"

    const-string v7, "T"

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 493
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 497
    :cond_88
    :goto_88
    add-int/lit8 v0, p3, 0x2

    goto :goto_19

    .line 494
    :cond_8b
    if-lez p3, :cond_88

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-eq v0, v9, :cond_88

    .line 495
    invoke-virtual {p2, v8}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_88
.end method

.method private handleH(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 5

    .prologue
    .line 509
    if-eqz p3, :cond_e

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 510
    :cond_e
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 511
    const/16 v0, 0x48

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 512
    add-int/lit8 v0, p3, 0x2

    .line 517
    :goto_21
    return v0

    .line 515
    :cond_22
    add-int/lit8 v0, p3, 0x1

    goto :goto_21
.end method

.method private handleJ(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .registers 12

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x48

    const/4 v3, 0x4

    const/16 v6, 0x4a

    .line 525
    const-string v0, "JOSE"

    invoke-static {p1, p3, v3, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "SAN "

    invoke-static {p1, v5, v3, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 527
    :cond_17
    if-nez p3, :cond_23

    add-int/lit8 v0, p3, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_31

    .line 528
    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v3, :cond_31

    const-string v0, "SAN "

    invoke-static {p1, v5, v3, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 529
    :cond_31
    invoke-virtual {p2, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 533
    :goto_34
    add-int/lit8 v0, p3, 0x1

    .line 552
    :goto_36
    return v0

    .line 531
    :cond_37
    invoke-virtual {p2, v6, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_34

    .line 535
    :cond_3b
    if-nez p3, :cond_55

    const-string v0, "JOSE"

    invoke-static {p1, p3, v3, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 536
    const/16 v0, 0x41

    invoke-virtual {p2, v6, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 546
    :cond_4a
    :goto_4a
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v6, :cond_a6

    .line 547
    add-int/lit8 v0, p3, 0x2

    .line 548
    goto :goto_36

    .line 537
    :cond_55
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_7b

    if-nez p4, :cond_7b

    .line 538
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_77

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_7b

    .line 539
    :cond_77
    invoke-virtual {p2, v6, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_4a

    .line 540
    :cond_7b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_89

    .line 541
    const/16 v0, 0x20

    invoke-virtual {p2, v6, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_4a

    .line 542
    :cond_89
    add-int/lit8 v0, p3, 0x1

    sget-object v1, Lorg/apache/commons/codecc/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    add-int/lit8 v1, p3, -0x1

    const-string v3, "S"

    const-string v4, "K"

    const-string v5, "L"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 543
    invoke-virtual {p2, v6}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_4a

    .line 549
    :cond_a6
    add-int/lit8 v0, p3, 0x1

    goto :goto_36
.end method

.method private handleL(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 6

    .prologue
    const/16 v1, 0x4c

    .line 561
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v1, :cond_1a

    .line 562
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->conditionL0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 563
    invoke-virtual {p2, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    .line 567
    :goto_13
    add-int/lit8 v0, p3, 0x2

    .line 572
    :goto_15
    return v0

    .line 565
    :cond_16
    invoke-virtual {p2, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_13

    .line 569
    :cond_1a
    add-int/lit8 v0, p3, 0x1

    .line 570
    invoke-virtual {p2, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_15
.end method

.method private handleP(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 8

    .prologue
    .line 581
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_12

    .line 582
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 583
    add-int/lit8 v0, p3, 0x2

    .line 588
    :goto_11
    return v0

    .line 585
    :cond_12
    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 586
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const-string v2, "P"

    const-string v3, "B"

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    add-int/lit8 v0, p3, 0x2

    goto :goto_11

    :cond_27
    add-int/lit8 v0, p3, 0x1

    goto :goto_11
.end method

.method private handleR(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .registers 10

    .prologue
    const/4 v4, 0x2

    const/16 v3, 0x52

    .line 598
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_31

    if-nez p4, :cond_31

    .line 599
    add-int/lit8 v0, p3, -0x2

    const-string v1, "IE"

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 600
    add-int/lit8 v0, p3, -0x4

    const-string v1, "ME"

    const-string v2, "MA"

    invoke-static {p1, v0, v4, v1, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 601
    invoke-virtual {p2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 605
    :goto_26
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v3, :cond_35

    add-int/lit8 v0, p3, 0x2

    :goto_30
    return v0

    .line 603
    :cond_31
    invoke-virtual {p2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_26

    .line 605
    :cond_35
    add-int/lit8 v0, p3, 0x1

    goto :goto_30
.end method

.method private handleS(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .registers 15

    .prologue
    const/4 v4, 0x3

    const/4 v9, 0x2

    const/16 v8, 0x58

    const/4 v2, 0x1

    const/16 v7, 0x53

    .line 615
    add-int/lit8 v0, p3, -0x1

    const-string v1, "ISL"

    const-string v3, "YSL"

    invoke-static {p1, v0, v4, v1, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 617
    add-int/lit8 v0, p3, 0x1

    .line 658
    :goto_15
    return v0

    .line 618
    :cond_16
    if-nez p3, :cond_27

    const/4 v0, 0x5

    const-string v1, "SUGAR"

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 620
    invoke-virtual {p2, v8, v7}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 621
    add-int/lit8 v0, p3, 0x1

    .line 622
    goto :goto_15

    :cond_27
    const-string v0, "SH"

    invoke-static {p1, p3, v9, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 623
    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x4

    .line 624
    const-string v3, "HEIM"

    const-string v4, "HOEK"

    const-string v5, "HOLM"

    const-string v6, "HOLZ"

    move-object v0, p1

    .line 623
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 624
    if-eqz v0, :cond_47

    .line 626
    invoke-virtual {p2, v7}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 630
    :goto_44
    add-int/lit8 v0, p3, 0x2

    .line 631
    goto :goto_15

    .line 628
    :cond_47
    invoke-virtual {p2, v8}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_44

    .line 631
    :cond_4b
    const-string v0, "SIO"

    const-string v1, "SIA"

    invoke-static {p1, p3, v4, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    const/4 v0, 0x4

    const-string v1, "SIAN"

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 633
    :cond_5e
    if-eqz p4, :cond_66

    .line 634
    invoke-virtual {p2, v7}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 638
    :goto_63
    add-int/lit8 v0, p3, 0x3

    .line 639
    goto :goto_15

    .line 636
    :cond_66
    invoke-virtual {p2, v7, v8}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_63

    .line 639
    :cond_6a
    if-nez p3, :cond_7d

    add-int/lit8 v1, p3, 0x1

    const-string v3, "M"

    const-string v4, "N"

    const-string v5, "L"

    const-string v6, "W"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    :cond_7d
    add-int/lit8 v0, p3, 0x1

    const-string v1, "Z"

    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 644
    :cond_87
    invoke-virtual {p2, v7, v8}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 645
    add-int/lit8 v0, p3, 0x1

    const-string v1, "Z"

    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_15

    :cond_98
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_15

    .line 646
    :cond_9c
    const-string v0, "SC"

    invoke-static {p1, p3, v9, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 647
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleSC(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto/16 :goto_15

    .line 649
    :cond_aa
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_d1

    add-int/lit8 v0, p3, -0x2

    .line 650
    const-string v1, "AI"

    const-string v3, "OI"

    .line 649
    invoke-static {p1, v0, v9, v1, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 650
    if-eqz v0, :cond_d1

    .line 652
    invoke-virtual {p2, v7}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 656
    :goto_c1
    add-int/lit8 v0, p3, 0x1

    const-string v1, "S"

    const-string v3, "Z"

    invoke-static {p1, v0, v2, v1, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d5

    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_15

    .line 654
    :cond_d1
    invoke-virtual {p2, v7}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_c1

    .line 656
    :cond_d5
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_15
.end method

.method private handleSC(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 16

    .prologue
    const/16 v11, 0x58

    const/16 v10, 0x53

    const/4 v9, 0x3

    const/4 v2, 0x2

    .line 667
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_5d

    .line 669
    add-int/lit8 v1, p3, 0x3

    .line 670
    const-string v3, "OO"

    const-string v4, "ER"

    const-string v5, "EN"

    const-string v6, "UY"

    const-string v7, "ED"

    const-string v8, "EM"

    move-object v0, p1

    .line 669
    invoke-static/range {v0 .. v8}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 670
    if-eqz v0, :cond_41

    .line 672
    add-int/lit8 v0, p3, 0x3

    const-string v1, "ER"

    const-string v3, "EN"

    invoke-static {p1, v0, v2, v1, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 674
    const-string v0, "X"

    const-string v1, "SK"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :goto_38
    add-int/lit8 v0, p3, 0x3

    return v0

    .line 676
    :cond_3b
    const-string v0, "SK"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_38

    .line 679
    :cond_41
    if-nez p3, :cond_59

    invoke-virtual {p0, p1, v9}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_59

    invoke-virtual {p0, p1, v9}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x57

    if-eq v0, v1, :cond_59

    .line 680
    invoke-virtual {p2, v11, v10}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_38

    .line 682
    :cond_59
    invoke-virtual {p2, v11}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_38

    .line 685
    :cond_5d
    add-int/lit8 v1, p3, 0x2

    const/4 v2, 0x1

    const-string v3, "I"

    const-string v4, "E"

    const-string v5, "Y"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 686
    invoke-virtual {p2, v10}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_38

    .line 688
    :cond_71
    const-string v0, "SK"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_38
.end method

.method private handleT(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 12

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x54

    const/4 v3, 0x3

    .line 699
    const-string v0, "TION"

    invoke-static {p1, p3, v7, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 700
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 701
    add-int/lit8 v0, p3, 0x3

    .line 720
    :goto_15
    return v0

    .line 702
    :cond_16
    const-string v0, "TIA"

    const-string v1, "TCH"

    invoke-static {p1, p3, v3, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 703
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 704
    add-int/lit8 v0, p3, 0x3

    .line 705
    goto :goto_15

    :cond_28
    const-string v0, "TH"

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 706
    const-string v0, "TTH"

    .line 705
    invoke-static {p1, p3, v3, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    .line 706
    if-eqz v0, :cond_62

    .line 707
    :cond_38
    add-int/lit8 v0, p3, 0x2

    const-string v1, "OM"

    const-string v2, "AM"

    invoke-static {p1, v0, v6, v1, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 709
    const-string v0, "VAN "

    const-string v1, "VON "

    invoke-static {p1, v5, v7, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 710
    const-string v0, "SCH"

    invoke-static {p1, v5, v3, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 711
    :cond_56
    invoke-virtual {p2, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 715
    :goto_59
    add-int/lit8 v0, p3, 0x2

    .line 716
    goto :goto_15

    .line 713
    :cond_5c
    const/16 v0, 0x30

    invoke-virtual {p2, v0, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_59

    .line 717
    :cond_62
    invoke-virtual {p2, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 718
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const-string v2, "T"

    const-string v3, "D"

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    add-int/lit8 v0, p3, 0x2

    goto :goto_15

    :cond_75
    add-int/lit8 v0, p3, 0x1

    goto :goto_15
.end method

.method private handleW(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 12

    .prologue
    const/16 v7, 0x46

    const/16 v2, 0x41

    const/4 v1, 0x2

    .line 729
    const-string v0, "WR"

    invoke-static {p1, p3, v1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 731
    const/16 v0, 0x52

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 732
    add-int/lit8 v0, p3, 0x2

    .line 759
    :goto_14
    return v0

    .line 734
    :cond_15
    if-nez p3, :cond_41

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 735
    const-string v0, "WH"

    invoke-static {p1, p3, v1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 736
    :cond_2b
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 738
    invoke-virtual {p2, v2, v7}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 743
    :goto_3a
    add-int/lit8 v0, p3, 0x1

    .line 744
    goto :goto_14

    .line 741
    :cond_3d
    invoke-virtual {p2, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_3a

    .line 744
    :cond_41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_55

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_71

    .line 745
    :cond_55
    add-int/lit8 v1, p3, -0x1

    .line 746
    const/4 v2, 0x5

    const-string v3, "EWSKI"

    const-string v4, "EWSKY"

    const-string v5, "OWSKI"

    const-string v6, "OWSKY"

    move-object v0, p1

    .line 745
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 746
    if-nez v0, :cond_71

    .line 747
    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, "SCH"

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 749
    :cond_71
    invoke-virtual {p2, v7}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 750
    add-int/lit8 v0, p3, 0x1

    .line 751
    goto :goto_14

    :cond_77
    const/4 v0, 0x4

    const-string v1, "WICZ"

    const-string v2, "WITZ"

    invoke-static {p1, p3, v0, v1, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 753
    const-string v0, "TS"

    const-string v1, "FX"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    add-int/lit8 v0, p3, 0x4

    .line 755
    goto :goto_14

    .line 756
    :cond_8c
    add-int/lit8 v0, p3, 0x1

    goto :goto_14
.end method

.method private handleX(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 8

    .prologue
    .line 768
    if-nez p3, :cond_a

    .line 769
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 770
    add-int/lit8 v0, p3, 0x1

    .line 780
    :goto_9
    return v0

    .line 772
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_2c

    .line 773
    add-int/lit8 v0, p3, -0x3

    const/4 v1, 0x3

    const-string v2, "IAU"

    const-string v3, "EAU"

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 774
    add-int/lit8 v0, p3, -0x2

    const/4 v1, 0x2

    const-string v2, "AU"

    const-string v3, "OU"

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 776
    :cond_2c
    const-string v0, "KS"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 778
    :cond_31
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const-string v2, "C"

    const-string v3, "X"

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    add-int/lit8 v0, p3, 0x2

    goto :goto_9

    :cond_41
    add-int/lit8 v0, p3, 0x1

    goto :goto_9
.end method

.method private handleZ(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .registers 11

    .prologue
    .line 788
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_12

    .line 790
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 791
    add-int/lit8 v0, p3, 0x2

    .line 800
    :goto_11
    return v0

    .line 793
    :cond_12
    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x2

    const-string v3, "ZO"

    const-string v4, "ZI"

    const-string v5, "ZA"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    if-eqz p4, :cond_44

    if-lez p3, :cond_44

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_44

    .line 794
    :cond_30
    const-string v0, "S"

    const-string v1, "TS"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :goto_37
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_4a

    add-int/lit8 v0, p3, 0x2

    goto :goto_11

    .line 796
    :cond_44
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_37

    .line 798
    :cond_4a
    add-int/lit8 v0, p3, 0x1

    goto :goto_11
.end method

.method private isSilentStart(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 904
    move v0, v1

    .line 905
    :goto_2
    sget-object v2, Lorg/apache/commons/codecc/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_8

    .line 911
    :goto_7
    return v1

    .line 906
    :cond_8
    sget-object v2, Lorg/apache/commons/codecc/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 907
    const/4 v1, 0x1

    .line 908
    goto :goto_7

    .line 905
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private isSlavoGermanic(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 887
    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_23

    const/16 v0, 0x4b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_23

    .line 888
    const-string v0, "CZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_23

    const-string v0, "WITZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 887
    if-gt v0, v1, :cond_23

    const/4 v0, 0x0

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x1

    goto :goto_22
.end method

.method private isVowel(C)Z
    .registers 4

    .prologue
    .line 895
    const-string v0, "AEIOUY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method protected charAt(Ljava/lang/String;I)C
    .registers 4

    .prologue
    .line 934
    if-ltz p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_a

    .line 935
    :cond_8
    const/4 v0, 0x0

    .line 937
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9
.end method

.method public doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12

    .prologue
    const/16 v8, 0x4e

    const/16 v7, 0x4b

    const/16 v6, 0x46

    .line 84
    invoke-direct {p0, p1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->cleanInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    if-nez v1, :cond_e

    .line 86
    const/4 v0, 0x0

    .line 187
    :goto_d
    return-object v0

    .line 89
    :cond_e
    invoke-direct {p0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->isSlavoGermanic(Ljava/lang/String;)Z

    move-result v2

    .line 90
    invoke-direct {p0, v1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->isSilentStart(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    .line 92
    :goto_19
    new-instance v3, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;

    invoke-virtual {p0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->getMaxCodeLen()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;-><init>(Lorg/apache/commons/codecc/language/DoubleMetaphone;I)V

    .line 94
    :goto_22
    invoke-virtual {v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->isComplete()Z

    move-result v4

    if-nez v4, :cond_30

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v0, v4, :cond_39

    .line 187
    :cond_30
    if-eqz p2, :cond_127

    invoke-virtual {v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->getAlternate()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 90
    :cond_37
    const/4 v0, 0x0

    goto :goto_19

    .line 95
    :cond_39
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_12e

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 102
    :sswitch_43
    invoke-direct {p0, v3, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleAEIOUY(Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_22

    .line 105
    :sswitch_48
    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 106
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x42

    if-ne v4, v5, :cond_5a

    add-int/lit8 v0, v0, 0x2

    goto :goto_22

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 110
    :sswitch_5d
    const/16 v4, 0x53

    invoke-virtual {v3, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    .line 112
    goto :goto_22

    .line 114
    :sswitch_65
    invoke-direct {p0, v1, v3, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleC(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_22

    .line 117
    :sswitch_6a
    invoke-direct {p0, v1, v3, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleD(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_22

    .line 120
    :sswitch_6f
    invoke-virtual {v3, v6}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 121
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v6, :cond_7d

    add-int/lit8 v0, v0, 0x2

    goto :goto_22

    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 124
    :sswitch_80
    invoke-direct {p0, v1, v3, v0, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleG(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    goto :goto_22

    .line 127
    :sswitch_85
    invoke-direct {p0, v1, v3, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleH(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_22

    .line 130
    :sswitch_8a
    invoke-direct {p0, v1, v3, v0, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleJ(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    goto :goto_22

    .line 133
    :sswitch_8f
    invoke-virtual {v3, v7}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 134
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v7, :cond_9d

    add-int/lit8 v0, v0, 0x2

    goto :goto_22

    :cond_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 137
    :sswitch_a0
    invoke-direct {p0, v1, v3, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleL(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto/16 :goto_22

    .line 140
    :sswitch_a6
    const/16 v4, 0x4d

    invoke-virtual {v3, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 141
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->conditionM0(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b5

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_22

    :cond_b5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_22

    .line 144
    :sswitch_b9
    invoke-virtual {v3, v8}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 145
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v8, :cond_c8

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_22

    :cond_c8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_22

    .line 149
    :sswitch_cc
    invoke-virtual {v3, v8}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    .line 151
    goto/16 :goto_22

    .line 153
    :sswitch_d3
    invoke-direct {p0, v1, v3, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleP(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto/16 :goto_22

    .line 156
    :sswitch_d9
    invoke-virtual {v3, v7}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 157
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x51

    if-ne v4, v5, :cond_ea

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_22

    :cond_ea
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_22

    .line 160
    :sswitch_ee
    invoke-direct {p0, v1, v3, v0, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleR(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    goto/16 :goto_22

    .line 163
    :sswitch_f4
    invoke-direct {p0, v1, v3, v0, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleS(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    goto/16 :goto_22

    .line 166
    :sswitch_fa
    invoke-direct {p0, v1, v3, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleT(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto/16 :goto_22

    .line 169
    :sswitch_100
    invoke-virtual {v3, v6}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 170
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x56

    if-ne v4, v5, :cond_111

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_22

    :cond_111
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_22

    .line 173
    :sswitch_115
    invoke-direct {p0, v1, v3, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleW(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto/16 :goto_22

    .line 176
    :sswitch_11b
    invoke-direct {p0, v1, v3, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleX(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto/16 :goto_22

    .line 179
    :sswitch_121
    invoke-direct {p0, v1, v3, v0, v2}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->handleZ(Ljava/lang/String;Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    goto/16 :goto_22

    .line 187
    :cond_127
    invoke-virtual {v3}, Lorg/apache/commons/codecc/language/DoubleMetaphone$DoubleMetaphoneResult;->getPrimary()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 95
    nop

    :sswitch_data_12e
    .sparse-switch
        0x41 -> :sswitch_43
        0x42 -> :sswitch_48
        0x43 -> :sswitch_65
        0x44 -> :sswitch_6a
        0x45 -> :sswitch_43
        0x46 -> :sswitch_6f
        0x47 -> :sswitch_80
        0x48 -> :sswitch_85
        0x49 -> :sswitch_43
        0x4a -> :sswitch_8a
        0x4b -> :sswitch_8f
        0x4c -> :sswitch_a0
        0x4d -> :sswitch_a6
        0x4e -> :sswitch_b9
        0x4f -> :sswitch_43
        0x50 -> :sswitch_d3
        0x51 -> :sswitch_d9
        0x52 -> :sswitch_ee
        0x53 -> :sswitch_f4
        0x54 -> :sswitch_fa
        0x55 -> :sswitch_43
        0x56 -> :sswitch_100
        0x57 -> :sswitch_115
        0x58 -> :sswitch_11b
        0x59 -> :sswitch_43
        0x5a -> :sswitch_121
        0xc7 -> :sswitch_5d
        0xd1 -> :sswitch_cc
    .end sparse-switch
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 199
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_c

    .line 200
    new-instance v0, Lorg/apache/commons/codecc/EncoderException;

    const-string v1, "DoubleMetaphone encode parameter is not of type String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_c
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .registers 2

    .prologue
    .line 251
    iget v0, p0, Lorg/apache/commons/codecc/language/DoubleMetaphone;->maxCodeLen:I

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    .prologue
    .line 242
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/codecc/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setMaxCodeLen(I)V
    .registers 2

    .prologue
    .line 259
    iput p1, p0, Lorg/apache/commons/codecc/language/DoubleMetaphone;->maxCodeLen:I

    .line 260
    return-void
.end method
