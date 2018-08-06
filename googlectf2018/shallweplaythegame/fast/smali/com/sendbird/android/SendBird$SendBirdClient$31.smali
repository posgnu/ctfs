.class Lcom/sendbird/android/SendBird$SendBirdClient$31;
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
    .line 2340
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$31;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$31;->val$msg:Lcom/sendbird/android/model/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2343
    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$31;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2344
    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$31;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3400(Lcom/sendbird/android/SendBird$SendBirdClient;)Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$31;->val$msg:Lcom/sendbird/android/model/Message;

    invoke-virtual {v2}, Lcom/sendbird/android/model/Message;->getChannelId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/model/Channel;

    .line 2345
    .local v0, "channel":Lcom/sendbird/android/model/Channel;
    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$31;->val$msg:Lcom/sendbird/android/model/Message;

    invoke-virtual {v1}, Lcom/sendbird/android/model/Message;->isSoftMuted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2346
    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$31;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$31;->val$msg:Lcom/sendbird/android/model/Message;

    invoke-interface {v1, v0, v2}, Lcom/sendbird/android/SendBirdMultiChannelEventHandler;->onMultiChannelMutedMessageReceived(Lcom/sendbird/android/model/Channel;Lcom/sendbird/android/model/Message;)V

    .line 2351
    .end local v0    # "channel":Lcom/sendbird/android/model/Channel;
    :cond_0
    :goto_0
    return-void

    .line 2348
    .restart local v0    # "channel":Lcom/sendbird/android/model/Channel;
    :cond_1
    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$31;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$31;->val$msg:Lcom/sendbird/android/model/Message;

    invoke-interface {v1, v0, v2}, Lcom/sendbird/android/SendBirdMultiChannelEventHandler;->onMultiChannelMessageReceived(Lcom/sendbird/android/model/Channel;Lcom/sendbird/android/model/Message;)V

    goto :goto_0
.end method
