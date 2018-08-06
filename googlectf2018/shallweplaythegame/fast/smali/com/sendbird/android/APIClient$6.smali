.class Lcom/sendbird/android/APIClient$6;
.super Ljava/lang/Object;
.source "APIClient.java"

# interfaces
.implements Lcom/sendbird/android/shadow/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/APIClient;->runApiRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
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
    .line 685
    iput-object p1, p0, Lcom/sendbird/android/APIClient$6;->this$0:Lcom/sendbird/android/APIClient;

    iput-object p2, p0, Lcom/sendbird/android/APIClient$6;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/sendbird/android/shadow/okhttp3/Call;Ljava/io/IOException;)V
    .locals 5
    .param p1, "call"    # Lcom/sendbird/android/shadow/okhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/sendbird/android/APIClient$6;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/sendbird/android/APIClient$6;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    const/4 v1, 0x0

    new-instance v2, Lcom/sendbird/android/SendBirdException;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2328

    invoke-direct {v2, v3, v4}, Lcom/sendbird/android/SendBirdException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lcom/sendbird/android/APIClient$APIClientEventHandler;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V

    .line 692
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/sendbird/android/shadow/okhttp3/Call;Lcom/sendbird/android/shadow/okhttp3/Response;)V
    .locals 7
    .param p1, "call"    # Lcom/sendbird/android/shadow/okhttp3/Call;
    .param p2, "response"    # Lcom/sendbird/android/shadow/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 697
    :try_start_0
    iget-object v2, p0, Lcom/sendbird/android/APIClient$6;->this$0:Lcom/sendbird/android/APIClient;

    invoke-virtual {v2, p2}, Lcom/sendbird/android/APIClient;->processResponse(Lcom/sendbird/android/shadow/okhttp3/Response;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v1

    .line 698
    .local v1, "result":Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    iget-object v2, p0, Lcom/sendbird/android/APIClient$6;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    if-eqz v2, :cond_0

    .line 699
    iget-object v2, p0, Lcom/sendbird/android/APIClient$6;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/sendbird/android/APIClient$APIClientEventHandler;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    :try_end_0
    .catch Lcom/sendbird/android/SendBirdException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 718
    .end local v1    # "result":Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    :cond_0
    :goto_0
    return-void

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Lcom/sendbird/android/SendBirdException;
    sget-boolean v2, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 703
    invoke-virtual {v0}, Lcom/sendbird/android/SendBirdException;->printStackTrace()V

    .line 704
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sendbird/android/SendBirdException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 706
    :cond_1
    iget-object v2, p0, Lcom/sendbird/android/APIClient$6;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    if-eqz v2, :cond_0

    .line 707
    iget-object v2, p0, Lcom/sendbird/android/APIClient$6;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-interface {v2, v6, v0}, Lcom/sendbird/android/APIClient$APIClientEventHandler;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V

    goto :goto_0

    .line 709
    .end local v0    # "e":Lcom/sendbird/android/SendBirdException;
    :catch_1
    move-exception v0

    .line 710
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 711
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 712
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 714
    :cond_2
    iget-object v2, p0, Lcom/sendbird/android/APIClient$6;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    if-eqz v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/sendbird/android/APIClient$6;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    new-instance v3, Lcom/sendbird/android/SendBirdException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2328

    invoke-direct {v3, v4, v5}, Lcom/sendbird/android/SendBirdException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v6, v3}, Lcom/sendbird/android/APIClient$APIClientEventHandler;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V

    goto :goto_0
.end method
