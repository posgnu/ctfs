.class Lcom/sendbird/android/SendBird$SendBirdClient$52$2;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient$52;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/SendBird$SendBirdClient$52;

.field final synthetic val$channel:Lcom/sendbird/android/model/MessagingChannel;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient$52;Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 0

    .prologue
    .line 2967
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$52$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$52;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$52$2;->val$channel:Lcom/sendbird/android/model/MessagingChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$52$2;->val$channel:Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v0}, Lcom/sendbird/android/model/MessagingChannel;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$52$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$52;

    iget-object v1, v1, Lcom/sendbird/android/SendBird$SendBirdClient$52;->val$channelUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2971
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$52$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$52;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$52;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2972
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$52$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$52;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$52;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$52$2;->val$channel:Lcom/sendbird/android/model/MessagingChannel;

    invoke-interface {v0, v1}, Lcom/sendbird/android/SendBirdEventHandler;->onMessagingUpdated(Lcom/sendbird/android/model/MessagingChannel;)V

    .line 2979
    :cond_0
    :goto_0
    return-void

    .line 2975
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$52$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$52;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$52;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2976
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$52$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$52;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$52;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$52$2;->val$channel:Lcom/sendbird/android/model/MessagingChannel;

    invoke-interface {v0, v1}, Lcom/sendbird/android/SendBirdEventHandler;->onMessagingStarted(Lcom/sendbird/android/model/MessagingChannel;)V

    goto :goto_0
.end method
