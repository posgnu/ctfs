.class Lco/kr/festfive/fragment/MyScheduleFragment$4;
.super Ljava/lang/Object;
.source "MyScheduleFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MyScheduleFragment;->getMyScheduleToServer()V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/MyScheduleFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/MyScheduleFragment;

    .prologue
    .line 203
    iput-object p1, p0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 207
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 210
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 26
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
    .line 215
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 237
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 239
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/gson/JsonObject;

    .line 241
    .local v20, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v2, "code"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 243
    const-string v2, "data"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v18

    .line 245
    .local v18, "data":Lcom/google/gson/JsonObject;
    const-string v2, "room_reservation"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v22

    .line 247
    .local v22, "roomArray":Lcom/google/gson/JsonArray;
    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;

    move-result-object v25

    new-instance v2, Lco/kr/festfive/model/MyScheduleListItem;

    const-string v3, ""

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

    const-string v14, "rtitle"

    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/JsonArray;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {v2 .. v15}, Lco/kr/festfive/model/MyScheduleListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lco/kr/festfive/adapter/MyScheduleAdapter;->add(Ljava/lang/Object;)V

    .line 252
    :cond_1
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_2

    .line 253
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v21

    .line 257
    .local v21, "object":Lcom/google/gson/JsonObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;

    move-result-object v14

    new-instance v2, Lco/kr/festfive/model/MyScheduleListItem;

    const-string v3, "room_reservation_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "office_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "room_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "user_id"

    .line 258
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "reservation_date"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "reservation_start_time"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "reservation_end_time"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "create_date"

    .line 259
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "office_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "room_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "room_location"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v2 .. v13}, Lco/kr/festfive/model/MyScheduleListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v14, v2}, Lco/kr/festfive/adapter/MyScheduleAdapter;->add(Ljava/lang/Object;)V

    .line 252
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 262
    .end local v21    # "object":Lcom/google/gson/JsonObject;
    :cond_2
    const-string v2, "visitor_reservation"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v24

    .line 264
    .local v24, "visitorArray":Lcom/google/gson/JsonArray;
    invoke-virtual/range {v24 .. v24}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;

    move-result-object v25

    new-instance v2, Lco/kr/festfive/model/MyScheduleListItem;

    const-string v3, ""

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

    const-string v14, "vtitle"

    invoke-virtual/range {v24 .. v24}, Lcom/google/gson/JsonArray;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {v2 .. v15}, Lco/kr/festfive/model/MyScheduleListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lco/kr/festfive/adapter/MyScheduleAdapter;->add(Ljava/lang/Object;)V

    .line 269
    :cond_3
    const/16 v19, 0x0

    :goto_1
    invoke-virtual/range {v24 .. v24}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_4

    .line 270
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v21

    .line 274
    .restart local v21    # "object":Lcom/google/gson/JsonObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;

    move-result-object v12

    new-instance v2, Lco/kr/festfive/model/MyScheduleListItem;

    const-string v3, "visitor_reservation_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "office_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "reservation_date"

    .line 275
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "reservation_time"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "visitor_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "visitor_count"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "create_date"

    .line 276
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "office_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v2 .. v11}, Lco/kr/festfive/model/MyScheduleListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v12, v2}, Lco/kr/festfive/adapter/MyScheduleAdapter;->add(Ljava/lang/Object;)V

    .line 269
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 279
    .end local v21    # "object":Lcom/google/gson/JsonObject;
    :cond_4
    const-string v2, "community_join"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v16

    .line 281
    .local v16, "communityArray":Lcom/google/gson/JsonArray;
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;

    move-result-object v25

    new-instance v2, Lco/kr/festfive/model/MyScheduleListItem;

    const-string v3, ""

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

    const-string v14, "ctitle"

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonArray;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {v2 .. v15}, Lco/kr/festfive/model/MyScheduleListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lco/kr/festfive/adapter/MyScheduleAdapter;->add(Ljava/lang/Object;)V

    .line 286
    :cond_5
    const/16 v19, 0x0

    :goto_2
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_6

    .line 287
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v21

    .line 291
    .restart local v21    # "object":Lcom/google/gson/JsonObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;

    move-result-object v13

    new-instance v2, Lco/kr/festfive/model/MyScheduleListItem;

    const-string v3, "community_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "office_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    .line 292
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "community_date"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "community_time"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "summary"

    .line 293
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "description"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "create_date"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "c"

    invoke-direct/range {v2 .. v12}, Lco/kr/festfive/model/MyScheduleListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v13, v2}, Lco/kr/festfive/adapter/MyScheduleAdapter;->add(Ljava/lang/Object;)V

    .line 286
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 296
    .end local v21    # "object":Lcom/google/gson/JsonObject;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual/range {v24 .. v24}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    add-int v23, v2, v3

    .line 297
    .local v23, "total":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/adapter/MyScheduleAdapter;->getCount()I

    move-result v17

    .line 298
    .local v17, "count":I
    if-nez v17, :cond_7

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$300(Lco/kr/festfive/fragment/MyScheduleFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$400(Lco/kr/festfive/fragment/MyScheduleFragment;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$500(Lco/kr/festfive/fragment/MyScheduleFragment;)Landroid/widget/ListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 316
    .end local v16    # "communityArray":Lcom/google/gson/JsonArray;
    .end local v17    # "count":I
    .end local v18    # "data":Lcom/google/gson/JsonObject;
    .end local v19    # "i":I
    .end local v20    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v22    # "roomArray":Lcom/google/gson/JsonArray;
    .end local v23    # "total":I
    .end local v24    # "visitorArray":Lcom/google/gson/JsonArray;
    :cond_8
    :goto_3
    return-void

    .line 310
    .restart local v20    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/fragment/MyScheduleFragment$4;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/MyScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "message"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method
