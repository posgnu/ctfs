.class Lco/kr/festfive/activity/IntroActivity$2;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/IntroActivity;->checkUserToServer()V
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
.field final synthetic this$0:Lco/kr/festfive/activity/IntroActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/IntroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/IntroActivity;

    .prologue
    .line 119
    iput-object p1, p0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 31
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
    .line 128
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/gson/JsonObject;

    .line 132
    .local v29, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v4, "code"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 134
    const-string v4, "data"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v27

    .line 136
    .local v27, "data":Lcom/google/gson/JsonObject;
    const-string v4, "is_valid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "N"

    if-eq v4, v5, :cond_0

    const-string v4, "N"

    const-string v5, "is_valid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    :cond_0
    new-instance v3, Lco/kr/festfive/model/UserListItem;

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, "user_level"

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    const-string v21, ""

    const-string v22, ""

    const-string v23, ""

    const-string v24, ""

    const-string v25, ""

    const-string v26, ""

    invoke-direct/range {v3 .. v26}, Lco/kr/festfive/model/UserListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v3, "userListItem":Lco/kr/festfive/model/UserListItem;
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lco/kr/festfive/FestManager;->setUserListItem(Lco/kr/festfive/model/UserListItem;)V

    .line 142
    new-instance v28, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    const-class v5, Lco/kr/festfive/activity/LoginActivity;

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v28, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lco/kr/festfive/activity/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-virtual {v4}, Lco/kr/festfive/activity/IntroActivity;->finish()V

    .line 173
    .end local v3    # "userListItem":Lco/kr/festfive/model/UserListItem;
    .end local v27    # "data":Lcom/google/gson/JsonObject;
    .end local v28    # "intent":Landroid/content/Intent;
    .end local v29    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_1
    :goto_0
    return-void

    .line 147
    .restart local v27    # "data":Lcom/google/gson/JsonObject;
    .restart local v29    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_2
    new-instance v3, Lco/kr/festfive/model/UserListItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v4}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v5}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v5

    const-string v6, "office_id"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v6}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v6

    const-string v7, "office_room_id"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v7}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v7

    const-string v8, "user_pw"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    .line 148
    invoke-static {v8}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v8

    const-string v9, "user_email"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v9}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v9

    const-string v10, "user_name"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v10}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v10

    const-string v11, "user_profile"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v11}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v11

    const-string v12, "user_birth"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    .line 149
    invoke-static {v12}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v12

    const-string v13, "user_company"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v13}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v13

    const-string v14, "user_position"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v14}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v14

    const-string v15, "user_introduce"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v15}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v15

    const-string v16, "user_level"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v16

    const-string v17, "user_device_id"

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    move-object/from16 v17, v0

    .line 150
    invoke-static/range {v17 .. v17}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v17

    const-string v18, "user_platform"

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v18

    const-string v19, "last_login"

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v19

    const-string v20, "create_date"

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v20

    const-string v21, "office_name"

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v21

    const-string v22, "office_room_name"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    move-object/from16 v22, v0

    .line 151
    invoke-static/range {v22 .. v22}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v22

    const-string v23, "user_profile_thumb_url"

    const-string v24, ""

    invoke-virtual/range {v22 .. v24}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v23

    const-string v24, "user_profile_url"

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v24

    const-string v25, "is_fush_feed"

    const-string v26, ""

    invoke-virtual/range {v24 .. v26}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v25

    const-string v26, "is_fush_reply"

    const-string v30, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, ""

    invoke-direct/range {v3 .. v26}, Lco/kr/festfive/model/UserListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .restart local v3    # "userListItem":Lco/kr/festfive/model/UserListItem;
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lco/kr/festfive/FestManager;->setUserListItem(Lco/kr/festfive/model/UserListItem;)V

    .line 155
    new-instance v28, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    const-class v5, Lco/kr/festfive/activity/MainActivity;

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .restart local v28    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v4}, Lco/kr/festfive/activity/IntroActivity;->access$200(Lco/kr/festfive/activity/IntroActivity;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 157
    const-string v4, "is_push"

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v5}, Lco/kr/festfive/activity/IntroActivity;->access$200(Lco/kr/festfive/activity/IntroActivity;)Z

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    const-string v4, "type"

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v5}, Lco/kr/festfive/activity/IntroActivity;->access$300(Lco/kr/festfive/activity/IntroActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v4, "news_feed_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v5}, Lco/kr/festfive/activity/IntroActivity;->access$400(Lco/kr/festfive/activity/IntroActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lco/kr/festfive/activity/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-virtual {v4}, Lco/kr/festfive/activity/IntroActivity;->finish()V

    goto/16 :goto_0

    .line 161
    :cond_3
    const-string v4, "is_push"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 167
    .end local v3    # "userListItem":Lco/kr/festfive/model/UserListItem;
    .end local v27    # "data":Lcom/google/gson/JsonObject;
    .end local v28    # "intent":Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/activity/IntroActivity$2;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-virtual {v4}, Lco/kr/festfive/activity/IntroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "message"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
