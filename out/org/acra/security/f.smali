.class final Lorg/acra/security/f;
.super Lorg/acra/security/BaseKeyStoreFactory;
.source "SourceFile"


# instance fields
.field private final a:I
    .annotation build Landroid/support/annotation/RawRes;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/acra/security/BaseKeyStoreFactory;-><init>(Ljava/lang/String;)V

    .line 42
    iput p2, p0, Lorg/acra/security/f;->a:I

    .line 43
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/io/InputStream;
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lorg/acra/security/f;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
