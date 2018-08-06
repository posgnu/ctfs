.class Lco/kr/festfive/activity/ModifyUserInfoActivity$2;
.super Ljava/lang/Object;
.source "ModifyUserInfoActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/ModifyUserInfoActivity;->setEditToServer()V
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
.field final synthetic this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/ModifyUserInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/ModifyUserInfoActivity;

    .prologue
    .line 567
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 571
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$700(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$700(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 574
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 32
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
    .line 579
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$700(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 580
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$700(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 583
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 585
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/gson/JsonObject;

    .line 587
    .local v29, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v3, "code"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 588
    const-string v3, "data"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v28

    .line 590
    .local v28, "data":Lcom/google/gson/JsonObject;
    new-instance v2, Lco/kr/festfive/model/UserListItem;

    const-string v3, "user_id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "office_id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "office_room_id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "user_pw"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "user_email"

    .line 591
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "user_name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "user_profile"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "user_birth"

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "user_company"

    .line 592
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "user_position"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "user_introduce"

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "user_level"

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "user_device_id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "user_platform"

    .line 593
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "last_login"

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "create_date"

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "office_name"

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "office_room_name"

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "user_profile_thumb_url"

    .line 594
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "user_profile_url"

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "is_push_feed"

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "is_push_reply"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "Y"

    invoke-direct/range {v2 .. v25}, Lco/kr/festfive/model/UserListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .local v2, "userListItem":Lco/kr/festfive/model/UserListItem;
    const-string v3, "user_profile_thumb_url"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v26

    .line 597
    .local v26, "a":Ljava/lang/String;
    const-string v3, "user_profile_url"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v27

    .line 599
    .local v27, "b":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_id"

    const-string v5, "user_id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "office_id"

    const-string v5, "office_id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "office_room_id"

    const-string v5, "office_room_id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_pw"

    const-string v5, "user_pw"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_email"

    const-string v5, "user_email"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_name"

    const-string v5, "user_name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_profile"

    const-string v5, "user_profile"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_birth"

    const-string v5, "user_birth"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_company"

    const-string v5, "user_company"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_position"

    const-string v5, "user_position"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_introduce"

    const-string v5, "user_introduce"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_level"

    const-string v5, "user_level"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_device_id"

    const-string v5, "user_device_id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_platform"

    const-string v5, "user_platform"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "last_login"

    const-string v5, "last_login"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "create_date"

    const-string v5, "create_date"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "office_name"

    const-string v5, "office_name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "office_room_name"

    const-string v5, "office_room_name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_profile_thumb_url"

    const-string v5, "user_profile_thumb_url"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_profile_url"

    const-string v5, "user_profile_url"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "is_fush_feed"

    const-string v5, "is_push_feed"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "is_fush_reply"

    const-string v5, "is_push_reply"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lco/kr/festfive/FestManager;->setUserListItem(Lco/kr/festfive/model/UserListItem;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    const-string v4, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    invoke-static {v3, v4}, Lcom/sendbird/android/SendBird;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 625
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 626
    .local v31, "userId":Ljava/lang/String;
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_name"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 628
    .local v30, "name":Ljava/lang/String;
    const-string v3, "cks4451"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static/range {v31 .. v31}, Lcom/sendbird/android/SendBird$LoginOption;->build(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/sendbird/android/SendBird$LoginOption;->setUserName(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;

    move-result-object v3

    const-string v4, "user_profile_thumb_url"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sendbird/android/SendBird$LoginOption;->setImageUrl(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;

    move-result-object v3

    invoke-static {v3}, Lcom/sendbird/android/SendBird;->login(Lcom/sendbird/android/SendBird$LoginOption;)V

    .line 632
    new-instance v3, Lco/kr/festfive/activity/ModifyUserInfoActivity$2$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lco/kr/festfive/activity/ModifyUserInfoActivity$2$1;-><init>(Lco/kr/festfive/activity/ModifyUserInfoActivity$2;)V

    invoke-static {v3}, Lcom/sendbird/android/SendBird;->setEventHandler(Lcom/sendbird/android/SendBirdEventHandler;)V

    .line 734
    const-string v3, ""

    invoke-static {v3}, Lcom/sendbird/android/SendBird;->startMessaging(Ljava/lang/String;)V

    .line 737
    invoke-static {}, Lcom/sendbird/android/SendBird;->connect()V

    .line 738
    invoke-static {}, Lcom/sendbird/android/SendBird;->disconnect()V

    .line 739
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-virtual {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\uc218\uc815 \ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 740
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    const/16 v4, 0x7d0

    invoke-virtual {v3, v4}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->setResult(I)V

    .line 741
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-virtual {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->finish()V

    .line 750
    .end local v2    # "userListItem":Lco/kr/festfive/model/UserListItem;
    .end local v26    # "a":Ljava/lang/String;
    .end local v27    # "b":Ljava/lang/String;
    .end local v28    # "data":Lcom/google/gson/JsonObject;
    .end local v29    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v30    # "name":Ljava/lang/String;
    .end local v31    # "userId":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 744
    .restart local v29    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-virtual {v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "message"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
