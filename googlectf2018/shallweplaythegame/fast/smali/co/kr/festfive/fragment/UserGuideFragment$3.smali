.class Lco/kr/festfive/fragment/UserGuideFragment$3;
.super Ljava/lang/Object;
.source "UserGuideFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/UserGuideFragment;->getUserGuideListToServer(Ljava/lang/String;)V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/UserGuideFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/UserGuideFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/UserGuideFragment;

    .prologue
    .line 157
    iput-object p1, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 161
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 164
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 11
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
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    const/4 v10, 0x0

    .line 169
    iget-object v5, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_0

    .line 170
    iget-object v5, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 173
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 174
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonObject;

    .line 176
    .local v3, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v5, "code"

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 177
    const-string v5, "data"

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 179
    .local v1, "data":Lcom/google/gson/JsonArray;
    iget-object v5, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lco/kr/festfive/fragment/UserGuideFragment;->access$302(Lco/kr/festfive/fragment/UserGuideFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 180
    iget-object v5, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lco/kr/festfive/fragment/UserGuideFragment;->access$402(Lco/kr/festfive/fragment/UserGuideFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 181
    iget-object v5, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lco/kr/festfive/fragment/UserGuideFragment;->access$502(Lco/kr/festfive/fragment/UserGuideFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 182
    iget-object v5, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lco/kr/festfive/fragment/UserGuideFragment;->access$602(Lco/kr/festfive/fragment/UserGuideFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 184
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 185
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 191
    .local v4, "object":Lcom/google/gson/JsonObject;
    iget-object v5, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/UserGuideFragment;->access$300(Lco/kr/festfive/fragment/UserGuideFragment;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v5, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/UserGuideFragment;->access$500(Lco/kr/festfive/fragment/UserGuideFragment;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "contents"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v5, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/UserGuideFragment;->access$600(Lco/kr/festfive/fragment/UserGuideFragment;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "image_url"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v4    # "object":Lcom/google/gson/JsonObject;
    :cond_1
    iget-object v5, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/UserGuideFragment;->access$700(Lco/kr/festfive/fragment/UserGuideFragment;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v5, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/UserGuideFragment;->access$400(Lco/kr/festfive/fragment/UserGuideFragment;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-static {v6}, Lco/kr/festfive/fragment/UserGuideFragment;->access$500(Lco/kr/festfive/fragment/UserGuideFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v5, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/UserGuideFragment;->access$800(Lco/kr/festfive/fragment/UserGuideFragment;)Lco/kr/festfive/adapter/UserGuideAdapter;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-virtual {v6}, Lco/kr/festfive/fragment/UserGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-static {v7}, Lco/kr/festfive/fragment/UserGuideFragment;->access$300(Lco/kr/festfive/fragment/UserGuideFragment;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/UserGuideFragment;->access$500(Lco/kr/festfive/fragment/UserGuideFragment;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-static {v9}, Lco/kr/festfive/fragment/UserGuideFragment;->access$600(Lco/kr/festfive/fragment/UserGuideFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lco/kr/festfive/adapter/UserGuideAdapter;->setData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 201
    iget-object v5, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/UserGuideFragment;->access$200(Lco/kr/festfive/fragment/UserGuideFragment;)Lco/kr/festfive/model/AnimatedExpandableListView;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-static {v6}, Lco/kr/festfive/fragment/UserGuideFragment;->access$800(Lco/kr/festfive/fragment/UserGuideFragment;)Lco/kr/festfive/adapter/UserGuideAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lco/kr/festfive/model/AnimatedExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 203
    iget-object v5, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/UserGuideFragment;->access$800(Lco/kr/festfive/fragment/UserGuideFragment;)Lco/kr/festfive/adapter/UserGuideAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lco/kr/festfive/adapter/UserGuideAdapter;->getGroupCount()I

    move-result v0

    .line 204
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 205
    iget-object v5, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/UserGuideFragment;->access$200(Lco/kr/festfive/fragment/UserGuideFragment;)Lco/kr/festfive/model/AnimatedExpandableListView;

    move-result-object v5

    invoke-virtual {v5, v10}, Lco/kr/festfive/model/AnimatedExpandableListView;->expandGroup(I)Z

    .line 217
    .end local v0    # "count":I
    .end local v1    # "data":Lcom/google/gson/JsonArray;
    .end local v2    # "i":I
    .end local v3    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_2
    :goto_1
    return-void

    .line 211
    .restart local v3    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_3
    iget-object v5, p0, Lco/kr/festfive/fragment/UserGuideFragment$3;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-virtual {v5}, Lco/kr/festfive/fragment/UserGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
