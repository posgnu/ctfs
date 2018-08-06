.class Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;
.super Ljava/lang/Object;
.source "SearchNewsFeedFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getNewsFeedListToServer(Ljava/lang/String;Z)V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/SearchNewsFeedFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    .prologue
    .line 258
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 261
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 264
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 38
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
    .line 269
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 273
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 275
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/google/gson/JsonObject;

    .line 277
    .local v35, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v2, "code"

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 279
    const-string v2, "data"

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v33

    .line 281
    .local v33, "data":Lcom/google/gson/JsonArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$600(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$400(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)I

    move-result v3

    invoke-virtual/range {v33 .. v33}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$402(Lco/kr/festfive/fragment/SearchNewsFeedFragment;I)I

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$700(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$000(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \uac80\uc0c9\uacb0\uacfc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$400(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_0
    invoke-virtual/range {v33 .. v33}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    move/from16 v0, v34

    if-ge v0, v2, :cond_1

    .line 286
    invoke-virtual/range {v33 .. v34}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v36

    .line 288
    .local v36, "object":Lcom/google/gson/JsonObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$100(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    move-result-object v37

    new-instance v2, Lco/kr/festfive/model/NewFeedListItem;

    const-string v3, "news_feed_id"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fixed"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_id"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "contents"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "image1"

    .line 289
    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "image2"

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "image3"

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "image4"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "image5"

    .line 290
    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "like_count"

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "reply_count"

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "create_date"

    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "image1_url"

    .line 291
    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "image2_url"

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "image3_url"

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "image4_url"

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "image5_url"

    .line 292
    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "user_name"

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "user_company"

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "user_position"

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "office_name"

    .line 293
    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "user_profile_thumb_url"

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "user_profile_url"

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v25

    const-string v26, "is_like"

    .line 294
    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v26

    const-string v27, "user_level"

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v27

    const-string v28, "tag"

    .line 295
    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v28

    const-string v29, "url"

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "url_title"

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v30

    const-string v31, "signed"

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v31

    const-string v32, "category"

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v2 .. v32}, Lco/kr/festfive/model/NewFeedListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lco/kr/festfive/adapter/SearchNewsFeedAdapter;->add(Ljava/lang/Object;)V

    .line 285
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_0

    .line 301
    .end local v36    # "object":Lcom/google/gson/JsonObject;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$100(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$000(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lco/kr/festfive/adapter/SearchNewsFeedAdapter;->setSearchWord(Ljava/lang/String;)V

    .line 302
    const-string v2, "SearchNewsFeedFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searchword\ub294 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$800(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$900(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)I

    move-result v2

    if-nez v2, :cond_2

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$1000(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Landroid/widget/ListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$100(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 306
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$1102(Lco/kr/festfive/fragment/SearchNewsFeedFragment;Z)Z

    .line 314
    .end local v33    # "data":Lcom/google/gson/JsonArray;
    .end local v34    # "i":I
    .end local v35    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_3
    :goto_1
    return-void

    .line 308
    .restart local v35    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "message"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
