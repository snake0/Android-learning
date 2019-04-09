.class Lcom/mapquest/android/maps/FSTileCache$CacheHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field static final EMPTY_CACHE:I = 0x0

.field static final ENSURE_CACHE:I = 0x1

.field static final ENSURE_CACHE_BASED_ON_EXPIRY:I = 0x3

.field static final ENSURE_CACHE_BASED_ON_SIZE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/FSTileCache;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/FSTileCache;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 341
    iput-object p1, p0, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->this$0:Lcom/mapquest/android/maps/FSTileCache;

    .line 342
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 343
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 347
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_74

    .line 388
    :goto_8
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 389
    return-void

    .line 349
    :pswitch_c
    iget-object v0, p0, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->this$0:Lcom/mapquest/android/maps/FSTileCache;

    sget-object v1, Lcom/mapquest/android/maps/FSTileCache$FileCallbackType;->EMPTY_CACHE:Lcom/mapquest/android/maps/FSTileCache$FileCallbackType;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/FSTileCache;->getCallback(Lcom/mapquest/android/maps/FSTileCache$FileCallbackType;)Lcom/mapquest/android/maps/FSTileCache$IFileCallback;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->this$0:Lcom/mapquest/android/maps/FSTileCache;

    iget-object v2, p0, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->this$0:Lcom/mapquest/android/maps/FSTileCache;

    # getter for: Lcom/mapquest/android/maps/FSTileCache;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/mapquest/android/maps/FSTileCache;->access$000(Lcom/mapquest/android/maps/FSTileCache;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "mapquestCache"

    invoke-static {v2, v3}, Lcom/mapquest/android/maps/Util;->getAppFileDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Lcom/mapquest/android/maps/FSTileCache;->iterateDirectory(Ljava/io/File;ILcom/mapquest/android/maps/FSTileCache$IFileCallback;)V

    .line 355
    invoke-virtual {p0, v4}, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->removeMessages(I)V

    goto :goto_8

    .line 358
    :pswitch_29
    invoke-virtual {p0, v6}, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->sendEmptyMessage(I)Z

    .line 359
    invoke-virtual {p0, v5}, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 363
    :pswitch_30
    :try_start_30
    iget-object v0, p0, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->this$0:Lcom/mapquest/android/maps/FSTileCache;

    sget-object v1, Lcom/mapquest/android/maps/FSTileCache$FileCallbackType;->PURGE_EXTERNAL_CACHE_BASED_ON_SIZE:Lcom/mapquest/android/maps/FSTileCache$FileCallbackType;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/FSTileCache;->getCallback(Lcom/mapquest/android/maps/FSTileCache$FileCallbackType;)Lcom/mapquest/android/maps/FSTileCache$IFileCallback;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->this$0:Lcom/mapquest/android/maps/FSTileCache;

    iget-object v2, p0, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->this$0:Lcom/mapquest/android/maps/FSTileCache;

    # getter for: Lcom/mapquest/android/maps/FSTileCache;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/mapquest/android/maps/FSTileCache;->access$000(Lcom/mapquest/android/maps/FSTileCache;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "mapquestCache"

    invoke-static {v2, v3}, Lcom/mapquest/android/maps/Util;->getAppFileDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/mapquest/android/maps/FSTileCache;->iterateDirectory(Ljava/io/File;ILcom/mapquest/android/maps/FSTileCache$IFileCallback;)V

    .line 372
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->removeMessages(I)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4e} :catch_4f

    goto :goto_8

    .line 373
    :catch_4f
    move-exception v0

    .line 375
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v5, v0, v1}, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    .line 379
    :pswitch_56
    iget-object v0, p0, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->this$0:Lcom/mapquest/android/maps/FSTileCache;

    sget-object v1, Lcom/mapquest/android/maps/FSTileCache$FileCallbackType;->PURGE_CACHE_BASED_ON_EXPIRY:Lcom/mapquest/android/maps/FSTileCache$FileCallbackType;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/FSTileCache;->getCallback(Lcom/mapquest/android/maps/FSTileCache$FileCallbackType;)Lcom/mapquest/android/maps/FSTileCache$IFileCallback;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->this$0:Lcom/mapquest/android/maps/FSTileCache;

    iget-object v2, p0, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->this$0:Lcom/mapquest/android/maps/FSTileCache;

    # getter for: Lcom/mapquest/android/maps/FSTileCache;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/mapquest/android/maps/FSTileCache;->access$000(Lcom/mapquest/android/maps/FSTileCache;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "mapquestCache"

    invoke-static {v2, v3}, Lcom/mapquest/android/maps/Util;->getAppFileDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Lcom/mapquest/android/maps/FSTileCache;->iterateDirectory(Ljava/io/File;ILcom/mapquest/android/maps/FSTileCache$IFileCallback;)V

    .line 385
    invoke-virtual {p0, v6}, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->removeMessages(I)V

    goto :goto_8

    .line 347
    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_c
        :pswitch_29
        :pswitch_30
        :pswitch_56
    .end packed-switch
.end method
