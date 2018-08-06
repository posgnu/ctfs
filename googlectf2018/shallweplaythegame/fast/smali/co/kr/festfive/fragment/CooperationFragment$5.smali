.class Lco/kr/festfive/fragment/CooperationFragment$5;
.super Ljava/lang/Object;
.source "CooperationFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/CooperationFragment;->getOfficenerListToServer(Ljava/lang/String;)V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/CooperationFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/CooperationFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/CooperationFragment;

    .prologue
    .line 212
    iput-object p1, p0, Lco/kr/festfive/fragment/CooperationFragment$5;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/CooperationFragment$5;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 215
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment$5;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment$5;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 218
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 19
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
    .line 222
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/kr/festfive/fragment/CooperationFragment$5;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/kr/festfive/fragment/CooperationFragment$5;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 226
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 227
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/gson/JsonObject;

    .line 239
    .local v16, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v1, "code"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 240
    const-string v1, "data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v14

    .line 243
    .local v14, "data":Lcom/google/gson/JsonArray;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-virtual {v14}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v15, v1, :cond_2

    .line 244
    invoke-virtual {v14, v15}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v17

    .line 246
    .local v17, "object":Lcom/google/gson/JsonObject;
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/kr/festfive/fragment/CooperationFragment$5;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CooperationFragment;->access$000(Lco/kr/festfive/fragment/CooperationFragment;)I

    move-result v1

    const-string v2, "officener_type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/kr/festfive/fragment/CooperationFragment$5;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CooperationFragment;->access$200(Lco/kr/festfive/fragment/CooperationFragment;)Ljava/util/ArrayList;

    move-result-object v18

    new-instance v1, Lco/kr/festfive/model/CooperationListItem;

    const-string v2, "officener_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "office_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "title"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "contents"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "email"

    .line 248
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "phone"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "officener_type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "create_date"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "url"

    .line 249
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "image_url"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v1 .. v11}, Lco/kr/festfive/model/CooperationListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 256
    .end local v17    # "object":Lcom/google/gson/JsonObject;
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v12, "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lco/kr/festfive/model/CooperationListItem;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/kr/festfive/fragment/CooperationFragment$5;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CooperationFragment;->access$200(Lco/kr/festfive/fragment/CooperationFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/kr/festfive/fragment/CooperationFragment$5;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CooperationFragment;->access$200(Lco/kr/festfive/fragment/CooperationFragment;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/kr/festfive/fragment/CooperationFragment$5;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CooperationFragment;->access$100(Lco/kr/festfive/fragment/CooperationFragment;)Lco/kr/festfive/adapter/CooperationAdapter;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/CooperationFragment$5;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/CooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/CooperationFragment$5;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/CooperationFragment;->access$200(Lco/kr/festfive/fragment/CooperationFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v12}, Lco/kr/festfive/adapter/CooperationAdapter;->setData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/kr/festfive/fragment/CooperationFragment$5;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CooperationFragment;->access$500(Lco/kr/festfive/fragment/CooperationFragment;)Lco/kr/festfive/model/AnimatedExpandableListView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/CooperationFragment$5;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/CooperationFragment;->access$100(Lco/kr/festfive/fragment/CooperationFragment;)Lco/kr/festfive/adapter/CooperationAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/kr/festfive/model/AnimatedExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/kr/festfive/fragment/CooperationFragment$5;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CooperationFragment;->access$100(Lco/kr/festfive/fragment/CooperationFragment;)Lco/kr/festfive/adapter/CooperationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/adapter/CooperationAdapter;->getGroupCount()I

    move-result v13

    .line 266
    .local v13, "count":I
    if-lez v13, :cond_4

    .line 267
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/kr/festfive/fragment/CooperationFragment$5;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CooperationFragment;->access$500(Lco/kr/festfive/fragment/CooperationFragment;)Lco/kr/festfive/model/AnimatedExpandableListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lco/kr/festfive/model/AnimatedExpandableListView;->expandGroup(I)Z

    .line 276
    .end local v12    # "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lco/kr/festfive/model/CooperationListItem;>;"
    .end local v13    # "count":I
    .end local v14    # "data":Lcom/google/gson/JsonArray;
    .end local v15    # "i":I
    .end local v16    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_4
    :goto_1
    return-void

    .line 271
    .restart local v16    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/kr/festfive/fragment/CooperationFragment$5;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/CooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "message"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
