.class Lcom/sendbird/android/SendBird$SendBirdClient$71$1;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient$71;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/SendBird$SendBirdClient$71;

.field final synthetic val$e:Lcom/sendbird/android/SendBirdException;

.field final synthetic val$response:Lcom/sendbird/android/shadow/com/google/gson/JsonElement;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient$71;Lcom/sendbird/android/SendBirdException;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 3434
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$71$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$71;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$71$1;->val$e:Lcom/sendbird/android/SendBirdException;

    iput-object p3, p0, Lcom/sendbird/android/SendBird$SendBirdClient$71$1;->val$response:Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3437
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$71$1;->val$e:Lcom/sendbird/android/SendBirdException;

    if-eqz v0, :cond_0

    .line 3438
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$71$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$71;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$71;->val$handler:Lcom/sendbird/android/handler/UnregisterPushTokenHandler;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$71$1;->val$e:Lcom/sendbird/android/SendBirdException;

    invoke-interface {v0, v1}, Lcom/sendbird/android/handler/UnregisterPushTokenHandler;->onError(Lcom/sendbird/android/SendBirdException;)V

    .line 3442
    :goto_0
    return-void

    .line 3440
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$71$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$71;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$71;->val$handler:Lcom/sendbird/android/handler/UnregisterPushTokenHandler;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$71$1;->val$response:Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    invoke-interface {v0, v1}, Lcom/sendbird/android/handler/UnregisterPushTokenHandler;->onSuccess(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    goto :goto_0
.end method
