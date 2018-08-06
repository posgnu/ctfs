.class Lco/kr/festfive/activity/ModifyNewsFeedActivity$1;
.super Ljava/lang/Object;
.source "ModifyNewsFeedActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/ModifyNewsFeedActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 121
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$1;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 124
    const-string v0, "HAMA"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
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
    .line 129
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 132
    .local v0, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v2, "code"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 135
    .local v1, "object":Lcom/google/gson/JsonObject;
    const-string v2, "target_office"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    const-string v3, "target_office"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    :cond_0
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$1;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->access$000(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 143
    .end local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v1    # "object":Lcom/google/gson/JsonObject;
    :cond_1
    :goto_0
    return-void

    .line 139
    .restart local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    .restart local v1    # "object":Lcom/google/gson/JsonObject;
    :cond_2
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity$1;->this$0:Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->access$000(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
