.class Lcom/sendbird/android/SendBird$SendBirdClient$47$1;
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


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient$47;)V
    .locals 0

    .prologue
    .line 2635
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$47;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2639
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$47;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$47;

    iget-object v1, v1, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3200(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/model/Channel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sendbird/android/SendBirdEventHandler;->onConnect(Lcom/sendbird/android/model/Channel;)V

    .line 2641
    :cond_0
    return-void
.end method
