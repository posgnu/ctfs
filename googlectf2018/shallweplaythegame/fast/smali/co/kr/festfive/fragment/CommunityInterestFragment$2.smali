.class Lco/kr/festfive/fragment/CommunityInterestFragment$2;
.super Ljava/lang/Object;
.source "CommunityInterestFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/CommunityInterestFragment;->getCommunityInterestListToServer()V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/CommunityInterestFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/CommunityInterestFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/CommunityInterestFragment;

    .prologue
    .line 106
    iput-object p1, p0, Lco/kr/festfive/fragment/CommunityInterestFragment$2;->this$0:Lco/kr/festfive/fragment/CommunityInterestFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/CommunityInterestFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 110
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 113
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 13
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
    .line 118
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 122
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/gson/JsonObject;

    .line 135
    .local v10, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v0, "code"

    invoke-virtual {v10, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    const-string v0, "data"

    invoke-virtual {v10, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v8

    .line 139
    .local v8, "data":Lcom/google/gson/JsonArray;
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment$2;->this$0:Lco/kr/festfive/fragment/CommunityInterestFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/CommunityInterestFragment;->access$100(Lco/kr/festfive/fragment/CommunityInterestFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 142
    invoke-virtual {v8, v9}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    .line 144
    .local v11, "object":Lcom/google/gson/JsonObject;
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment$2;->this$0:Lco/kr/festfive/fragment/CommunityInterestFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/CommunityInterestFragment;->access$000(Lco/kr/festfive/fragment/CommunityInterestFragment;)Lco/kr/festfive/adapter/CommunityInterestAdapter;

    move-result-object v12

    new-instance v0, Lco/kr/festfive/model/CommunityInterestListItem;

    const-string v1, "community_id"

    invoke-virtual {v11, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v11, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "community_date"

    invoke-virtual {v11, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "community_time"

    .line 145
    invoke-virtual {v11, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "summary"

    invoke-virtual {v11, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "description"

    invoke-virtual {v11, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "community_image_url"

    invoke-virtual {v11, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lco/kr/festfive/model/CommunityInterestListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v12, v0}, Lco/kr/festfive/adapter/CommunityInterestAdapter;->add(Ljava/lang/Object;)V

    .line 141
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 151
    .end local v11    # "object":Lcom/google/gson/JsonObject;
    :cond_1
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment$2;->this$0:Lco/kr/festfive/fragment/CommunityInterestFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/CommunityInterestFragment;->access$200(Lco/kr/festfive/fragment/CommunityInterestFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/fragment/CommunityInterestFragment$2;->this$0:Lco/kr/festfive/fragment/CommunityInterestFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CommunityInterestFragment;->access$000(Lco/kr/festfive/fragment/CommunityInterestFragment;)Lco/kr/festfive/adapter/CommunityInterestAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    .end local v8    # "data":Lcom/google/gson/JsonArray;
    .end local v9    # "i":I
    .end local v10    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_2
    :goto_1
    return-void

    .line 154
    .restart local v10    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_3
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment$2;->this$0:Lco/kr/festfive/fragment/CommunityInterestFragment;

    invoke-virtual {v0}, Lco/kr/festfive/fragment/CommunityInterestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v10, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
