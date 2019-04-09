.class public final Lcom/mqunar/hy/res/logger/Timber;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FOREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/logger/Timber$Tree;",
            ">;"
        }
    .end annotation
.end field

.field private static final TREE_ARRAY_EMPTY:[Lcom/mqunar/hy/res/logger/Timber$Tree;

.field private static final TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

.field static volatile forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 197
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/mqunar/hy/res/logger/Timber$Tree;

    sput-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_ARRAY_EMPTY:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/logger/Timber;->FOREST:Ljava/util/List;

    .line 200
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_ARRAY_EMPTY:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    sput-object v0, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 205
    new-instance v0, Lcom/mqunar/hy/res/logger/Timber$1;

    invoke-direct {v0}, Lcom/mqunar/hy/res/logger/Timber$1;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static asTree()Lcom/mqunar/hy/res/logger/Timber$Tree;
    .registers 1

    .prologue
    .line 129
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    return-object v0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Lcom/mqunar/hy/res/logger/NonNls;
        .end annotation
    .end param

    .prologue
    .line 37
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    invoke-virtual {v0, p0, p1}, Lcom/mqunar/hy/res/logger/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public static varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/mqunar/hy/res/logger/NonNls;
        .end annotation
    .end param

    .prologue
    .line 44
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mqunar/hy/res/logger/Timber$Tree;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Lcom/mqunar/hy/res/logger/NonNls;
        .end annotation
    .end param

    .prologue
    .line 79
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    invoke-virtual {v0, p0, p1}, Lcom/mqunar/hy/res/logger/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/mqunar/hy/res/logger/NonNls;
        .end annotation
    .end param

    .prologue
    .line 93
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mqunar/hy/res/logger/Timber$Tree;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 86
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    const-string v1, ""

    invoke-virtual {v0, p0, v1, p1}, Lcom/mqunar/hy/res/logger/Timber$Tree;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public static forest()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/logger/Timber$Tree;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->FOREST:Ljava/util/List;

    monitor-enter v1

    .line 187
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/mqunar/hy/res/logger/Timber;->FOREST:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 188
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Lcom/mqunar/hy/res/logger/NonNls;
        .end annotation
    .end param

    .prologue
    .line 51
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    invoke-virtual {v0, p0, p1}, Lcom/mqunar/hy/res/logger/Timber$Tree;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public static varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/mqunar/hy/res/logger/NonNls;
        .end annotation
    .end param

    .prologue
    .line 58
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mqunar/hy/res/logger/Timber$Tree;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public static varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/mqunar/hy/res/logger/NonNls;
        .end annotation
    .end param

    .prologue
    .line 114
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mqunar/hy/res/logger/Timber$Tree;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public static varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/mqunar/hy/res/logger/NonNls;
        .end annotation
    .end param

    .prologue
    .line 121
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/mqunar/hy/res/logger/Timber$Tree;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public static plant(Lcom/mqunar/hy/res/logger/Timber$Tree;)V
    .registers 4

    .prologue
    .line 148
    if-nez p0, :cond_a

    .line 149
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tree == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_a
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot plant Timber into itself."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1a
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->FOREST:Ljava/util/List;

    monitor-enter v1

    .line 155
    :try_start_1d
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->FOREST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->FOREST:Ljava/util/List;

    sget-object v2, Lcom/mqunar/hy/res/logger/Timber;->FOREST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/mqunar/hy/res/logger/Timber$Tree;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/hy/res/logger/Timber$Tree;

    sput-object v0, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 157
    monitor-exit v1

    .line 158
    return-void

    .line 157
    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_1d .. :try_end_38} :catchall_36

    throw v0
.end method

.method public static tag(Ljava/lang/String;)Lcom/mqunar/hy/res/logger/Timber$Tree;
    .registers 5

    .prologue
    .line 136
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 138
    const/4 v0, 0x0

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_10

    .line 139
    aget-object v3, v1, v0

    iget-object v3, v3, Lcom/mqunar/hy/res/logger/Timber$Tree;->explicitTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 141
    :cond_10
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    return-object v0
.end method

.method public static treeCount()I
    .registers 2

    .prologue
    .line 192
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->FOREST:Ljava/util/List;

    monitor-enter v1

    .line 193
    :try_start_3
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->FOREST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 194
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public static uproot(Lcom/mqunar/hy/res/logger/Timber$Tree;)V
    .registers 5

    .prologue
    .line 164
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->FOREST:Ljava/util/List;

    monitor-enter v1

    .line 165
    :try_start_3
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->FOREST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot uproot tree which is not planted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0

    .line 168
    :cond_27
    :try_start_27
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->FOREST:Ljava/util/List;

    sget-object v2, Lcom/mqunar/hy/res/logger/Timber;->FOREST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/mqunar/hy/res/logger/Timber$Tree;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/hy/res/logger/Timber$Tree;

    sput-object v0, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 169
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_24

    .line 170
    return-void
.end method

.method public static uprootAll()V
    .registers 2

    .prologue
    .line 176
    sget-object v1, Lcom/mqunar/hy/res/logger/Timber;->FOREST:Ljava/util/List;

    monitor-enter v1

    .line 177
    :try_start_3
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->FOREST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_ARRAY_EMPTY:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    sput-object v0, Lcom/mqunar/hy/res/logger/Timber;->forestAsArray:[Lcom/mqunar/hy/res/logger/Timber$Tree;

    .line 179
    monitor-exit v1

    .line 180
    return-void

    .line 179
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Lcom/mqunar/hy/res/logger/NonNls;
        .end annotation
    .end param

    .prologue
    .line 23
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    invoke-virtual {v0, p0, p1}, Lcom/mqunar/hy/res/logger/Timber$Tree;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public static varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/mqunar/hy/res/logger/NonNls;
        .end annotation
    .end param

    .prologue
    .line 30
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mqunar/hy/res/logger/Timber$Tree;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Lcom/mqunar/hy/res/logger/NonNls;
        .end annotation
    .end param

    .prologue
    .line 65
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    invoke-virtual {v0, p0, p1}, Lcom/mqunar/hy/res/logger/Timber$Tree;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public static varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/mqunar/hy/res/logger/NonNls;
        .end annotation
    .end param

    .prologue
    .line 72
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mqunar/hy/res/logger/Timber$Tree;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Lcom/mqunar/hy/res/logger/NonNls;
        .end annotation
    .end param

    .prologue
    .line 100
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    invoke-virtual {v0, p0, p1}, Lcom/mqunar/hy/res/logger/Timber$Tree;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public static varargs wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/mqunar/hy/res/logger/NonNls;
        .end annotation
    .end param

    .prologue
    .line 107
    sget-object v0, Lcom/mqunar/hy/res/logger/Timber;->TREE_OF_SOULS:Lcom/mqunar/hy/res/logger/Timber$Tree;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mqunar/hy/res/logger/Timber$Tree;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    return-void
.end method
