.class Lcom/sendbird/android/SendBird$SendBirdClient$62$2;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient$62;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/SendBird$SendBirdClient$62;

.field final synthetic val$session:Lcom/sendbird/android/model/MessagingChannel;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient$62;Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 0

    .prologue
    .line 3228
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$62$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$62;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$62$2;->val$session:Lcom/sendbird/android/model/MessagingChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3231
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$62$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$62;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$62;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3232
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$62$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$62;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$62;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$62$2;->val$session:Lcom/sendbird/android/model/MessagingChannel;

    invoke-interface {v0, v1}, Lcom/sendbird/android/SendBirdEventHandler;->onMessagingStarted(Lcom/sendbird/android/model/MessagingChannel;)V

    .line 3234
    :cond_0
    return-void
.end method
