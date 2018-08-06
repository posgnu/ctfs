.class Lco/kr/festfive/activity/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/LoginActivity;->setUserLoginToServer()V
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
.field final synthetic this$0:Lco/kr/festfive/activity/LoginActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/LoginActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/LoginActivity;

    .prologue
    .line 130
    iput-object p1, p0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iput-object p2, p0, Lco/kr/festfive/activity/LoginActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 134
    iget-object v0, p0, Lco/kr/festfive/activity/LoginActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lco/kr/festfive/activity/LoginActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 137
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 30
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
    .line 142
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 146
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/gson/JsonObject;

    .line 150
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

    if-eqz v3, :cond_4

    .line 153
    const-string v3, "data"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v27

    .line 155
    .local v27, "data":Lcom/google/gson/JsonObject;
    const-string v3, "is_agree"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "N"

    if-eq v3, v4, :cond_1

    const-string v3, "N"

    const-string v4, "is_agree"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 157
    :cond_1
    new-instance v26, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    .local v26, "alert":Landroid/app/AlertDialog$Builder;
    const-string v3, "\ud655\uc778"

    new-instance v4, Lco/kr/festfive/activity/LoginActivity$1$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lco/kr/festfive/activity/LoginActivity$1$1;-><init>(Lco/kr/festfive/activity/LoginActivity$1;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    const-string v3, "\uc9c0\uc810 \ub2f4\ub2f9 \ucee4\ubba4\ub2c8\ud2f0 \ub9e4\ub2c8\uc800\uc758 \uc2b9\uc778 \ud6c4 \uc0ac\uc6a9\uc774 \uac00\ub2a5\ud569\ub2c8\ub2e4.\n\ucee4\ubba4\ub2c8\ud2f0 \ub9e4\ub2c8\uc800\uc5d0\uac8c \uc2b9\uc778\uc744 \uc694\uccad\ud574 \uc8fc\uc138\uc694!"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual/range {v26 .. v26}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 213
    .end local v26    # "alert":Landroid/app/AlertDialog$Builder;
    .end local v27    # "data":Lcom/google/gson/JsonObject;
    .end local v29    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_2
    :goto_0
    return-void

    .line 169
    .restart local v27    # "data":Lcom/google/gson/JsonObject;
    .restart local v29    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_3
    new-instance v2, Lco/kr/festfive/model/UserListItem;

    const-string v3, "user_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "office_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "office_room_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "user_pw"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "user_email"

    .line 170
    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "user_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "user_profile"

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "user_birth"

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "user_company"

    .line 171
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "user_position"

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "user_introduce"

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "user_level"

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "user_device_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "user_platform"

    .line 172
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "last_login"

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "create_date"

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "office_name"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "office_room_name"

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "user_profile_thumb_url"

    .line 173
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "user_profile_url"

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "is_push_feed"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "is_push_reply"

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "is_agree"

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v2 .. v25}, Lco/kr/festfive/model/UserListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .local v2, "userListItem":Lco/kr/festfive/model/UserListItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, "user_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "office_id"

    const-string v5, "office_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "office_room_id"

    const-string v5, "office_room_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_pw"

    const-string v5, "user_pw"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_email"

    const-string v5, "user_email"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_name"

    const-string v5, "user_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_profile"

    const-string v5, "user_profile"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_birth"

    const-string v5, "user_birth"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_company"

    const-string v5, "user_company"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_position"

    const-string v5, "user_position"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_introduce"

    const-string v5, "user_introduce"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_level"

    const-string v5, "user_level"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_device_id"

    const-string v5, "user_device_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_platform"

    const-string v5, "user_platform"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "last_login"

    const-string v5, "last_login"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "create_date"

    const-string v5, "create_date"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "office_name"

    const-string v5, "office_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "office_room_name"

    const-string v5, "office_room_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_profile_thumb_url"

    const-string v5, "user_profile_thumb_url"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_profile_url"

    const-string v5, "user_profile_url"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "is_fush_feed"

    const-string v5, "is_push_feed"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    iget-object v3, v3, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "is_fush_reply"

    const-string v5, "is_push_reply"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lco/kr/festfive/FestManager;->setUserListItem(Lco/kr/festfive/model/UserListItem;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    invoke-virtual {v3}, Lco/kr/festfive/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\ub85c\uadf8\uc778 \uc644\ub8cc"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 201
    new-instance v28, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    const-class v4, Lco/kr/festfive/activity/MainActivity;

    move-object/from16 v0, v28

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v28, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lco/kr/festfive/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    invoke-virtual {v3}, Lco/kr/festfive/activity/LoginActivity;->finish()V

    goto/16 :goto_0

    .line 207
    .end local v2    # "userListItem":Lco/kr/festfive/model/UserListItem;
    .end local v27    # "data":Lcom/google/gson/JsonObject;
    .end local v28    # "intent":Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/activity/LoginActivity$1;->this$0:Lco/kr/festfive/activity/LoginActivity;

    invoke-virtual {v3}, Lco/kr/festfive/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

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

    goto/16 :goto_0
.end method
