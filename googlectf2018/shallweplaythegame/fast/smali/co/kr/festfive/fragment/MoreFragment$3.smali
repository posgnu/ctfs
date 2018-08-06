.class Lco/kr/festfive/fragment/MoreFragment$3;
.super Ljava/lang/Object;
.source "MoreFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MoreFragment;->getNewBadgeToServer()V
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
    .line 234
    iput-object p1, p0, Lco/kr/festfive/fragment/MoreFragment$3;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 237
    iget-object v0, p0, Lco/kr/festfive/fragment/MoreFragment$3;->this$0:Lco/kr/festfive/fragment/MoreFragment;

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

    .line 238
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 6
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
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 243
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 244
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 246
    .local v1, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 247
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 249
    .local v0, "data":Lcom/google/gson/JsonObject;
    const-string v2, "notice"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Y"

    if-eq v2, v3, :cond_0

    const-string v2, "Y"

    const-string v3, "notice"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 250
    :cond_0
    iget-object v2, p0, Lco/kr/festfive/fragment/MoreFragment$3;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MoreFragment;->access$500(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    :goto_0
    const-string v2, "my_schedule"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Y"

    if-eq v2, v3, :cond_1

    const-string v2, "Y"

    const-string v3, "my_schedule"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 255
    :cond_1
    iget-object v2, p0, Lco/kr/festfive/fragment/MoreFragment$3;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MoreFragment;->access$600(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    :goto_1
    const-string v2, "community_favorite"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Y"

    if-eq v2, v3, :cond_2

    const-string v2, "Y"

    const-string v3, "community_favorite"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 260
    :cond_2
    iget-object v2, p0, Lco/kr/festfive/fragment/MoreFragment$3;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MoreFragment;->access$700(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    :goto_2
    const-string v2, "officener"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Y"

    if-eq v2, v3, :cond_3

    const-string v2, "Y"

    const-string v3, "officener"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 265
    :cond_3
    iget-object v2, p0, Lco/kr/festfive/fragment/MoreFragment$3;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MoreFragment;->access$800(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    :goto_3
    const-string v2, "user_guide"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Y"

    if-eq v2, v3, :cond_4

    const-string v2, "Y"

    const-string v3, "user_guide"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 270
    :cond_4
    iget-object v2, p0, Lco/kr/festfive/fragment/MoreFragment$3;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MoreFragment;->access$900(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    .end local v0    # "data":Lcom/google/gson/JsonObject;
    .end local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_5
    :goto_4
    return-void

    .line 252
    .restart local v0    # "data":Lcom/google/gson/JsonObject;
    .restart local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_6
    iget-object v2, p0, Lco/kr/festfive/fragment/MoreFragment$3;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MoreFragment;->access$500(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 257
    :cond_7
    iget-object v2, p0, Lco/kr/festfive/fragment/MoreFragment$3;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MoreFragment;->access$600(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 262
    :cond_8
    iget-object v2, p0, Lco/kr/festfive/fragment/MoreFragment$3;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MoreFragment;->access$700(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 267
    :cond_9
    iget-object v2, p0, Lco/kr/festfive/fragment/MoreFragment$3;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MoreFragment;->access$800(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 272
    :cond_a
    iget-object v2, p0, Lco/kr/festfive/fragment/MoreFragment$3;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MoreFragment;->access$900(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 275
    .end local v0    # "data":Lcom/google/gson/JsonObject;
    :cond_b
    iget-object v2, p0, Lco/kr/festfive/fragment/MoreFragment$3;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method
