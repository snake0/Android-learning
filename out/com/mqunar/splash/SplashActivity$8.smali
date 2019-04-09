.class Lcom/mqunar/splash/SplashActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/SplashActivity;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/SplashActivity;)V
    .registers 2

    .prologue
    .line 563
    iput-object p1, p0, Lcom/mqunar/splash/SplashActivity$8;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 566
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$8;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-virtual {v0}, Lcom/mqunar/splash/SplashActivity;->createShortCut()V

    .line 567
    return-void
.end method
