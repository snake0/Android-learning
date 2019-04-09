.class public Lorg/apache/commons/io/monitor/FileEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;


# instance fields
.field private children:[Lorg/apache/commons/io/monitor/FileEntry;

.field private directory:Z

.field private exists:Z

.field private final file:Ljava/io/File;

.field private lastModified:J

.field private length:J

.field private name:Ljava/lang/String;

.field private final parent:Lorg/apache/commons/io/monitor/FileEntry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/io/monitor/FileEntry;

    sput-object v0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .prologue
    .line 61
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/io/monitor/FileEntry;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V
    .registers 5

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p2, :cond_d

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_d
    iput-object p2, p0, Lorg/apache/commons/io/monitor/FileEntry;->file:Ljava/io/File;

    .line 75
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    .line 76
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public getChildren()[Lorg/apache/commons/io/monitor/FileEntry;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->children:[Lorg/apache/commons/io/monitor/FileEntry;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->children:[Lorg/apache/commons/io/monitor/FileEntry;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;

    goto :goto_6
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getLastModified()J
    .registers 3

    .prologue
    .line 200
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    return-wide v0
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 219
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    return-wide v0
.end method

.method public getLevel()I
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/FileEntry;->getLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lorg/apache/commons/io/monitor/FileEntry;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    .prologue
    .line 257
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    return v0
.end method

.method public isExists()Z
    .registers 2

    .prologue
    .line 238
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    return v0
.end method

.method public newChildInstance(Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;
    .registers 3

    .prologue
    .line 125
    new-instance v0, Lorg/apache/commons/io/monitor/FileEntry;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    return-object v0
.end method

.method public refresh(Ljava/io/File;)Z
    .registers 14

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 96
    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    .line 97
    iget-wide v7, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    .line 98
    iget-boolean v9, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    .line 99
    iget-wide v10, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    .line 102
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    .line 104
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-eqz v0, :cond_4f

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    :goto_1f
    iput-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    .line 105
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-eqz v0, :cond_51

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    :goto_29
    iput-wide v2, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    .line 106
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    if-nez v0, :cond_37

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    :cond_37
    iput-wide v4, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    .line 109
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-ne v0, v6, :cond_4d

    iget-wide v2, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    cmp-long v0, v2, v7

    if-nez v0, :cond_4d

    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    if-ne v0, v9, :cond_4d

    iget-wide v2, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    cmp-long v0, v2, v10

    if-eqz v0, :cond_4e

    :cond_4d
    const/4 v1, 0x1

    :cond_4e
    return v1

    :cond_4f
    move v0, v1

    .line 104
    goto :goto_1f

    :cond_51
    move-wide v2, v4

    .line 105
    goto :goto_29
.end method

.method public setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->children:[Lorg/apache/commons/io/monitor/FileEntry;

    .line 164
    return-void
.end method

.method public setDirectory(Z)V
    .registers 2

    .prologue
    .line 266
    iput-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    .line 267
    return-void
.end method

.method public setExists(Z)V
    .registers 2

    .prologue
    .line 248
    iput-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    .line 249
    return-void
.end method

.method public setLastModified(J)V
    .registers 3

    .prologue
    .line 210
    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    .line 211
    return-void
.end method

.method public setLength(J)V
    .registers 3

    .prologue
    .line 228
    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    .line 229
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    .line 191
    return-void
.end method
