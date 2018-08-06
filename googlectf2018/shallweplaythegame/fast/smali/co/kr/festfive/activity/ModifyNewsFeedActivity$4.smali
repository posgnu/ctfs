.class Lco/kr/festfive/activity/ModifyNewsFeedActivity$4;
.super Ljava/lang/Object;
.source "ModifyNewsFeedActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/ModifyNewsFeedActivity;->setNewsFeedEditToServer()V
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
.field final synthetic this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    .prologue
    .line 609
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$4;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 613
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$4;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->access$500(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$4;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->access$500(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 616
    :cond_0
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
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    const/4 v3, 0x0

    .line 620
    iget-object v1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$4;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->access$500(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 621
    iget-object v1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$4;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->access$500(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 624
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 627
    .local v0, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 628
    iget-object v1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$4;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-virtual {v1}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\uc218\uc815 \ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 629
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lco/kr/festfive/FestManager;->setReload(Z)V

    .line 630
    iget-object v1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$4;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->setResult(I)V

    .line 631
    iget-object v1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$4;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-virtual {v1}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->finish()V

    .line 639
    .end local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_1
    :goto_0
    return-void

    .line 633
    .restart local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_2
    iget-object v1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$4;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-virtual {v1}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
