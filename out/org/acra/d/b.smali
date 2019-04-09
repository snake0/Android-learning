.class public Lorg/acra/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lorg/acra/config/ACRAConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/acra/d/b;->a:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lorg/acra/d/b;->b:Lorg/acra/config/ACRAConfiguration;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Landroid/content/SharedPreferences;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lorg/acra/d/b;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call ACRA.getACRASharedPreferences() before ACRA.init()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_c
    const-string v0, ""

    iget-object v1, p0, Lorg/acra/d/b;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 39
    iget-object v0, p0, Lorg/acra/d/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lorg/acra/d/b;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/d/b;->b:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v2}, Lorg/acra/config/ACRAConfiguration;->sharedPreferencesMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    :goto_2c
    return-object v0

    :cond_2d
    iget-object v0, p0, Lorg/acra/d/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_2c
.end method
