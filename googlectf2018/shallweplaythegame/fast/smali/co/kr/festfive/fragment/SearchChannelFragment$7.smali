.class Lco/kr/festfive/fragment/SearchChannelFragment$7;
.super Ljava/lang/Object;
.source "SearchChannelFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/SearchChannelFragment;->getSearchUserListToServer(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/SearchChannelFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/SearchChannelFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/SearchChannelFragment;

    .prologue
    .line 451
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchChannelFragment$7;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 455
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 22
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
    .line 459
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchChannelFragment$7;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$500(Lco/kr/festfive/fragment/SearchChannelFragment;)Lco/kr/festfive/adapter/SearchChannelAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchChannelFragment$7;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$800(Lco/kr/festfive/fragment/SearchChannelFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchChannelFragment$7;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$500(Lco/kr/festfive/fragment/SearchChannelFragment;)Lco/kr/festfive/adapter/SearchChannelAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/adapter/SearchChannelAdapter;->clear()V

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchChannelFragment$7;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$502(Lco/kr/festfive/fragment/SearchChannelFragment;Lco/kr/festfive/adapter/SearchChannelAdapter;)Lco/kr/festfive/adapter/SearchChannelAdapter;

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchChannelFragment$7;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    new-instance v3, Lco/kr/festfive/adapter/SearchChannelAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/fragment/SearchChannelFragment$7;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-virtual {v4}, Lco/kr/festfive/fragment/SearchChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lco/kr/festfive/adapter/SearchChannelAdapter;-><init>(Landroid/content/Context;I)V

    invoke-static {v2, v3}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$502(Lco/kr/festfive/fragment/SearchChannelFragment;Lco/kr/festfive/adapter/SearchChannelAdapter;)Lco/kr/festfive/adapter/SearchChannelAdapter;

    .line 469
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchChannelFragment$7;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$900(Lco/kr/festfive/fragment/SearchChannelFragment;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 471
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/gson/JsonObject;

    .line 473
    .local v14, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v2, "code"

    invoke-virtual {v14, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 475
    const-string v2, "data"

    invoke-virtual {v14, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v11

    .line 481
    .local v11, "data":Lcom/google/gson/JsonArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual {v11}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v12, v2, :cond_1

    .line 482
    invoke-virtual {v11, v12}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v15

    .line 484
    .local v15, "object":Lcom/google/gson/JsonObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchChannelFragment$7;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$800(Lco/kr/festfive/fragment/SearchChannelFragment;)Ljava/util/ArrayList;

    move-result-object v21

    new-instance v2, Lco/kr/festfive/model/SearchChannelListItem;

    const-string v3, "user_id"

    invoke-virtual {v15, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "user_name"

    invoke-virtual {v15, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_company"

    invoke-virtual {v15, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "user_position"

    .line 485
    invoke-virtual {v15, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "office_name"

    invoke-virtual {v15, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "office_room_name"

    invoke-virtual {v15, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "user_profile_thumb_url"

    .line 486
    invoke-virtual {v15, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "user_level"

    invoke-virtual {v15, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v2 .. v10}, Lco/kr/festfive/model/SearchChannelListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    const-string v2, "namsang"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "user_id"

    invoke-virtual {v15, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 493
    .end local v15    # "object":Lcom/google/gson/JsonObject;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchChannelFragment$7;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$700(Lco/kr/festfive/fragment/SearchChannelFragment;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 494
    .local v20, "tv":Landroid/widget/TextView;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchChannelFragment$7;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$700(Lco/kr/festfive/fragment/SearchChannelFragment;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;->getOffice_name()Ljava/lang/String;

    move-result-object v16

    .line 496
    .local v16, "originText":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 499
    .local v17, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    const-string v2, "SearchChannelFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "originText : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchChannelFragment$7;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$800(Lco/kr/festfive/fragment/SearchChannelFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 503
    .local v18, "size":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchChannelFragment$7;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$000(Lco/kr/festfive/fragment/SearchChannelFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v13

    .line 504
    .local v13, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchChannelFragment$7;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$000(Lco/kr/festfive/fragment/SearchChannelFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;->getOffice_name()Ljava/lang/String;

    move-result-object v19

    .line 505
    .local v19, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchChannelFragment$7;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$000(Lco/kr/festfive/fragment/SearchChannelFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchChannelFragment$7;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$000(Lco/kr/festfive/fragment/SearchChannelFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/SearchChannelFragment$7;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$1000(Lco/kr/festfive/fragment/SearchChannelFragment;)V

    .line 518
    .end local v11    # "data":Lcom/google/gson/JsonArray;
    .end local v12    # "i":I
    .end local v13    # "index":I
    .end local v14    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v16    # "originText":Ljava/lang/String;
    .end local v17    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v18    # "size":I
    .end local v19    # "text":Ljava/lang/String;
    .end local v20    # "tv":Landroid/widget/TextView;
    :cond_2
    return-void
.end method
