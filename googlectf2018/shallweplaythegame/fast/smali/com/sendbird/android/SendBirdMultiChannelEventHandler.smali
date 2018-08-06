.class public interface abstract Lcom/sendbird/android/SendBirdMultiChannelEventHandler;
.super Ljava/lang/Object;
.source "SendBirdMultiChannelEventHandler.java"


# virtual methods
.method public abstract onMultiChannelBroadcastMessageReceived(Lcom/sendbird/android/model/Channel;Lcom/sendbird/android/model/BroadcastMessage;)V
.end method

.method public abstract onMultiChannelConnect(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sendbird/android/model/Channel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMultiChannelError(I)V
.end method

.method public abstract onMultiChannelFileReceived(Lcom/sendbird/android/model/Channel;Lcom/sendbird/android/model/FileLink;)V
.end method

.method public abstract onMultiChannelLeft(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sendbird/android/model/Channel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMultiChannelMessageDelivery(Lcom/sendbird/android/model/Channel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMultiChannelMessageReceived(Lcom/sendbird/android/model/Channel;Lcom/sendbird/android/model/Message;)V
.end method

.method public abstract onMultiChannelMutedFileReceived(Lcom/sendbird/android/model/Channel;Lcom/sendbird/android/model/FileLink;)V
.end method

.method public abstract onMultiChannelMutedMessageReceived(Lcom/sendbird/android/model/Channel;Lcom/sendbird/android/model/Message;)V
.end method

.method public abstract onMultiChannelSystemMessageReceived(Lcom/sendbird/android/model/Channel;Lcom/sendbird/android/model/SystemMessage;)V
.end method
