.class Lco/kr/festfive/activity/DetailCommunityActivity$7;
.super Ljava/lang/Object;
.source "DetailCommunityActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/DetailCommunityActivity;->getCommunityDetailToServer(Z)V
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
.field final synthetic this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$webpageEnabled:Z


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/DetailCommunityActivity;Landroid/app/ProgressDialog;Z)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 285
    iput-object p1, p0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    iput-object p2, p0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->val$dialog:Landroid/app/ProgressDialog;

    iput-boolean p3, p0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->val$webpageEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 289
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 292
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 24
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
    .line 296
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->isSuccess()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 298
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/gson/JsonObject;

    .line 300
    .local v12, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v20, "code"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 301
    const-string v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 302
    .local v6, "data":Lcom/google/gson/JsonObject;
    const-string v20, "join_user"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v11

    .line 303
    .local v11, "joinUser":Lcom/google/gson/JsonArray;
    invoke-virtual {v6}, Lcom/google/gson/JsonObject;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v20

    const-string v21, "noticeUrl"

    invoke-virtual/range {v20 .. v21}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    .line 305
    .local v16, "noticeUrl":Lcom/google/gson/JsonElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    const-string v21, "layout_inflater"

    invoke-virtual/range {v20 .. v21}, Lco/kr/festfive/activity/DetailCommunityActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 306
    .local v10, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$600(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/LinearLayout;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 307
    invoke-virtual {v11}, Lcom/google/gson/JsonArray;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$700(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/LinearLayout;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    const v20, 0x7f0a0083

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 310
    .local v9, "emptView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$600(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    .end local v9    # "emptView":Landroid/view/View;
    :goto_0
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_1
    invoke-virtual {v11}, Lcom/google/gson/JsonArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_1

    .line 316
    invoke-virtual {v11, v13}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v20

    const-string v21, "user_profile_thumb_url"

    invoke-virtual/range {v20 .. v21}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v18

    .line 317
    .local v18, "thumbUrl":Ljava/lang/String;
    invoke-virtual {v11, v13}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v20

    const-string v21, "user_id"

    invoke-virtual/range {v20 .. v21}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v17

    .line 319
    .local v17, "targetUserId":Ljava/lang/String;
    const v20, 0x7f0a0070

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 320
    .local v3, "childView":Landroid/view/View;
    const v20, 0x7f08013a

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 322
    .local v14, "memberLogIv":Lcom/mikhaellopez/circularimageview/CircularImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v20

    sget-object v21, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 324
    new-instance v20, Lco/kr/festfive/activity/DetailCommunityActivity$7$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/DetailCommunityActivity$7$1;-><init>(Lco/kr/festfive/activity/DetailCommunityActivity$7;)V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$600(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 312
    .end local v3    # "childView":Landroid/view/View;
    .end local v13    # "k":I
    .end local v14    # "memberLogIv":Lcom/mikhaellopez/circularimageview/CircularImageView;
    .end local v17    # "targetUserId":Ljava/lang/String;
    .end local v18    # "thumbUrl":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$700(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/LinearLayout;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 347
    .restart local v13    # "k":I
    :cond_1
    invoke-virtual {v11}, Lcom/google/gson/JsonArray;->size()I

    move-result v20

    if-lez v20, :cond_2

    .line 348
    const v20, 0x7f0a0083

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 349
    .restart local v9    # "emptView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$600(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    .end local v9    # "emptView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$900(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;

    move-result-object v20

    const-string v21, "title"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$1000(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;

    move-result-object v20

    const-string v21, "summary"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    const-string v21, "is_favorite"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$1102(Lco/kr/festfive/activity/DetailCommunityActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    const-string v20, "Y"

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$1100(Lco/kr/festfive/activity/DetailCommunityActivity;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$200(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lco/kr/festfive/activity/DetailCommunityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070109

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    :goto_2
    const-string v20, "community_date"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, "communityDate":Ljava/lang/String;
    const-string v20, "community_address"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 364
    .local v4, "communityAddress":Lcom/google/gson/JsonElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$1200(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;

    move-result-object v21

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\uc7a5\uc18c "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v20

    if-eqz v20, :cond_5

    const-string v20, ""

    :goto_3
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    const-string v20, "-"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 366
    .local v7, "date":Ljava/lang/String;
    const/16 v20, 0x4

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 367
    .local v15, "month":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 369
    .local v8, "day":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$1300(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$1400(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;

    move-result-object v20

    const-string v21, "description"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$1500(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\ucc38\uc5ec \uba64\ubc84 ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "join_count"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\uba85)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    const-string v21, "is_join"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$1602(Lco/kr/festfive/activity/DetailCommunityActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 376
    const-string v20, "Y"

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$1600(Lco/kr/festfive/activity/DetailCommunityActivity;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$300(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;

    move-result-object v20

    const-string v21, "\ucc38\uc11d"

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$300(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;

    move-result-object v20

    const-string v21, "#E99852"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 385
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v20

    const-string v21, "community_image_url"

    .line 386
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v20

    new-instance v21, Lco/kr/festfive/activity/DetailCommunityActivity$7$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/DetailCommunityActivity$7$2;-><init>(Lco/kr/festfive/activity/DetailCommunityActivity$7;)V

    .line 387
    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/DrawableTypeRequest;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v21, v0

    .line 409
    invoke-static/range {v21 .. v21}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$1700(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/ImageView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v19

    .line 415
    .local v19, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v20, 0x7f08013d

    const-string v21, "community_lat"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "community_lon"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lco/kr/festfive/fragment/LocationFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 417
    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 420
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v20

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->val$webpageEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$1800(Lco/kr/festfive/activity/DetailCommunityActivity;Ljava/lang/String;)V

    .line 431
    .end local v4    # "communityAddress":Lcom/google/gson/JsonElement;
    .end local v5    # "communityDate":Ljava/lang/String;
    .end local v6    # "data":Lcom/google/gson/JsonObject;
    .end local v7    # "date":Ljava/lang/String;
    .end local v8    # "day":Ljava/lang/String;
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v11    # "joinUser":Lcom/google/gson/JsonArray;
    .end local v12    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v13    # "k":I
    .end local v15    # "month":Ljava/lang/String;
    .end local v16    # "noticeUrl":Lcom/google/gson/JsonElement;
    .end local v19    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_3
    :goto_5
    return-void

    .line 359
    .restart local v6    # "data":Lcom/google/gson/JsonObject;
    .restart local v10    # "inflater":Landroid/view/LayoutInflater;
    .restart local v11    # "joinUser":Lcom/google/gson/JsonArray;
    .restart local v12    # "jsonObject":Lcom/google/gson/JsonObject;
    .restart local v13    # "k":I
    .restart local v16    # "noticeUrl":Lcom/google/gson/JsonElement;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$200(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lco/kr/festfive/activity/DetailCommunityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070108

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 364
    .restart local v4    # "communityAddress":Lcom/google/gson/JsonElement;
    .restart local v5    # "communityDate":Ljava/lang/String;
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "("

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v23, ")"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_3

    .line 380
    .restart local v7    # "date":Ljava/lang/String;
    .restart local v8    # "day":Ljava/lang/String;
    .restart local v15    # "month":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$300(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;

    move-result-object v20

    const-string v21, "\uc2e0\uccad"

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$300(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;

    move-result-object v20

    const-string v21, "#cccccc"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_4

    .line 425
    .end local v4    # "communityAddress":Lcom/google/gson/JsonElement;
    .end local v5    # "communityDate":Ljava/lang/String;
    .end local v6    # "data":Lcom/google/gson/JsonObject;
    .end local v7    # "date":Ljava/lang/String;
    .end local v8    # "day":Ljava/lang/String;
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v11    # "joinUser":Lcom/google/gson/JsonArray;
    .end local v13    # "k":I
    .end local v15    # "month":Ljava/lang/String;
    .end local v16    # "noticeUrl":Lcom/google/gson/JsonElement;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/activity/DetailCommunityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "message"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5
.end method
