.class public interface abstract Lcom/sendbird/android/SendBirdEventHandler;
.super Ljava/lang/Object;
.source "SendBirdEventHandler.java"


# virtual methods
.method public abstract onAllDataReceived(Lcom/sendbird/android/SendBird$SendBirdDataType;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onAllMessagingEnded()V
.end method

.method public abstract onAllMessagingHidden()V
.end method

.method public abstract onBroadcastMessageReceived(Lcom/sendbird/android/model/BroadcastMessage;)V
.end method

.method public abstract onChannelLeft(Lcom/sendbird/android/model/Channel;)V
.end method

.method public abstract onConnect(Lcom/sendbird/android/model/Channel;)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onFileReceived(Lcom/sendbird/android/model/FileLink;)V
.end method

.method public abstract onMessageDelivery(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMessageReceived(Lcom/sendbird/android/model/Message;)V
.end method

.method public abstract onMessagingEnded(Lcom/sendbird/android/model/MessagingChannel;)V
.end method

.method public abstract onMessagingHidden(Lcom/sendbird/android/model/MessagingChannel;)V
.end method

.method public abstract onMessagingStarted(Lcom/sendbird/android/model/MessagingChannel;)V
.end method

.method public abstract onMessagingUpdated(Lcom/sendbird/android/model/MessagingChannel;)V
.end method

.method public abstract onMutedFileReceived(Lcom/sendbird/android/model/FileLink;)V
.end method

.method public abstract onMutedMessageReceived(Lcom/sendbird/android/model/Message;)V
.end method

.method public abstract onReadReceived(Lcom/sendbird/android/model/ReadStatus;)V
.end method

.method public abstract onSystemMessageReceived(Lcom/sendbird/android/model/SystemMessage;)V
.end method

.method public abstract onTypeEndReceived(Lcom/sendbird/android/model/TypeStatus;)V
.end method

.method public abstract onTypeStartReceived(Lcom/sendbird/android/model/TypeStatus;)V
.end method
