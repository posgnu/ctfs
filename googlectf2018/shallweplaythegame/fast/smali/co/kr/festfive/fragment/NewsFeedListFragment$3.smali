.class Lco/kr/festfive/fragment/NewsFeedListFragment$3;
.super Ljava/lang/Object;
.source "NewsFeedListFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/NewsFeedListFragment;->createComplaintChannel(Lco/kr/festfive/fragment/NewsFeedListFragment$OnCreateComplaint;)V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$listener:Lco/kr/festfive/fragment/NewsFeedListFragment$OnCreateComplaint;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/NewsFeedListFragment;Landroid/app/ProgressDialog;Lco/kr/festfive/fragment/NewsFeedListFragment$OnCreateComplaint;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/NewsFeedListFragment;

    .prologue
    .line 209
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$3;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$3;->val$listener:Lco/kr/festfive/fragment/NewsFeedListFragment$OnCreateComplaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 239
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 243
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$3;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/kr/festfive/fragment/NewsFeedListFragment;->access$102(Lco/kr/festfive/fragment/NewsFeedListFragment;Z)Z

    .line 245
    const-string v0, "HAMA"

    const-string v1, "fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
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
    .line 212
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 216
    :cond_0
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$3;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lco/kr/festfive/fragment/NewsFeedListFragment;->access$102(Lco/kr/festfive/fragment/NewsFeedListFragment;Z)Z

    .line 218
    const-string v2, "HAMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resposne is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 223
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

    .line 224
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 226
    .local v0, "data":Lcom/google/gson/JsonObject;
    const-string v2, "HAMA"

    const-string v3, "channel_url"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$3;->val$listener:Lco/kr/festfive/fragment/NewsFeedListFragment$OnCreateComplaint;

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$3;->val$listener:Lco/kr/festfive/fragment/NewsFeedListFragment$OnCreateComplaint;

    const-string v3, "channel_url"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lco/kr/festfive/fragment/NewsFeedListFragment$OnCreateComplaint;->onCreate(Ljava/lang/String;)V

    .line 235
    .end local v0    # "data":Lcom/google/gson/JsonObject;
    .end local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_1
    return-void
.end method
