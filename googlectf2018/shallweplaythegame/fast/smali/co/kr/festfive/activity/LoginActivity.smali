.class public Lco/kr/festfive/activity/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private loginButtonText:Landroid/widget/TextView;

.field private loginHelpButtonText:Landroid/widget/TextView;

.field private numberEdittext:Landroid/widget/EditText;

.field private pwdEdittext:Landroid/widget/EditText;

.field private registerButtonText:Landroid/widget/TextView;

.field private termButtonText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-void
.end method

.method private checkEmptyField()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    iget-object v4, p0, Lco/kr/festfive/activity/LoginActivity;->numberEdittext:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "number":Ljava/lang/String;
    iget-object v4, p0, Lco/kr/festfive/activity/LoginActivity;->pwdEdittext:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "pwd":Ljava/lang/String;
    const-string v4, ""

    if-eq v0, v4, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v3

    .line 118
    :cond_1
    :goto_0
    return v2

    .line 113
    :cond_2
    const-string v4, ""

    if-eq v1, v4, :cond_3

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    :cond_3
    invoke-virtual {p0}, Lco/kr/festfive/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00d0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v3

    .line 115
    goto :goto_0
.end method

.method private setUserLoginToServer()V
    .locals 9

    .prologue
    .line 122
    const-string v6, ""

    const-string v7, "login..."

    invoke-static {p0, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 123
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v5

    .line 124
    .local v5, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v6, p0, Lco/kr/festfive/activity/LoginActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v7, "registration_id"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "registrationId":Ljava/lang/String;
    iget-object v6, p0, Lco/kr/festfive/activity/LoginActivity;->numberEdittext:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "number":Ljava/lang/String;
    iget-object v6, p0, Lco/kr/festfive/activity/LoginActivity;->pwdEdittext:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "pwd":Ljava/lang/String;
    const-string v6, "A"

    invoke-interface {v5, v2, v3, v4, v6}, Lco/kr/festfive/service/FestInterface;->setLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 130
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v6, Lco/kr/festfive/activity/LoginActivity$1;

    invoke-direct {v6, p0, v1}, Lco/kr/festfive/activity/LoginActivity$1;-><init>(Lco/kr/festfive/activity/LoginActivity;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v6}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 215
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 220
    invoke-virtual {p0}, Lco/kr/festfive/activity/LoginActivity;->finish()V

    .line 221
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080135

    if-ne v1, v2, :cond_1

    .line 88
    invoke-direct {p0}, Lco/kr/festfive/activity/LoginActivity;->checkEmptyField()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-direct {p0}, Lco/kr/festfive/activity/LoginActivity;->setUserLoginToServer()V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080136

    if-ne v1, v2, :cond_2

    .line 93
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lco/kr/festfive/activity/LoginHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0801a8

    if-ne v1, v2, :cond_3

    .line 96
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lco/kr/festfive/activity/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080137

    if-ne v1, v2, :cond_0

    .line 101
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lco/kr/festfive/activity/TermsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginActivity;->setContentView(I)V

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 51
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 54
    :cond_0
    const v0, 0x7f08016d

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/kr/festfive/activity/LoginActivity;->numberEdittext:Landroid/widget/EditText;

    .line 55
    const v0, 0x7f0801a1

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/kr/festfive/activity/LoginActivity;->pwdEdittext:Landroid/widget/EditText;

    .line 57
    const v0, 0x7f080135

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/activity/LoginActivity;->loginButtonText:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lco/kr/festfive/activity/LoginActivity;->loginButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f080136

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/activity/LoginActivity;->loginHelpButtonText:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lco/kr/festfive/activity/LoginActivity;->loginHelpButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v0, 0x7f0801a8

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/activity/LoginActivity;->registerButtonText:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lco/kr/festfive/activity/LoginActivity;->registerButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v0, 0x7f080137

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/activity/LoginActivity;->termButtonText:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lco/kr/festfive/activity/LoginActivity;->termButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 75
    return-void
.end method
