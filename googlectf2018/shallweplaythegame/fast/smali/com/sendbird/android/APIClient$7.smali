.class Lcom/sendbird/android/APIClient$7;
.super Ljava/lang/Object;
.source "APIClient.java"

# interfaces
.implements Lcom/sendbird/android/shadow/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/APIClient;->run(Lcom/sendbird/android/shadow/okhttp3/Request;Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/APIClient;

.field final synthetic val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

.field final synthetic val$request:Lcom/sendbird/android/shadow/okhttp3/Request;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sendbird/android/APIClient;Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;Lcom/sendbird/android/shadow/okhttp3/Request;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/sendbird/android/APIClient$7;->this$0:Lcom/sendbird/android/APIClient;

    iput-object p2, p0, Lcom/sendbird/android/APIClient$7;->val$uri:Ljava/lang/String;

    iput-object p3, p0, Lcom/sendbird/android/APIClient$7;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    iput-object p4, p0, Lcom/sendbird/android/APIClient$7;->val$request:Lcom/sendbird/android/shadow/okhttp3/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/sendbird/android/shadow/okhttp3/Call;Ljava/io/IOException;)V
    .locals 5
    .param p1, "call"    # Lcom/sendbird/android/shadow/okhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 741
    invoke-static {}, Lcom/sendbird/android/SendBird;->getHostUrlLastUpdatedAt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/sendbird/android/APIClient$7;->this$0:Lcom/sendbird/android/APIClient;

    invoke-static {}, Lcom/sendbird/android/SendBird;->getApiHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sendbird/android/APIClient$7;->val$uri:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sendbird/android/shadow/okhttp3/Call;->request()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v3

    iget-object v4, p0, Lcom/sendbird/android/APIClient$7;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sendbird/android/APIClient;->runApiRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/APIClient$7;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/sendbird/android/APIClient$7;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    const/4 v1, 0x0

    new-instance v2, Lcom/sendbird/android/SendBirdException;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2328

    invoke-direct {v2, v3, v4}, Lcom/sendbird/android/SendBirdException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lcom/sendbird/android/APIClient$APIClientEventHandler;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/sendbird/android/shadow/okhttp3/Call;Lcom/sendbird/android/shadow/okhttp3/Response;)V
    .locals 10
    .param p1, "call"    # Lcom/sendbird/android/shadow/okhttp3/Call;
    .param p2, "response"    # Lcom/sendbird/android/shadow/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 752
    invoke-virtual {p2}, Lcom/sendbird/android/shadow/okhttp3/Response;->code()I

    move-result v4

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_0

    invoke-virtual {p2}, Lcom/sendbird/android/shadow/okhttp3/Response;->code()I

    move-result v4

    const/16 v5, 0x12c

    if-ge v4, v5, :cond_0

    .line 757
    :try_start_0
    iget-object v4, p0, Lcom/sendbird/android/APIClient$7;->this$0:Lcom/sendbird/android/APIClient;

    invoke-virtual {v4, p2}, Lcom/sendbird/android/APIClient;->processResponse(Lcom/sendbird/android/shadow/okhttp3/Response;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v2

    .line 758
    .local v2, "result":Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v4

    const-string v5, "api_server"

    invoke-virtual {v4, v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "apiHostUrl":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v4

    const-string v5, "ws_server"

    invoke-virtual {v4, v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 761
    .local v3, "wsHostUrl":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v3, v4, v5}, Lcom/sendbird/android/SendBird;->updateHostUrls(Ljava/lang/String;Ljava/lang/String;J)V

    .line 763
    iget-object v4, p0, Lcom/sendbird/android/APIClient$7;->this$0:Lcom/sendbird/android/APIClient;

    invoke-static {}, Lcom/sendbird/android/SendBird;->getApiHost()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sendbird/android/APIClient$7;->val$uri:Ljava/lang/String;

    iget-object v7, p0, Lcom/sendbird/android/APIClient$7;->val$request:Lcom/sendbird/android/shadow/okhttp3/Request;

    iget-object v8, p0, Lcom/sendbird/android/APIClient$7;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sendbird/android/APIClient;->runApiRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_0
    .catch Lcom/sendbird/android/SendBirdException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 782
    .end local v0    # "apiHostUrl":Ljava/lang/String;
    .end local v2    # "result":Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .end local v3    # "wsHostUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 764
    :catch_0
    move-exception v1

    .line 765
    .local v1, "e":Lcom/sendbird/android/SendBirdException;
    sget-boolean v4, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 766
    invoke-virtual {v1}, Lcom/sendbird/android/SendBirdException;->printStackTrace()V

    .line 767
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sendbird/android/SendBirdException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 769
    :cond_1
    iget-object v4, p0, Lcom/sendbird/android/APIClient$7;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    if-eqz v4, :cond_0

    .line 770
    iget-object v4, p0, Lcom/sendbird/android/APIClient$7;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-interface {v4, v9, v1}, Lcom/sendbird/android/APIClient$APIClientEventHandler;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V

    goto :goto_0

    .line 772
    .end local v1    # "e":Lcom/sendbird/android/SendBirdException;
    :catch_1
    move-exception v1

    .line 773
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 774
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 775
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 777
    :cond_2
    iget-object v4, p0, Lcom/sendbird/android/APIClient$7;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    if-eqz v4, :cond_0

    .line 778
    iget-object v4, p0, Lcom/sendbird/android/APIClient$7;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    new-instance v5, Lcom/sendbird/android/SendBirdException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2328

    invoke-direct {v5, v6, v7}, Lcom/sendbird/android/SendBirdException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v9, v5}, Lcom/sendbird/android/APIClient$APIClientEventHandler;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V

    goto :goto_0
.end method
