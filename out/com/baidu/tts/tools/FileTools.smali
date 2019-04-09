.class public Lcom/baidu/tts/tools/FileTools;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDir(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 157
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 159
    return-void
.end method

.method public static createFile(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .prologue
    .line 199
    invoke-static {p0}, Lcom/baidu/tts/tools/FileTools;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .prologue
    .line 203
    invoke-static {p0, p1}, Lcom/baidu/tts/tools/FileTools;->jointPathAndName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/tts/tools/FileTools;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 65
    invoke-static {p0}, Lcom/baidu/tts/tools/FileTools;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/baidu/tts/tools/FileTools;->deleteFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static extractFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .registers 4

    .prologue
    .line 94
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v1}, Lcom/baidu/tts/tools/FileTools;->fileCopy(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)Z

    move-result v0

    return v0
.end method

.method public static fileCopy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)Z
    .registers 4

    .prologue
    .line 88
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0, v1}, Lcom/baidu/tts/tools/FileTools;->fileCopy(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)Z

    move-result v0

    return v0
.end method

.method public static fileCopy(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)Z
    .registers 5

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 102
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/tools/FileTools;->fileCopy(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_19
    .catchall {:try_start_1 .. :try_end_c} :catchall_26

    move-result v0

    .line 107
    :try_start_d
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 108
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_14

    .line 115
    :goto_13
    return v0

    .line 109
    :catch_14
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 103
    :catch_19
    move-exception v1

    .line 107
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 108
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_21

    goto :goto_13

    .line 109
    :catch_21
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 106
    :catchall_26
    move-exception v0

    .line 107
    :try_start_27
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 108
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2d} :catch_2e

    .line 112
    :goto_2d
    throw v0

    .line 109
    :catch_2e
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d
.end method

.method public static fileCopy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 75
    invoke-static {p0}, Lcom/baidu/tts/tools/FileTools;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 76
    invoke-static {p1}, Lcom/baidu/tts/tools/FileTools;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Lcom/baidu/tts/tools/FileTools;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static fileCopy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/baidu/tts/tools/FileTools;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 83
    invoke-static {p2, p3}, Lcom/baidu/tts/tools/FileTools;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Lcom/baidu/tts/tools/FileTools;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static fileCopy(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)Z
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 121
    const-wide/16 v1, 0x0

    :try_start_4
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_1b
    .catchall {:try_start_4 .. :try_end_d} :catchall_2d

    .line 127
    :try_start_d
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    .line 128
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_15

    move v0, v6

    .line 132
    :goto_14
    return v0

    .line 130
    :catch_15
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v7

    .line 132
    goto :goto_14

    .line 122
    :catch_1b
    move-exception v0

    .line 124
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_2d

    .line 127
    :try_start_1f
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    .line 128
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_25} :catch_27

    move v0, v6

    .line 129
    goto :goto_14

    .line 130
    :catch_27
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v7

    .line 132
    goto :goto_14

    .line 126
    :catchall_2d
    move-exception v0

    .line 127
    :try_start_2e
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    .line 128
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_36

    move v0, v6

    .line 129
    goto :goto_14

    .line 130
    :catch_36
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v7

    .line 132
    goto :goto_14
.end method

.method public static getFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .prologue
    .line 167
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 182
    :cond_b
    :goto_b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    .line 184
    :try_start_11
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_3b

    .line 190
    :cond_14
    :goto_14
    return-object v0

    .line 171
    :cond_15
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_b

    .line 174
    :cond_21
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 175
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 176
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    .line 178
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_b

    .line 185
    :catch_3b
    move-exception v1

    .line 187
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method

.method public static getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .prologue
    .line 194
    invoke-static {p0, p1}, Lcom/baidu/tts/tools/FileTools;->jointPathAndName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/baidu/tts/tools/FileTools;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 24
    const/4 v0, 0x1

    .line 26
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static varargs isFileExist([Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    const/4 v1, 0x0

    .line 32
    array-length v0, p0

    if-ne v0, v3, :cond_20

    .line 33
    aget-object v0, p0, v2

    .line 34
    instance-of v3, v0, Ljava/io/File;

    if-eqz v3, :cond_15

    .line 35
    check-cast v0, Ljava/io/File;

    .line 48
    :goto_e
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_14
    return v0

    .line 36
    :cond_15
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_39

    .line 37
    check-cast v0, Ljava/lang/String;

    .line 38
    invoke-static {v0}, Lcom/baidu/tts/tools/FileTools;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_e

    .line 40
    :cond_20
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    .line 41
    aget-object v0, p0, v2

    check-cast v0, Ljava/lang/String;

    .line 42
    aget-object v1, p0, v3

    check-cast v1, Ljava/lang/String;

    .line 43
    invoke-static {v0, v1}, Lcom/baidu/tts/tools/FileTools;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_e

    .line 45
    :cond_31
    new-instance v0, Ljava/lang/UnknownError;

    invoke-direct {v0}, Ljava/lang/UnknownError;-><init>()V

    throw v0

    :cond_37
    move v0, v2

    .line 48
    goto :goto_14

    :cond_39
    move-object v0, v1

    goto :goto_e
.end method

.method public static jointPathAndName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 54
    .line 55
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_19
    return-object v0

    .line 58
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method public static writeFile(Ljava/lang/String;Ljava/io/File;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 139
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 144
    :goto_7
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 145
    invoke-virtual {v1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 147
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 148
    const/4 v0, 0x1

    .line 151
    :goto_17
    return v0

    .line 142
    :cond_18
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_1c

    goto :goto_7

    .line 149
    :catch_1c
    move-exception v1

    .line 150
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17
.end method
