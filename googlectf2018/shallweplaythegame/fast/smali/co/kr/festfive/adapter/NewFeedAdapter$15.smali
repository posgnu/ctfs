.class Lco/kr/festfive/adapter/NewFeedAdapter$15;
.super Ljava/lang/Object;
.source "NewFeedAdapter.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/adapter/NewFeedAdapter;->setNewsFeedFix(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/adapter/NewFeedAdapter;


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/NewFeedAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/NewFeedAdapter;

    .prologue
    .line 765
    iput-object p1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$15;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 769
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 4
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    const/4 v3, 0x0

    .line 773
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 776
    .local v0, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$15;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v1}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2400(Lco/kr/festfive/adapter/NewFeedAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\ucc98\ub9ac\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 779
    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$15;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v1}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2600(Lco/kr/festfive/adapter/NewFeedAdapter;)Lco/kr/festfive/listener/DeleteListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lco/kr/festfive/listener/DeleteListener;->delete(Z)V

    .line 787
    .end local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_0
    :goto_0
    return-void

    .line 781
    .restart local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_1
    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$15;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v1}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2400(Lco/kr/festfive/adapter/NewFeedAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
