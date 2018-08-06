.class Lcom/sendbird/android/APIClient$1;
.super Ljava/lang/Object;
.source "APIClient.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/APIClient;->guestLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/APIClient;

.field final synthetic val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;


# direct methods
.method constructor <init>(Lcom/sendbird/android/APIClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sendbird/android/APIClient$1;->this$0:Lcom/sendbird/android/APIClient;

    iput-object p2, p0, Lcom/sendbird/android/APIClient$1;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 3
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 132
    if-nez p2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sendbird/android/APIClient$1;->this$0:Lcom/sendbird/android/APIClient;

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sendbird/android/APIClient;->access$000(Lcom/sendbird/android/APIClient;Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/APIClient$1;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/sendbird/android/APIClient$1;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/sendbird/android/APIClient$APIClientEventHandler;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V

    .line 139
    :cond_1
    return-void
.end method
