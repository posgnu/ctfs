.class Lcom/sendbird/android/APIClient$3;
.super Ljava/lang/Object;
.source "APIClient.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/APIClient;->markAllAsRead(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
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
    .line 161
    iput-object p1, p0, Lcom/sendbird/android/APIClient$3;->this$0:Lcom/sendbird/android/APIClient;

    iput-object p2, p0, Lcom/sendbird/android/APIClient$3;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 1
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sendbird/android/APIClient$3;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sendbird/android/APIClient$3;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/sendbird/android/APIClient$APIClientEventHandler;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V

    .line 167
    :cond_0
    return-void
.end method
