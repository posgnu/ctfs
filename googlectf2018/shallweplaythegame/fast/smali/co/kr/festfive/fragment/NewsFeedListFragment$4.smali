.class Lco/kr/festfive/fragment/NewsFeedListFragment$4;
.super Ljava/lang/Object;
.source "NewsFeedListFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/NewsFeedListFragment;->getNewsFeedListToServer(I)V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$type:I

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/NewsFeedListFragment;Landroid/app/ProgressDialog;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/NewsFeedListFragment;

    .prologue
    .line 274
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->val$userId:Ljava/lang/String;

    iput p4, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 277
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 281
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/kr/festfive/fragment/NewsFeedListFragment;->access$102(Lco/kr/festfive/fragment/NewsFeedListFragment;Z)Z

    .line 282
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 41
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
    .line 286
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 290
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lco/kr/festfive/fragment/NewsFeedListFragment;->access$102(Lco/kr/festfive/fragment/NewsFeedListFragment;Z)Z

    .line 292
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 293
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/google/gson/JsonObject;

    .line 295
    .local v37, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v3, "code"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 296
    const-string v3, "data"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v33

    .line 297
    .local v33, "data":Lcom/google/gson/JsonArray;
    invoke-virtual/range {v33 .. v33}, Lcom/google/gson/JsonArray;->size()I

    move-result v34

    .line 299
    .local v34, "data_size":I
    if-nez v34, :cond_1

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/NewsFeedListFragment;->access$200(Lco/kr/festfive/fragment/NewsFeedListFragment;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lco/kr/festfive/fragment/NewsFeedListFragment;->access$202(Lco/kr/festfive/fragment/NewsFeedListFragment;I)I

    .line 303
    :cond_1
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_0
    move/from16 v0, v35

    move/from16 v1, v34

    if-ge v0, v1, :cond_3

    .line 304
    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v39

    .line 307
    .local v39, "object":Lcom/google/gson/JsonObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->val$userId:Ljava/lang/String;

    const-string v4, "user_id"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 308
    const-string v3, "NewsFeedHelpFragment"

    const-string v4, "\uc544\uc774\ub514\uac00 \uac19\ub2e4, "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v3, "NewsFeedHelpFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uc544\uc774\ub514\ub294 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "user_id"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \uc720\uc800 \ub808\ubca8\uc740 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "user_level"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/NewsFeedListFragment;->access$000(Lco/kr/festfive/fragment/NewsFeedListFragment;)Lco/kr/festfive/adapter/NewFeedAdapter;

    move-result-object v40

    new-instance v2, Lco/kr/festfive/model/NewFeedListItem;

    const-string v3, "news_feed_id"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fixed"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_id"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "contents"

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "image1"

    .line 317
    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "image2"

    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "image3"

    move-object/from16 v0, v39

    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "image4"

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "image5"

    .line 318
    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "like_count"

    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "reply_count"

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "create_date"

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "image1_url"

    .line 319
    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "image2_url"

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "image3_url"

    move-object/from16 v0, v39

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "image4_url"

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "image5_url"

    .line 320
    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "user_name"

    move-object/from16 v0, v39

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "user_company"

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "user_position"

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "office_name"

    .line 321
    move-object/from16 v0, v39

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "user_profile_thumb_url"

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "user_profile_url"

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v25

    const-string v26, "is_like"

    .line 322
    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v26

    const-string v27, "user_level"

    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v27

    const-string v28, "tag"

    .line 323
    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v28

    const-string v29, "url"

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "url_title"

    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v30

    const-string v31, "signed"

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v31

    const-string v32, "category"

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v2 .. v32}, Lco/kr/festfive/model/NewFeedListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lco/kr/festfive/adapter/NewFeedAdapter;->add(Ljava/lang/Object;)V

    .line 303
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_0

    .line 311
    :cond_2
    const-string v3, "NewsFeedHelpFragment"

    const-string v4, "\uc544\uc774\ub514\uac00 \ub2e4\ub974\ub2e4"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v3, "NewsFeedHelpFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uc544\uc774\ub514\ub294 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "user_id"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \uc720\uc800 \ub808\ubca8\uc740 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "user_level"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 327
    .end local v39    # "object":Lcom/google/gson/JsonObject;
    :cond_3
    const-string v3, "notices"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v38

    .line 328
    .local v38, "notice":Lcom/google/gson/JsonArray;
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lco/kr/festfive/fragment/NewsFeedListFragment;->access$302(Lco/kr/festfive/fragment/NewsFeedListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 330
    const/16 v35, 0x0

    :goto_2
    invoke-virtual/range {v38 .. v38}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    move/from16 v0, v35

    if-ge v0, v3, :cond_4

    .line 331
    move-object/from16 v0, v38

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v36

    .line 333
    .local v36, "jobj":Lcom/google/gson/JsonObject;
    new-instance v2, Lco/kr/festfive/model/NoticeListMainItem;

    const-string v3, "notice_id"

    .line 334
    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "office_id"

    .line 335
    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    .line 336
    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "contents"

    .line 337
    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "create_date"

    .line 338
    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lco/kr/festfive/model/NoticeListMainItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .local v2, "item":Lco/kr/festfive/model/NoticeListMainItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/NewsFeedListFragment;->access$300(Lco/kr/festfive/fragment/NewsFeedListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v35, v35, 0x1

    goto :goto_2

    .line 345
    .end local v2    # "item":Lco/kr/festfive/model/NoticeListMainItem;
    .end local v36    # "jobj":Lcom/google/gson/JsonObject;
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->val$type:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_7

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/NewsFeedListFragment;->access$000(Lco/kr/festfive/fragment/NewsFeedListFragment;)Lco/kr/festfive/adapter/NewFeedAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/adapter/NewFeedAdapter;->notifyDataSetChanged()V

    .line 352
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lco/kr/festfive/fragment/NewsFeedListFragment;->access$502(Lco/kr/festfive/fragment/NewsFeedListFragment;Z)Z

    .line 360
    .end local v33    # "data":Lcom/google/gson/JsonArray;
    .end local v34    # "data_size":I
    .end local v35    # "i":I
    .end local v37    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v38    # "notice":Lcom/google/gson/JsonArray;
    :cond_6
    :goto_4
    return-void

    .line 348
    .restart local v33    # "data":Lcom/google/gson/JsonArray;
    .restart local v34    # "data_size":I
    .restart local v35    # "i":I
    .restart local v37    # "jsonObject":Lcom/google/gson/JsonObject;
    .restart local v38    # "notice":Lcom/google/gson/JsonArray;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/NewsFeedListFragment;->access$200(Lco/kr/festfive/fragment/NewsFeedListFragment;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/NewsFeedListFragment;->access$400(Lco/kr/festfive/fragment/NewsFeedListFragment;)Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/NewsFeedListFragment;->access$000(Lco/kr/festfive/fragment/NewsFeedListFragment;)Lco/kr/festfive/adapter/NewFeedAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_3

    .line 355
    .end local v33    # "data":Lcom/google/gson/JsonArray;
    .end local v34    # "data_size":I
    .end local v35    # "i":I
    .end local v38    # "notice":Lcom/google/gson/JsonArray;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/NewsFeedListFragment$4;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-virtual {v3}, Lco/kr/festfive/fragment/NewsFeedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "message"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method
