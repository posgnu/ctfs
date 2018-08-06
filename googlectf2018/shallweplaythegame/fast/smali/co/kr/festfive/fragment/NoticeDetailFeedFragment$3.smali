.class Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;
.super Ljava/lang/Object;
.source "NoticeDetailFeedFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->getNewsFeedReplyListToServer()V
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

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    .prologue
    .line 303
    iput-object p1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 307
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 310
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 9
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
    .line 315
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_0

    .line 316
    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 319
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 321
    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v6}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$300(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 323
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonObject;

    .line 325
    .local v3, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v6, "code"

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 327
    const-string v6, "data"

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 329
    .local v0, "data":Lcom/google/gson/JsonArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 330
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 332
    .local v5, "object":Lcom/google/gson/JsonObject;
    const/4 v2, 0x0

    .line 333
    .local v2, "inflater1":Landroid/view/LayoutInflater;
    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-virtual {v6}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "inflater1":Landroid/view/LayoutInflater;
    check-cast v2, Landroid/view/LayoutInflater;

    .line 334
    .restart local v2    # "inflater1":Landroid/view/LayoutInflater;
    const v6, 0x7f0a0085

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 336
    .local v4, "mLinearView":Landroid/view/View;
    iget-object v7, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    const v6, 0x7f0801af

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-static {v7, v6}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$402(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;Lcom/mikhaellopez/circularimageview/CircularImageView;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 337
    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v6}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$000(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    const-string v7, "user_profile_thumb_url"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v6

    sget-object v7, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v6

    iget-object v7, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v7}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$400(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 339
    iget-object v7, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    const v6, 0x7f0801ae

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v7, v6}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$502(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 340
    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v6}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$500(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "user_name"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v7, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    const v6, 0x7f0801aa

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v7, v6}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$602(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 343
    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v6}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$600(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "reply"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v7, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    const v6, 0x7f0801ab

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v7, v6}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$702(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 346
    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v6}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$700(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "create_date"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v6}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$300(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 352
    .end local v0    # "data":Lcom/google/gson/JsonArray;
    .end local v1    # "i":I
    .end local v2    # "inflater1":Landroid/view/LayoutInflater;
    .end local v4    # "mLinearView":Landroid/view/View;
    .end local v5    # "object":Lcom/google/gson/JsonObject;
    :cond_1
    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-virtual {v6}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "message"

    invoke-virtual {v3, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 358
    .end local v3    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_2
    return-void
.end method
