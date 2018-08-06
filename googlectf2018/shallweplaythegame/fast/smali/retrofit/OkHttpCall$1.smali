.class Lretrofit/OkHttpCall$1;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lcom/squareup/okhttp/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/OkHttpCall;->enqueue(Lretrofit/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/OkHttpCall;

.field final synthetic val$callback:Lretrofit/Callback;


# direct methods
.method constructor <init>(Lretrofit/OkHttpCall;Lretrofit/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lretrofit/OkHttpCall;

    .prologue
    .line 70
    .local p0, "this":Lretrofit/OkHttpCall$1;, "Lretrofit/OkHttpCall$1;"
    iput-object p1, p0, Lretrofit/OkHttpCall$1;->this$0:Lretrofit/OkHttpCall;

    iput-object p2, p0, Lretrofit/OkHttpCall$1;->val$callback:Lretrofit/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    .local p0, "this":Lretrofit/OkHttpCall$1;, "Lretrofit/OkHttpCall$1;"
    :try_start_0
    iget-object v1, p0, Lretrofit/OkHttpCall$1;->val$callback:Lretrofit/Callback;

    invoke-interface {v1, p1}, Lretrofit/Callback;->onFailure(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private callSuccess(Lretrofit/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lretrofit/OkHttpCall$1;, "Lretrofit/OkHttpCall$1;"
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<TT;>;"
    :try_start_0
    iget-object v1, p0, Lretrofit/OkHttpCall$1;->val$callback:Lretrofit/Callback;

    iget-object v2, p0, Lretrofit/OkHttpCall$1;->this$0:Lretrofit/OkHttpCall;

    invoke-static {v2}, Lretrofit/OkHttpCall;->access$000(Lretrofit/OkHttpCall;)Lretrofit/Retrofit;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lretrofit/Callback;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    .locals 0
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 88
    .local p0, "this":Lretrofit/OkHttpCall$1;, "Lretrofit/OkHttpCall$1;"
    invoke-direct {p0, p2}, Lretrofit/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/Response;)V
    .locals 3
    .param p1, "rawResponse"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 94
    .local p0, "this":Lretrofit/OkHttpCall$1;, "Lretrofit/OkHttpCall$1;"
    :try_start_0
    iget-object v2, p0, Lretrofit/OkHttpCall$1;->this$0:Lretrofit/OkHttpCall;

    invoke-static {v2, p1}, Lretrofit/OkHttpCall;->access$100(Lretrofit/OkHttpCall;Lcom/squareup/okhttp/Response;)Lretrofit/Response;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    .local v1, "response":Lretrofit/Response;, "Lretrofit/Response<TT;>;"
    invoke-direct {p0, v1}, Lretrofit/OkHttpCall$1;->callSuccess(Lretrofit/Response;)V

    .line 100
    .end local v1    # "response":Lretrofit/Response;, "Lretrofit/Response<TT;>;"
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lretrofit/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
