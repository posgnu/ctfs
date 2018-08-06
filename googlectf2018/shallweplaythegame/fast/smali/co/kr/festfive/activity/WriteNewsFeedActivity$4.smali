.class Lco/kr/festfive/activity/WriteNewsFeedActivity$4;
.super Ljava/lang/Object;
.source "WriteNewsFeedActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/WriteNewsFeedActivity;->uploadNewsFeedImage()V
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
.field final synthetic this$0:Lco/kr/festfive/activity/WriteNewsFeedActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/WriteNewsFeedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/WriteNewsFeedActivity;

    .prologue
    .line 754
    iput-object p1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity$4;->this$0:Lco/kr/festfive/activity/WriteNewsFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 757
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity$4;->this$0:Lco/kr/festfive/activity/WriteNewsFeedActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->access$400(Lco/kr/festfive/activity/WriteNewsFeedActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity$4;->this$0:Lco/kr/festfive/activity/WriteNewsFeedActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->access$400(Lco/kr/festfive/activity/WriteNewsFeedActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 760
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity$4;->this$0:Lco/kr/festfive/activity/WriteNewsFeedActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 761
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
    .line 765
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 766
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 768
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

    .line 769
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 770
    .local v0, "data":Lcom/google/gson/JsonObject;
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity$4;->this$0:Lco/kr/festfive/activity/WriteNewsFeedActivity;

    const-string v3, "file_name"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->access$502(Lco/kr/festfive/activity/WriteNewsFeedActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 771
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity$4;->this$0:Lco/kr/festfive/activity/WriteNewsFeedActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->access$608(Lco/kr/festfive/activity/WriteNewsFeedActivity;)I

    .line 772
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity$4;->this$0:Lco/kr/festfive/activity/WriteNewsFeedActivity;

    invoke-virtual {v2}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->uploadNewsFeedImage()V

    .line 777
    .end local v0    # "data":Lcom/google/gson/JsonObject;
    .end local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_0
    return-void
.end method
