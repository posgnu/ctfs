.class Lcom/sendbird/android/SendBird$SendBirdClient$47$2;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient$47;->onOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/SendBird$SendBirdClient$47;

.field final synthetic val$joinedChannels:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient$47;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 2662
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$47;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47$2;->val$joinedChannels:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2665
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$47;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2666
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$47;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47$2;->val$joinedChannels:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/sendbird/android/SendBirdMultiChannelEventHandler;->onMultiChannelConnect(Ljava/util/ArrayList;)V

    .line 2668
    :cond_0
    return-void
.end method
