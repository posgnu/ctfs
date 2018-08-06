.class Lco/kr/festfive/activity/MembersListActivity$2;
.super Ljava/lang/Object;
.source "MembersListActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/MembersListActivity;->getSearchUserListToServer(Ljava/lang/String;)V
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
.field final synthetic this$0:Lco/kr/festfive/activity/MembersListActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/MembersListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/MembersListActivity;

    .prologue
    .line 128
    iput-object p1, p0, Lco/kr/festfive/activity/MembersListActivity$2;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 132
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 15
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
    .line 136
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 137
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$2;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$000(Lco/kr/festfive/activity/MembersListActivity;)Lco/kr/festfive/adapter/MemberListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$2;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$000(Lco/kr/festfive/activity/MembersListActivity;)Lco/kr/festfive/adapter/MemberListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/adapter/MemberListAdapter;->clear()V

    .line 139
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$2;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lco/kr/festfive/activity/MembersListActivity;->access$002(Lco/kr/festfive/activity/MembersListActivity;Lco/kr/festfive/adapter/MemberListAdapter;)Lco/kr/festfive/adapter/MemberListAdapter;

    .line 141
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$2;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    new-instance v2, Lco/kr/festfive/adapter/MemberListAdapter;

    iget-object v3, p0, Lco/kr/festfive/activity/MembersListActivity$2;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/MembersListActivity;->access$300(Lco/kr/festfive/activity/MembersListActivity;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lco/kr/festfive/adapter/MemberListAdapter;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, Lco/kr/festfive/activity/MembersListActivity;->access$002(Lco/kr/festfive/activity/MembersListActivity;Lco/kr/festfive/adapter/MemberListAdapter;)Lco/kr/festfive/adapter/MemberListAdapter;

    .line 144
    :cond_0
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$2;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$400(Lco/kr/festfive/activity/MembersListActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/gson/JsonObject;

    .line 148
    .local v12, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v1, "code"

    invoke-virtual {v12, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    const-string v1, "data"

    invoke-virtual {v12, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v9

    .line 151
    .local v9, "data":Lcom/google/gson/JsonArray;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v9}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_4

    .line 152
    invoke-virtual {v9, v11}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    .line 153
    .local v14, "object":Lcom/google/gson/JsonObject;
    new-instance v0, Lco/kr/festfive/model/SearchChannelListItem;

    const-string v1, "user_id"

    invoke-virtual {v14, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_name"

    invoke-virtual {v14, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_company"

    invoke-virtual {v14, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "user_position"

    .line 154
    invoke-virtual {v14, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "office_name"

    invoke-virtual {v14, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "office_room_name"

    invoke-virtual {v14, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "user_profile_thumb_url"

    .line 155
    invoke-virtual {v14, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "user_level"

    invoke-virtual {v14, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lco/kr/festfive/model/SearchChannelListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v0, "item":Lco/kr/festfive/model/SearchChannelListItem;
    const/4 v10, 0x0

    .line 158
    .local v10, "flag":Z
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_1
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$2;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$100(Lco/kr/festfive/activity/MembersListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_1

    .line 159
    invoke-virtual {v0}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity$2;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/MembersListActivity;->access$100(Lco/kr/festfive/activity/MembersListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    const/4 v10, 0x1

    .line 165
    :cond_1
    if-eqz v10, :cond_2

    .line 166
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/kr/festfive/model/SearchChannelListItem;->setChecked(Z)V

    .line 168
    :cond_2
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$2;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$500(Lco/kr/festfive/activity/MembersListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 158
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 171
    .end local v0    # "item":Lco/kr/festfive/model/SearchChannelListItem;
    .end local v10    # "flag":Z
    .end local v13    # "k":I
    .end local v14    # "object":Lcom/google/gson/JsonObject;
    :cond_4
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$2;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$600(Lco/kr/festfive/activity/MembersListActivity;)V

    .line 178
    .end local v9    # "data":Lcom/google/gson/JsonArray;
    .end local v11    # "i":I
    .end local v12    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_5
    return-void
.end method
