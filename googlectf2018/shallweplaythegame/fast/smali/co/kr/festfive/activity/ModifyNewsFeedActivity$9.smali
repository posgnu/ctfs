.class Lco/kr/festfive/activity/ModifyNewsFeedActivity$9;
.super Ljava/lang/Object;
.source "ModifyNewsFeedActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/ModifyNewsFeedActivity;->uploadNewsFeedImage()V
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
    .line 855
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$9;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 858
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$9;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->access$500(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$9;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->access$500(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 861
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
    .line 865
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 866
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 868
    .local v1, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 869
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 870
    .local v0, "data":Lcom/google/gson/JsonObject;
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$9;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    const-string v3, "file_name"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->access$1102(Lco/kr/festfive/activity/ModifyNewsFeedActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 871
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$9;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->access$708(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)I

    .line 872
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$9;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-virtual {v2}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->uploadNewsFeedImage()V

    .line 877
    .end local v0    # "data":Lcom/google/gson/JsonObject;
    .end local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_0
    return-void
.end method
