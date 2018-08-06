.class Lcom/sendbird/android/SendBird$SendBirdClient$26;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->connect(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$maxMessageTimestamp:J


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;J)V
    .locals 0

    .prologue
    .line 2148
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$26;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-wide p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$26;->val$maxMessageTimestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 4
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 2151
    if-eqz p2, :cond_2

    .line 2152
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$26;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2153
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$26;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$26$1;

    invoke-direct {v1, p0, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$26$1;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$26;Lcom/sendbird/android/SendBirdException;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2163
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$26;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2164
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$26;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$26$2;

    invoke-direct {v1, p0, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$26$2;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$26;Lcom/sendbird/android/SendBirdException;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2178
    :cond_1
    :goto_0
    return-void

    .line 2177
    :cond_2
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$26;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-wide v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$26;->val$maxMessageTimestamp:J

    invoke-static {v0, v2, v3}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$200(Lcom/sendbird/android/SendBird$SendBirdClient;J)V

    goto :goto_0
.end method
