.class Lco/kr/festfive/fragment/DetailFeedFragment$9;
.super Ljava/lang/Object;
.source "DetailFeedFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/DetailFeedFragment;->getNewsFeedDetailToServer()V
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
    .line 687
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 690
    const-string v0, "HAMA"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 50
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
    .line 695
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 696
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/google/gson/JsonObject;

    .line 698
    .local v36, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v2, "code"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 699
    const-string v2, "data"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v40

    .line 701
    .local v40, "object":Lcom/google/gson/JsonObject;
    const-string v26, "N"

    .line 702
    .local v26, "is_like":Ljava/lang/String;
    const-string v2, "is_like"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 703
    const-string v2, "is_like"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v26

    .line 705
    :cond_0
    const-string v27, "S"

    .line 706
    .local v27, "user_level":Ljava/lang/String;
    const-string v2, "user_level"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 707
    const-string v2, "user_level"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v27

    .line 710
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    move-object/from16 v49, v0

    new-instance v2, Lco/kr/festfive/model/NewFeedListItem;

    const-string v3, "news_feed_id"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fixed"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_id"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "contents"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "image1"

    .line 711
    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "image2"

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "image3"

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "image4"

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "image5"

    .line 712
    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "like_count"

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "reply_count"

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "create_date"

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "image1_url"

    .line 713
    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "image2_url"

    move-object/from16 v0, v40

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "image3_url"

    move-object/from16 v0, v40

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "image4_url"

    move-object/from16 v0, v40

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "image5_url"

    .line 714
    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "user_name"

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "user_company"

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "user_position"

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "office_name"

    .line 715
    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "user_profile_thumb_url"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "user_profile_url"

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v25

    const-string v28, "tag"

    .line 717
    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v28

    const-string v29, "url"

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "url_title"

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v30

    const-string v31, "signed"

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v2 .. v31}, Lco/kr/festfive/model/NewFeedListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    move-object/from16 v0, v49

    invoke-static {v0, v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$502(Lco/kr/festfive/fragment/DetailFeedFragment;Lco/kr/festfive/model/NewFeedListItem;)Lco/kr/festfive/model/NewFeedListItem;

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$600(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v2

    if-nez v2, :cond_2

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    invoke-static {v2, v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$602(Lco/kr/festfive/fragment/DetailFeedFragment;Lco/kr/festfive/manager/FestPreferenceManager;)Lco/kr/festfive/manager/FestPreferenceManager;

    .line 726
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$600(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v2

    const-string v3, "user_id"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 727
    .local v47, "userId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$600(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v2

    const-string v3, "user_level"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 729
    .local v48, "userLevel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getUserProfileThumbUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$700(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 731
    const-string v2, "M"

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$800(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 744
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$900(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1100(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v4

    invoke-virtual {v4}, Lco/kr/festfive/model/NewFeedListItem;->getUserPosition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v4

    invoke-virtual {v4}, Lco/kr/festfive/model/NewFeedListItem;->getUserCompany()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getCreateDate()Ljava/lang/String;

    move-result-object v33

    .line 749
    .local v33, "date":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1200(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static/range {v33 .. v33}, Lco/kr/festfive/utils/Utils;->toDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lco/kr/festfive/utils/Utils;->getDateStr(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1300(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getContents()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1400(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getLikeCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1500(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00be

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v4

    invoke-virtual {v4}, Lco/kr/festfive/model/NewFeedListItem;->getReplyCount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1700(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f080056

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1602(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 755
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1700(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f080057

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1802(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1700(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f080058

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1902(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 757
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1700(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f080059

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2002(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 758
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1700(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f08005a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2102(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getImage1Url()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_3

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getImage1Url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 761
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1600(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 767
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getImage2Url()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_4

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getImage2Url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 768
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1800(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 774
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getImage3Url()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_5

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getImage3Url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 775
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1900(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 781
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getImage4Url()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_6

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getImage4Url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 782
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 788
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getImage5Url()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_7

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getImage5Url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 789
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2100(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 796
    :goto_5
    const-string v2, "members"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v39

    .line 797
    .local v39, "members":Lcom/google/gson/JsonArray;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "members = > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v39 .. v39}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->Log(Ljava/lang/String;)V

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2200(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 799
    invoke-virtual/range {v39 .. v39}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2300(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 805
    :goto_6
    const/16 v37, 0x0

    .local v37, "k":I
    :goto_7
    invoke-virtual/range {v39 .. v39}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    move/from16 v0, v37

    if-ge v0, v2, :cond_10

    .line 806
    move-object/from16 v0, v39

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "user_profile_thumb_url"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v44

    .line 807
    .local v44, "thumbUrl":Ljava/lang/String;
    move-object/from16 v0, v39

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "user_id"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v43

    .line 809
    .local v43, "targetUserId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2400(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0070

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v32

    .line 810
    .local v32, "childView":Landroid/view/View;
    const v2, 0x7f08013a

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 812
    .local v38, "memberLogIv":Lcom/mikhaellopez/circularimageview/CircularImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 814
    new-instance v2, Lco/kr/festfive/fragment/DetailFeedFragment$9$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lco/kr/festfive/fragment/DetailFeedFragment$9$1;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment$9;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2200(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 805
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_7

    .line 738
    .end local v32    # "childView":Landroid/view/View;
    .end local v33    # "date":Ljava/lang/String;
    .end local v37    # "k":I
    .end local v38    # "memberLogIv":Lcom/mikhaellopez/circularimageview/CircularImageView;
    .end local v39    # "members":Lcom/google/gson/JsonArray;
    .end local v43    # "targetUserId":Ljava/lang/String;
    .end local v44    # "thumbUrl":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getUserId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$800(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 741
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$800(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 763
    .restart local v33    # "date":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1600(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getImage1Url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1600(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_1

    .line 770
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1800(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getImage2Url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1800(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_2

    .line 777
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1900(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getImage3Url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1900(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_3

    .line 784
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getImage4Url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_4

    .line 791
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2100(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getImage5Url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2100(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_5

    .line 802
    .restart local v39    # "members":Lcom/google/gson/JsonArray;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2300(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 827
    .restart local v37    # "k":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getTag()Ljava/lang/String;

    move-result-object v42

    .line 828
    .local v42, "tags":Ljava/lang/String;
    const-string v2, ","

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    .line 829
    .local v41, "tag":[Ljava/lang/String;
    if-eqz v41, :cond_12

    move-object/from16 v0, v41

    array-length v2, v0

    if-lez v2, :cond_12

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2500(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 831
    const/16 v35, 0x0

    .line 832
    .local v35, "idx":I
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_8
    move-object/from16 v0, v41

    array-length v2, v0

    move/from16 v0, v34

    if-ge v0, v2, :cond_13

    .line 833
    aget-object v2, v41, v34

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 832
    :goto_9
    add-int/lit8 v34, v34, 0x1

    goto :goto_8

    .line 834
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2600(Lco/kr/festfive/fragment/DetailFeedFragment;)[Landroid/widget/TextView;

    move-result-object v2

    aget-object v2, v2, v35

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v41, v34

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2600(Lco/kr/festfive/fragment/DetailFeedFragment;)[Landroid/widget/TextView;

    move-result-object v2

    aget-object v2, v2, v35

    aget-object v3, v41, v34

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2600(Lco/kr/festfive/fragment/DetailFeedFragment;)[Landroid/widget/TextView;

    move-result-object v2

    aget-object v2, v2, v35

    new-instance v3, Lco/kr/festfive/fragment/DetailFeedFragment$9$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lco/kr/festfive/fragment/DetailFeedFragment$9$2;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment$9;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 851
    add-int/lit8 v35, v35, 0x1

    goto :goto_9

    .line 854
    .end local v34    # "i":I
    .end local v35    # "idx":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2500(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 857
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getUrl()Ljava/lang/String;

    move-result-object v45

    .line 858
    .local v45, "url":Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2700(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 888
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getUserId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v47

    if-eq v2, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getUserId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 889
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0700c7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 898
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3100(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    .line 907
    .end local v26    # "is_like":Ljava/lang/String;
    .end local v27    # "user_level":Ljava/lang/String;
    .end local v33    # "date":Ljava/lang/String;
    .end local v36    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v37    # "k":I
    .end local v39    # "members":Lcom/google/gson/JsonArray;
    .end local v40    # "object":Lcom/google/gson/JsonObject;
    .end local v41    # "tag":[Ljava/lang/String;
    .end local v42    # "tags":Ljava/lang/String;
    .end local v45    # "url":Ljava/lang/String;
    .end local v47    # "userId":Ljava/lang/String;
    .end local v48    # "userLevel":Ljava/lang/String;
    :cond_15
    :goto_c
    return-void

    .line 861
    .restart local v26    # "is_like":Ljava/lang/String;
    .restart local v27    # "user_level":Ljava/lang/String;
    .restart local v33    # "date":Ljava/lang/String;
    .restart local v36    # "jsonObject":Lcom/google/gson/JsonObject;
    .restart local v37    # "k":I
    .restart local v39    # "members":Lcom/google/gson/JsonArray;
    .restart local v40    # "object":Lcom/google/gson/JsonObject;
    .restart local v41    # "tag":[Ljava/lang/String;
    .restart local v42    # "tags":Ljava/lang/String;
    .restart local v45    # "url":Ljava/lang/String;
    .restart local v47    # "userId":Ljava/lang/String;
    .restart local v48    # "userLevel":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2700(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2800(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getUrl_title()Ljava/lang/String;

    move-result-object v46

    .line 864
    .local v46, "url_title":Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 865
    const-string v46, "URL"

    .line 867
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2900(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2700(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$2700(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Lco/kr/festfive/fragment/DetailFeedFragment$9$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lco/kr/festfive/fragment/DetailFeedFragment$9$3;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment$9;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a

    .line 891
    .end local v46    # "url_title":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getUserLevel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0700c6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 894
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 901
    .end local v26    # "is_like":Ljava/lang/String;
    .end local v27    # "user_level":Ljava/lang/String;
    .end local v33    # "date":Ljava/lang/String;
    .end local v37    # "k":I
    .end local v39    # "members":Lcom/google/gson/JsonArray;
    .end local v40    # "object":Lcom/google/gson/JsonObject;
    .end local v41    # "tag":[Ljava/lang/String;
    .end local v42    # "tags":Ljava/lang/String;
    .end local v45    # "url":Ljava/lang/String;
    .end local v47    # "userId":Ljava/lang/String;
    .end local v48    # "userLevel":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "message"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c
.end method
