.class Lcom/baidu/location/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/b/b$a;


# direct methods
.method constructor <init>(Lcom/baidu/location/b/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/b/c;->a:Lcom/baidu/location/b/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/b/c;->a:Lcom/baidu/location/b/b$a;

    iget-object v0, v0, Lcom/baidu/location/b/b$a;->a:Lcom/baidu/location/b/b;

    invoke-static {v0}, Lcom/baidu/location/b/b;->a(Lcom/baidu/location/b/b;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    goto :goto_7
.end method
