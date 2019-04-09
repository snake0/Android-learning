.class Lcom/mapquest/android/maps/TrafficManager$FlowDownloadTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private manager:Lcom/mapquest/android/maps/TrafficManager;

.field final synthetic this$0:Lcom/mapquest/android/maps/TrafficManager;

.field private trafficImage:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/TrafficManager;Lcom/mapquest/android/maps/TrafficManager$TrafficImage;Lcom/mapquest/android/maps/TrafficManager;)V
    .registers 4

    .prologue
    .line 222
    iput-object p1, p0, Lcom/mapquest/android/maps/TrafficManager$FlowDownloadTask;->this$0:Lcom/mapquest/android/maps/TrafficManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 223
    iput-object p3, p0, Lcom/mapquest/android/maps/TrafficManager$FlowDownloadTask;->manager:Lcom/mapquest/android/maps/TrafficManager;

    .line 224
    iput-object p2, p0, Lcom/mapquest/android/maps/TrafficManager$FlowDownloadTask;->trafficImage:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

    .line 225
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 228
    .line 231
    :try_start_1
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager$FlowDownloadTask;->trafficImage:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mapquest/android/maps/HttpUtil;->executeAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_a} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_1b
    .catchall {:try_start_1 .. :try_end_a} :catchall_23

    move-result-object v2

    .line 232
    :try_start_b
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_10} :catch_33
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_31
    .catchall {:try_start_b .. :try_end_10} :catchall_2e

    .line 240
    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_28

    .line 247
    :goto_13
    return-object v0

    .line 234
    :catch_14
    move-exception v0

    move-object v0, v1

    .line 240
    :goto_16
    :try_start_16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_2a

    :goto_19
    move-object v0, v1

    .line 247
    goto :goto_13

    .line 236
    :catch_1b
    move-exception v0

    move-object v2, v1

    .line 240
    :goto_1d
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_19

    .line 241
    :catch_21
    move-exception v0

    goto :goto_19

    .line 239
    :catchall_23
    move-exception v0

    .line 240
    :goto_24
    :try_start_24
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_2c

    .line 243
    :goto_27
    throw v0

    .line 241
    :catch_28
    move-exception v1

    goto :goto_13

    :catch_2a
    move-exception v0

    goto :goto_19

    :catch_2c
    move-exception v1

    goto :goto_27

    .line 239
    :catchall_2e
    move-exception v0

    move-object v1, v2

    goto :goto_24

    .line 236
    :catch_31
    move-exception v0

    goto :goto_1d

    .line 234
    :catch_33
    move-exception v0

    move-object v0, v2

    goto :goto_16
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 218
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/TrafficManager$FlowDownloadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager$FlowDownloadTask;->trafficImage:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 252
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager$FlowDownloadTask;->trafficImage:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    :cond_b
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager$FlowDownloadTask;->manager:Lcom/mapquest/android/maps/TrafficManager;

    iget-object v1, p0, Lcom/mapquest/android/maps/TrafficManager$FlowDownloadTask;->trafficImage:Lcom/mapquest/android/maps/TrafficManager$TrafficImage;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/TrafficManager;->imageReceived(Lcom/mapquest/android/maps/TrafficManager$TrafficImage;)V

    .line 256
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 218
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/TrafficManager$FlowDownloadTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
