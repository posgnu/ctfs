.class Lco/kr/festfive/activity/ModifyUserInfoActivity$3;
.super Ljava/lang/Object;
.source "ModifyUserInfoActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/ModifyUserInfoActivity;->uploadProfile()V
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
.field final synthetic this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/ModifyUserInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/ModifyUserInfoActivity;

    .prologue
    .line 781
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity$3;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 784
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
    .line 788
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 789
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 791
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

    .line 792
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 793
    .local v0, "data":Lcom/google/gson/JsonObject;
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity$3;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    const-string v3, "file_name"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$802(Lco/kr/festfive/activity/ModifyUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 794
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity$3;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->access$900(Lco/kr/festfive/activity/ModifyUserInfoActivity;)V

    .line 802
    .end local v0    # "data":Lcom/google/gson/JsonObject;
    .end local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_0
    return-void
.end method
