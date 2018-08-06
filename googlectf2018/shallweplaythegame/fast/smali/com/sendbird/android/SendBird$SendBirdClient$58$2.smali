.class Lcom/sendbird/android/SendBird$SendBirdClient$58$2;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient$58;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/SendBird$SendBirdClient$58;

.field final synthetic val$session:Lcom/sendbird/android/model/MessagingChannel;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient$58;Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 0

    .prologue
    .line 3126
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$58$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$58;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$58$2;->val$session:Lcom/sendbird/android/model/MessagingChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3129
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$58$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$58;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$58;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3130
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$58$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$58;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$58;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$58$2;->val$session:Lcom/sendbird/android/model/MessagingChannel;

    invoke-interface {v0, v1}, Lcom/sendbird/android/SendBirdEventHandler;->onMessagingHidden(Lcom/sendbird/android/model/MessagingChannel;)V

    .line 3132
    :cond_0
    return-void
.end method
