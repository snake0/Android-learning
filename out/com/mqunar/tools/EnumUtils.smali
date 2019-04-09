.class public final enum Lcom/mqunar/tools/EnumUtils;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mqunar/tools/EnumUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mqunar/tools/EnumUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/mqunar/tools/EnumUtils;

    sput-object v0, Lcom/mqunar/tools/EnumUtils;->$VALUES:[Lcom/mqunar/tools/EnumUtils;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public static getFirstTypeOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/mqunar/tools/EnumUtils$ITypeDesc;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mqunar/tools/EnumUtils$ITypeDesc;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 55
    :try_start_2
    const-string v3, "values"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {p0, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 56
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/tools/EnumUtils$ITypeDesc;

    check-cast v0, [Lcom/mqunar/tools/EnumUtils$ITypeDesc;

    .line 57
    array-length v4, v0

    move v3, v1

    :goto_19
    if-ge v3, v4, :cond_2e

    aget-object v1, v0, v3

    .line 58
    invoke-interface {v1}, Lcom/mqunar/tools/EnumUtils$ITypeDesc;->getDesc()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_24} :catch_2d

    move-result v5

    if-eqz v5, :cond_29

    move-object v0, v1

    .line 65
    :goto_28
    return-object v0

    .line 57
    :cond_29
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_19

    .line 63
    :catch_2d
    move-exception v0

    :cond_2e
    move-object v0, v2

    .line 65
    goto :goto_28
.end method

.method public static getTypeOf(Ljava/lang/Class;I)Lcom/mqunar/tools/EnumUtils$ITypeCode;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mqunar/tools/EnumUtils$ITypeCode;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 25
    :try_start_2
    const-string v3, "values"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {p0, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 26
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/tools/EnumUtils$ITypeCode;

    check-cast v0, [Lcom/mqunar/tools/EnumUtils$ITypeCode;

    .line 27
    array-length v4, v0

    move v3, v1

    :goto_19
    if-ge v3, v4, :cond_2a

    aget-object v1, v0, v3

    .line 28
    invoke-interface {v1}, Lcom/mqunar/tools/EnumUtils$ITypeCode;->getCode()I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_29

    move-result v5

    .line 29
    if-ne v5, p1, :cond_25

    move-object v0, v1

    .line 35
    :goto_24
    return-object v0

    .line 27
    :cond_25
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_19

    .line 33
    :catch_29
    move-exception v0

    :cond_2a
    move-object v0, v2

    .line 35
    goto :goto_24
.end method

.method public static optTypeOf(Ljava/lang/Class;ILcom/mqunar/tools/EnumUtils$ITypeCode;)Lcom/mqunar/tools/EnumUtils$ITypeCode;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mqunar/tools/EnumUtils$ITypeCode;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/mqunar/tools/EnumUtils;->getTypeOf(Ljava/lang/Class;I)Lcom/mqunar/tools/EnumUtils$ITypeCode;

    move-result-object v0

    .line 40
    if-nez v0, :cond_7

    :goto_6
    return-object p2

    :cond_7
    move-object p2, v0

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mqunar/tools/EnumUtils;
    .registers 2

    .prologue
    .line 10
    const-class v0, Lcom/mqunar/tools/EnumUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mqunar/tools/EnumUtils;

    return-object v0
.end method

.method public static values()[Lcom/mqunar/tools/EnumUtils;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/mqunar/tools/EnumUtils;->$VALUES:[Lcom/mqunar/tools/EnumUtils;

    invoke-virtual {v0}, [Lcom/mqunar/tools/EnumUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/tools/EnumUtils;

    return-object v0
.end method
