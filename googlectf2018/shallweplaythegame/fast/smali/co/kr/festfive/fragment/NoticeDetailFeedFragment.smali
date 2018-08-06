.class public Lco/kr/festfive/fragment/NoticeDetailFeedFragment;
.super Landroid/support/v4/app/Fragment;
.source "NoticeDetailFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lco/kr/festfive/listener/DialogListener;


# instance fields
.field private backButtonLinear:Landroid/widget/LinearLayout;

.field private companyText:Landroid/widget/TextView;

.field private contentImage1:Landroid/widget/ImageView;

.field private contentImage2:Landroid/widget/ImageView;

.field private contentImage3:Landroid/widget/ImageView;

.field private contentImage4:Landroid/widget/ImageView;

.field private contentImage5:Landroid/widget/ImageView;

.field private contentText:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private dateText:Landroid/widget/TextView;

.field private feedId:Ljava/lang/String;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private likeButtonText:Landroid/widget/TextView;

.field private likeText:Landroid/widget/TextView;

.field private modifyButtonImage:Landroid/widget/ImageView;

.field private modifyButtonLinear:Landroid/widget/LinearLayout;

.field private moreButtonText:Landroid/widget/TextView;

.field private nameText:Landroid/widget/TextView;

.field private noticeListItem:Lco/kr/festfive/model/NoticeListItem;

.field private officeNameText:Landroid/widget/TextView;

.field private popupView:Landroid/view/View;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private profileImage:Landroid/widget/ImageView;

.field private replyButtonText:Landroid/widget/TextView;

.field private replyContentText:Landroid/widget/TextView;

.field private replyDateText:Landroid/widget/TextView;

.field private replyEdittext:Landroid/widget/EditText;

.field private replyLinear:Landroid/widget/LinearLayout;

.field private replyNameText:Landroid/widget/TextView;

.field private replyProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private replyText:Landroid/widget/TextView;

.field private rootView:Landroid/view/View;

.field private search:Z

.field private sendButtonText:Landroid/widget/TextView;

.field private writeReplyLinear:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->search:Z

    .line 69
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyEdittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1100(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->setNewsFeedDeleteToServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->getNewsFeedReplyAddToServer()V

    return-void
.end method

.method static synthetic access$300(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyLinear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Lcom/mikhaellopez/circularimageview/CircularImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    return-object v0
.end method

.method static synthetic access$402(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;Lcom/mikhaellopez/circularimageview/CircularImageView;)Lcom/mikhaellopez/circularimageview/CircularImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;
    .param p1, "x1"    # Lcom/mikhaellopez/circularimageview/CircularImageView;

    .prologue
    .line 52
    iput-object p1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    return-object p1
.end method

.method static synthetic access$500(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 52
    iput-object p1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyNameText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyContentText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 52
    iput-object p1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyContentText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyDateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 52
    iput-object p1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyDateText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$800(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->reload()V

    return-void
.end method

.method static synthetic access$900(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Lco/kr/festfive/model/NoticeListItem;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    return-object v0
.end method

.method private getNewsFeedReplyAddToServer()V
    .locals 7

    .prologue
    .line 363
    invoke-virtual {p0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, ""

    const-string v6, "loading..."

    invoke-static {v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 364
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 366
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v4, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v4, :cond_0

    .line 367
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v4

    invoke-virtual {v4}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 369
    :cond_0
    iget-object v4, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "userId":Ljava/lang/String;
    iget-object v4, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v4}, Lco/kr/festfive/model/NoticeListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyEdittext:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lco/kr/festfive/service/FestInterface;->getNewsFeedReplyAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 373
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v4, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$4;

    invoke-direct {v4, p0, v1}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$4;-><init>(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 406
    return-void
.end method

.method private getNewsFeedReplyListToServer()V
    .locals 7

    .prologue
    .line 293
    invoke-virtual {p0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, ""

    const-string v6, "loading..."

    invoke-static {v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 294
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 296
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v4, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v4, :cond_0

    .line 297
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v4

    invoke-virtual {v4}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 299
    :cond_0
    iget-object v4, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "userId":Ljava/lang/String;
    iget-object v4, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v4}, Lco/kr/festfive/model/NoticeListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lco/kr/festfive/service/FestInterface;->getNewsFeedReplyList(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 303
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v4, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;

    invoke-direct {v4, p0, v1}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$3;-><init>(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 360
    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lco/kr/festfive/model/NoticeListItem;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noticeListItem"    # Lco/kr/festfive/model/NoticeListItem;

    .prologue
    .line 98
    new-instance v0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-direct {v0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;-><init>()V

    .line 100
    .local v0, "noticeDetailFeedFragment":Lco/kr/festfive/fragment/NoticeDetailFeedFragment;
    iput-object p1, v0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    .line 101
    iput-object p0, v0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->context:Landroid/content/Context;

    .line 103
    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lco/kr/festfive/model/NoticeListItem;Z)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noticeListItem"    # Lco/kr/festfive/model/NoticeListItem;
    .param p2, "search"    # Z

    .prologue
    .line 108
    new-instance v0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-direct {v0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;-><init>()V

    .line 110
    .local v0, "noticeDetailFeedFragment":Lco/kr/festfive/fragment/NoticeDetailFeedFragment;
    iput-object p1, v0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    .line 111
    iput-boolean p2, v0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->search:Z

    .line 112
    iput-object p0, v0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->context:Landroid/content/Context;

    .line 114
    return-object v0
.end method

.method private reload()V
    .locals 5

    .prologue
    .line 409
    invoke-direct {p0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->getNewsFeedReplyListToServer()V

    .line 411
    iget-object v1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/NoticeListItem;->getReplyCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 412
    .local v0, "count":I
    iget-object v1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/kr/festfive/model/NoticeListItem;->setLikeCount(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v3}, Lco/kr/festfive/model/NoticeListItem;->getReplyCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    return-void
.end method

.method private setNewsFeedDeleteToServer(Ljava/lang/String;)V
    .locals 6
    .param p1, "feedId"    # Ljava/lang/String;

    .prologue
    .line 515
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 517
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, "userId":Ljava/lang/String;
    invoke-interface {v1, v2, p1}, Lco/kr/festfive/service/FestInterface;->setNewsFeedDelete(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 521
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$8;

    invoke-direct {v3, p0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$8;-><init>(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 556
    return-void
.end method

.method private setNewsFeedLikeAddToServer(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 477
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 479
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, "userId":Ljava/lang/String;
    invoke-interface {v1, v2, p1}, Lco/kr/festfive/service/FestInterface;->setNewsFeedLikeAdd(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 483
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$7;

    invoke-direct {v3, p0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$7;-><init>(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 512
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f08014e

    if-ne v3, v4, :cond_0

    .line 427
    iget-object v3, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 429
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0a0054

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->popupView:Landroid/view/View;

    .line 431
    iget-object v3, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->popupView:Landroid/view/View;

    const v4, 0x7f08014f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 432
    .local v2, "modifyButtonText":Landroid/widget/TextView;
    new-instance v3, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$5;

    invoke-direct {v3, p0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$5;-><init>(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v3, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->popupView:Landroid/view/View;

    const v4, 0x7f08006e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 451
    .local v0, "deleteButtonText":Landroid/widget/TextView;
    new-instance v3, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$6;

    invoke-direct {v3, p0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$6;-><init>(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->popupView:Landroid/view/View;

    invoke-direct {v3, v4, v5, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 460
    iget-object v3, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 462
    .end local v0    # "deleteButtonText":Landroid/widget/TextView;
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v2    # "modifyButtonText":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080022

    if-ne v3, v4, :cond_2

    .line 463
    invoke-virtual {p0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 474
    :cond_1
    :goto_0
    return-void

    .line 464
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0801d6

    if-ne v3, v4, :cond_4

    .line 465
    iget-object v3, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyEdittext:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 466
    invoke-virtual {p0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "\uae00\uc744 \uc785\ub825 \ud574\uc8fc\uc138\uc694."

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 468
    :cond_3
    invoke-direct {p0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->getNewsFeedReplyAddToServer()V

    goto :goto_0

    .line 470
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f08011e

    if-ne v3, v4, :cond_1

    .line 471
    invoke-virtual {p0, p0, v6}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 472
    iget-object v3, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v3}, Lco/kr/festfive/model/NoticeListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->setNewsFeedLikeAddToServer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 121
    const v5, 0x7f0a005a

    invoke-virtual {p1, v5, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    .line 129
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f080022

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->backButtonLinear:Landroid/widget/LinearLayout;

    .line 130
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->backButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f080199

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->profileImage:Landroid/widget/ImageView;

    .line 133
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NoticeListItem;->getUserProfileThumbUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->profileImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 135
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f080158

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->nameText:Landroid/widget/TextView;

    .line 137
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f08014e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->modifyButtonLinear:Landroid/widget/LinearLayout;

    .line 138
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f080176

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->officeNameText:Landroid/widget/TextView;

    .line 139
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f080050

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->companyText:Landroid/widget/TextView;

    .line 140
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f080069

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->dateText:Landroid/widget/TextView;

    .line 141
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f08005e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentText:Landroid/widget/TextView;

    .line 142
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentText:Landroid/widget/TextView;

    new-instance v6, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$1;

    invoke-direct {v6, p0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$1;-><init>(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 167
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f08011f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->likeText:Landroid/widget/TextView;

    .line 168
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0801b0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyText:Landroid/widget/TextView;

    .line 169
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f08011e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->likeButtonText:Landroid/widget/TextView;

    .line 170
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->likeButtonText:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0801a9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyButtonText:Landroid/widget/TextView;

    .line 174
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v5, :cond_0

    .line 175
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v5

    invoke-virtual {v5}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v5

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 177
    :cond_0
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v6, "user_id"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "userId":Ljava/lang/String;
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/NoticeListItem;->getUserId()Ljava/lang/String;

    move-result-object v5

    if-eq v5, v4, :cond_1

    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/NoticeListItem;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 180
    :cond_1
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->modifyButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->modifyButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :goto_0
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->nameText:Landroid/widget/TextView;

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NoticeListItem;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->officeNameText:Landroid/widget/TextView;

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NoticeListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->companyText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v7}, Lco/kr/festfive/model/NoticeListItem;->getUserPosition()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v7}, Lco/kr/festfive/model/NoticeListItem;->getUserCompany()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/NoticeListItem;->getCreateDate()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "date":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 192
    .local v2, "format":Ljava/text/SimpleDateFormat;
    const/4 v3, 0x0

    .line 194
    .local v3, "newDate":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 199
    :goto_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    const-string v5, "yyyy-MM-dd"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 200
    .restart local v2    # "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->dateText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentText:Landroid/widget/TextView;

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NoticeListItem;->getContents()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->likeText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e005d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v7}, Lco/kr/festfive/model/NoticeListItem;->getLikeCount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e00be

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v7}, Lco/kr/festfive/model/NoticeListItem;->getReplyCount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f080056

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage1:Landroid/widget/ImageView;

    .line 214
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f080057

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage2:Landroid/widget/ImageView;

    .line 215
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f080058

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage3:Landroid/widget/ImageView;

    .line 216
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f080059

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage4:Landroid/widget/ImageView;

    .line 217
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f08005a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage5:Landroid/widget/ImageView;

    .line 219
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/NoticeListItem;->getImage1Url()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_2

    const-string v5, ""

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NoticeListItem;->getImage1Url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 220
    :cond_2
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage1:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    :goto_2
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/NoticeListItem;->getImage2Url()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_3

    const-string v5, ""

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NoticeListItem;->getImage2Url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 227
    :cond_3
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage2:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    :goto_3
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/NoticeListItem;->getImage3Url()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_4

    const-string v5, ""

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NoticeListItem;->getImage3Url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 234
    :cond_4
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage3:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    :goto_4
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/NoticeListItem;->getImage4Url()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_5

    const-string v5, ""

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NoticeListItem;->getImage4Url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 241
    :cond_5
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage4:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    :goto_5
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/NoticeListItem;->getImage5Url()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_6

    const-string v5, ""

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NoticeListItem;->getImage5Url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 248
    :cond_6
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage5:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    :goto_6
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0801ad

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyLinear:Landroid/widget/LinearLayout;

    .line 256
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f080251

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->writeReplyLinear:Landroid/widget/LinearLayout;

    .line 257
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->writeReplyLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 259
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0801ac

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyEdittext:Landroid/widget/EditText;

    .line 260
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->replyEdittext:Landroid/widget/EditText;

    new-instance v6, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$2;

    invoke-direct {v6, p0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$2;-><init>(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 276
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0801d6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->sendButtonText:Landroid/widget/TextView;

    .line 277
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->sendButtonText:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    invoke-direct {p0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->getNewsFeedReplyListToServer()V

    .line 289
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->rootView:Landroid/view/View;

    return-object v5

    .line 183
    .end local v0    # "date":Ljava/lang/String;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    .end local v3    # "newDate":Ljava/util/Date;
    :cond_7
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->modifyButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 195
    .restart local v0    # "date":Ljava/lang/String;
    .restart local v2    # "format":Ljava/text/SimpleDateFormat;
    .restart local v3    # "newDate":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_1

    .line 222
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_8
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage1:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NoticeListItem;->getImage1Url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage1:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_2

    .line 229
    :cond_9
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage2:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NoticeListItem;->getImage2Url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage2:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_3

    .line 236
    :cond_a
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage3:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NoticeListItem;->getImage3Url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage3:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_4

    .line 243
    :cond_b
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage4:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NoticeListItem;->getImage4Url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage4:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_5

    .line 250
    :cond_c
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage5:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NoticeListItem;->getImage5Url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->contentImage5:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_6
.end method

.method public onSuccess(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 561
    iget-object v1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/NoticeListItem;->getLikeCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 562
    .local v0, "count":I
    iget-object v1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/kr/festfive/model/NoticeListItem;->setLikeCount(Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->likeText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->noticeListItem:Lco/kr/festfive/model/NoticeListItem;

    invoke-virtual {v3}, Lco/kr/festfive/model/NoticeListItem;->getLikeCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    return-void
.end method
