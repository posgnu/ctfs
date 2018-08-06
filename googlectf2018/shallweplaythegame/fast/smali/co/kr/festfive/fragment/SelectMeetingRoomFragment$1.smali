.class Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;
.super Ljava/lang/Object;
.source "SelectMeetingRoomFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->setRoomReserveToServer()V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/SelectMeetingRoomFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    .prologue
    .line 146
    iput-object p1, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;->this$0:Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 150
    iget-object v0, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 153
    :cond_0
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

    .line 158
    iget-object v3, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 162
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    .line 166
    .local v2, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;->this$0:Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    invoke-virtual {v3}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    .local v1, "alert_confirm":Landroid/app/AlertDialog$Builder;
    const-string v3, "\uc608\uc57d\uc774 \uc644\ub8cc\ub418\uc5c8\uc2b5\ub2c8\ub2e4.\n\n\uc608\uc57d \ud6c4 \uc774\uc6a9\ud558\uc9c0 \uc54a\uc73c\uc2e4 \uacbd\uc6b0, \ub2e4\ub978 \uba64\ubc84\ubd84\ub4e4\uc744 \uc704\ud574 (\ub354\ubcf4\uae30>\uc608\uc57d\uad00\ub9ac)\uc5d0\uc11c \ucde8\uc18c \ubd80\ud0c1 \ub4dc\ub9bd\ub2c8\ub2e4.\n\n\uc608\uc57d\ud604\ud669\uc744 \ud655\uc778\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?\n"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 173
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "\ud655\uc778"

    new-instance v5, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1$2;

    invoke-direct {v5, p0}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1$2;-><init>(Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "\ucde8\uc18c"

    new-instance v5, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1$1;

    invoke-direct {v5, p0}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1$1;-><init>(Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;)V

    .line 181
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 202
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 210
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "alert_confirm":Landroid/app/AlertDialog$Builder;
    .end local v2    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_1
    :goto_0
    return-void

    .line 204
    .restart local v2    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_2
    iget-object v3, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;->this$0:Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    invoke-virtual {v3}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
