.class public Lcom/baidu/location/d/c;
.super Ljava/lang/Object;


# static fields
.field static c:Lcom/baidu/location/d/c;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "firll.dat"

    iput-object v0, p0, Lcom/baidu/location/d/c;->a:Ljava/lang/String;

    const/16 v0, 0xc5c

    iput v0, p0, Lcom/baidu/location/d/c;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/d/c;->d:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/baidu/location/d/c;->e:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/baidu/location/d/c;->f:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/baidu/location/d/c;->g:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/baidu/location/d/c;->h:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/baidu/location/d/c;->i:I

    return-void
.end method

.method private a(I)J
    .registers 9

    const-wide/16 v0, -0x1

    invoke-static {}, Lcom/baidu/location/d/j;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return-wide v0

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/location/d/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    :try_start_23
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_4b
    .catchall {:try_start_23 .. :try_end_2a} :catchall_54

    int-to-long v2, p1

    :try_start_2b
    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v2

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_39} :catch_62
    .catchall {:try_start_2b .. :try_end_39} :catchall_60

    move-result v6

    if-ne v5, v6, :cond_43

    if-eqz v4, :cond_41

    :try_start_3e
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_5c

    :cond_41
    :goto_41
    move-wide v0, v2

    goto :goto_8

    :cond_43
    if-eqz v4, :cond_8

    :try_start_45
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_8

    :catch_49
    move-exception v2

    goto :goto_8

    :catch_4b
    move-exception v3

    :goto_4c
    if-eqz v2, :cond_8

    :try_start_4e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_8

    :catch_52
    move-exception v2

    goto :goto_8

    :catchall_54
    move-exception v0

    move-object v4, v2

    :goto_56
    if-eqz v4, :cond_5b

    :try_start_58
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5e

    :cond_5b
    :goto_5b
    throw v0

    :catch_5c
    move-exception v0

    goto :goto_41

    :catch_5e
    move-exception v1

    goto :goto_5b

    :catchall_60
    move-exception v0

    goto :goto_56

    :catch_62
    move-exception v2

    move-object v2, v4

    goto :goto_4c
.end method

.method public static a()Lcom/baidu/location/d/c;
    .registers 1

    sget-object v0, Lcom/baidu/location/d/c;->c:Lcom/baidu/location/d/c;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/location/d/c;

    invoke-direct {v0}, Lcom/baidu/location/d/c;-><init>()V

    sput-object v0, Lcom/baidu/location/d/c;->c:Lcom/baidu/location/d/c;

    :cond_b
    sget-object v0, Lcom/baidu/location/d/c;->c:Lcom/baidu/location/d/c;

    return-object v0
.end method

.method private a(IJ)V
    .registers 8

    invoke-static {}, Lcom/baidu/location/d/j;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/d/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_20
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget v0, p0, Lcom/baidu/location/d/c;->b:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1, p2, p3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget v0, p0, Lcom/baidu/location/d/c;->b:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3b} :catch_3c

    goto :goto_6

    :catch_3c
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method public a(J)V
    .registers 4

    iget v0, p0, Lcom/baidu/location/d/c;->d:I

    invoke-direct {p0, v0, p1, p2}, Lcom/baidu/location/d/c;->a(IJ)V

    return-void
.end method

.method public b()J
    .registers 3

    iget v0, p0, Lcom/baidu/location/d/c;->d:I

    invoke-direct {p0, v0}, Lcom/baidu/location/d/c;->a(I)J

    move-result-wide v0

    return-wide v0
.end method
