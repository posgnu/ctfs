.class Lcom/sendbird/android/SendBird$SendBirdClient$46;
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

.field final synthetic val$event:Lcom/sendbird/android/model/SystemEvent;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/SystemEvent;)V
    .locals 0

    .prologue
    .line 2597
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$46;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$46;->val$event:Lcom/sendbird/android/model/SystemEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2600
    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$46;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4100(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelSystemEventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2601
    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$46;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3400(Lcom/sendbird/android/SendBird$SendBirdClient;)Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$46;->val$event:Lcom/sendbird/android/model/SystemEvent;

    invoke-virtual {v2}, Lcom/sendbird/android/model/SystemEvent;->getChannelId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/model/Channel;

    .line 2602
    .local v0, "channel":Lcom/sendbird/android/model/Channel;
    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$46;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4100(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelSystemEventHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$46;->val$event:Lcom/sendbird/android/model/SystemEvent;

    invoke-interface {v1, v0, v2}, Lcom/sendbird/android/SendBirdMultiChannelSystemEventHandler;->onMultiChannelSystemEventReceived(Lcom/sendbird/android/model/Channel;Lcom/sendbird/android/model/SystemEvent;)V

    .line 2604
    .end local v0    # "channel":Lcom/sendbird/android/model/Channel;
    :cond_0
    return-void
.end method
