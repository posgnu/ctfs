.class Lcom/sendbird/android/SendBird$SendBirdClient$47$3;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient$47;->onMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/SendBird$SendBirdClient$47;

.field final synthetic val$type:Lcom/sendbird/android/SendBird$SendBirdDataType;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient$47;Lcom/sendbird/android/SendBird$SendBirdDataType;)V
    .locals 0

    .prologue
    .line 2683
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47$3;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$47;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47$3;->val$type:Lcom/sendbird/android/SendBird$SendBirdDataType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2686
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47$3;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$47;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2687
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47$3;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$47;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47$3;->val$type:Lcom/sendbird/android/SendBird$SendBirdDataType;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sendbird/android/SendBirdEventHandler;->onAllDataReceived(Lcom/sendbird/android/SendBird$SendBirdDataType;I)V

    .line 2689
    :cond_0
    return-void
.end method
