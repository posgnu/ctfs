.class Lco/kr/festfive/activity/WriteMemberActivity$9;
.super Ljava/lang/Object;
.source "WriteMemberActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/WriteMemberActivity;->setMemberAddToServer()V
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


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/WriteMemberActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/WriteMemberActivity;

    .prologue
    .line 853
    iput-object p1, p0, Lco/kr/festfive/activity/WriteMemberActivity$9;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 857
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity$9;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/WriteMemberActivity;->access$800(Lco/kr/festfive/activity/WriteMemberActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity$9;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/WriteMemberActivity;->access$800(Lco/kr/festfive/activity/WriteMemberActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 860
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
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    const/4 v4, 0x0

    .line 865
    iget-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity$9;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/WriteMemberActivity;->access$800(Lco/kr/festfive/activity/WriteMemberActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 866
    iget-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity$9;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/WriteMemberActivity;->access$800(Lco/kr/festfive/activity/WriteMemberActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 869
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 871
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 873
    .local v0, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 874
    iget-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity$9;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/WriteMemberActivity;->access$000(Lco/kr/festfive/activity/WriteMemberActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 875
    iget-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity$9;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-virtual {v1}, Lco/kr/festfive/activity/WriteMemberActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/activity/WriteMemberActivity$9;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-virtual {v2}, Lco/kr/festfive/activity/WriteMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 879
    :goto_0
    iget-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity$9;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lco/kr/festfive/activity/WriteMemberActivity;->setResult(I)V

    .line 880
    iget-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity$9;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-virtual {v1}, Lco/kr/festfive/activity/WriteMemberActivity;->finish()V

    .line 888
    .end local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_1
    :goto_1
    return-void

    .line 877
    .restart local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_2
    iget-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity$9;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-virtual {v1}, Lco/kr/festfive/activity/WriteMemberActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/activity/WriteMemberActivity$9;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-virtual {v2}, Lco/kr/festfive/activity/WriteMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 882
    :cond_3
    iget-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity$9;->this$0:Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-virtual {v1}, Lco/kr/festfive/activity/WriteMemberActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
