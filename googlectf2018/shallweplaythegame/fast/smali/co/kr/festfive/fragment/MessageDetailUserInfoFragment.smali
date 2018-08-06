.class public Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;
.super Landroid/support/v4/app/Fragment;
.source "MessageDetailUserInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backButtonImage:Landroid/widget/ImageView;

.field private badgeImage:Landroid/widget/ImageView;

.field private circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private companyText:Landroid/widget/TextView;

.field private createDate:Landroid/widget/TextView;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private introduceText:Landroid/widget/TextView;

.field private modifyButtonText:Landroid/widget/TextView;

.field private nameText:Landroid/widget/TextView;

.field private number:Ljava/lang/String;

.field private officeNameText:Landroid/widget/TextView;

.field private onCall:Landroid/view/View$OnClickListener;

.field private onMail:Landroid/view/View$OnClickListener;

.field private rootView:Landroid/view/View;

.field private targetUserId:Ljava/lang/String;

.field private userEmail:Ljava/lang/String;

.field private userListItem:Lco/kr/festfive/model/UserListItem;

.field private userName:Ljava/lang/String;

.field private userPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 57
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->number:Ljava/lang/String;

    .line 230
    new-instance v0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$2;

    invoke-direct {v0, p0}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$2;-><init>(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->onCall:Landroid/view/View$OnClickListener;

    .line 239
    new-instance v0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$3;

    invoke-direct {v0, p0}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$3;-><init>(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->onMail:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Lcom/mikhaellopez/circularimageview/CircularImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->nameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->officeNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->companyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->introduceText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->createDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object v0
.end method

.method static synthetic access$602(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;Lco/kr/festfive/manager/FestPreferenceManager;)Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;
    .param p1, "x1"    # Lco/kr/festfive/manager/FestPreferenceManager;

    .prologue
    .line 38
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object p1
.end method

.method static synthetic access$700(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->badgeImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->userEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->userEmail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->userPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->userPhone:Ljava/lang/String;

    return-object p1
.end method

.method private getDetailToServer()V
    .locals 6

    .prologue
    .line 127
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, ""

    const-string v5, "loading..."

    invoke-static {v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 128
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 130
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->targetUserId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lco/kr/festfive/service/FestInterface;->getDetail(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 132
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;

    invoke-direct {v3, p0, v1}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;-><init>(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 199
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "targetUserId"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-direct {v0}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;-><init>()V

    .line 61
    .local v0, "messageDetailUserInfoFragment":Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;
    iput-object p0, v0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->targetUserId:Ljava/lang/String;

    .line 63
    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 205
    .local v2, "vid":I
    sparse-switch v2, :sswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 208
    :sswitch_0
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 212
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    iget-object v4, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->userListItem:Lco/kr/festfive/model/UserListItem;

    invoke-virtual {v4}, Lco/kr/festfive/model/UserListItem;->getUserId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->userListItem:Lco/kr/festfive/model/UserListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/UserListItem;->getUserName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->targetUserId:Ljava/lang/String;

    iget-object v7, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->nameText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->makeMessagingStartArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 214
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v1}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 205
    :sswitch_data_0
    .sparse-switch
        0x7f080021 -> :sswitch_0
        0x7f080023 -> :sswitch_0
        0x7f080129 -> :sswitch_1
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
    .line 74
    const v0, 0x7f0a005f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->rootView:Landroid/view/View;

    .line 75
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getUserListItem()Lco/kr/festfive/model/UserListItem;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->userListItem:Lco/kr/festfive/model/UserListItem;

    .line 77
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->backButtonImage:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->backButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mikhaellopez/circularimageview/CircularImageView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 81
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->badgeImage:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->nameText:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->officeNameText:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->companyText:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0800dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->introduceText:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->createDate:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-direct {p0}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->getDetailToServer()V

    .line 98
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 122
    return-void
.end method
