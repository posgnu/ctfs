.class Lcom/sendbird/android/SendBird$SendBirdClient$41$1;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient$41;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/SendBird$SendBirdClient$41;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient$41;)V
    .locals 0

    .prologue
    .line 2522
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$41$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$41;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2525
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$41$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$41;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$41;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdNotificationHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2526
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$41$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$41;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$41;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdNotificationHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$41$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$41;

    iget-object v1, v1, Lcom/sendbird/android/SendBird$SendBirdClient$41;->val$messagingChannel:Lcom/sendbird/android/model/MessagingChannel;

    invoke-interface {v0, v1}, Lcom/sendbird/android/SendBirdNotificationHandler;->onMessagingChannelUpdated(Lcom/sendbird/android/model/MessagingChannel;)V

    .line 2528
    :cond_0
    return-void
.end method
