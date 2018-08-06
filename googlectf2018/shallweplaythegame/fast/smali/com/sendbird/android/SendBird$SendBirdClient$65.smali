.class Lcom/sendbird/android/SendBird$SendBirdClient$65;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->uploadFile(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Lcom/sendbird/android/SendBirdFileUploadEventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$customField:Ljava/lang/String;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$handler:Lcom/sendbird/android/SendBirdFileUploadEventHandler;

.field final synthetic val$size:I

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/SendBirdFileUploadEventHandler;Ljava/io/File;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 3299
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65;->val$handler:Lcom/sendbird/android/SendBirdFileUploadEventHandler;

    iput-object p3, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65;->val$file:Ljava/io/File;

    iput-object p4, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65;->val$type:Ljava/lang/String;

    iput p5, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65;->val$size:I

    iput-object p6, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65;->val$customField:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 5
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 3302
    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3332
    :cond_0
    :goto_0
    return-void

    .line 3306
    :cond_1
    if-eqz p2, :cond_2

    .line 3307
    invoke-virtual {p2}, Lcom/sendbird/android/SendBirdException;->printStackTrace()V

    .line 3308
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to upload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sendbird/android/SendBirdException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3309
    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65;->val$handler:Lcom/sendbird/android/SendBirdFileUploadEventHandler;

    if-eqz v2, :cond_0

    .line 3310
    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v3, Lcom/sendbird/android/SendBird$SendBirdClient$65$1;

    invoke-direct {v3, p0, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$65$1;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$65;Lcom/sendbird/android/SendBirdException;)V

    invoke-virtual {v2, v3}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3320
    :cond_2
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 3321
    .local v0, "result":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v2, "url"

    invoke-virtual {v0, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 3323
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65;->val$handler:Lcom/sendbird/android/SendBirdFileUploadEventHandler;

    if-eqz v2, :cond_0

    .line 3324
    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v3, Lcom/sendbird/android/SendBird$SendBirdClient$65$2;

    invoke-direct {v3, p0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient$65$2;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$65;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
