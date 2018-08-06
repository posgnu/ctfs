.class Lco/kr/festfive/fragment/DetailFeedFragment$23;
.super Ljava/lang/Object;
.source "DetailFeedFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/DetailFeedFragment;->getLikeToServer()V
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

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/DetailFeedFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 1463
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 1467
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 13
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
    const v12, 0x7f0a0083

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1471
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1472
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    .line 1474
    .local v2, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v8, "code"

    invoke-virtual {v2, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1475
    const-string v8, "members"

    invoke-virtual {v2, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v5

    .line 1476
    .local v5, "members":Lcom/google/gson/JsonArray;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "members = > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lco/kr/festfive/utils/Utils;->Log(Ljava/lang/String;)V

    .line 1477
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2200(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1478
    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 1479
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2300(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1481
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2400(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v8, v12, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1482
    .local v1, "emptView":Landroid/view/View;
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2200(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1487
    .end local v1    # "emptView":Landroid/view/View;
    :goto_0
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8, v10}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$4402(Lco/kr/festfive/fragment/DetailFeedFragment;Z)Z

    .line 1488
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 1489
    invoke-virtual {v5, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    const-string v9, "user_profile_thumb_url"

    invoke-virtual {v8, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 1490
    .local v7, "thumbUrl":Ljava/lang/String;
    invoke-virtual {v5, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    const-string v9, "user_id"

    invoke-virtual {v8, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 1492
    .local v6, "targetUserId":Ljava/lang/String;
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->val$userId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1493
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$4402(Lco/kr/festfive/fragment/DetailFeedFragment;Z)Z

    .line 1496
    :cond_0
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2400(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0a0070

    invoke-virtual {v8, v9, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1497
    .local v0, "childView":Landroid/view/View;
    const v8, 0x7f08013a

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 1499
    .local v4, "memberLogIv":Lcom/mikhaellopez/circularimageview/CircularImageView;
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v8

    sget-object v9, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1501
    new-instance v8, Lco/kr/festfive/fragment/DetailFeedFragment$23$1;

    invoke-direct {v8, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$23$1;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment$23;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1523
    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1524
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2200(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1488
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1484
    .end local v0    # "childView":Landroid/view/View;
    .end local v3    # "k":I
    .end local v4    # "memberLogIv":Lcom/mikhaellopez/circularimageview/CircularImageView;
    .end local v6    # "targetUserId":Ljava/lang/String;
    .end local v7    # "thumbUrl":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2300(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1527
    .restart local v3    # "k":I
    :cond_2
    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 1528
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2400(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v8, v12, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1529
    .restart local v1    # "emptView":Landroid/view/View;
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2200(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1532
    .end local v1    # "emptView":Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$4400(Lco/kr/festfive/fragment/DetailFeedFragment;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1538
    :cond_4
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1400(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1546
    .end local v2    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v3    # "k":I
    .end local v5    # "members":Lcom/google/gson/JsonArray;
    :cond_5
    :goto_2
    return-void

    .line 1540
    .restart local v2    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_6
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v9, "message"

    invoke-virtual {v2, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
