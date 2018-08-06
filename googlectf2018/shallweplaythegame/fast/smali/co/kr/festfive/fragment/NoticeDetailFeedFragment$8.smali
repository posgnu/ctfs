.class Lco/kr/festfive/fragment/NoticeDetailFeedFragment$8;
.super Ljava/lang/Object;
.source "NoticeDetailFeedFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->setNewsFeedDeleteToServer(Ljava/lang/String;)V
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
    .line 521
    iput-object p1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$8;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 525
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

    .line 530
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 534
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

    .line 536
    iget-object v1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$8;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$000(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\uc0ad\uc81c \ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 538
    iget-object v1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$8;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$1000(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 545
    iget-object v1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$8;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 554
    .end local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_0
    :goto_0
    return-void

    .line 548
    .restart local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_1
    iget-object v1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$8;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$000(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/content/Context;

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
