.class Lcom/sendbird/android/APIClient$4;
.super Ljava/lang/Object;
.source "APIClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/APIClient;->messagingListCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/APIClient;


# direct methods
.method constructor <init>(Lcom/sendbird/android/APIClient;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/sendbird/android/APIClient$4;->this$0:Lcom/sendbird/android/APIClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 329
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sendbird/android/APIClient$4;->this$0:Lcom/sendbird/android/APIClient;

    invoke-static {v4}, Lcom/sendbird/android/APIClient;->access$100(Lcom/sendbird/android/APIClient;)[Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 330
    iget-object v4, p0, Lcom/sendbird/android/APIClient$4;->this$0:Lcom/sendbird/android/APIClient;

    invoke-static {v4}, Lcom/sendbird/android/APIClient;->access$100(Lcom/sendbird/android/APIClient;)[Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    move-result-object v4

    aget-object v3, v4, v1

    .line 332
    .local v3, "okHttpClient":Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->dispatcher()Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/okhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/shadow/okhttp3/Call;

    .line 333
    .local v0, "call":Lcom/sendbird/android/shadow/okhttp3/Call;
    invoke-interface {v0}, Lcom/sendbird/android/shadow/okhttp3/Call;->request()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/okhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "/v3/messaging_list"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    invoke-interface {v0}, Lcom/sendbird/android/shadow/okhttp3/Call;->cancel()V

    goto :goto_1

    .line 338
    .end local v0    # "call":Lcom/sendbird/android/shadow/okhttp3/Call;
    :cond_1
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->dispatcher()Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/okhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/shadow/okhttp3/Call;

    .line 339
    .restart local v0    # "call":Lcom/sendbird/android/shadow/okhttp3/Call;
    invoke-interface {v0}, Lcom/sendbird/android/shadow/okhttp3/Call;->request()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/okhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "/v3/messaging_list"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 340
    invoke-interface {v0}, Lcom/sendbird/android/shadow/okhttp3/Call;->cancel()V

    goto :goto_2

    .line 329
    .end local v0    # "call":Lcom/sendbird/android/shadow/okhttp3/Call;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "okHttpClient":Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;
    :cond_4
    return-void
.end method
