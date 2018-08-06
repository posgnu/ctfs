.class Lcom/sendbird/android/SendBird$SendBirdClient$34;
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

.field final synthetic val$fileLink:Lcom/sendbird/android/model/FileLink;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/FileLink;)V
    .locals 0

    .prologue
    .line 2393
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$34;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$34;->val$fileLink:Lcom/sendbird/android/model/FileLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$34;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2397
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$34;->val$fileLink:Lcom/sendbird/android/model/FileLink;

    invoke-virtual {v0}, Lcom/sendbird/android/model/FileLink;->isSoftMuted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2398
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$34;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$34;->val$fileLink:Lcom/sendbird/android/model/FileLink;

    invoke-interface {v0, v1}, Lcom/sendbird/android/SendBirdEventHandler;->onMutedFileReceived(Lcom/sendbird/android/model/FileLink;)V

    .line 2403
    :cond_0
    :goto_0
    return-void

    .line 2400
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$34;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$34;->val$fileLink:Lcom/sendbird/android/model/FileLink;

    invoke-interface {v0, v1}, Lcom/sendbird/android/SendBirdEventHandler;->onFileReceived(Lcom/sendbird/android/model/FileLink;)V

    goto :goto_0
.end method
