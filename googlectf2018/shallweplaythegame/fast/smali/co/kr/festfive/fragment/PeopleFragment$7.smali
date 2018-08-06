.class Lco/kr/festfive/fragment/PeopleFragment$7;
.super Ljava/lang/Object;
.source "PeopleFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/PeopleFragment;->getGroupListFromServer(Lcom/google/gson/JsonObject;Ljava/lang/String;)V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/PeopleFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/PeopleFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/PeopleFragment;

    .prologue
    .line 382
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment$7;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/PeopleFragment$7;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 386
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment$7;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment$7;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 389
    const-string v0, "getGroupListFromServer"

    const-string v1, "getGroupListFromServer 5 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 25
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
    .line 396
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/PeopleFragment$7;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/PeopleFragment$7;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 400
    :cond_0
    const-string v3, "getGroupListFromServer"

    const-string v4, "getGroupListFromServer 6 "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 403
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/gson/JsonObject;

    .line 405
    .local v22, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v3, "==="

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v3, "code"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 408
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/PeopleFragment$7;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/PeopleFragment;->access$1000(Lco/kr/festfive/fragment/PeopleFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/PeopleFragment$7;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/PeopleFragment;->access$1000(Lco/kr/festfive/fragment/PeopleFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 412
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/PeopleFragment$7;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    const-string v4, "data"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v4

    invoke-static {v3, v4}, Lco/kr/festfive/fragment/PeopleFragment;->access$1102(Lco/kr/festfive/fragment/PeopleFragment;Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonArray;

    .line 414
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/PeopleFragment$7;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/PeopleFragment;->access$1100(Lco/kr/festfive/fragment/PeopleFragment;)Lcom/google/gson/JsonArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_2

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/PeopleFragment$7;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/PeopleFragment;->access$1100(Lco/kr/festfive/fragment/PeopleFragment;)Lcom/google/gson/JsonArray;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v21

    .line 417
    .local v21, "jobj":Lcom/google/gson/JsonObject;
    new-instance v2, Lco/kr/festfive/model/GroupListItem;

    const-string v3, "company_id"

    .line 418
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "office_id"

    .line 419
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_id"

    .line 420
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "company_name"

    .line 421
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "company_logo"

    .line 422
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "company_image"

    .line 423
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "company_summary"

    .line 424
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "company_description"

    .line 425
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "company_talk"

    .line 426
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "company_ceo"

    .line 427
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "company_room_name"

    .line 428
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "company_homepage"

    .line 429
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "company_tel"

    .line 430
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "member_count"

    .line 431
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "create_date"

    .line 432
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "logo_url"

    .line 433
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v2 .. v18}, Lco/kr/festfive/model/GroupListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .local v2, "item":Lco/kr/festfive/model/GroupListItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/PeopleFragment$7;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/PeopleFragment;->access$1000(Lco/kr/festfive/fragment/PeopleFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 440
    .end local v2    # "item":Lco/kr/festfive/model/GroupListItem;
    .end local v21    # "jobj":Lcom/google/gson/JsonObject;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/PeopleFragment$7;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/PeopleFragment;->access$1200(Lco/kr/festfive/fragment/PeopleFragment;)V

    .line 449
    .end local v19    # "i":I
    .end local v22    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/PeopleFragment$7;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/PeopleFragment;->access$300(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/fragment/PeopleFragment$7;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/PeopleFragment;->access$200(Lco/kr/festfive/fragment/PeopleFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v23

    .line 450
    .local v23, "tab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-virtual/range {v23 .. v23}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 451
    .local v24, "temp_tv":Landroid/widget/TextView;
    invoke-virtual/range {v23 .. v23}, Landroid/support/design/widget/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/kr/festfive/fragment/PeopleFragment$TabItem;

    invoke-virtual {v3}, Lco/kr/festfive/fragment/PeopleFragment$TabItem;->getTabTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/PeopleFragment$7;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/PeopleFragment;->access$300(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v20

    .line 455
    .local v20, "index":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/PeopleFragment$7;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/PeopleFragment;->access$300(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v24

    .end local v24    # "temp_tv":Landroid/widget/TextView;
    check-cast v24, Landroid/widget/TextView;

    .line 456
    .restart local v24    # "temp_tv":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/PeopleFragment$7;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/PeopleFragment;->access$300(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/kr/festfive/fragment/PeopleFragment$TabItem;

    invoke-virtual {v3}, Lco/kr/festfive/fragment/PeopleFragment$TabItem;->getTabTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/fragment/PeopleFragment$7;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/PeopleFragment;->access$1300(Lco/kr/festfive/fragment/PeopleFragment;)Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/PeopleFragment$7;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    move/from16 v0, v20

    invoke-static {v3, v0}, Lco/kr/festfive/fragment/PeopleFragment;->access$202(Lco/kr/festfive/fragment/PeopleFragment;I)I

    .line 469
    return-void

    .line 442
    .end local v20    # "index":I
    .end local v23    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    .end local v24    # "temp_tv":Landroid/widget/TextView;
    .restart local v22    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/PeopleFragment$7;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-virtual {v3}, Lco/kr/festfive/fragment/PeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "message"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method
