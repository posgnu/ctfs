.class Lco/kr/festfive/activity/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/RegisterActivity;->getSelectRegistToServer()V
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
.field final synthetic this$0:Lco/kr/festfive/activity/RegisterActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/RegisterActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/RegisterActivity;

    .prologue
    .line 188
    iput-object p1, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    iput-object p2, p0, Lco/kr/festfive/activity/RegisterActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 192
    iget-object v0, p0, Lco/kr/festfive/activity/RegisterActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lco/kr/festfive/activity/RegisterActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 195
    :cond_0
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
    .line 200
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v9, :cond_0

    .line 201
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    .line 204
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->isSuccess()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 206
    invoke-virtual/range {p1 .. p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonObject;

    .line 208
    .local v3, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v9, "code"

    invoke-virtual {v3, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 210
    const-string v9, "data"

    invoke-virtual {v3, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 212
    .local v0, "data":Lcom/google/gson/JsonObject;
    const-string v9, "office"

    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v6

    .line 214
    .local v6, "office":Lcom/google/gson/JsonArray;
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-static {v9}, Lco/kr/festfive/activity/RegisterActivity;->access$000(Lco/kr/festfive/activity/RegisterActivity;)[Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 215
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-static {v9, v10}, Lco/kr/festfive/activity/RegisterActivity;->access$002(Lco/kr/festfive/activity/RegisterActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 221
    :goto_0
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-static {v9}, Lco/kr/festfive/activity/RegisterActivity;->access$100(Lco/kr/festfive/activity/RegisterActivity;)[Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    .line 222
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-static {v9, v10}, Lco/kr/festfive/activity/RegisterActivity;->access$102(Lco/kr/festfive/activity/RegisterActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 228
    :goto_1
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    new-array v10, v10, [[Ljava/lang/String;

    invoke-static {v9, v10}, Lco/kr/festfive/activity/RegisterActivity;->access$202(Lco/kr/festfive/activity/RegisterActivity;[[Ljava/lang/String;)[[Ljava/lang/String;

    .line 229
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    new-array v10, v10, [[Ljava/lang/String;

    invoke-static {v9, v10}, Lco/kr/festfive/activity/RegisterActivity;->access$302(Lco/kr/festfive/activity/RegisterActivity;[[Ljava/lang/String;)[[Ljava/lang/String;

    .line 230
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 231
    invoke-virtual {v6, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 232
    .local v4, "object":Lcom/google/gson/JsonObject;
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-static {v9}, Lco/kr/festfive/activity/RegisterActivity;->access$000(Lco/kr/festfive/activity/RegisterActivity;)[Ljava/lang/String;

    move-result-object v9

    const-string v10, "office_id"

    invoke-virtual {v4, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 233
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-static {v9}, Lco/kr/festfive/activity/RegisterActivity;->access$100(Lco/kr/festfive/activity/RegisterActivity;)[Ljava/lang/String;

    move-result-object v9

    const-string v10, "office_name"

    invoke-virtual {v4, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 234
    const-string v9, "office_room"

    invoke-virtual {v4, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v8

    .line 235
    .local v8, "room":Lcom/google/gson/JsonArray;
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-static {v9}, Lco/kr/festfive/activity/RegisterActivity;->access$200(Lco/kr/festfive/activity/RegisterActivity;)[[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    aput-object v10, v9, v1

    .line 236
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-static {v9}, Lco/kr/festfive/activity/RegisterActivity;->access$300(Lco/kr/festfive/activity/RegisterActivity;)[[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    aput-object v10, v9, v1

    .line 238
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 239
    invoke-virtual {v8, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 240
    .local v5, "object1":Lcom/google/gson/JsonObject;
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-static {v9}, Lco/kr/festfive/activity/RegisterActivity;->access$200(Lco/kr/festfive/activity/RegisterActivity;)[[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v1

    const-string v10, "office_room_id"

    invoke-virtual {v5, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    .line 241
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-static {v9}, Lco/kr/festfive/activity/RegisterActivity;->access$300(Lco/kr/festfive/activity/RegisterActivity;)[[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v1

    const-string v10, "office_room_name"

    invoke-virtual {v5, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 217
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v4    # "object":Lcom/google/gson/JsonObject;
    .end local v5    # "object1":Lcom/google/gson/JsonObject;
    .end local v8    # "room":Lcom/google/gson/JsonArray;
    :cond_1
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lco/kr/festfive/activity/RegisterActivity;->access$002(Lco/kr/festfive/activity/RegisterActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 218
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-static {v9, v10}, Lco/kr/festfive/activity/RegisterActivity;->access$002(Lco/kr/festfive/activity/RegisterActivity;[Ljava/lang/String;)[Ljava/lang/String;

    goto/16 :goto_0

    .line 224
    :cond_2
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lco/kr/festfive/activity/RegisterActivity;->access$102(Lco/kr/festfive/activity/RegisterActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 225
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-static {v9, v10}, Lco/kr/festfive/activity/RegisterActivity;->access$102(Lco/kr/festfive/activity/RegisterActivity;[Ljava/lang/String;)[Ljava/lang/String;

    goto/16 :goto_1

    .line 230
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v4    # "object":Lcom/google/gson/JsonObject;
    .restart local v8    # "room":Lcom/google/gson/JsonArray;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 245
    .end local v2    # "j":I
    .end local v4    # "object":Lcom/google/gson/JsonObject;
    .end local v8    # "room":Lcom/google/gson/JsonArray;
    :cond_4
    new-instance v7, Lco/kr/festfive/adapter/SpinnerAdapter;

    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    const v10, 0x1090008

    iget-object v11, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-static {v11}, Lco/kr/festfive/activity/RegisterActivity;->access$100(Lco/kr/festfive/activity/RegisterActivity;)[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v9, v10, v11}, Lco/kr/festfive/adapter/SpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 246
    .local v7, "officeSpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    const v9, 0x7f0a0055

    invoke-virtual {v7, v9}, Lco/kr/festfive/adapter/SpinnerAdapter;->setDropDownViewResource(I)V

    .line 247
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-static {v9}, Lco/kr/festfive/activity/RegisterActivity;->access$400(Lco/kr/festfive/activity/RegisterActivity;)Landroid/widget/Spinner;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 248
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-static {v9}, Lco/kr/festfive/activity/RegisterActivity;->access$400(Lco/kr/festfive/activity/RegisterActivity;)Landroid/widget/Spinner;

    move-result-object v9

    new-instance v10, Lco/kr/festfive/activity/RegisterActivity$1$1;

    invoke-direct {v10, p0}, Lco/kr/festfive/activity/RegisterActivity$1$1;-><init>(Lco/kr/festfive/activity/RegisterActivity$1;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 261
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    new-instance v10, Lco/kr/festfive/adapter/SpinnerAdapter;

    iget-object v11, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    const v12, 0x1090008

    iget-object v13, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-static {v13}, Lco/kr/festfive/activity/RegisterActivity;->access$300(Lco/kr/festfive/activity/RegisterActivity;)[[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-direct {v10, v11, v12, v13}, Lco/kr/festfive/adapter/SpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v10, v9, Lco/kr/festfive/activity/RegisterActivity;->roomNameSpinnerAdapter:Lco/kr/festfive/adapter/SpinnerAdapter;

    .line 262
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    iget-object v9, v9, Lco/kr/festfive/activity/RegisterActivity;->roomNameSpinnerAdapter:Lco/kr/festfive/adapter/SpinnerAdapter;

    const v10, 0x7f0a0055

    invoke-virtual {v9, v10}, Lco/kr/festfive/adapter/SpinnerAdapter;->setDropDownViewResource(I)V

    .line 263
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-static {v9}, Lco/kr/festfive/activity/RegisterActivity;->access$500(Lco/kr/festfive/activity/RegisterActivity;)Landroid/widget/Spinner;

    move-result-object v9

    iget-object v10, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    iget-object v10, v10, Lco/kr/festfive/activity/RegisterActivity;->roomNameSpinnerAdapter:Lco/kr/festfive/adapter/SpinnerAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 299
    .end local v0    # "data":Lcom/google/gson/JsonObject;
    .end local v1    # "i":I
    .end local v3    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v6    # "office":Lcom/google/gson/JsonArray;
    .end local v7    # "officeSpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    :cond_5
    :goto_4
    return-void

    .line 293
    .restart local v3    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_6
    iget-object v9, p0, Lco/kr/festfive/activity/RegisterActivity$1;->this$0:Lco/kr/festfive/activity/RegisterActivity;

    invoke-virtual {v9}, Lco/kr/festfive/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "message"

    invoke-virtual {v3, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method
