.class public final Lcom/mqunar/cock/utils/CockConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_MESSAGE:Ljava/lang/String; = "android.intent.action.MESSAGE_NOTIFIED"

.field public static final ACTION_MESSAGE_REPRORTED:Ljava/lang/String; = "action.im.message.reported"

.field public static final ACTION_SESSION_INFO_CHANGE:Ljava/lang/String; = "action.im.group.admin.change"

.field public static final EXTRA_OBJ:Ljava/lang/String; = "message_obj"

.field public static final EXTRA_WHAT:Ljava/lang/String; = "message_what"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppname()Ljava/lang/String;
    .registers 1

    .prologue
    .line 17
    const-string v0, "QuTui"

    return-object v0
.end method
