.class Lcom/sendbird/android/SendBird$SendBirdClient$18$1;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient$18;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/SendBird$SendBirdClient$18;

.field final synthetic val$e:Lcom/sendbird/android/SendBirdException;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient$18;Lcom/sendbird/android/SendBirdException;)V
    .locals 0

    .prologue
    .line 1918
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$18$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$18;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$18$1;->val$e:Lcom/sendbird/android/SendBirdException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$18$1;->val$e:Lcom/sendbird/android/SendBirdException;

    if-eqz v0, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$18$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$18;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$18;->val$handler:Lcom/sendbird/android/handler/DeleteMessageHandler;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$18$1;->val$e:Lcom/sendbird/android/SendBirdException;

    invoke-interface {v0, v1}, Lcom/sendbird/android/handler/DeleteMessageHandler;->onError(Lcom/sendbird/android/SendBirdException;)V

    .line 1926
    :goto_0
    return-void

    .line 1924
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$18$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$18;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$18;->val$handler:Lcom/sendbird/android/handler/DeleteMessageHandler;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$18$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$18;

    iget-wide v2, v1, Lcom/sendbird/android/SendBird$SendBirdClient$18;->val$messageId:J

    invoke-interface {v0, v2, v3}, Lcom/sendbird/android/handler/DeleteMessageHandler;->onSuccess(J)V

    goto :goto_0
.end method
