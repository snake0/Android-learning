.class public Lcom/mqunar/tools/TextUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colorDigitsInString(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-static {p0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 79
    const/4 v0, 0x0

    .line 95
    :goto_8
    return-object v0

    .line 81
    :cond_9
    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 84
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    .line 85
    :goto_19
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 86
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 87
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 90
    :cond_3c
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 91
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 92
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 93
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v6, 0x21

    invoke-virtual {v2, v5, v0, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4d

    :cond_72
    move-object v0, v2

    .line 95
    goto :goto_8
.end method

.method public static varargs joinAllowedNull([Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-static {p0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 162
    :cond_7
    :goto_7
    return-object v0

    .line 150
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    array-length v3, p0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v3, :cond_24

    aget-object v4, p0, v1

    .line 153
    invoke-static {v4}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 152
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 156
    :cond_1c
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 159
    :cond_24
    invoke-static {v2}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static varargs joinNotAllowedNull([Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 5

    .prologue
    .line 172
    invoke-static {p0}, Lcom/mqunar/tools/CheckUtils;->isContainsEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 173
    const/4 v0, 0x0

    .line 179
    :goto_7
    return-object v0

    .line 175
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    array-length v2, p0

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_1d

    aget-object v3, p0, v0

    .line 177
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 179
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static varargs joinSpan([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-static {p0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 136
    const/4 v0, 0x0

    .line 143
    :goto_8
    return-object v0

    .line 139
    :cond_9
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 140
    array-length v3, p0

    move v0, v1

    :goto_10
    if-ge v0, v3, :cond_1a

    aget-object v4, p0, v0

    .line 141
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 143
    :cond_1a
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_8
.end method

.method public static toBold(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-static {v0, p0, v0}, Lcom/mqunar/tools/TextUtil;->toBold(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static toBold(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-static {p1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    const/4 v0, 0x0

    .line 42
    :goto_8
    return-object v0

    .line 34
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-static {p0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v1

    .line 37
    :goto_15
    invoke-static {p1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 38
    :goto_1b
    invoke-static {p2}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 40
    :goto_21
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 41
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v2

    .line 42
    goto :goto_8

    .line 36
    :cond_37
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    goto :goto_15

    .line 37
    :cond_40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    goto :goto_1b

    .line 38
    :cond_49
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    goto :goto_21
.end method

.method public static toColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-static {p1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 57
    const/4 v0, 0x0

    .line 68
    :goto_8
    return-object v0

    .line 60
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    invoke-static {p0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v1

    .line 63
    :goto_15
    invoke-static {p1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 64
    :goto_1b
    invoke-static {p2}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 66
    :goto_21
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v2

    .line 68
    goto :goto_8

    .line 62
    :cond_36
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    goto :goto_15

    .line 63
    :cond_3f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    goto :goto_1b

    .line 64
    :cond_48
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    goto :goto_21
.end method

.method public static toSize(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-static {v0, p0, v0, p1}, Lcom/mqunar/tools/TextUtil;->toSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static toSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 5

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/mqunar/tools/TextUtil;->toSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static toSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/CharSequence;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-static {p1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 113
    const/4 v0, 0x0

    .line 124
    :goto_8
    return-object v0

    .line 116
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    invoke-static {p0}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v1

    .line 119
    :goto_15
    invoke-static {p1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 120
    :goto_1b
    invoke-static {p2}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 122
    :goto_21
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 123
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v3, p3, p4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v2

    .line 124
    goto :goto_8

    .line 118
    :cond_36
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    goto :goto_15

    .line 119
    :cond_3f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    goto :goto_1b

    .line 120
    :cond_48
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    goto :goto_21
.end method
