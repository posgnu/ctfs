.class Lcom/sendbird/android/SendBird$SendBirdClient$36;
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

.field final synthetic val$msg:Lcom/sendbird/android/model/BroadcastMessage;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/BroadcastMessage;)V
    .locals 0

    .prologue
    .line 2430
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$36;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$36;->val$msg:Lcom/sendbird/android/model/BroadcastMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$36;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2434
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$36;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$36;->val$msg:Lcom/sendbird/android/model/BroadcastMessage;

    invoke-interface {v0, v1}, Lcom/sendbird/android/SendBirdEventHandler;->onBroadcastMessageReceived(Lcom/sendbird/android/model/BroadcastMessage;)V

    .line 2436
    :cond_0
    return-void
.end method
