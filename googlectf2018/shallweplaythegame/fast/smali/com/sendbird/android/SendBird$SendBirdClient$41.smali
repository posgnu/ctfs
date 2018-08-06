.class Lcom/sendbird/android/SendBird$SendBirdClient$41;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->messageReceived(Ljava/lang/String;Z)Lcom/sendbird/android/SendBird$SendBirdDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$messagingChannel:Lcom/sendbird/android/model/MessagingChannel;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 0

    .prologue
    .line 2510
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$41;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$41;->val$messagingChannel:Lcom/sendbird/android/model/MessagingChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 3
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 2513
    if-eqz p2, :cond_0

    .line 2514
    invoke-virtual {p2}, Lcom/sendbird/android/SendBirdException;->printStackTrace()V

    .line 2515
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to load messaging channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sendbird/android/SendBirdException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2530
    :goto_0
    return-void

    .line 2519
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$41;->val$messagingChannel:Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "last_message"

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sendbird/android/model/MessagingChannel;->updateLastMessage(Ljava/lang/String;)V

    .line 2520
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$41;->val$messagingChannel:Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "unread_message_count"

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sendbird/android/model/MessagingChannel;->updateUnreadMessageCount(I)V

    .line 2522
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$41;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$41$1;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$41$1;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$41;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
