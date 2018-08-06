.class public Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;
.super Landroid/support/v4/app/Fragment;
.source "MessageDetailChannelInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final appId:Ljava/lang/String;

.field private backButtonImage:Landroid/widget/ImageView;

.field private channelUrl:Ljava/lang/String;

.field private circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private contentImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private contentImage10:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private contentImage11:Landroid/widget/ImageView;

.field private contentImage12:Landroid/widget/ImageView;

.field private contentImage13:Landroid/widget/ImageView;

.field private contentImage14:Landroid/widget/ImageView;

.field private contentImage15:Landroid/widget/ImageView;

.field private contentImage16:Landroid/widget/ImageView;

.field private contentImage17:Landroid/widget/ImageView;

.field private contentImage18:Landroid/widget/ImageView;

.field private contentImage19:Landroid/widget/ImageView;

.field private contentImage2:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private contentImage20:Landroid/widget/ImageView;

.field private contentImage3:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private contentImage4:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private contentImage5:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private contentImage6:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private contentImage7:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private contentImage8:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private contentImage9:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private countText:Landroid/widget/TextView;

.field private descriptionText:Landroid/widget/TextView;

.field private detailTitleText:Landroid/widget/TextView;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private joinButtonText:Landroid/widget/TextView;

.field private memberListQuery:Lcom/sendbird/android/MemberListQuery;

.field private messagingChannel:Lcom/sendbird/android/model/MessagingChannel;

.field private modifyButtonText:Landroid/widget/TextView;

.field private nameText:Landroid/widget/TextView;

.field private profileLinear:Landroid/widget/LinearLayout;

.field private rootView:Landroid/view/View;

.field private searchChannelListItem:Lco/kr/festfive/model/SearchChannelListItem;

.field private targetUserId:Ljava/lang/String;

.field userId:Ljava/lang/String;

.field private userListItem:Lco/kr/festfive/model/UserListItem;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 65
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 70
    const-string v0, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->appId:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lco/kr/festfive/utils/Utils;->generateDeviceUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->userId:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->userId:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->userName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->profileLinear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;)Lcom/mikhaellopez/circularimageview/CircularImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->contentImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    return-object v0
.end method

.method static synthetic access$102(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;Lcom/mikhaellopez/circularimageview/CircularImageView;)Lcom/mikhaellopez/circularimageview/CircularImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;
    .param p1, "x1"    # Lcom/mikhaellopez/circularimageview/CircularImageView;

    .prologue
    .line 48
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->contentImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    return-object p1
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;)Lcom/mikhaellopez/circularimageview/CircularImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    return-object v0
.end method

.method static synthetic access$300(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;)Lco/kr/festfive/model/UserListItem;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->userListItem:Lco/kr/festfive/model/UserListItem;

    return-object v0
.end method

.method static synthetic access$400(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->nameText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getDetailToServer()V
    .locals 6

    .prologue
    .line 232
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, ""

    const-string v5, "loading..."

    invoke-static {v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 233
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 235
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->targetUserId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lco/kr/festfive/service/FestInterface;->getDetail(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 237
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$2;

    invoke-direct {v3, p0, v1}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$2;-><init>(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 277
    return-void
.end method

.method private initSendBird()V
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$LoginOption;->build(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$LoginOption;->setUserName(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->login(Lcom/sendbird/android/SendBird$LoginOption;)V

    .line 206
    return-void
.end method

.method public static newInstance(Lco/kr/festfive/model/SearchChannelListItem;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "searchChannelListItem"    # Lco/kr/festfive/model/SearchChannelListItem;

    .prologue
    .line 84
    new-instance v0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    invoke-direct {v0}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;-><init>()V

    .line 85
    .local v0, "messageDetailChannelInfoFragment":Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;
    iput-object p0, v0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->searchChannelListItem:Lco/kr/festfive/model/SearchChannelListItem;

    .line 87
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    invoke-direct {v0}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;-><init>()V

    .line 78
    .local v0, "messageDetailChannelInfoFragment":Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;
    iput-object p1, v0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->channelUrl:Ljava/lang/String;

    .line 80
    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 211
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080021

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080023

    if-ne v2, v3, :cond_2

    .line 283
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 284
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080112

    if-ne v2, v3, :cond_1

    .line 286
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->userId:Ljava/lang/String;

    iget-object v4, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->userName:Ljava/lang/String;

    iget-object v5, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->searchChannelListItem:Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/SearchChannelListItem;->getChannelName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->searchChannelListItem:Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/SearchChannelListItem;->getChannelUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lco/kr/festfive/activity/SendBirdChatActivity;->makeSendBirdArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 288
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0, v1}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 98
    const v0, 0x7f0a005e

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->rootView:Landroid/view/View;

    .line 99
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getUserListItem()Lco/kr/festfive/model/UserListItem;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->userListItem:Lco/kr/festfive/model/UserListItem;

    .line 101
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->backButtonImage:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->backButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mikhaellopez/circularimageview/CircularImageView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 108
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->searchChannelListItem:Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 110
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->nameText:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->nameText:Landroid/widget/TextView;

    iget-object v1, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->searchChannelListItem:Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->countText:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->countText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uac00\uc785 \uc218 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->searchChannelListItem:Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getMemberCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->detailTitleText:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->detailTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->searchChannelListItem:Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getDetailName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->descriptionText:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->descriptionText:Landroid/widget/TextView;

    iget-object v1, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->searchChannelListItem:Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f08019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->profileLinear:Landroid/widget/LinearLayout;

    .line 158
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->joinButtonText:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->joinButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 166
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->userId:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->userName:Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->initSendBird()V

    .line 171
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->searchChannelListItem:Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/SearchChannelListItem;->getChannelUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sendbird/android/SendBird;->queryMemberList(Ljava/lang/String;Z)Lcom/sendbird/android/MemberListQuery;

    move-result-object v0

    new-instance v1, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$1;-><init>(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/MemberListQuery;->get(Lcom/sendbird/android/MemberListQuery$MemberListQueryResult;)V

    .line 199
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 215
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 229
    return-void
.end method
