.class Lcom/sendbird/android/APIClient$5;
.super Ljava/lang/Object;
.source "APIClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/APIClient;->cancelAll()V
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
    .line 603
    iput-object p1, p0, Lcom/sendbird/android/APIClient$5;->this$0:Lcom/sendbird/android/APIClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 606
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/sendbird/android/APIClient$5;->this$0:Lcom/sendbird/android/APIClient;

    invoke-static {v8}, Lcom/sendbird/android/APIClient;->access$100(Lcom/sendbird/android/APIClient;)[Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    move-result-object v8

    array-length v8, v8

    if-ge v2, v8, :cond_8

    .line 607
    iget-object v8, p0, Lcom/sendbird/android/APIClient$5;->this$0:Lcom/sendbird/android/APIClient;

    invoke-static {v8}, Lcom/sendbird/android/APIClient;->access$100(Lcom/sendbird/android/APIClient;)[Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    move-result-object v8

    aget-object v6, v8, v2

    .line 609
    .local v6, "okHttpClient":Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;
    invoke-virtual {v6}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->dispatcher()Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sendbird/android/shadow/okhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sendbird/android/shadow/okhttp3/Call;

    .line 610
    .local v1, "call":Lcom/sendbird/android/shadow/okhttp3/Call;
    invoke-static {}, Lcom/sendbird/android/APIClient;->access$200()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v7, v0, v4

    .line 611
    .local v7, "tag":Ljava/lang/String;
    invoke-interface {v1}, Lcom/sendbird/android/shadow/okhttp3/Call;->request()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sendbird/android/shadow/okhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v1}, Lcom/sendbird/android/shadow/okhttp3/Call;->request()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sendbird/android/shadow/okhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "CALL"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 612
    :cond_1
    invoke-interface {v1}, Lcom/sendbird/android/shadow/okhttp3/Call;->cancel()V

    .line 610
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 617
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "call":Lcom/sendbird/android/shadow/okhttp3/Call;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "tag":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->dispatcher()Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sendbird/android/shadow/okhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sendbird/android/shadow/okhttp3/Call;

    .line 618
    .restart local v1    # "call":Lcom/sendbird/android/shadow/okhttp3/Call;
    invoke-static {}, Lcom/sendbird/android/APIClient;->access$200()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v7, v0, v4

    .line 619
    .restart local v7    # "tag":Ljava/lang/String;
    invoke-interface {v1}, Lcom/sendbird/android/shadow/okhttp3/Call;->request()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sendbird/android/shadow/okhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v1}, Lcom/sendbird/android/shadow/okhttp3/Call;->request()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sendbird/android/shadow/okhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "CALL"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 620
    :cond_5
    invoke-interface {v1}, Lcom/sendbird/android/shadow/okhttp3/Call;->cancel()V

    .line 618
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 606
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "call":Lcom/sendbird/android/shadow/okhttp3/Call;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "tag":Ljava/lang/String;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 625
    .end local v6    # "okHttpClient":Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;
    :cond_8
    return-void
.end method
