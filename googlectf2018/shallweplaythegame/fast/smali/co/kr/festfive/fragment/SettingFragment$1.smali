.class Lco/kr/festfive/fragment/SettingFragment$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/SettingFragment;->setUnregisterToServer()V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/SettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/SettingFragment;

    .prologue
    .line 175
    iput-object p1, p0, Lco/kr/festfive/fragment/SettingFragment$1;->this$0:Lco/kr/festfive/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 178
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 6
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
    const/4 v5, 0x0

    .line 183
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 187
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

    .line 189
    iget-object v2, p0, Lco/kr/festfive/fragment/SettingFragment$1;->this$0:Lco/kr/festfive/fragment/SettingFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SettingFragment;->access$000(Lco/kr/festfive/fragment/SettingFragment;)V

    .line 190
    iget-object v2, p0, Lco/kr/festfive/fragment/SettingFragment$1;->this$0:Lco/kr/festfive/fragment/SettingFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment$1;->this$0:Lco/kr/festfive/fragment/SettingFragment;

    invoke-virtual {v3}, Lco/kr/festfive/fragment/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 191
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lco/kr/festfive/fragment/SettingFragment$1;->this$0:Lco/kr/festfive/fragment/SettingFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/kr/festfive/activity/LoginActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lco/kr/festfive/fragment/SettingFragment$1;->this$0:Lco/kr/festfive/fragment/SettingFragment;

    invoke-virtual {v2, v0}, Lco/kr/festfive/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    .line 193
    iget-object v2, p0, Lco/kr/festfive/fragment/SettingFragment$1;->this$0:Lco/kr/festfive/fragment/SettingFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 201
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_0
    :goto_0
    return-void

    .line 195
    .restart local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_1
    iget-object v2, p0, Lco/kr/festfive/fragment/SettingFragment$1;->this$0:Lco/kr/festfive/fragment/SettingFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
