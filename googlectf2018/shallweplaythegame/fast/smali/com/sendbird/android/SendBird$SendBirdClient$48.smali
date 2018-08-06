.class Lcom/sendbird/android/SendBird$SendBirdClient$48;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->cmdMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sendbird/android/model/Channel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$finalSent:Z

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$tempId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2815
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$48;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-boolean p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$48;->val$finalSent:Z

    iput-object p3, p0, Lcom/sendbird/android/SendBird$SendBirdClient$48;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/sendbird/android/SendBird$SendBirdClient$48;->val$data:Ljava/lang/String;

    iput-object p5, p0, Lcom/sendbird/android/SendBird$SendBirdClient$48;->val$tempId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2818
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$48;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2819
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$48;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$48;->val$finalSent:Z

    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$48;->val$message:Ljava/lang/String;

    iget-object v3, p0, Lcom/sendbird/android/SendBird$SendBirdClient$48;->val$data:Ljava/lang/String;

    iget-object v4, p0, Lcom/sendbird/android/SendBird$SendBirdClient$48;->val$tempId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sendbird/android/SendBirdEventHandler;->onMessageDelivery(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2821
    :cond_0
    return-void
.end method
