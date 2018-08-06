.class Lcom/sendbird/android/WSClient$3;
.super Ljava/lang/Object;
.source "WSClient.java"

# interfaces
.implements Lcom/sendbird/android/shadow/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/WSClient;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/WSClient;


# direct methods
.method constructor <init>(Lcom/sendbird/android/WSClient;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sendbird/android/WSClient$3;->this$0:Lcom/sendbird/android/WSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/sendbird/android/shadow/okhttp3/Call;Ljava/io/IOException;)V
    .locals 4
    .param p1, "call"    # Lcom/sendbird/android/shadow/okhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 138
    invoke-static {}, Lcom/sendbird/android/SendBird;->getHostUrlLastUpdatedAt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/sendbird/android/WSClient$3;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {}, Lcom/sendbird/android/SendBird;->getWsHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sendbird/android/WSClient;->access$400(Lcom/sendbird/android/WSClient;Ljava/lang/String;)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/WSClient$3;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sendbird/android/WSClient$3;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sendbird/android/WSClient$WSClientEventHandler;->onError()V

    goto :goto_0
.end method

.method public onResponse(Lcom/sendbird/android/shadow/okhttp3/Call;Lcom/sendbird/android/shadow/okhttp3/Response;)V
    .locals 8
    .param p1, "call"    # Lcom/sendbird/android/shadow/okhttp3/Call;
    .param p2, "response"    # Lcom/sendbird/android/shadow/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p2}, Lcom/sendbird/android/shadow/okhttp3/Response;->code()I

    move-result v5

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_1

    invoke-virtual {p2}, Lcom/sendbird/android/shadow/okhttp3/Response;->code()I

    move-result v5

    const/16 v6, 0x12c

    if-ge v5, v6, :cond_1

    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, "body":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Lcom/sendbird/android/shadow/okhttp3/Response;->body()Lcom/sendbird/android/shadow/okhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/okhttp3/ResponseBody;->string()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sendbird/android/SendBirdException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 161
    :try_start_1
    sget-boolean v5, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 162
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sendbird/android/SendBirdException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 167
    :cond_0
    :try_start_2
    new-instance v5, Lcom/sendbird/android/shadow/com/google/gson/JsonParser;

    invoke-direct {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonParser;-><init>()V

    invoke-virtual {v5, v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sendbird/android/SendBirdException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 172
    .local v3, "result":Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    :try_start_3
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "api_server"

    invoke-virtual {v5, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "apiHostUrl":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "ws_server"

    invoke-virtual {v5, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "wsHostUrl":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v0, v4, v6, v7}, Lcom/sendbird/android/SendBird;->updateHostUrls(Ljava/lang/String;Ljava/lang/String;J)V

    .line 177
    iget-object v5, p0, Lcom/sendbird/android/WSClient$3;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {}, Lcom/sendbird/android/SendBird;->getWsHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sendbird/android/WSClient;->access$400(Lcom/sendbird/android/WSClient;Ljava/lang/String;)V

    .line 196
    .end local v0    # "apiHostUrl":Ljava/lang/String;
    .end local v1    # "body":Ljava/lang/String;
    .end local v3    # "result":Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .end local v4    # "wsHostUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 157
    .restart local v1    # "body":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Lcom/sendbird/android/SendBirdException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2328

    invoke-direct {v5, v6, v7}, Lcom/sendbird/android/SendBirdException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_3
    .catch Lcom/sendbird/android/SendBirdException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 178
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 179
    .local v2, "e":Lcom/sendbird/android/SendBirdException;
    sget-boolean v5, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 180
    invoke-virtual {v2}, Lcom/sendbird/android/SendBirdException;->printStackTrace()V

    .line 181
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sendbird/android/SendBirdException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    :cond_2
    iget-object v5, p0, Lcom/sendbird/android/WSClient$3;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v5}, Lcom/sendbird/android/WSClient;->access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 184
    iget-object v5, p0, Lcom/sendbird/android/WSClient$3;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v5}, Lcom/sendbird/android/WSClient;->access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    move-result-object v5

    invoke-interface {v5}, Lcom/sendbird/android/WSClient$WSClientEventHandler;->onError()V

    goto :goto_0

    .line 168
    .end local v2    # "e":Lcom/sendbird/android/SendBirdException;
    :catch_2
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v5, Lcom/sendbird/android/SendBirdException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2332

    invoke-direct {v5, v6, v7}, Lcom/sendbird/android/SendBirdException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_4
    .catch Lcom/sendbird/android/SendBirdException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 186
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 187
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 188
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    :cond_3
    iget-object v5, p0, Lcom/sendbird/android/WSClient$3;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v5}, Lcom/sendbird/android/WSClient;->access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 192
    iget-object v5, p0, Lcom/sendbird/android/WSClient$3;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v5}, Lcom/sendbird/android/WSClient;->access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    move-result-object v5

    invoke-interface {v5}, Lcom/sendbird/android/WSClient$WSClientEventHandler;->onError()V

    goto/16 :goto_0
.end method
