.class Lco/kr/festfive/fragment/NoticeDetailFeedFragment$7;
.super Ljava/lang/Object;
.source "NoticeDetailFeedFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->setNewsFeedLikeAddToServer(Ljava/lang/String;)V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    .prologue
    .line 483
    iput-object p1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$7;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 487
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 5
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
    .line 492
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 496
    .local v0, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v2, "code"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 497
    new-instance v1, Lco/kr/festfive/Dialog/LikeDialog;

    iget-object v2, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$7;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    iget-object v3, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$7;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-virtual {v3}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lco/kr/festfive/Dialog/LikeDialog;-><init>(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;Landroid/content/Context;I)V

    .line 498
    .local v1, "likeDialog":Lco/kr/festfive/Dialog/LikeDialog;
    invoke-virtual {v1}, Lco/kr/festfive/Dialog/LikeDialog;->show()V

    .line 510
    .end local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v1    # "likeDialog":Lco/kr/festfive/Dialog/LikeDialog;
    :cond_0
    :goto_0
    return-void

    .line 504
    .restart local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_1
    iget-object v2, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$7;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$000(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
