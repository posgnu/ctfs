.class Lcom/sendbird/android/SendBird$SendBirdClient$30;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$msg:Lcom/sendbird/android/model/Message;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/Message;)V
    .locals 0

    .prologue
    .line 2319
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$30;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$30;->val$msg:Lcom/sendbird/android/model/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$30;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2323
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$30;->val$msg:Lcom/sendbird/android/model/Message;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Message;->isSoftMuted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2324
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$30;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$30;->val$msg:Lcom/sendbird/android/model/Message;

    invoke-interface {v0, v1}, Lcom/sendbird/android/SendBirdEventHandler;->onMutedMessageReceived(Lcom/sendbird/android/model/Message;)V

    .line 2329
    :cond_0
    :goto_0
    return-void

    .line 2326
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$30;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$30;->val$msg:Lcom/sendbird/android/model/Message;

    invoke-interface {v0, v1}, Lcom/sendbird/android/SendBirdEventHandler;->onMessageReceived(Lcom/sendbird/android/model/Message;)V

    goto :goto_0
.end method
