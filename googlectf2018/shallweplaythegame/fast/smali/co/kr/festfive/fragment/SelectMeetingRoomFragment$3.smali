.class Lco/kr/festfive/fragment/SelectMeetingRoomFragment$3;
.super Ljava/lang/Object;
.source "SelectMeetingRoomFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->getRoomReserveListToServer(Ljava/lang/String;)V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/SelectMeetingRoomFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    .prologue
    .line 253
    iput-object p1, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$3;->this$0:Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 257
    iget-object v0, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 260
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 23
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
    .line 264
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 268
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/gson/JsonObject;

    .line 271
    .local v15, "jsonObject":Lcom/google/gson/JsonObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$3;->this$0:Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->access$200(Lco/kr/festfive/fragment/SelectMeetingRoomFragment;)Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->clear()V

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$3;->this$0:Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->access$200(Lco/kr/festfive/fragment/SelectMeetingRoomFragment;)Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->reset()V

    .line 274
    const-string v3, "code"

    invoke-virtual {v15, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 275
    const-string v3, "data"

    invoke-virtual {v15, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v11

    .line 277
    .local v11, "data":Lcom/google/gson/JsonArray;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual {v11}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-ge v13, v3, :cond_2

    .line 278
    invoke-virtual {v11, v13}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v16

    .line 279
    .local v16, "object":Lcom/google/gson/JsonObject;
    const-string v3, "reserved_time"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v17

    .line 281
    .local v17, "reverved":Lcom/google/gson/JsonArray;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v8, "reservationTimeListItemArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lco/kr/festfive/model/ReservationTimeListItem;>;"
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-ge v14, v3, :cond_1

    .line 284
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v18

    .line 285
    .local v18, "revervedObject":Lcom/google/gson/JsonObject;
    const-string v3, "reservation_start_time"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v19

    .line 286
    .local v19, "startTime":Ljava/lang/String;
    const-string v3, "reservation_end_time"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    .line 287
    .local v12, "endTime":Ljava/lang/String;
    const-string v3, "user_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v20

    .line 288
    .local v20, "userId":Ljava/lang/String;
    const-string v3, "user_profile_thumb_url"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v21

    .line 290
    .local v21, "userProfile":Ljava/lang/String;
    new-instance v3, Lco/kr/festfive/model/ReservationTimeListItem;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v3, v0, v12, v1, v2}, Lco/kr/festfive/model/ReservationTimeListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 293
    .local v9, "a":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 295
    .local v10, "b":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$3;->this$0:Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->access$200(Lco/kr/festfive/fragment/SelectMeetingRoomFragment;)Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v12, v13}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->setInitData(Ljava/lang/String;Ljava/lang/String;I)V

    .line 283
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 298
    .end local v9    # "a":Ljava/lang/String;
    .end local v10    # "b":Ljava/lang/String;
    .end local v12    # "endTime":Ljava/lang/String;
    .end local v18    # "revervedObject":Lcom/google/gson/JsonObject;
    .end local v19    # "startTime":Ljava/lang/String;
    .end local v20    # "userId":Ljava/lang/String;
    .end local v21    # "userProfile":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$3;->this$0:Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->access$200(Lco/kr/festfive/fragment/SelectMeetingRoomFragment;)Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    move-result-object v22

    new-instance v3, Lco/kr/festfive/model/SelectMeetingRoomListItem;

    const-string v4, "room_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "room_name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "room_location"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "room_image_url"

    .line 299
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v3 .. v8}, Lco/kr/festfive/model/SelectMeetingRoomListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 298
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->add(Ljava/lang/Object;)V

    .line 300
    const-string v3, "namsang"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$3;->this$0:Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->access$200(Lco/kr/festfive/fragment/SelectMeetingRoomFragment;)Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 305
    .end local v8    # "reservationTimeListItemArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lco/kr/festfive/model/ReservationTimeListItem;>;"
    .end local v14    # "j":I
    .end local v16    # "object":Lcom/google/gson/JsonObject;
    .end local v17    # "reverved":Lcom/google/gson/JsonArray;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$3;->this$0:Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->access$300(Lco/kr/festfive/fragment/SelectMeetingRoomFragment;)Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$3;->this$0:Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->access$200(Lco/kr/festfive/fragment/SelectMeetingRoomFragment;)Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    .end local v11    # "data":Lcom/google/gson/JsonArray;
    .end local v13    # "i":I
    .end local v15    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_3
    :goto_2
    return-void

    .line 308
    .restart local v15    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$3;->this$0:Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    invoke-virtual {v3}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v15, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
