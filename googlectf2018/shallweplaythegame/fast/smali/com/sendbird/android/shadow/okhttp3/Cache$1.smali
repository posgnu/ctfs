.class Lcom/sendbird/android/shadow/okhttp3/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/shadow/okhttp3/Cache;


# direct methods
.method constructor <init>(Lcom/sendbird/android/shadow/okhttp3/Cache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sendbird/android/shadow/okhttp3/Cache;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$1;->this$0:Lcom/sendbird/android/shadow/okhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/sendbird/android/shadow/okhttp3/Request;)Lcom/sendbird/android/shadow/okhttp3/Response;
    .locals 1
    .param p1, "request"    # Lcom/sendbird/android/shadow/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$1;->this$0:Lcom/sendbird/android/shadow/okhttp3/Cache;

    invoke-virtual {v0, p1}, Lcom/sendbird/android/shadow/okhttp3/Cache;->get(Lcom/sendbird/android/shadow/okhttp3/Request;)Lcom/sendbird/android/shadow/okhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/sendbird/android/shadow/okhttp3/Response;)Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheRequest;
    .locals 1
    .param p1, "response"    # Lcom/sendbird/android/shadow/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$1;->this$0:Lcom/sendbird/android/shadow/okhttp3/Cache;

    invoke-static {v0, p1}, Lcom/sendbird/android/shadow/okhttp3/Cache;->access$000(Lcom/sendbird/android/shadow/okhttp3/Cache;Lcom/sendbird/android/shadow/okhttp3/Response;)Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/sendbird/android/shadow/okhttp3/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/sendbird/android/shadow/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$1;->this$0:Lcom/sendbird/android/shadow/okhttp3/Cache;

    invoke-static {v0, p1}, Lcom/sendbird/android/shadow/okhttp3/Cache;->access$100(Lcom/sendbird/android/shadow/okhttp3/Cache;Lcom/sendbird/android/shadow/okhttp3/Request;)V

    .line 152
    return-void
.end method

.method public trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$1;->this$0:Lcom/sendbird/android/shadow/okhttp3/Cache;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/Cache;->access$300(Lcom/sendbird/android/shadow/okhttp3/Cache;)V

    .line 160
    return-void
.end method

.method public trackResponse(Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$1;->this$0:Lcom/sendbird/android/shadow/okhttp3/Cache;

    invoke-static {v0, p1}, Lcom/sendbird/android/shadow/okhttp3/Cache;->access$400(Lcom/sendbird/android/shadow/okhttp3/Cache;Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;)V

    .line 164
    return-void
.end method

.method public update(Lcom/sendbird/android/shadow/okhttp3/Response;Lcom/sendbird/android/shadow/okhttp3/Response;)V
    .locals 1
    .param p1, "cached"    # Lcom/sendbird/android/shadow/okhttp3/Response;
    .param p2, "network"    # Lcom/sendbird/android/shadow/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$1;->this$0:Lcom/sendbird/android/shadow/okhttp3/Cache;

    invoke-static {v0, p1, p2}, Lcom/sendbird/android/shadow/okhttp3/Cache;->access$200(Lcom/sendbird/android/shadow/okhttp3/Cache;Lcom/sendbird/android/shadow/okhttp3/Response;Lcom/sendbird/android/shadow/okhttp3/Response;)V

    .line 156
    return-void
.end method
