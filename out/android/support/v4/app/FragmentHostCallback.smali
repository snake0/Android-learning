.class public abstract Landroid/support/v4/app/FragmentHostCallback;
.super Landroid/support/v4/app/FragmentContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedForLoaderManager:Z

.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field private mLoadersStarted:Z

.field final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/FragmentContainer;-><init>()V

    .line 44
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 60
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 63
    iput p4, p0, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 5

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 52
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .registers 4

    .prologue
    .line 55
    iget-object v0, p1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 56
    return-void
.end method


# virtual methods
.method doLoaderDestroy()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    .line 248
    :goto_4
    return-void

    .line 247
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    goto :goto_4
.end method

.method doLoaderRetain()V
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    .line 241
    :goto_4
    return-void

    .line 240
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    goto :goto_4
.end method

.method doLoaderStart()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 201
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_6

    .line 216
    :goto_5
    return-void

    .line 204
    :cond_6
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 206
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_14

    .line 207
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 215
    :cond_11
    :goto_11
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    goto :goto_5

    .line 208
    :cond_14
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_11

    .line 209
    const-string v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 211
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    iget-boolean v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v0, :cond_11

    .line 212
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    goto :goto_11
.end method

.method doLoaderStop(Z)V
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    .line 234
    :cond_4
    :goto_4
    return-void

    .line 224
    :cond_5
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_4

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 229
    if-eqz p1, :cond_14

    .line 230
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    goto :goto_4

    .line 232
    :cond_14
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    goto :goto_4
.end method

.method dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 313
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 315
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_43

    .line 316
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 321
    :cond_43
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
    .registers 6

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_b

    .line 267
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    .line 269
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 270
    if-nez v0, :cond_22

    .line 271
    if-eqz p3, :cond_21

    .line 272
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentHostCallback;Z)V

    .line 273
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_21
    :goto_21
    return-object v0

    .line 276
    :cond_22
    invoke-virtual {v0, p0}, Landroid/support/v4/app/LoaderManagerImpl;->updateHostController(Landroid/support/v4/app/FragmentHostCallback;)V

    goto :goto_21
.end method

.method getLoaderManagerImpl()Landroid/support/v4/app/LoaderManagerImpl;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 178
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_8

    .line 179
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 183
    :goto_7
    return-object v0

    .line 181
    :cond_8
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 182
    const-string v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 183
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    goto :goto_7
.end method

.method inactivateFragment(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_1a

    .line 189
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 190
    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_1a

    .line 191
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 192
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_1a
    return-void
.end method

.method onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 2

    .prologue
    .line 198
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 76
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    return v0
.end method

.method public onHasView()Z
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .registers 4
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 126
    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z
    .registers 3

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 6

    .prologue
    .line 113
    const/4 v0, -0x1

    if-eq p3, v0, :cond_b

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public onSupportInvalidateOptionsMenu()V
    .registers 1

    .prologue
    .line 106
    return-void
.end method

.method reportLoaderStart()V
    .registers 5

    .prologue
    .line 251
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_2d

    .line 252
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v2

    .line 253
    new-array v3, v2, [Landroid/support/v4/app/LoaderManagerImpl;

    .line 254
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_1f

    .line 255
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v0, v3, v1

    .line 254
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    .line 257
    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-ge v0, v2, :cond_2d

    .line 258
    aget-object v1, v3, v0

    .line 259
    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->finishRetain()V

    .line 260
    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 263
    :cond_2d
    return-void
.end method

.method restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    .line 310
    return-void
.end method

.method retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 282
    .line 283
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_38

    .line 286
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v3

    .line 287
    new-array v4, v3, [Landroid/support/v4/app/LoaderManagerImpl;

    .line 288
    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_10
    if-ltz v2, :cond_20

    .line 289
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v0, v4, v2

    .line 288
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_10

    :cond_20
    move v0, v1

    .line 291
    :goto_21
    if-ge v1, v3, :cond_39

    .line 292
    aget-object v2, v4, v1

    .line 293
    iget-boolean v5, v2, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v5, :cond_2d

    .line 294
    const/4 v0, 0x1

    .line 291
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 296
    :cond_2d
    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 297
    iget-object v5, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_38
    move v0, v1

    .line 302
    :cond_39
    if-eqz v0, :cond_3e

    .line 303
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    .line 305
    :goto_3d
    return-object v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d
.end method