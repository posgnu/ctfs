.class Lco/kr/festfive/activity/WriteMemberActivity$4;
.super Ljava/lang/Object;
.source "WriteMemberActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/WriteMemberActivity;->getBaseData(Lco/kr/festfive/activity/WriteMemberActivity$OnGetBaseDataCompleteListener;)V
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
.field final synthetic this$0:Lco/kr/festfive/activity/WriteMemberActivity;

.field final synthetic val$listener:Lco/kr/festfive/activity/WriteMemberActivity$OnGetBaseDataCompleteListener;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/WriteMemberActivity;Lco/kr/festfive/activity/WriteMemberActivity$OnGetBaseDataCompleteListener;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/WriteMemberActivity;

    .prologue
    .line 255
    iput-object p1, p0, Lco/kr/festfive/activity/WriteMemberActivity$4;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    iput-object p2, p0, Lco/kr/festfive/activity/WriteMemberActivity$4;->val$listener:Lco/kr/festfive/activity/WriteMemberActivity$OnGetBaseDataCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 306
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity$4;->val$listener:Lco/kr/festfive/activity/WriteMemberActivity$OnGetBaseDataCompleteListener;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity$4;->val$listener:Lco/kr/festfive/activity/WriteMemberActivity$OnGetBaseDataCompleteListener;

    invoke-interface {v0}, Lco/kr/festfive/activity/WriteMemberActivity$OnGetBaseDataCompleteListener;->onGetBaseDataComplete()V

    .line 309
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 20
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
    .line 258
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity$4;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v17 .. v18}, Lco/kr/festfive/activity/WriteMemberActivity;->access$602(Lco/kr/festfive/activity/WriteMemberActivity;Ljava/util/List;)Ljava/util/List;

    .line 259
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->isSuccess()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 261
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonObject;

    .line 263
    .local v6, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 264
    .local v3, "data":Lcom/google/gson/JsonObject;
    const-string v17, "office"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v9

    .line 266
    .local v9, "officeArr":Lcom/google/gson/JsonArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v9}, Lcom/google/gson/JsonArray;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_1

    .line 267
    invoke-virtual {v9, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 268
    .local v7, "object":Lcom/google/gson/JsonObject;
    const-string v17, "office_id"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    .line 269
    .local v10, "officeId":Ljava/lang/String;
    const-string v17, "office_name"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    .line 271
    .local v11, "officeName":Ljava/lang/String;
    new-instance v8, Lco/kr/festfive/vo/OfficeVo;

    invoke-direct {v8, v10, v11}, Lco/kr/festfive/vo/OfficeVo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .local v8, "office":Lco/kr/festfive/vo/OfficeVo;
    const-string v17, "office_room"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v13

    .line 274
    .local v13, "roomArr":Lcom/google/gson/JsonArray;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v13}, Lcom/google/gson/JsonArray;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_0

    .line 275
    invoke-virtual {v13, v5}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v16

    .line 276
    .local v16, "roomObject":Lcom/google/gson/JsonObject;
    const-string v17, "office_room_id"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    .line 277
    .local v14, "roomId":Ljava/lang/String;
    const-string v17, "office_room_name"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    .line 279
    .local v15, "roomName":Ljava/lang/String;
    new-instance v17, Lco/kr/festfive/vo/RoomVo;

    move-object/from16 v0, v17

    invoke-direct {v0, v14, v15}, Lco/kr/festfive/vo/RoomVo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lco/kr/festfive/vo/OfficeVo;->addRooms(Lco/kr/festfive/vo/RoomVo;)V

    .line 274
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 282
    .end local v14    # "roomId":Ljava/lang/String;
    .end local v15    # "roomName":Ljava/lang/String;
    .end local v16    # "roomObject":Lcom/google/gson/JsonObject;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity$4;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lco/kr/festfive/activity/WriteMemberActivity;->access$600(Lco/kr/festfive/activity/WriteMemberActivity;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 285
    .end local v5    # "j":I
    .end local v7    # "object":Lcom/google/gson/JsonObject;
    .end local v8    # "office":Lco/kr/festfive/vo/OfficeVo;
    .end local v10    # "officeId":Ljava/lang/String;
    .end local v11    # "officeName":Ljava/lang/String;
    .end local v13    # "roomArr":Lcom/google/gson/JsonArray;
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v12, "officeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity$4;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lco/kr/festfive/activity/WriteMemberActivity;->access$600(Lco/kr/festfive/activity/WriteMemberActivity;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco/kr/festfive/vo/OfficeVo;

    .line 287
    .restart local v8    # "office":Lco/kr/festfive/vo/OfficeVo;
    invoke-virtual {v8}, Lco/kr/festfive/vo/OfficeVo;->getOfficeName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 290
    .end local v8    # "office":Lco/kr/festfive/vo/OfficeVo;
    :cond_2
    new-instance v2, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity$4;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    move-object/from16 v17, v0

    const v18, 0x1090008

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v2, v0, v1, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 293
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v17, 0x1090009

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity$4;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lco/kr/festfive/activity/WriteMemberActivity;->access$400(Lco/kr/festfive/activity/WriteMemberActivity;)Landroid/widget/Spinner;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity$4;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity$4;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lco/kr/festfive/activity/WriteMemberActivity;->access$600(Lco/kr/festfive/activity/WriteMemberActivity;)Ljava/util/List;

    move-result-object v17

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lco/kr/festfive/vo/OfficeVo;

    invoke-virtual/range {v17 .. v17}, Lco/kr/festfive/vo/OfficeVo;->getOfficeName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->access$500(Lco/kr/festfive/activity/WriteMemberActivity;Ljava/lang/String;)V

    .line 299
    .end local v2    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v3    # "data":Lcom/google/gson/JsonObject;
    .end local v4    # "i":I
    .end local v6    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v9    # "officeArr":Lcom/google/gson/JsonArray;
    .end local v12    # "officeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity$4;->val$listener:Lco/kr/festfive/activity/WriteMemberActivity$OnGetBaseDataCompleteListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity$4;->val$listener:Lco/kr/festfive/activity/WriteMemberActivity$OnGetBaseDataCompleteListener;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lco/kr/festfive/activity/WriteMemberActivity$OnGetBaseDataCompleteListener;->onGetBaseDataComplete()V

    .line 302
    :cond_4
    return-void
.end method
