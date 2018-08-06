.class Lco/kr/festfive/fragment/MoreFragment$2;
.super Ljava/lang/Object;
.source "MoreFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MoreFragment;->getUserPriceToServer()V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/MoreFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/MoreFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/MoreFragment;

    .prologue
    .line 187
    iput-object p1, p0, Lco/kr/festfive/fragment/MoreFragment$2;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 190
    iget-object v0, p0, Lco/kr/festfive/fragment/MoreFragment$2;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-virtual {v0}, Lco/kr/festfive/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 7
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
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 196
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 199
    .local v1, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v3, "code"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 200
    const-string v3, "data"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 202
    .local v0, "data":Lcom/google/gson/JsonObject;
    const-string v3, "is_show"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Y"

    if-eq v3, v4, :cond_0

    const-string v3, "Y"

    const-string v4, "is_show"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    :cond_0
    iget-object v3, p0, Lco/kr/festfive/fragment/MoreFragment$2;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MoreFragment;->access$100(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    const-string v3, "price"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 207
    .local v2, "price":Lcom/google/gson/JsonObject;
    iget-object v3, p0, Lco/kr/festfive/fragment/MoreFragment$2;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MoreFragment;->access$200(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "amount"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v3, p0, Lco/kr/festfive/fragment/MoreFragment$2;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MoreFragment;->access$300(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "pay_date"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v3, p0, Lco/kr/festfive/fragment/MoreFragment$2;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MoreFragment;->access$400(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "account"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .end local v0    # "data":Lcom/google/gson/JsonObject;
    .end local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v2    # "price":Lcom/google/gson/JsonObject;
    :cond_1
    :goto_0
    return-void

    .line 211
    .restart local v0    # "data":Lcom/google/gson/JsonObject;
    .restart local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_2
    iget-object v3, p0, Lco/kr/festfive/fragment/MoreFragment$2;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MoreFragment;->access$100(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    iget-object v3, p0, Lco/kr/festfive/fragment/MoreFragment$2;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MoreFragment;->access$200(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v3, p0, Lco/kr/festfive/fragment/MoreFragment$2;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MoreFragment;->access$300(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v3, p0, Lco/kr/festfive/fragment/MoreFragment$2;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MoreFragment;->access$400(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 217
    .end local v0    # "data":Lcom/google/gson/JsonObject;
    :cond_3
    iget-object v3, p0, Lco/kr/festfive/fragment/MoreFragment$2;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-virtual {v3}, Lco/kr/festfive/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
