.class Lcom/sendbird/android/SendBird$SendBirdClient$69;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->unregisterCurrentDevicePushToken(Lcom/sendbird/android/handler/UnregisterPushTokenHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$handler:Lcom/sendbird/android/handler/UnregisterPushTokenHandler;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/handler/UnregisterPushTokenHandler;)V
    .locals 0

    .prologue
    .line 3395
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$69;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$69;->val$handler:Lcom/sendbird/android/handler/UnregisterPushTokenHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 2
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 3398
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$69;->val$handler:Lcom/sendbird/android/handler/UnregisterPushTokenHandler;

    if-eqz v0, :cond_0

    .line 3399
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$69;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$69$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$69$1;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$69;Lcom/sendbird/android/SendBirdException;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3410
    :cond_0
    return-void
.end method
