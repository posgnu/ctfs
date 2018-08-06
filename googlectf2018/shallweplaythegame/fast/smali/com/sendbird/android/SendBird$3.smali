.class final Lcom/sendbird/android/SendBird$3;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/SendBirdEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird;->setUnityResponder(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$responder:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllDataReceived(Lcom/sendbird/android/SendBird$SendBirdDataType;I)V
    .locals 0
    .param p1, "type"    # Lcom/sendbird/android/SendBird$SendBirdDataType;
    .param p2, "count"    # I

    .prologue
    .line 418
    return-void
.end method

.method public onAllMessagingEnded()V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method public onAllMessagingHidden()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public onBroadcastMessageReceived(Lcom/sendbird/android/model/BroadcastMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sendbird/android/model/BroadcastMessage;

    .prologue
    .line 339
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 340
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": OnBroadcastMessageReceived"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    const-string v1, "_OnBroadcastMessageReceived"

    invoke-virtual {p1}, Lcom/sendbird/android/model/BroadcastMessage;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public onChannelLeft(Lcom/sendbird/android/model/Channel;)V
    .locals 3
    .param p1, "channel"    # Lcom/sendbird/android/model/Channel;

    .prologue
    .line 310
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 311
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": OnChannelLeft"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    const-string v1, "_OnChannelLeft"

    invoke-virtual {p1}, Lcom/sendbird/android/model/Channel;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public onConnect(Lcom/sendbird/android/model/Channel;)V
    .locals 3
    .param p1, "channel"    # Lcom/sendbird/android/model/Channel;

    .prologue
    .line 294
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": OnConnect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    const-string v1, "_OnConnect"

    invoke-virtual {p1}, Lcom/sendbird/android/model/Channel;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public onError(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 302
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": OnError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    const-string v1, "_OnError"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public onFileReceived(Lcom/sendbird/android/model/FileLink;)V
    .locals 3
    .param p1, "fileLink"    # Lcom/sendbird/android/model/FileLink;

    .prologue
    .line 347
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": OnFileReceived"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    const-string v1, "_OnFileReceived"

    invoke-virtual {p1}, Lcom/sendbird/android/model/FileLink;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public onMessageDelivery(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sent"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;

    .prologue
    .line 423
    return-void
.end method

.method public onMessageReceived(Lcom/sendbird/android/model/Message;)V
    .locals 3
    .param p1, "message"    # Lcom/sendbird/android/model/Message;

    .prologue
    .line 318
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 319
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": OnMessageReceived"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    const-string v1, "_OnMessageReceived"

    invoke-virtual {p1}, Lcom/sendbird/android/model/Message;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public onMessagingEnded(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 3
    .param p1, "channel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 376
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 377
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": OnMessagingEnded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    const-string v1, "_OnMessagingEnded"

    invoke-virtual {p1}, Lcom/sendbird/android/model/MessagingChannel;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public onMessagingHidden(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 0
    .param p1, "channel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 390
    return-void
.end method

.method public onMessagingStarted(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 3
    .param p1, "channel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 360
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 361
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": OnMessagingStarted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    const-string v1, "_OnMessagingStarted"

    invoke-virtual {p1}, Lcom/sendbird/android/model/MessagingChannel;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public onMessagingUpdated(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 3
    .param p1, "channel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 368
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 369
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": OnMessagingUpdated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    const-string v1, "_OnMessagingUpdated"

    invoke-virtual {p1}, Lcom/sendbird/android/model/MessagingChannel;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public onMutedFileReceived(Lcom/sendbird/android/model/FileLink;)V
    .locals 0
    .param p1, "fileLink"    # Lcom/sendbird/android/model/FileLink;

    .prologue
    .line 356
    return-void
.end method

.method public onMutedMessageReceived(Lcom/sendbird/android/model/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/sendbird/android/model/Message;

    .prologue
    .line 327
    return-void
.end method

.method public onReadReceived(Lcom/sendbird/android/model/ReadStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/sendbird/android/model/ReadStatus;

    .prologue
    .line 399
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 400
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": OnReadReceived"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    const-string v1, "_OnReadReceived"

    invoke-virtual {p1}, Lcom/sendbird/android/model/ReadStatus;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public onSystemMessageReceived(Lcom/sendbird/android/model/SystemMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sendbird/android/model/SystemMessage;

    .prologue
    .line 331
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 332
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": OnSystemMessageReceived"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$3;->val$responder:Ljava/lang/String;

    const-string v1, "_OnSystemMessageReceived"

    invoke-virtual {p1}, Lcom/sendbird/android/model/SystemMessage;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public onTypeEndReceived(Lcom/sendbird/android/model/TypeStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/sendbird/android/model/TypeStatus;

    .prologue
    .line 413
    return-void
.end method

.method public onTypeStartReceived(Lcom/sendbird/android/model/TypeStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/sendbird/android/model/TypeStatus;

    .prologue
    .line 408
    return-void
.end method
