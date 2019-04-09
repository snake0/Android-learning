.class Lcom/iflytek/cloud/ui/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/iflytek/cloud/ui/a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/ui/a;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/ui/a$1;->b:Lcom/iflytek/cloud/ui/a;

    iput-object p2, p0, Lcom/iflytek/cloud/ui/a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.xunfei.cn/?appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a$1;->b:Lcom/iflytek/cloud/ui/a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/iflytek/cloud/ui/a;->a(Lcom/iflytek/cloud/ui/a;I)I

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a$1;->b:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->a(Lcom/iflytek/cloud/ui/a;)V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a$1;->b:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->b(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->stopListening()V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a$1;->b:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->c(Lcom/iflytek/cloud/ui/a;)V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a$1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_55

    :goto_54
    return-void

    :catch_55
    move-exception v0

    const-string v0, "failed"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->e(Ljava/lang/String;)V

    goto :goto_54
.end method
