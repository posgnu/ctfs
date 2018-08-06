.class Lco/kr/festfive/activity/NoticeActivity$2;
.super Ljava/lang/Object;
.source "NoticeActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/NoticeActivity;->getNoticeFromServer()V
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
.field final synthetic this$0:Lco/kr/festfive/activity/NoticeActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/NoticeActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/NoticeActivity;

    .prologue
    .line 105
    iput-object p1, p0, Lco/kr/festfive/activity/NoticeActivity$2;->this$0:Lco/kr/festfive/activity/NoticeActivity;

    iput-object p2, p0, Lco/kr/festfive/activity/NoticeActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 154
    iget-object v0, p0, Lco/kr/festfive/activity/NoticeActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lco/kr/festfive/activity/NoticeActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 157
    :cond_0
    const-string v0, "==Log=="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 14
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
    .line 108
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    iget-object v1, p0, Lco/kr/festfive/activity/NoticeActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lco/kr/festfive/activity/NoticeActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 112
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/gson/JsonObject;

    .line 115
    .local v13, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v1, "code"

    invoke-virtual {v13, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 116
    const-string v1, "data"

    invoke-virtual {v13, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v9

    .line 118
    .local v9, "data":Lcom/google/gson/JsonArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v9}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v10, v1, :cond_2

    .line 119
    invoke-virtual {v9, v10}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v12

    .line 120
    .local v12, "jobj":Lcom/google/gson/JsonObject;
    const-string v1, "image_url"

    invoke-virtual {v12, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    .line 122
    .local v11, "image_url":Lcom/google/gson/JsonElement;
    new-instance v0, Lco/kr/festfive/model/NoticeListMainItem;

    const-string v1, "notice_id"

    .line 123
    invoke-virtual {v12, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "office_id"

    .line 124
    invoke-virtual {v12, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    const-string v4, "title"

    .line 126
    invoke-virtual {v12, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "contents"

    .line 127
    invoke-virtual {v12, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "create_date"

    .line 128
    invoke-virtual {v12, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lco/kr/festfive/model/NoticeListMainItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v0, "item":Lco/kr/festfive/model/NoticeListMainItem;
    iget-object v1, p0, Lco/kr/festfive/activity/NoticeActivity$2;->this$0:Lco/kr/festfive/activity/NoticeActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/NoticeActivity;->access$100(Lco/kr/festfive/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "item":Lco/kr/festfive/model/NoticeListMainItem;
    :cond_1
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 134
    .end local v11    # "image_url":Lcom/google/gson/JsonElement;
    .end local v12    # "jobj":Lcom/google/gson/JsonObject;
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v7, "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lco/kr/festfive/model/NoticeListMainItem;>;"
    iget-object v1, p0, Lco/kr/festfive/activity/NoticeActivity$2;->this$0:Lco/kr/festfive/activity/NoticeActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/NoticeActivity;->access$100(Lco/kr/festfive/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    iget-object v1, p0, Lco/kr/festfive/activity/NoticeActivity$2;->this$0:Lco/kr/festfive/activity/NoticeActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/NoticeActivity;->access$100(Lco/kr/festfive/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_3
    iget-object v1, p0, Lco/kr/festfive/activity/NoticeActivity$2;->this$0:Lco/kr/festfive/activity/NoticeActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/NoticeActivity;->access$200(Lco/kr/festfive/activity/NoticeActivity;)Lco/kr/festfive/adapter/NoticeExAdapter;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/activity/NoticeActivity$2;->this$0:Lco/kr/festfive/activity/NoticeActivity;

    invoke-virtual {v2}, Lco/kr/festfive/activity/NoticeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/activity/NoticeActivity$2;->this$0:Lco/kr/festfive/activity/NoticeActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/NoticeActivity;->access$100(Lco/kr/festfive/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v7}, Lco/kr/festfive/adapter/NoticeExAdapter;->setData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 140
    iget-object v1, p0, Lco/kr/festfive/activity/NoticeActivity$2;->this$0:Lco/kr/festfive/activity/NoticeActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/NoticeActivity;->access$000(Lco/kr/festfive/activity/NoticeActivity;)Lco/kr/festfive/model/AnimatedExpandableListView;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/activity/NoticeActivity$2;->this$0:Lco/kr/festfive/activity/NoticeActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/NoticeActivity;->access$200(Lco/kr/festfive/activity/NoticeActivity;)Lco/kr/festfive/adapter/NoticeExAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/kr/festfive/model/AnimatedExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 142
    iget-object v1, p0, Lco/kr/festfive/activity/NoticeActivity$2;->this$0:Lco/kr/festfive/activity/NoticeActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/NoticeActivity;->access$200(Lco/kr/festfive/activity/NoticeActivity;)Lco/kr/festfive/adapter/NoticeExAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/adapter/NoticeExAdapter;->getGroupCount()I

    move-result v8

    .line 143
    .local v8, "count":I
    if-lez v8, :cond_4

    .line 144
    iget-object v1, p0, Lco/kr/festfive/activity/NoticeActivity$2;->this$0:Lco/kr/festfive/activity/NoticeActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/NoticeActivity;->access$000(Lco/kr/festfive/activity/NoticeActivity;)Lco/kr/festfive/model/AnimatedExpandableListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lco/kr/festfive/model/AnimatedExpandableListView;->expandGroup(I)Z

    .line 150
    .end local v7    # "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lco/kr/festfive/model/NoticeListMainItem;>;"
    .end local v8    # "count":I
    .end local v9    # "data":Lcom/google/gson/JsonArray;
    .end local v10    # "i":I
    .end local v13    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_4
    :goto_2
    return-void

    .line 147
    .restart local v13    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_5
    iget-object v1, p0, Lco/kr/festfive/activity/NoticeActivity$2;->this$0:Lco/kr/festfive/activity/NoticeActivity;

    invoke-virtual {v1}, Lco/kr/festfive/activity/NoticeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v13, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
