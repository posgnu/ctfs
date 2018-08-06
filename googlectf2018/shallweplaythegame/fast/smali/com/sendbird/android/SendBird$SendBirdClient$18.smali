.class Lcom/sendbird/android/SendBird$SendBirdClient$18;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->messageDelete(JLcom/sendbird/android/handler/DeleteMessageHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$handler:Lcom/sendbird/android/handler/DeleteMessageHandler;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/handler/DeleteMessageHandler;J)V
    .locals 1

    .prologue
    .line 1914
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$18;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$18;->val$handler:Lcom/sendbird/android/handler/DeleteMessageHandler;

    iput-wide p3, p0, Lcom/sendbird/android/SendBird$SendBirdClient$18;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 2
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$18;->val$handler:Lcom/sendbird/android/handler/DeleteMessageHandler;

    if-eqz v0, :cond_0

    .line 1918
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$18;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$18$1;

    invoke-direct {v1, p0, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$18$1;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$18;Lcom/sendbird/android/SendBirdException;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1929
    :cond_0
    return-void
.end method
