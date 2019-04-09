.class final Lorg/acra/ACRA$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 439
    const-string v0, "acra.disable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "acra.enable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 440
    :cond_10
    invoke-static {p1}, Lorg/acra/ACRA;->a(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    .line 441
    :goto_17
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/acra/ErrorReporter;->setEnabled(Z)V

    .line 443
    :cond_1e
    return-void

    .line 440
    :cond_1f
    const/4 v0, 0x0

    goto :goto_17
.end method
