.class public Lco/kr/festfive/activity/LoginHelpActivity;
.super Landroid/app/Activity;
.source "LoginHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backButtonImage:Landroid/widget/ImageView;

.field private backButtonText:Landroid/widget/TextView;

.field private emailArrowImage:Landroid/widget/ImageView;

.field private etcArrowImage:Landroid/widget/ImageView;

.field private numberArrowImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080021

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080023

    if-ne v1, v2, :cond_2

    .line 60
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/LoginHelpActivity;->finish()V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08016c

    if-ne v1, v2, :cond_3

    .line 62
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lco/kr/festfive/activity/PwdSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginHelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080091

    if-ne v1, v2, :cond_4

    .line 66
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lco/kr/festfive/activity/PwdSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "email"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginHelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080099

    if-ne v1, v2, :cond_1

    .line 70
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel:02-3453-8280"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginHelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginHelpActivity;->setContentView(I)V

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 32
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 35
    :cond_0
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/activity/LoginHelpActivity;->backButtonImage:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lco/kr/festfive/activity/LoginHelpActivity;->backButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/activity/LoginHelpActivity;->backButtonText:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lco/kr/festfive/activity/LoginHelpActivity;->backButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/activity/LoginHelpActivity;->numberArrowImage:Landroid/widget/ImageView;

    .line 41
    iget-object v0, p0, Lco/kr/festfive/activity/LoginHelpActivity;->numberArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/activity/LoginHelpActivity;->emailArrowImage:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lco/kr/festfive/activity/LoginHelpActivity;->emailArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/LoginHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/activity/LoginHelpActivity;->etcArrowImage:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lco/kr/festfive/activity/LoginHelpActivity;->etcArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 53
    return-void
.end method
