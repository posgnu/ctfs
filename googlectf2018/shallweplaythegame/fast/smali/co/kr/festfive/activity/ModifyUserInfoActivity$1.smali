.class Lco/kr/festfive/activity/ModifyUserInfoActivity$1;
.super Ljava/lang/Object;
.source "ModifyUserInfoActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/ModifyUserInfoActivity;->getSelectRegistToServer()V
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

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/ModifyUserInfoActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/ModifyUserInfoActivity;

    .prologue
    .line 263
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    iput-object p2, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 267
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 270
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
    .line 275
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v13, :cond_0

    .line 276
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V

    .line 279
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->isSuccess()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 281
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonObject;

    .line 283
    .local v5, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v13, "code"

    invoke-virtual {v5, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 285
    const-string v13, "data"

    invoke-virtual {v5, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 287
    .local v2, "data":Lcom/google/gson/JsonObject;
    const-string v13, "office"

    invoke-virtual {v2, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v8

    .line 289
    .local v8, "office":Lcom/google/gson/JsonArray;
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v13}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$000(Lco/kr/festfive/activity/ModifyUserInfoActivity;)[Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-static {v13, v14}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$002(Lco/kr/festfive/activity/ModifyUserInfoActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 296
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v13}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$100(Lco/kr/festfive/activity/ModifyUserInfoActivity;)[Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-static {v13, v14}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$102(Lco/kr/festfive/activity/ModifyUserInfoActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 303
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v14

    new-array v14, v14, [[Ljava/lang/String;

    invoke-static {v13, v14}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$202(Lco/kr/festfive/activity/ModifyUserInfoActivity;[[Ljava/lang/String;)[[Ljava/lang/String;

    .line 304
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v14

    new-array v14, v14, [[Ljava/lang/String;

    invoke-static {v13, v14}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$302(Lco/kr/festfive/activity/ModifyUserInfoActivity;[[Ljava/lang/String;)[[Ljava/lang/String;

    .line 305
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v13

    if-ge v3, v13, :cond_4

    .line 306
    invoke-virtual {v8, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 307
    .local v6, "object":Lcom/google/gson/JsonObject;
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v13}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$000(Lco/kr/festfive/activity/ModifyUserInfoActivity;)[Ljava/lang/String;

    move-result-object v13

    const-string v14, "office_id"

    invoke-virtual {v6, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v3

    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v13}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$100(Lco/kr/festfive/activity/ModifyUserInfoActivity;)[Ljava/lang/String;

    move-result-object v13

    const-string v14, "office_name"

    invoke-virtual {v6, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v3

    .line 309
    const-string v13, "office_room"

    invoke-virtual {v6, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v10

    .line 310
    .local v10, "room":Lcom/google/gson/JsonArray;
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v13}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$200(Lco/kr/festfive/activity/ModifyUserInfoActivity;)[[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/google/gson/JsonArray;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    aput-object v14, v13, v3

    .line 311
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v13}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$300(Lco/kr/festfive/activity/ModifyUserInfoActivity;)[[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/google/gson/JsonArray;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    aput-object v14, v13, v3

    .line 344
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    invoke-virtual {v10}, Lcom/google/gson/JsonArray;->size()I

    move-result v13

    if-ge v4, v13, :cond_3

    .line 345
    invoke-virtual {v10, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 346
    .local v7, "object1":Lcom/google/gson/JsonObject;
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v13}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$200(Lco/kr/festfive/activity/ModifyUserInfoActivity;)[[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v3

    const-string v14, "office_room_id"

    invoke-virtual {v7, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v4

    .line 347
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v13}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$300(Lco/kr/festfive/activity/ModifyUserInfoActivity;)[[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v3

    const-string v14, "office_room_name"

    invoke-virtual {v7, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v4

    .line 344
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 292
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "object":Lcom/google/gson/JsonObject;
    .end local v7    # "object1":Lcom/google/gson/JsonObject;
    .end local v10    # "room":Lcom/google/gson/JsonArray;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$002(Lco/kr/festfive/activity/ModifyUserInfoActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-static {v13, v14}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$002(Lco/kr/festfive/activity/ModifyUserInfoActivity;[Ljava/lang/String;)[Ljava/lang/String;

    goto/16 :goto_0

    .line 299
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$102(Lco/kr/festfive/activity/ModifyUserInfoActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 300
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-static {v13, v14}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$102(Lco/kr/festfive/activity/ModifyUserInfoActivity;[Ljava/lang/String;)[Ljava/lang/String;

    goto/16 :goto_1

    .line 305
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v6    # "object":Lcom/google/gson/JsonObject;
    .restart local v10    # "room":Lcom/google/gson/JsonArray;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 384
    .end local v4    # "j":I
    .end local v6    # "object":Lcom/google/gson/JsonObject;
    .end local v10    # "room":Lcom/google/gson/JsonArray;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v13}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v13

    const-string v14, "office_name"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 385
    .local v12, "userOfficeName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 387
    .local v11, "selectedOffice":I
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v13}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$100(Lco/kr/festfive/activity/ModifyUserInfoActivity;)[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    if-ge v1, v13, :cond_5

    .line 388
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v13}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$100(Lco/kr/festfive/activity/ModifyUserInfoActivity;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 389
    move v11, v1

    .line 393
    :cond_5
    new-instance v9, Lco/kr/festfive/adapter/SpinnerAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    const v14, 0x1090008

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v15}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$100(Lco/kr/festfive/activity/ModifyUserInfoActivity;)[Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v13, v14, v15}, Lco/kr/festfive/adapter/SpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 394
    .local v9, "officeSpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    const v13, 0x7f0a0055

    invoke-virtual {v9, v13}, Lco/kr/festfive/adapter/SpinnerAdapter;->setDropDownViewResource(I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v13}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$500(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Landroid/widget/Spinner;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v13}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$500(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Landroid/widget/Spinner;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v13}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$500(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Landroid/widget/Spinner;

    move-result-object v13

    new-instance v14, Lco/kr/festfive/activity/ModifyUserInfoActivity$1$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lco/kr/festfive/activity/ModifyUserInfoActivity$1$1;-><init>(Lco/kr/festfive/activity/ModifyUserInfoActivity$1;)V

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 432
    if-nez v11, :cond_9

    .line 453
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    new-instance v14, Lco/kr/festfive/adapter/SpinnerAdapter;

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    const v16, 0x1090008

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$300(Lco/kr/festfive/activity/ModifyUserInfoActivity;)[[Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-direct/range {v14 .. v17}, Lco/kr/festfive/adapter/SpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v14, v13, Lco/kr/festfive/activity/ModifyUserInfoActivity;->roomNameSpinnerAdapter:Lco/kr/festfive/adapter/SpinnerAdapter;

    .line 454
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    iget-object v13, v13, Lco/kr/festfive/activity/ModifyUserInfoActivity;->roomNameSpinnerAdapter:Lco/kr/festfive/adapter/SpinnerAdapter;

    const v14, 0x7f0a0055

    invoke-virtual {v13, v14}, Lco/kr/festfive/adapter/SpinnerAdapter;->setDropDownViewResource(I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v13}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$600(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Landroid/widget/Spinner;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    iget-object v14, v14, Lco/kr/festfive/activity/ModifyUserInfoActivity;->roomNameSpinnerAdapter:Lco/kr/festfive/adapter/SpinnerAdapter;

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 492
    .end local v1    # "a":I
    .end local v2    # "data":Lcom/google/gson/JsonObject;
    .end local v3    # "i":I
    .end local v5    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v8    # "office":Lcom/google/gson/JsonArray;
    .end local v9    # "officeSpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    .end local v11    # "selectedOffice":I
    .end local v12    # "userOfficeName":Ljava/lang/String;
    :cond_7
    :goto_6
    return-void

    .line 387
    .restart local v1    # "a":I
    .restart local v2    # "data":Lcom/google/gson/JsonObject;
    .restart local v3    # "i":I
    .restart local v5    # "jsonObject":Lcom/google/gson/JsonObject;
    .restart local v8    # "office":Lcom/google/gson/JsonArray;
    .restart local v11    # "selectedOffice":I
    .restart local v12    # "userOfficeName":Ljava/lang/String;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 434
    .restart local v9    # "officeSpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    :cond_9
    const/4 v13, 0x1

    if-eq v11, v13, :cond_6

    .line 436
    const/4 v13, 0x2

    if-eq v11, v13, :cond_6

    .line 438
    const/4 v13, 0x3

    if-eq v11, v13, :cond_6

    .line 440
    const/4 v13, 0x4

    if-eq v11, v13, :cond_6

    .line 442
    const/4 v13, 0x5

    if-eq v11, v13, :cond_6

    .line 444
    const/4 v13, 0x6

    if-eq v11, v13, :cond_6

    .line 446
    const/4 v13, 0x7

    if-eq v11, v13, :cond_6

    .line 448
    const/16 v13, 0x8

    if-eq v11, v13, :cond_6

    .line 450
    const/16 v13, 0x9

    if-ne v11, v13, :cond_6

    goto :goto_5

    .line 486
    .end local v1    # "a":I
    .end local v2    # "data":Lcom/google/gson/JsonObject;
    .end local v3    # "i":I
    .end local v8    # "office":Lcom/google/gson/JsonArray;
    .end local v9    # "officeSpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    .end local v11    # "selectedOffice":I
    .end local v12    # "userOfficeName":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-virtual {v13}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "message"

    invoke-virtual {v5, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_6
.end method
