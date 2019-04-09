.class public final Lcom/mqunar/idscan/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/app/Activity;

.field private c:Landroid/media/MediaPlayer;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/mqunar/idscan/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/idscan/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mqunar/idscan/a/c;->b:Landroid/app/Activity;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/idscan/a/c;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/mqunar/idscan/a/c;->a()V

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/media/MediaPlayer;
    .registers 9

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :try_start_f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mqunar/idscan/R$raw;->idscan_beep:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_37} :catch_38

    :goto_37
    return-object v0

    :catch_38
    move-exception v0

    sget-object v1, Lcom/mqunar/idscan/a/c;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_37
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 4

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/mqunar/idscan/a/c;->b:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_34

    const/4 v0, 0x0

    :goto_14
    iput-boolean v0, p0, Lcom/mqunar/idscan/a/c;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/idscan/a/c;->e:Z

    iget-boolean v0, p0, Lcom/mqunar/idscan/a/c;->d:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/mqunar/idscan/a/c;->c:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/mqunar/idscan/a/c;->b:Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    iget-object v0, p0, Lcom/mqunar/idscan/a/c;->b:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/mqunar/idscan/a/c;->a(Landroid/content/Context;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/idscan/a/c;->c:Landroid/media/MediaPlayer;
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_31

    :cond_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_34
    move v0, v1

    goto :goto_14
.end method

.method public final declared-synchronized b()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/mqunar/idscan/a/c;->d:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mqunar/idscan/a/c;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mqunar/idscan/a/c;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_e
    iget-boolean v0, p0, Lcom/mqunar/idscan/a/c;->e:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/mqunar/idscan/a/c;->b:Landroid/app/Activity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public final declared-synchronized onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    monitor-enter p0

    const/16 v0, 0x64

    if-ne p2, v0, :cond_d

    :try_start_5
    iget-object v0, p0, Lcom/mqunar/idscan/a/c;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_17

    :goto_a
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/idscan/a/c;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/mqunar/idscan/a/c;->a()V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_17

    goto :goto_a

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
