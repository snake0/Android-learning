.class public Lcom/mqunar/hy/res/logger/Timber$DebugTree;
.super Lcom/mqunar/hy/res/logger/Timber$Tree;
.source "SourceFile"


# static fields
.field private static final ANONYMOUS_CLASS:Ljava/util/regex/Pattern;

.field private static final CALL_STACK_INDEX:I = 0x5

.field private static final MAX_LOG_LENGTH:I = 0xfa0


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 512
    const-string v0, "(\\$\\d+)+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mqunar/hy/res/logger/Timber$DebugTree;->ANONYMOUS_CLASS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/mqunar/hy/res/logger/Timber$Tree;-><init>()V

    return-void
.end method


# virtual methods
.method protected createStackElementTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 522
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 523
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber$DebugTree;->ANONYMOUS_CLASS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 524
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 525
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    :cond_16
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getTag()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x5

    .line 532
    invoke-super {p0}, Lcom/mqunar/hy/res/logger/Timber$Tree;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_8

    .line 544
    :goto_7
    return-object v0

    .line 539
    :cond_8
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 540
    array-length v1, v0

    if-gt v1, v2, :cond_1c

    .line 541
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Synthetic stacktrace didn\'t have enough elements: are you using proguard?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_1c
    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/mqunar/hy/res/logger/Timber$DebugTree;->createStackElementTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method protected log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 10

    .prologue
    const/4 v4, 0x7

    .line 556
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-ge v0, v1, :cond_13

    .line 557
    if-ne p1, v4, :cond_f

    .line 558
    invoke-static {p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_e
    :goto_e
    return-void

    .line 560
    :cond_f
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 566
    :cond_13
    const/4 v2, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    :goto_18
    if-ge v2, v1, :cond_e

    .line 567
    const/16 v0, 0xa

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 568
    const/4 v3, -0x1

    if-eq v0, v3, :cond_37

    .line 570
    :goto_23
    add-int/lit16 v3, v2, 0xfa0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 571
    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 572
    if-ne p1, v4, :cond_39

    .line 573
    invoke-static {p2, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :goto_32
    if-lt v3, v0, :cond_3d

    .line 566
    add-int/lit8 v2, v3, 0x1

    goto :goto_18

    :cond_37
    move v0, v1

    .line 568
    goto :goto_23

    .line 575
    :cond_39
    invoke-static {p1, p2, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_3d
    move v2, v3

    goto :goto_23
.end method
