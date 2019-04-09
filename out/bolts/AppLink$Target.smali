.class public Lbolts/AppLink$Target;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final appName:Ljava/lang/String;

.field private final className:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final url:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lbolts/AppLink$Target;->packageName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lbolts/AppLink$Target;->className:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lbolts/AppLink$Target;->url:Landroid/net/Uri;

    .line 44
    iput-object p4, p0, Lbolts/AppLink$Target;->appName:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lbolts/AppLink$Target;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lbolts/AppLink$Target;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lbolts/AppLink$Target;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lbolts/AppLink$Target;->url:Landroid/net/Uri;

    return-object v0
.end method
