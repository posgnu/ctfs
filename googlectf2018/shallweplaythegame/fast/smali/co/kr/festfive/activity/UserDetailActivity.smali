.class public Lco/kr/festfive/activity/UserDetailActivity;
.super Landroid/app/Activity;
.source "UserDetailActivity.java"

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

.field private introduceText:Landroid/widget/TextView;

.field private logoutButtonText:Landroid/widget/TextView;

.field private nameText:Landroid/widget/TextView;

.field private officeNameText:Landroid/widget/TextView;

.field private onCall:Landroid/view/View$OnClickListener;

.field private onMail:Landroid/view/View$OnClickListener;

.field private targetUserId:Ljava/lang/String;

.field private userEmail:Ljava/lang/String;

.field private userListItem:Lco/kr/festfive/model/UserListItem;

.field private userPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 217
    new-instance v0, Lco/kr/festfive/activity/UserDetailActivity$3;

    invoke-direct {v0, p0}, Lco/kr/festfive/activity/UserDetailActivity$3;-><init>(Lco/kr/festfive/activity/UserDetailActivity;)V

    iput-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity;->onCall:Landroid/view/View$OnClickListener;

    .line 226
    new-instance v0, Lco/kr/festfive/activity/UserDetailActivity$4;

    invoke-direct {v0, p0}, Lco/kr/festfive/activity/UserDetailActivity$4;-><init>(Lco/kr/festfive/activity/UserDetailActivity;)V

    iput-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity;->onMail:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/activity/UserDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/UserDetailActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lco/kr/festfive/activity/UserDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/UserDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lco/kr/festfive/activity/UserDetailActivity;->imageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lco/kr/festfive/activity/UserDetailActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/UserDetailActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lco/kr/festfive/activity/UserDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/UserDetailActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity;->userEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lco/kr/festfive/activity/UserDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/UserDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lco/kr/festfive/activity/UserDetailActivity;->userEmail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lco/kr/festfive/activity/UserDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/UserDetailActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity;->userPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lco/kr/festfive/activity/UserDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/UserDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lco/kr/festfive/activity/UserDetailActivity;->userPhone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lco/kr/festfive/activity/UserDetailActivity;)Lcom/mikhaellopez/circularimageview/CircularImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/UserDetailActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    return-object v0
.end method

.method static synthetic access$300(Lco/kr/festfive/activity/UserDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/UserDetailActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity;->nameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lco/kr/festfive/activity/UserDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/UserDetailActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity;->officeNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lco/kr/festfive/activity/UserDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/UserDetailActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity;->companyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lco/kr/festfive/activity/UserDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/UserDetailActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity;->introduceText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lco/kr/festfive/activity/UserDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/UserDetailActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity;->createDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lco/kr/festfive/activity/UserDetailActivity;)Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/UserDetailActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object v0
.end method

.method static synthetic access$802(Lco/kr/festfive/activity/UserDetailActivity;Lco/kr/festfive/manager/FestPreferenceManager;)Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/UserDetailActivity;
    .param p1, "x1"    # Lco/kr/festfive/manager/FestPreferenceManager;

    .prologue
    .line 37
    iput-object p1, p0, Lco/kr/festfive/activity/UserDetailActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object p1
.end method

.method static synthetic access$900(Lco/kr/festfive/activity/UserDetailActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/UserDetailActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity;->badgeImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getDetailToServer()V
    .locals 5

    .prologue
    .line 109
    const-string v3, ""

    const-string v4, "loading..."

    invoke-static {p0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 110
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 112
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/activity/UserDetailActivity;->targetUserId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lco/kr/festfive/service/FestInterface;->getDetail(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 114
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/activity/UserDetailActivity$2;

    invoke-direct {v3, p0, v1}, Lco/kr/festfive/activity/UserDetailActivity$2;-><init>(Lco/kr/festfive/activity/UserDetailActivity;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 186
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 192
    .local v2, "vid":I
    sparse-switch v2, :sswitch_data_0

    .line 215
    :goto_0
    return-void

    .line 195
    :sswitch_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/UserDetailActivity;->finish()V

    goto :goto_0

    .line 199
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity;->userListItem:Lco/kr/festfive/model/UserListItem;

    invoke-virtual {v4}, Lco/kr/festfive/model/UserListItem;->getUserId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/UserDetailActivity;->userListItem:Lco/kr/festfive/model/UserListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/UserListItem;->getUserName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/activity/UserDetailActivity;->targetUserId:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->makeMessagingStartArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 201
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 192
    :sswitch_data_0
    .sparse-switch
        0x7f080021 -> :sswitch_0
        0x7f080023 -> :sswitch_0
        0x7f080129 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v1, 0x7f0a005f

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/UserDetailActivity;->setContentView(I)V

    .line 64
    iput-object p0, p0, Lco/kr/festfive/activity/UserDetailActivity;->context:Landroid/content/Context;

    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 67
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/UserDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 73
    const-string v1, "targetUserId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/activity/UserDetailActivity;->targetUserId:Ljava/lang/String;

    .line 76
    :cond_1
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/FestManager;->getUserListItem()Lco/kr/festfive/model/UserListItem;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/activity/UserDetailActivity;->userListItem:Lco/kr/festfive/model/UserListItem;

    .line 78
    const v1, 0x7f080023

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/activity/UserDetailActivity;->backButtonImage:Landroid/widget/TextView;

    .line 79
    iget-object v1, p0, Lco/kr/festfive/activity/UserDetailActivity;->backButtonImage:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v1, 0x7f080100

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/activity/UserDetailActivity;->badgeImage:Landroid/widget/ImageView;

    .line 83
    const v1, 0x7f080041

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mikhaellopez/circularimageview/CircularImageView;

    iput-object v1, p0, Lco/kr/festfive/activity/UserDetailActivity;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 84
    iget-object v1, p0, Lco/kr/festfive/activity/UserDetailActivity;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    new-instance v2, Lco/kr/festfive/activity/UserDetailActivity$1;

    invoke-direct {v2, p0}, Lco/kr/festfive/activity/UserDetailActivity$1;-><init>(Lco/kr/festfive/activity/UserDetailActivity;)V

    invoke-virtual {v1, v2}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v1, 0x7f080158

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/activity/UserDetailActivity;->nameText:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f080176

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/activity/UserDetailActivity;->officeNameText:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f080050

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/activity/UserDetailActivity;->companyText:Landroid/widget/TextView;

    .line 96
    const v1, 0x7f0800dd

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/activity/UserDetailActivity;->introduceText:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f080063

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/activity/UserDetailActivity;->createDate:Landroid/widget/TextView;

    .line 101
    const v1, 0x7f080129

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/UserDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-direct {p0}, Lco/kr/festfive/activity/UserDetailActivity;->getDetailToServer()V

    .line 106
    return-void
.end method
