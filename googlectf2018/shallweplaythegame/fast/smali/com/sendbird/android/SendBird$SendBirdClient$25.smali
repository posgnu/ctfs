.class Lcom/sendbird/android/SendBird$SendBirdClient$25;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 0

    .prologue
    .line 2118
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$25;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$25;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 3
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 2121
    if-eqz p2, :cond_1

    .line 2122
    invoke-virtual {p2}, Lcom/sendbird/android/SendBirdException;->printStackTrace()V

    .line 2123
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to login: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sendbird/android/SendBirdException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2125
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$25;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    if-eqz v0, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$25;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/sendbird/android/APIClient$APIClientEventHandler;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V

    .line 2138
    :cond_0
    :goto_0
    return-void

    .line 2131
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$25;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2902(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)Ljava/lang/String;

    .line 2132
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$25;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3000(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 2133
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$25;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3102(Lcom/sendbird/android/SendBird$SendBirdClient;Z)Z

    .line 2135
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$25;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    if-eqz v0, :cond_0

    .line 2136
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$25;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/sendbird/android/APIClient$APIClientEventHandler;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V

    goto :goto_0
.end method
