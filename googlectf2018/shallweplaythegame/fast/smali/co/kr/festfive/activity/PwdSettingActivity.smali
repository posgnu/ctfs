.class public Lco/kr/festfive/activity/PwdSettingActivity;
.super Landroid/app/Activity;
.source "PwdSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backButtonImage:Landroid/widget/ImageView;

.field private backButtonText:Landroid/widget/TextView;

.field private closeButtonImage:Landroid/widget/ImageView;

.field private leftImage:Landroid/widget/ImageView;

.field private okButtonText:Landroid/widget/TextView;

.field private pwdSettingEditText:Landroid/widget/EditText;

.field private pwdSettingText1:Landroid/widget/TextView;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setPwdForEmailToServer()V
    .locals 6

    .prologue
    .line 162
    const-string v4, ""

    const-string v5, "setting..."

    invoke-static {p0, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 163
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v3

    .line 164
    .local v3, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v4, p0, Lco/kr/festfive/activity/PwdSettingActivity;->pwdSettingEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "number":Ljava/lang/String;
    invoke-interface {v3, v2}, Lco/kr/festfive/service/FestInterface;->setFindPwdForEmail(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 167
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v4, Lco/kr/festfive/activity/PwdSettingActivity$2;

    invoke-direct {v4, p0, v1}, Lco/kr/festfive/activity/PwdSettingActivity$2;-><init>(Lco/kr/festfive/activity/PwdSettingActivity;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 200
    return-void
.end method

.method private setPwdForIdToServer()V
    .locals 6

    .prologue
    .line 121
    const-string v4, ""

    const-string v5, "setting..."

    invoke-static {p0, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 122
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v3

    .line 123
    .local v3, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v4, p0, Lco/kr/festfive/activity/PwdSettingActivity;->pwdSettingEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "number":Ljava/lang/String;
    invoke-interface {v3, v2}, Lco/kr/festfive/service/FestInterface;->setFindPwdForId(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 126
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v4, Lco/kr/festfive/activity/PwdSettingActivity$1;

    invoke-direct {v4, p0, v1}, Lco/kr/festfive/activity/PwdSettingActivity$1;-><init>(Lco/kr/festfive/activity/PwdSettingActivity;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 159
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080021

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080023

    if-ne v0, v1, :cond_2

    .line 99
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/PwdSettingActivity;->finish()V

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08017c

    if-ne v0, v1, :cond_9

    .line 101
    iget-object v0, p0, Lco/kr/festfive/activity/PwdSettingActivity;->pwdSettingEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_3

    const-string v0, ""

    iget-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->pwdSettingEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    :cond_3
    iget-object v0, p0, Lco/kr/festfive/activity/PwdSettingActivity;->type:Ljava/lang/String;

    const-string v1, "number"

    if-eq v0, v1, :cond_4

    const-string v0, "number"

    iget-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    :cond_4
    invoke-virtual {p0}, Lco/kr/festfive/activity/PwdSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 105
    :cond_5
    invoke-virtual {p0}, Lco/kr/festfive/activity/PwdSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 108
    :cond_6
    iget-object v0, p0, Lco/kr/festfive/activity/PwdSettingActivity;->type:Ljava/lang/String;

    const-string v1, "number"

    if-eq v0, v1, :cond_7

    const-string v0, "number"

    iget-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 109
    :cond_7
    invoke-direct {p0}, Lco/kr/festfive/activity/PwdSettingActivity;->setPwdForIdToServer()V

    goto :goto_0

    .line 111
    :cond_8
    invoke-direct {p0}, Lco/kr/festfive/activity/PwdSettingActivity;->setPwdForEmailToServer()V

    goto :goto_0

    .line 115
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080045

    if-ne v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lco/kr/festfive/activity/PwdSettingActivity;->pwdSettingEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v1, 0x7f0a002a

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/PwdSettingActivity;->setContentView(I)V

    .line 51
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 52
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/PwdSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 58
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->type:Ljava/lang/String;

    .line 61
    :cond_1
    const v1, 0x7f080021

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/PwdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->backButtonImage:Landroid/widget/ImageView;

    .line 62
    iget-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->backButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v1, 0x7f080023

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/PwdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->backButtonText:Landroid/widget/TextView;

    .line 65
    iget-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->backButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f08017c

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/PwdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->okButtonText:Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->okButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v1, 0x7f0801a3

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/PwdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->pwdSettingText1:Landroid/widget/TextView;

    .line 72
    const v1, 0x7f080119

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/PwdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->leftImage:Landroid/widget/ImageView;

    .line 74
    const v1, 0x7f0801a2

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/PwdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->pwdSettingEditText:Landroid/widget/EditText;

    .line 76
    const v1, 0x7f080045

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/PwdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->closeButtonImage:Landroid/widget/ImageView;

    .line 77
    iget-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->closeButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->type:Ljava/lang/String;

    const-string v2, "number"

    if-eq v1, v2, :cond_2

    const-string v1, "number"

    iget-object v2, p0, Lco/kr/festfive/activity/PwdSettingActivity;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    :cond_2
    iget-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->pwdSettingText1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lco/kr/festfive/activity/PwdSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->leftImage:Landroid/widget/ImageView;

    const v2, 0x7f0700e4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 82
    iget-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->pwdSettingEditText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 89
    :cond_3
    :goto_0
    return-void

    .line 84
    :cond_4
    iget-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->type:Ljava/lang/String;

    const-string v2, "email"

    if-eq v1, v2, :cond_5

    const-string v1, "email"

    iget-object v2, p0, Lco/kr/festfive/activity/PwdSettingActivity;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    :cond_5
    iget-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->pwdSettingText1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lco/kr/festfive/activity/PwdSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->leftImage:Landroid/widget/ImageView;

    const v2, 0x7f0700a3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 87
    iget-object v1, p0, Lco/kr/festfive/activity/PwdSettingActivity;->pwdSettingEditText:Landroid/widget/EditText;

    const v2, 0x80021

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    return-void
.end method
