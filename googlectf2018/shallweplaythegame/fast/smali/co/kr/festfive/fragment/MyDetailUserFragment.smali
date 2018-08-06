.class public Lco/kr/festfive/fragment/MyDetailUserFragment;
.super Landroid/support/v4/app/Fragment;
.source "MyDetailUserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backButtonImage:Landroid/widget/TextView;

.field private badgeImage:Landroid/widget/ImageView;

.field private circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private companyText:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private createDate:Landroid/widget/TextView;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private imageUrl:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private introduceText:Landroid/widget/TextView;

.field private nameText:Landroid/widget/TextView;

.field private officeNameText:Landroid/widget/TextView;

.field private onLogout:Landroid/view/View$OnClickListener;

.field private rootView:Landroid/view/View;

.field private targetUserId:Ljava/lang/String;

.field private userEmail:Ljava/lang/String;

.field private userListItem:Lco/kr/festfive/model/UserListItem;

.field private userPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 61
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 221
    new-instance v0, Lco/kr/festfive/fragment/MyDetailUserFragment$3;

    invoke-direct {v0, p0}, Lco/kr/festfive/fragment/MyDetailUserFragment$3;-><init>(Lco/kr/festfive/fragment/MyDetailUserFragment;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->onLogout:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/MyDetailUserFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyDetailUserFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lco/kr/festfive/fragment/MyDetailUserFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyDetailUserFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->imageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/MyDetailUserFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyDetailUserFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1002(Lco/kr/festfive/fragment/MyDetailUserFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyDetailUserFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->userEmail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lco/kr/festfive/fragment/MyDetailUserFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyDetailUserFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->userPhone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/MyDetailUserFragment;)Lcom/mikhaellopez/circularimageview/CircularImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyDetailUserFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    return-object v0
.end method

.method static synthetic access$300(Lco/kr/festfive/fragment/MyDetailUserFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyDetailUserFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->nameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lco/kr/festfive/fragment/MyDetailUserFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyDetailUserFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->officeNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lco/kr/festfive/fragment/MyDetailUserFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyDetailUserFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->companyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lco/kr/festfive/fragment/MyDetailUserFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyDetailUserFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->introduceText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lco/kr/festfive/fragment/MyDetailUserFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyDetailUserFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->createDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lco/kr/festfive/fragment/MyDetailUserFragment;)Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyDetailUserFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object v0
.end method

.method static synthetic access$802(Lco/kr/festfive/fragment/MyDetailUserFragment;Lco/kr/festfive/manager/FestPreferenceManager;)Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyDetailUserFragment;
    .param p1, "x1"    # Lco/kr/festfive/manager/FestPreferenceManager;

    .prologue
    .line 40
    iput-object p1, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object p1
.end method

.method static synthetic access$900(Lco/kr/festfive/fragment/MyDetailUserFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyDetailUserFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->badgeImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getDetailToServer()V
    .locals 6

    .prologue
    .line 121
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MyDetailUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, ""

    const-string v5, "loading..."

    invoke-static {v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 122
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 124
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->targetUserId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lco/kr/festfive/service/FestInterface;->getDetail(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 126
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/fragment/MyDetailUserFragment$2;

    invoke-direct {v3, p0, v1}, Lco/kr/festfive/fragment/MyDetailUserFragment$2;-><init>(Lco/kr/festfive/fragment/MyDetailUserFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 198
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 111
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 247
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    iput-object p1, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->context:Landroid/content/Context;

    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 204
    .local v7, "vid":I
    sparse-switch v7, :sswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 207
    :sswitch_0
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MyDetailUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 211
    :sswitch_1
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/MyDetailUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .local v6, "intent":Landroid/content/Intent;
    const/16 v0, 0x7d0

    invoke-virtual {p0, v6, v0}, Lco/kr/festfive/fragment/MyDetailUserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 216
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MyDetailUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e0093

    invoke-virtual {p0, v1}, Lco/kr/festfive/fragment/MyDetailUserFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e0095

    invoke-virtual {p0, v2}, Lco/kr/festfive/fragment/MyDetailUserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\ub85c\uadf8\uc544\uc6c3 \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    iget-object v4, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->onLogout:Landroid/view/View$OnClickListener;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lco/kr/festfive/utils/Utils;->Confirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x7f080021 -> :sswitch_0
        0x7f080023 -> :sswitch_0
        0x7f08012d -> :sswitch_2
        0x7f080131 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    const v0, 0x7f0a005b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->rootView:Landroid/view/View;

    .line 75
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getUserListItem()Lco/kr/festfive/model/UserListItem;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->userListItem:Lco/kr/festfive/model/UserListItem;

    .line 76
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->userListItem:Lco/kr/festfive/model/UserListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/UserListItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->targetUserId:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->badgeImage:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->backButtonImage:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->backButtonImage:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mikhaellopez/circularimageview/CircularImageView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 84
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    new-instance v1, Lco/kr/festfive/fragment/MyDetailUserFragment$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/MyDetailUserFragment$1;-><init>(Lco/kr/festfive/fragment/MyDetailUserFragment;)V

    invoke-virtual {v0, v1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->nameText:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->officeNameText:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->companyText:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0800dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->introduceText:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->createDate:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->rootView:Landroid/view/View;

    const v1, 0x7f08012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lco/kr/festfive/fragment/MyDetailUserFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 116
    invoke-direct {p0}, Lco/kr/festfive/fragment/MyDetailUserFragment;->getDetailToServer()V

    .line 117
    return-void
.end method
