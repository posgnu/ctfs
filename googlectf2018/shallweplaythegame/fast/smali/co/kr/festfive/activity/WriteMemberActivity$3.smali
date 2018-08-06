.class Lco/kr/festfive/activity/WriteMemberActivity$3;
.super Ljava/lang/Object;
.source "WriteMemberActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/WriteMemberActivity;->getOriginData(Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;)V
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

.field final synthetic val$listener:Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/WriteMemberActivity;Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/WriteMemberActivity;

    .prologue
    .line 221
    iput-object p1, p0, Lco/kr/festfive/activity/WriteMemberActivity$3;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    iput-object p2, p0, Lco/kr/festfive/activity/WriteMemberActivity$3;->val$listener:Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 224
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity$3;->val$listener:Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity$3;->val$listener:Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;

    invoke-interface {v0}, Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;->onError()V

    .line 227
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
    .line 231
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 234
    .local v1, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 237
    .local v0, "data":Lcom/google/gson/JsonObject;
    iget-object v2, p0, Lco/kr/festfive/activity/WriteMemberActivity$3;->val$listener:Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lco/kr/festfive/activity/WriteMemberActivity$3;->val$listener:Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;

    invoke-interface {v2, v0}, Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;->onGetOriginDataComplete(Lcom/google/gson/JsonObject;)V

    .line 247
    .end local v0    # "data":Lcom/google/gson/JsonObject;
    .end local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_0
    :goto_0
    return-void

    .line 242
    .restart local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_1
    iget-object v2, p0, Lco/kr/festfive/activity/WriteMemberActivity$3;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

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
