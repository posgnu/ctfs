.class Lcom/sendbird/android/shadow/okhttp3/RealCall$ApplicationInterceptorChain;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lcom/sendbird/android/shadow/okhttp3/Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationInterceptorChain"
.end annotation


# instance fields
.field private final forWebSocket:Z

.field private final index:I

.field private final request:Lcom/sendbird/android/shadow/okhttp3/Request;

.field final synthetic this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;


# direct methods
.method constructor <init>(Lcom/sendbird/android/shadow/okhttp3/RealCall;ILcom/sendbird/android/shadow/okhttp3/Request;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/sendbird/android/shadow/okhttp3/RealCall;
    .param p2, "index"    # I
    .param p3, "request"    # Lcom/sendbird/android/shadow/okhttp3/Request;
    .param p4, "forWebSocket"    # Z

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$ApplicationInterceptorChain;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput p2, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$ApplicationInterceptorChain;->index:I

    .line 173
    iput-object p3, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$ApplicationInterceptorChain;->request:Lcom/sendbird/android/shadow/okhttp3/Request;

    .line 174
    iput-boolean p4, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$ApplicationInterceptorChain;->forWebSocket:Z

    .line 175
    return-void
.end method


# virtual methods
.method public connection()Lcom/sendbird/android/shadow/okhttp3/Connection;
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public proceed(Lcom/sendbird/android/shadow/okhttp3/Request;)Lcom/sendbird/android/shadow/okhttp3/Response;
    .locals 6
    .param p1, "request"    # Lcom/sendbird/android/shadow/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iget v3, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$ApplicationInterceptorChain;->index:I

    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$ApplicationInterceptorChain;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    invoke-static {v4}, Lcom/sendbird/android/shadow/okhttp3/RealCall;->access$300(Lcom/sendbird/android/shadow/okhttp3/RealCall;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 188
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/RealCall$ApplicationInterceptorChain;

    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$ApplicationInterceptorChain;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    iget v4, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$ApplicationInterceptorChain;->index:I

    add-int/lit8 v4, v4, 0x1

    iget-boolean v5, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$ApplicationInterceptorChain;->forWebSocket:Z

    invoke-direct {v0, v3, v4, p1, v5}, Lcom/sendbird/android/shadow/okhttp3/RealCall$ApplicationInterceptorChain;-><init>(Lcom/sendbird/android/shadow/okhttp3/RealCall;ILcom/sendbird/android/shadow/okhttp3/Request;Z)V

    .line 189
    .local v0, "chain":Lcom/sendbird/android/shadow/okhttp3/Interceptor$Chain;
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$ApplicationInterceptorChain;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    invoke-static {v3}, Lcom/sendbird/android/shadow/okhttp3/RealCall;->access$300(Lcom/sendbird/android/shadow/okhttp3/RealCall;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$ApplicationInterceptorChain;->index:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sendbird/android/shadow/okhttp3/Interceptor;

    .line 190
    .local v2, "interceptor":Lcom/sendbird/android/shadow/okhttp3/Interceptor;
    invoke-interface {v2, v0}, Lcom/sendbird/android/shadow/okhttp3/Interceptor;->intercept(Lcom/sendbird/android/shadow/okhttp3/Interceptor$Chain;)Lcom/sendbird/android/shadow/okhttp3/Response;

    move-result-object v1

    .line 192
    .local v1, "interceptedResponse":Lcom/sendbird/android/shadow/okhttp3/Response;
    if-nez v1, :cond_1

    .line 193
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "application interceptor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    .end local v0    # "chain":Lcom/sendbird/android/shadow/okhttp3/Interceptor$Chain;
    .end local v1    # "interceptedResponse":Lcom/sendbird/android/shadow/okhttp3/Response;
    .end local v2    # "interceptor":Lcom/sendbird/android/shadow/okhttp3/Interceptor;
    :cond_0
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$ApplicationInterceptorChain;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    iget-boolean v4, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$ApplicationInterceptorChain;->forWebSocket:Z

    invoke-virtual {v3, p1, v4}, Lcom/sendbird/android/shadow/okhttp3/RealCall;->getResponse(Lcom/sendbird/android/shadow/okhttp3/Request;Z)Lcom/sendbird/android/shadow/okhttp3/Response;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public request()Lcom/sendbird/android/shadow/okhttp3/Request;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$ApplicationInterceptorChain;->request:Lcom/sendbird/android/shadow/okhttp3/Request;

    return-object v0
.end method
