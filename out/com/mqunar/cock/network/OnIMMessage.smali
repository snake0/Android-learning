.class public interface abstract Lcom/mqunar/cock/network/OnIMMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onBindReceipt(Lcom/mqunar/cock/network/tcpmodel/rec/BindAck;)V
.end method

.method public abstract onBindTimeout()V
.end method

.method public abstract onClosePushMessageAck(Lcom/mqunar/cock/network/tcpmodel/rec/ClosePushMessageAck;)V
.end method

.method public abstract onFetchDeleteMsg(Lcom/mqunar/cock/network/tcpmodel/rec/FetchDeleteMsgAck;)V
.end method

.method public abstract onFriendRequestPassed(Lcom/mqunar/cock/network/tcpmodel/rec/FriendRequestPassed;)V
.end method

.method public abstract onGroupAdmChanged(Lcom/mqunar/cock/network/tcpmodel/rec/GroupAdmChangedNotify;)V
.end method

.method public abstract onGroupBuildNotify(Lcom/mqunar/cock/network/tcpmodel/rec/GroupBuildNotify;)V
.end method

.method public abstract onGroupBuildSuccess(Landroid/os/Message;)V
.end method

.method public abstract onGroupInfoChanged(Lcom/mqunar/cock/network/tcpmodel/rec/GroupChangedInfo;)V
.end method

.method public abstract onMessageArrived(Landroid/os/Message;)V
.end method

.method public abstract onMessageReceipt(Lcom/mqunar/cock/network/tcpmodel/rec/MessageAck;)V
.end method

.method public abstract onMessageReported(Lcom/mqunar/cock/network/tcpmodel/rec/ReportMessageAck;)V
.end method

.method public abstract onMsgTimeOut(Landroid/os/Message;)V
.end method

.method public abstract onNetEnd(Z)V
.end method

.method public abstract onNewFriendRequest(Lcom/mqunar/cock/network/tcpmodel/rec/NewFriendRequest;)V
.end method

.method public abstract onSessionEnd(Lcom/mqunar/cock/network/tcpmodel/rec/SessionEndNotify;)V
.end method

.method public abstract onTargets()V
.end method

.method public abstract onTypingAck(Lcom/mqunar/cock/network/tcpmodel/rec/TypingInfoAck;)V
.end method

.method public abstract onTypingStatus(Lcom/mqunar/cock/network/tcpmodel/rec/TypingStatus;)V
.end method
