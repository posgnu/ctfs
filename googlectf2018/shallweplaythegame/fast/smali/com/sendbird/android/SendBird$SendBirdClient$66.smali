.class Lcom/sendbird/android/SendBird$SendBirdClient$66;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->registerPushToken(Lcom/sendbird/android/handler/RegisterPushTokenHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$handler:Lcom/sendbird/android/handler/RegisterPushTokenHandler;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/handler/RegisterPushTokenHandler;)V
    .locals 0

    .prologue
    .line 3346
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$66;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$66;->val$handler:Lcom/sendbird/android/handler/RegisterPushTokenHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 2
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 3349
    if-eqz p2, :cond_0

    .line 3350
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$66;->val$handler:Lcom/sendbird/android/handler/RegisterPushTokenHandler;

    invoke-interface {v0, p2}, Lcom/sendbird/android/handler/RegisterPushTokenHandler;->onError(Lcom/sendbird/android/SendBirdException;)V

    .line 3355
    :goto_0
    return-void

    .line 3354
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$66;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$66;->val$handler:Lcom/sendbird/android/handler/RegisterPushTokenHandler;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->registerPushToken(Lcom/sendbird/android/handler/RegisterPushTokenHandler;)V

    goto :goto_0
.end method