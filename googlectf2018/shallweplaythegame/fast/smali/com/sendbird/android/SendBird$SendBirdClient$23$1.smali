.class Lcom/sendbird/android/SendBird$SendBirdClient$23$1;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient$23;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/SendBird$SendBirdClient$23;

.field final synthetic val$e:Lcom/sendbird/android/SendBirdException;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient$23;Lcom/sendbird/android/SendBirdException;)V
    .locals 0

    .prologue
    .line 2059
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$23$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$23;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$23$1;->val$e:Lcom/sendbird/android/SendBirdException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$23$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$23;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$23;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2063
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$23$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$23;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$23;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$23$1;->val$e:Lcom/sendbird/android/SendBirdException;

    invoke-virtual {v1}, Lcom/sendbird/android/SendBirdException;->getCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sendbird/android/SendBirdMultiChannelEventHandler;->onMultiChannelError(I)V

    .line 2065
    :cond_0
    return-void
.end method
