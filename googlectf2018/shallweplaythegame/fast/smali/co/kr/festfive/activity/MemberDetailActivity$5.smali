.class Lco/kr/festfive/activity/MemberDetailActivity$5;
.super Ljava/lang/Object;
.source "MemberDetailActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/MemberDetailActivity;->getMemberDetailFromServer(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lco/kr/festfive/activity/MemberDetailActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/MemberDetailActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/MemberDetailActivity;

    .prologue
    .line 171
    iput-object p1, p0, Lco/kr/festfive/activity/MemberDetailActivity$5;->this$0:Lco/kr/festfive/activity/MemberDetailActivity;

    iput-object p2, p0, Lco/kr/festfive/activity/MemberDetailActivity$5;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 174
    iget-object v0, p0, Lco/kr/festfive/activity/MemberDetailActivity$5;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lco/kr/festfive/activity/MemberDetailActivity$5;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 177
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 5
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
    .line 181
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    iget-object v2, p0, Lco/kr/festfive/activity/MemberDetailActivity$5;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lco/kr/festfive/activity/MemberDetailActivity$5;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 185
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 188
    .local v1, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 190
    .local v0, "data":Lcom/google/gson/JsonObject;
    iget-object v2, p0, Lco/kr/festfive/activity/MemberDetailActivity$5;->this$0:Lco/kr/festfive/activity/MemberDetailActivity;

    invoke-static {v2, v0}, Lco/kr/festfive/activity/MemberDetailActivity;->access$200(Lco/kr/festfive/activity/MemberDetailActivity;Lcom/google/gson/JsonObject;)V

    .line 195
    .end local v0    # "data":Lcom/google/gson/JsonObject;
    .end local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_1
    :goto_0
    return-void

    .line 192
    .restart local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_2
    iget-object v2, p0, Lco/kr/festfive/activity/MemberDetailActivity$5;->this$0:Lco/kr/festfive/activity/MemberDetailActivity;

    const-string v3, "message"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
