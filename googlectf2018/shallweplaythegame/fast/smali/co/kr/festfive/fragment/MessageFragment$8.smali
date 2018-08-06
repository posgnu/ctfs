.class Lco/kr/festfive/fragment/MessageFragment$8;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MessageFragment;->getMessagingListToServer()V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/MessageFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/MessageFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/MessageFragment;

    .prologue
    .line 699
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageFragment$8;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/MessageFragment$8;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 703
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment$8;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment$8;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 706
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
    .line 710
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MessageFragment$8;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MessageFragment$8;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 714
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 715
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/gson/JsonObject;

    .line 728
    .local v16, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v2, "code"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 729
    const-string v2, "data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v14

    .line 731
    .local v14, "data":Lcom/google/gson/JsonArray;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-virtual {v14}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v15, v2, :cond_2

    .line 732
    invoke-virtual {v14, v15}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v17

    .line 734
    .local v17, "object":Lcom/google/gson/JsonObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MessageFragment$8;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MessageFragment;->access$000(Lco/kr/festfive/fragment/MessageFragment;)Lco/kr/festfive/adapter/ChannelListAdapter;

    move-result-object v18

    new-instance v2, Lco/kr/festfive/model/ChannelListItem;

    const-string v3, "channel_url"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    .line 735
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ori_name"

    .line 736
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cover_img_url"

    .line 737
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "is_channel"

    .line 738
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v7

    const-string v8, "is_manager_user"

    .line 739
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v8

    const-string v9, "last_message"

    .line 740
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lco/kr/festfive/fragment/MessageFragment$8;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    .line 741
    invoke-virtual {v10}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const-string v11, "last_message_ts"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v12

    invoke-static {v10, v12, v13}, Lco/kr/festfive/fragment/MessageFragment;->access$400(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lco/kr/festfive/fragment/MessageFragment$8;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    .line 742
    invoke-virtual {v11}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const-string v12, "created_at"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lco/kr/festfive/fragment/MessageFragment;->access$400(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    const-string v12, "id"

    .line 743
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "unread_message_count"

    .line 744
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v13

    invoke-direct/range {v2 .. v13}, Lco/kr/festfive/model/ChannelListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 734
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lco/kr/festfive/adapter/ChannelListAdapter;->add(Ljava/lang/Object;)V

    .line 746
    const-string v2, "is_channel"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MessageFragment$8;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MessageFragment;->access$900(Lco/kr/festfive/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "channel_url"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 749
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MessageFragment$8;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MessageFragment;->access$1000(Lco/kr/festfive/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MessageFragment$8;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MessageFragment;->access$1100(Lco/kr/festfive/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "channel_url"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 758
    .end local v17    # "object":Lcom/google/gson/JsonObject;
    :cond_2
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/MessageFragment$8;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageFragment;->access$900(Lco/kr/festfive/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lco/kr/festfive/FestManager;->setJoinChannelList(Ljava/util/ArrayList;)V

    .line 760
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/MessageFragment$8;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageFragment;->access$1000(Lco/kr/festfive/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lco/kr/festfive/FestManager;->setJoinUserList(Ljava/util/ArrayList;)V

    .line 761
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/MessageFragment$8;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageFragment;->access$1100(Lco/kr/festfive/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lco/kr/festfive/FestManager;->setJoinUserChannelList(Ljava/util/ArrayList;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MessageFragment$8;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MessageFragment;->access$600(Lco/kr/festfive/fragment/MessageFragment;)Landroid/widget/ListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/MessageFragment$8;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageFragment;->access$000(Lco/kr/festfive/fragment/MessageFragment;)Lco/kr/festfive/adapter/ChannelListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 772
    .end local v14    # "data":Lcom/google/gson/JsonArray;
    .end local v15    # "i":I
    .end local v16    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_3
    :goto_2
    return-void

    .line 766
    .restart local v16    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MessageFragment$8;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "message"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
