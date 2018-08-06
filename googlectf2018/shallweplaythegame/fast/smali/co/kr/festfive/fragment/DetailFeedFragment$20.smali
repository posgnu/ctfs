.class Lco/kr/festfive/fragment/DetailFeedFragment$20;
.super Ljava/lang/Object;
.source "DetailFeedFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/DetailFeedFragment;->setNewsFeedSignToServer(Ljava/lang/String;Z)V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/DetailFeedFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 1345
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$20;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 1349
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
    .line 1353
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1354
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 1356
    .local v0, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1357
    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$20;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\ucc98\ub9ac\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1359
    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$20;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$4300(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    .line 1364
    .end local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_0
    return-void
.end method
