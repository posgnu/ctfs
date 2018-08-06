.class Lco/kr/festfive/activity/DetailCommunityActivity$6;
.super Ljava/lang/Object;
.source "DetailCommunityActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/DetailCommunityActivity;->setCommunityJoinToServer()V
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
.field final synthetic this$0:Lco/kr/festfive/activity/DetailCommunityActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/DetailCommunityActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 241
    iput-object p1, p0, Lco/kr/festfive/activity/DetailCommunityActivity$6;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 244
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 4
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
    .line 249
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 253
    .local v0, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity$6;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$300(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\ucc38\uc11d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity$6;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$300(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "#E99852"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 257
    iget-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity$6;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lco/kr/festfive/activity/DetailCommunityActivity;->access$500(Lco/kr/festfive/activity/DetailCommunityActivity;Z)V

    .line 265
    .end local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_0
    :goto_0
    return-void

    .line 259
    .restart local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_1
    iget-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity$6;->this$0:Lco/kr/festfive/activity/DetailCommunityActivity;

    invoke-virtual {v1}, Lco/kr/festfive/activity/DetailCommunityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
