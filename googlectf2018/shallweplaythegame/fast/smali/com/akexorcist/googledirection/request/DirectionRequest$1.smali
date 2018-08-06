.class Lcom/akexorcist/googledirection/request/DirectionRequest$1;
.super Ljava/lang/Object;
.source "DirectionRequest.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akexorcist/googledirection/request/DirectionRequest;->execute(Lcom/akexorcist/googledirection/DirectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Lcom/akexorcist/googledirection/model/Direction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akexorcist/googledirection/request/DirectionRequest;

.field final synthetic val$callback:Lcom/akexorcist/googledirection/DirectionCallback;


# direct methods
.method constructor <init>(Lcom/akexorcist/googledirection/request/DirectionRequest;Lcom/akexorcist/googledirection/DirectionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akexorcist/googledirection/request/DirectionRequest;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/akexorcist/googledirection/request/DirectionRequest$1;->this$0:Lcom/akexorcist/googledirection/request/DirectionRequest;

    iput-object p2, p0, Lcom/akexorcist/googledirection/request/DirectionRequest$1;->val$callback:Lcom/akexorcist/googledirection/DirectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/akexorcist/googledirection/model/Direction;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/akexorcist/googledirection/model/Direction;>;"
    iget-object v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequest$1;->val$callback:Lcom/akexorcist/googledirection/DirectionCallback;

    invoke-interface {v0, p2}, Lcom/akexorcist/googledirection/DirectionCallback;->onDirectionFailure(Ljava/lang/Throwable;)V

    .line 115
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/akexorcist/googledirection/model/Direction;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/akexorcist/googledirection/model/Direction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/akexorcist/googledirection/model/Direction;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/akexorcist/googledirection/model/Direction;>;"
    iget-object v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequest$1;->val$callback:Lcom/akexorcist/googledirection/DirectionCallback;

    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/akexorcist/googledirection/request/DirectionRequest$1;->val$callback:Lcom/akexorcist/googledirection/DirectionCallback;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akexorcist/googledirection/model/Direction;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/akexorcist/googledirection/DirectionCallback;->onDirectionSuccess(Lcom/akexorcist/googledirection/model/Direction;Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method
