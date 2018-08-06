.class Lcom/sendbird/android/SendBird$SendBirdClient$45;
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
    .line 2586
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$45;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$45;->val$event:Lcom/sendbird/android/model/SystemEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$45;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4000(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdSystemEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2590
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$45;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4000(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdSystemEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$45;->val$event:Lcom/sendbird/android/model/SystemEvent;

    invoke-interface {v0, v1}, Lcom/sendbird/android/SendBirdSystemEventHandler;->onSystemEventReceived(Lcom/sendbird/android/model/SystemEvent;)V

    .line 2592
    :cond_0
    return-void
.end method
