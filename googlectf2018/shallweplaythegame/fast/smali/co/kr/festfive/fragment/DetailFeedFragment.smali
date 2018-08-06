.class public Lco/kr/festfive/fragment/DetailFeedFragment;
.super Landroid/support/v4/app/Fragment;
.source "DetailFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lco/kr/festfive/listener/DialogListener;


# instance fields
.field private MAXTAG:I

.field private backButtonLinear:Landroid/widget/LinearLayout;

.field private badgeImage:Landroid/widget/ImageView;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private companyText:Landroid/widget/TextView;

.field private containerll:Landroid/widget/LinearLayout;

.field private contentImage1:Landroid/widget/ImageView;

.field private contentImage2:Landroid/widget/ImageView;

.field private contentImage3:Landroid/widget/ImageView;

.field private contentImage4:Landroid/widget/ImageView;

.field private contentImage5:Landroid/widget/ImageView;

.field private contentText:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private dateText:Landroid/widget/TextView;

.field private deleteTextImage:Landroid/widget/LinearLayout;

.field private feedId:Ljava/lang/String;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private horizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private likeButtonText:Landroid/widget/TextView;

.field private likeText:Landroid/widget/TextView;

.field private mIDidLike:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutMember:Landroid/widget/LinearLayout;

.field private modifyButtonText:Landroid/widget/TextView;

.field private moreButtonText:Landroid/widget/TextView;

.field private nameText:Landroid/widget/TextView;

.field private newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

.field news_feed_id:Ljava/lang/String;

.field private officeNameText:Landroid/widget/TextView;

.field private popupView:Landroid/view/View;

.field private profileImage:Landroid/widget/ImageView;

.field private replyContentText:Landroid/widget/TextView;

.field private replyDateText:Landroid/widget/TextView;

.field private replyEdittext:Landroid/widget/EditText;

.field private replyLinear:Landroid/widget/LinearLayout;

.field private replyNameText:Landroid/widget/TextView;

.field private replyProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private replyText:Landroid/widget/TextView;

.field private replyUserId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rootView:Landroid/view/View;

.field private search:Z

.field private sendButtonText:Landroid/widget/TextView;

.field private tagLayout:Landroid/widget/LinearLayout;

.field private tagText:[Landroid/widget/TextView;

.field private urlLayout:Landroid/widget/LinearLayout;

.field private urlText:Landroid/widget/TextView;

.field private urlTitleText:Landroid/widget/TextView;

.field private writeReplyLinear:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->MAXTAG:I

    .line 82
    iput-boolean v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->search:Z

    .line 86
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->news_feed_id:Ljava/lang/String;

    .line 126
    iput-boolean v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->mIDidLike:Z

    .line 593
    new-instance v0, Lco/kr/festfive/fragment/DetailFeedFragment$6;

    invoke-direct {v0, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$6;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->clickListener:Landroid/view/View$OnClickListener;

    .line 911
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyUserId:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyEdittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->officeNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->companyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->dateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->contentText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->likeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->contentImage1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1602(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 66
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->contentImage1:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1700(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->contentImage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1802(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 66
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->contentImage2:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1900(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->contentImage3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1902(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 66
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->contentImage3:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/DetailFeedFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getNewsFeedReplyAddToServer()V

    return-void
.end method

.method static synthetic access$2000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->contentImage4:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2002(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 66
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->contentImage4:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2100(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->contentImage5:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2102(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 66
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->contentImage5:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2200(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->containerll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->mLayoutMember:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2400(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$2500(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->tagLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lco/kr/festfive/fragment/DetailFeedFragment;)[Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->tagText:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->urlLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->urlText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->urlTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->deleteTextImage:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->badgeImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3100(Lco/kr/festfive/fragment/DetailFeedFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getNewsFeedReplyListToServer()V

    return-void
.end method

.method static synthetic access$3200(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyLinear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lco/kr/festfive/fragment/DetailFeedFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyUserId:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3400(Lco/kr/festfive/fragment/DetailFeedFragment;)Lcom/mikhaellopez/circularimageview/CircularImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    return-object v0
.end method

.method static synthetic access$3402(Lco/kr/festfive/fragment/DetailFeedFragment;Lcom/mikhaellopez/circularimageview/CircularImageView;)Lcom/mikhaellopez/circularimageview/CircularImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;
    .param p1, "x1"    # Lcom/mikhaellopez/circularimageview/CircularImageView;

    .prologue
    .line 66
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    return-object p1
.end method

.method static synthetic access$3500(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3502(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 66
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyNameText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3600(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyContentText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3602(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 66
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyContentText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3700(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyDateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3702(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 66
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyDateText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3800(Lco/kr/festfive/fragment/DetailFeedFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->reload()V

    return-void
.end method

.method static synthetic access$3900(Lco/kr/festfive/fragment/DetailFeedFragment;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lco/kr/festfive/fragment/DetailFeedFragment;->setNewsFeedSignToServer(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->sendButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4000(Lco/kr/festfive/fragment/DetailFeedFragment;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lco/kr/festfive/fragment/DetailFeedFragment;->setNewsFeedFix(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4100(Lco/kr/festfive/fragment/DetailFeedFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lco/kr/festfive/fragment/DetailFeedFragment;->setNewsFeedDeleteToServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lco/kr/festfive/fragment/DetailFeedFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getLikeToServer()V

    return-void
.end method

.method static synthetic access$4300(Lco/kr/festfive/fragment/DetailFeedFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getNewsFeedDetailToServer()V

    return-void
.end method

.method static synthetic access$4400(Lco/kr/festfive/fragment/DetailFeedFragment;)Z
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-boolean v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->mIDidLike:Z

    return v0
.end method

.method static synthetic access$4402(Lco/kr/festfive/fragment/DetailFeedFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->mIDidLike:Z

    return p1
.end method

.method static synthetic access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    return-object v0
.end method

.method static synthetic access$502(Lco/kr/festfive/fragment/DetailFeedFragment;Lco/kr/festfive/model/NewFeedListItem;)Lco/kr/festfive/model/NewFeedListItem;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;
    .param p1, "x1"    # Lco/kr/festfive/model/NewFeedListItem;

    .prologue
    .line 66
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    return-object p1
.end method

.method static synthetic access$600(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object v0
.end method

.method static synthetic access$602(Lco/kr/festfive/fragment/DetailFeedFragment;Lco/kr/festfive/manager/FestPreferenceManager;)Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;
    .param p1, "x1"    # Lco/kr/festfive/manager/FestPreferenceManager;

    .prologue
    .line 66
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object p1
.end method

.method static synthetic access$700(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->profileImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->modifyButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->nameText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getLikeToServer()V
    .locals 6

    .prologue
    .line 1454
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 1456
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v3, :cond_0

    .line 1457
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 1460
    :cond_0
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1461
    .local v2, "userId":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->news_feed_id:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lco/kr/festfive/service/FestInterface;->getNewsFeedDetail(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 1463
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/fragment/DetailFeedFragment$23;

    invoke-direct {v3, p0, v2}, Lco/kr/festfive/fragment/DetailFeedFragment$23;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1548
    return-void
.end method

.method private getNewsFeedDetailToServer()V
    .locals 6

    .prologue
    .line 678
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 680
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v3, :cond_0

    .line 681
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 684
    :cond_0
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 685
    .local v2, "userId":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->news_feed_id:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lco/kr/festfive/service/FestInterface;->getNewsFeedDetail(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 687
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/fragment/DetailFeedFragment$9;

    invoke-direct {v3, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$9;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 909
    return-void
.end method

.method private getNewsFeedReplyAddToServer()V
    .locals 7

    .prologue
    .line 1057
    invoke-virtual {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, ""

    const-string v6, "loading..."

    invoke-static {v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 1058
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 1060
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v4, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v4, :cond_0

    .line 1061
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v4

    invoke-virtual {v4}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 1063
    :cond_0
    iget-object v4, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1065
    .local v3, "userId":Ljava/lang/String;
    iget-object v4, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v4}, Lco/kr/festfive/model/NewFeedListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyEdittext:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lco/kr/festfive/service/FestInterface;->getNewsFeedReplyAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 1067
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v4, Lco/kr/festfive/fragment/DetailFeedFragment$11;

    invoke-direct {v4, p0, v1}, Lco/kr/festfive/fragment/DetailFeedFragment$11;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1099
    return-void
.end method

.method private getNewsFeedReplyListToServer()V
    .locals 8

    .prologue
    .line 914
    invoke-virtual {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyEdittext:Landroid/widget/EditText;

    invoke-static {v5, v6}, Lco/kr/festfive/utils/Utils;->HideSoftKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 916
    invoke-virtual {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, ""

    const-string v7, "loading..."

    invoke-static {v5, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 917
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v3

    .line 919
    .local v3, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v5, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v5, :cond_0

    .line 920
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v5

    invoke-virtual {v5}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v5

    iput-object v5, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 922
    :cond_0
    iget-object v5, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v6, "user_id"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 924
    .local v4, "userId":Ljava/lang/String;
    iget-object v5, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/NewFeedListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v2

    .line 925
    .local v2, "newsId":Ljava/lang/String;
    invoke-interface {v3, v4, v2}, Lco/kr/festfive/service/FestInterface;->getNewsFeedReplyList(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 927
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v5, Lco/kr/festfive/fragment/DetailFeedFragment$10;

    invoke-direct {v5, p0, v1}, Lco/kr/festfive/fragment/DetailFeedFragment$10;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v5}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1054
    return-void
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "news_feed_id"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-direct {v0}, Lco/kr/festfive/fragment/DetailFeedFragment;-><init>()V

    .line 151
    .local v0, "detailFeedFragment":Lco/kr/festfive/fragment/DetailFeedFragment;
    iput-object p1, v0, Lco/kr/festfive/fragment/DetailFeedFragment;->news_feed_id:Ljava/lang/String;

    .line 152
    iput-object p0, v0, Lco/kr/festfive/fragment/DetailFeedFragment;->context:Landroid/content/Context;

    .line 154
    return-object v0
.end method

.method private reload()V
    .locals 5

    .prologue
    .line 1102
    invoke-direct {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getNewsFeedReplyListToServer()V

    .line 1104
    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->getReplyCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1105
    .local v0, "count":I
    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/kr/festfive/model/NewFeedListItem;->setLikeCount(Ljava/lang/String;)V

    .line 1106
    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->context:Landroid/content/Context;

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

    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getReplyCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1107
    return-void
.end method

.method private setNewsFeedDeleteToServer(Ljava/lang/String;)V
    .locals 6
    .param p1, "feedId"    # Ljava/lang/String;

    .prologue
    .line 1405
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 1407
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1409
    .local v2, "userId":Ljava/lang/String;
    invoke-interface {v1, v2, p1}, Lco/kr/festfive/service/FestInterface;->setNewsFeedDelete(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 1411
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/fragment/DetailFeedFragment$22;

    invoke-direct {v3, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$22;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1443
    return-void
.end method

.method private setNewsFeedFix(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "feedId"    # Ljava/lang/String;
    .param p2, "fix"    # Z

    .prologue
    .line 1369
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 1370
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1371
    .local v2, "userId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1373
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    if-eqz p2, :cond_0

    .line 1374
    invoke-interface {v1, v2, p1}, Lco/kr/festfive/service/FestInterface;->newsFeedFix(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 1379
    :goto_0
    new-instance v3, Lco/kr/festfive/fragment/DetailFeedFragment$21;

    invoke-direct {v3, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$21;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1402
    return-void

    .line 1376
    :cond_0
    invoke-interface {v1, v2, p1}, Lco/kr/festfive/service/FestInterface;->newsFeedUnfix(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    goto :goto_0
.end method

.method private setNewsFeedLikeAddToServer(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1275
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 1277
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1278
    .local v2, "userId":Ljava/lang/String;
    invoke-interface {v1, v2, p1}, Lco/kr/festfive/service/FestInterface;->setNewsFeedLikeAdd(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 1280
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/fragment/DetailFeedFragment$18;

    invoke-direct {v3, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$18;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1302
    return-void
.end method

.method private setNewsFeedLikeDeleteToServer(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1305
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 1307
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1308
    .local v2, "userId":Ljava/lang/String;
    invoke-interface {v1, v2, p1}, Lco/kr/festfive/service/FestInterface;->setNewsFeedLikeDelete(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 1310
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/fragment/DetailFeedFragment$19;

    invoke-direct {v3, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$19;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1332
    return-void
.end method

.method private setNewsFeedSignToServer(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "feedId"    # Ljava/lang/String;
    .param p2, "sign"    # Z

    .prologue
    .line 1335
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 1336
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1337
    .local v2, "userId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1339
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    if-eqz p2, :cond_0

    .line 1340
    invoke-interface {v1, v2, p1}, Lco/kr/festfive/service/FestInterface;->setNewsFeedSign(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 1345
    :goto_0
    new-instance v3, Lco/kr/festfive/fragment/DetailFeedFragment$20;

    invoke-direct {v3, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$20;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1366
    return-void

    .line 1342
    :cond_0
    invoke-interface {v1, v2, p1}, Lco/kr/festfive/service/FestInterface;->setNewsFeedSignCancel(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 653
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 655
    iget-boolean v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->search:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 656
    new-instance v0, Lco/kr/festfive/fragment/DetailFeedFragment$8;

    invoke-direct {v0, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$8;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    .line 662
    .local v0, "myTask":Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 663
    .local v1, "timer":Ljava/util/Timer;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 665
    .end local v0    # "myTask":Ljava/util/TimerTask;
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v0, 0x3e8

    .line 669
    if-ne p1, v0, :cond_0

    .line 670
    if-ne p2, v0, :cond_0

    .line 671
    const-string v0, "DetailFeedFragment!!!!"

    invoke-static {v0}, Lco/kr/festfive/utils/Utils;->Log(Ljava/lang/String;)V

    .line 672
    invoke-direct {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getNewsFeedDetailToServer()V

    .line 675
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f080199

    if-eq v6, v7, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f080158

    if-ne v6, v7, :cond_1

    .line 1121
    :cond_0
    iget-object v6, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v7, "user_id"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1122
    .local v4, "myUserId":Ljava/lang/String;
    iget-object v6, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NewFeedListItem;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1123
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lco/kr/festfive/fragment/MyDetailUserActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1124
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->startActivity(Landroid/content/Intent;)V

    .line 1135
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "myUserId":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f08014c

    if-ne v6, v7, :cond_3

    .line 1136
    iget-object v6, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v7, "user_level"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1138
    .local v5, "userLevel":Ljava/lang/String;
    const-string v6, ""

    invoke-static {v6}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->newInstance(Ljava/lang/String;)Lco/kr/festfive/Dialog/ListSelectDialogFragment;

    move-result-object v1

    .line 1140
    .local v1, "dialog":Lco/kr/festfive/Dialog/ListSelectDialogFragment;
    const-string v6, "M"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1141
    iget-object v6, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NewFeedListItem;->isSigned()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1142
    new-instance v6, Lco/kr/festfive/Dialog/ListSelectDialogItem;

    const-string v7, "\uc2b9\uc778"

    new-instance v8, Lco/kr/festfive/fragment/DetailFeedFragment$12;

    invoke-direct {v8, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$12;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    invoke-direct {v6, v7, v8}, Lco/kr/festfive/Dialog/ListSelectDialogItem;-><init>(Ljava/lang/String;Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;)V

    invoke-virtual {v1, v6}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->addItem(Lco/kr/festfive/Dialog/ListSelectDialogItem;)V

    .line 1157
    :goto_1
    iget-object v6, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NewFeedListItem;->isFixed()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1158
    new-instance v6, Lco/kr/festfive/Dialog/ListSelectDialogItem;

    const-string v7, "\ucd5c\uc0c1\ub2e8 \uace0\uc815 \ud574\uc81c"

    new-instance v8, Lco/kr/festfive/fragment/DetailFeedFragment$14;

    invoke-direct {v8, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$14;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    invoke-direct {v6, v7, v8}, Lco/kr/festfive/Dialog/ListSelectDialogItem;-><init>(Ljava/lang/String;Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;)V

    invoke-virtual {v1, v6}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->addItem(Lco/kr/festfive/Dialog/ListSelectDialogItem;)V

    .line 1175
    :cond_2
    :goto_2
    new-instance v6, Lco/kr/festfive/Dialog/ListSelectDialogItem;

    const-string v7, "\uc218\uc815"

    new-instance v8, Lco/kr/festfive/fragment/DetailFeedFragment$16;

    invoke-direct {v8, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$16;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    invoke-direct {v6, v7, v8}, Lco/kr/festfive/Dialog/ListSelectDialogItem;-><init>(Ljava/lang/String;Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;)V

    invoke-virtual {v1, v6}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->addItem(Lco/kr/festfive/Dialog/ListSelectDialogItem;)V

    .line 1194
    new-instance v6, Lco/kr/festfive/Dialog/ListSelectDialogItem;

    const-string v7, "\uc0ad\uc81c"

    new-instance v8, Lco/kr/festfive/fragment/DetailFeedFragment$17;

    invoke-direct {v8, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$17;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    invoke-direct {v6, v7, v8}, Lco/kr/festfive/Dialog/ListSelectDialogItem;-><init>(Ljava/lang/String;Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;)V

    invoke-virtual {v1, v6}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->addItem(Lco/kr/festfive/Dialog/ListSelectDialogItem;)V

    .line 1201
    invoke-virtual {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "feedPostProcessDialog"

    invoke-virtual {v1, v6, v7}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1242
    .end local v1    # "dialog":Lco/kr/festfive/Dialog/ListSelectDialogFragment;
    .end local v5    # "userLevel":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f080022

    if-ne v6, v7, :cond_8

    .line 1243
    invoke-virtual {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 1272
    :cond_4
    :goto_3
    return-void

    .line 1128
    .restart local v4    # "myUserId":Ljava/lang/String;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lco/kr/festfive/activity/UserDetailActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1129
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v6, "targetUserId"

    iget-object v7, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v7}, Lco/kr/festfive/model/NewFeedListItem;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1130
    invoke-virtual {p0, v3}, Lco/kr/festfive/fragment/DetailFeedFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1149
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "myUserId":Ljava/lang/String;
    .restart local v1    # "dialog":Lco/kr/festfive/Dialog/ListSelectDialogFragment;
    .restart local v5    # "userLevel":Ljava/lang/String;
    :cond_6
    new-instance v6, Lco/kr/festfive/Dialog/ListSelectDialogItem;

    const-string v7, "\uc2b9\uc778\ucde8\uc18c"

    new-instance v8, Lco/kr/festfive/fragment/DetailFeedFragment$13;

    invoke-direct {v8, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$13;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    invoke-direct {v6, v7, v8}, Lco/kr/festfive/Dialog/ListSelectDialogItem;-><init>(Ljava/lang/String;Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;)V

    invoke-virtual {v1, v6}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->addItem(Lco/kr/festfive/Dialog/ListSelectDialogItem;)V

    goto :goto_1

    .line 1166
    :cond_7
    new-instance v6, Lco/kr/festfive/Dialog/ListSelectDialogItem;

    const-string v7, "\ucd5c\uc0c1\ub2e8 \uace0\uc815"

    new-instance v8, Lco/kr/festfive/fragment/DetailFeedFragment$15;

    invoke-direct {v8, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$15;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    invoke-direct {v6, v7, v8}, Lco/kr/festfive/Dialog/ListSelectDialogItem;-><init>(Ljava/lang/String;Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;)V

    invoke-virtual {v1, v6}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->addItem(Lco/kr/festfive/Dialog/ListSelectDialogItem;)V

    goto :goto_2

    .line 1244
    .end local v1    # "dialog":Lco/kr/festfive/Dialog/ListSelectDialogFragment;
    .end local v5    # "userLevel":Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0801d6

    if-ne v6, v7, :cond_b

    move-object v0, p1

    .line 1245
    check-cast v0, Landroid/widget/Button;

    .line 1246
    .local v0, "bt":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "\uc4f0\uae30"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1247
    iget-object v6, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyEdittext:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 1248
    iget-object v6, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->context:Landroid/content/Context;

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1250
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_3

    .line 1258
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_9
    iget-object v6, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyEdittext:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_a

    .line 1259
    invoke-virtual {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "\uae00\uc744 \uc785\ub825 \ud574\uc8fc\uc138\uc694."

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 1261
    :cond_a
    invoke-direct {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getNewsFeedReplyAddToServer()V

    goto/16 :goto_3

    .line 1265
    .end local v0    # "bt":Landroid/widget/Button;
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f08012b

    if-eq v6, v7, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f080217

    if-ne v6, v7, :cond_4

    .line 1266
    :cond_c
    iget-boolean v6, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->mIDidLike:Z

    if-eqz v6, :cond_d

    .line 1267
    iget-object v6, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NewFeedListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lco/kr/festfive/fragment/DetailFeedFragment;->setNewsFeedLikeDeleteToServer(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1269
    :cond_d
    iget-object v6, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/NewFeedListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lco/kr/festfive/fragment/DetailFeedFragment;->setNewsFeedLikeAddToServer(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const v9, 0x7f080217

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 160
    const v3, 0x7f0a005a

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    .line 162
    invoke-virtual {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 164
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f080143

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 165
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f080144

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->containerll:Landroid/widget/LinearLayout;

    .line 166
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f08012e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->mLayoutMember:Landroid/widget/LinearLayout;

    .line 168
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f08012a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->tagLayout:Landroid/widget/LinearLayout;

    .line 169
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/widget/TextView;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->tagText:[Landroid/widget/TextView;

    .line 170
    iget-object v4, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->tagText:[Landroid/widget/TextView;

    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v5, 0x7f080219

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v7

    .line 171
    iget-object v4, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->tagText:[Landroid/widget/TextView;

    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v5, 0x7f08021a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v8

    .line 172
    iget-object v4, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->tagText:[Landroid/widget/TextView;

    const/4 v5, 0x2

    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f08021b

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v5

    .line 173
    iget-object v4, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->tagText:[Landroid/widget/TextView;

    const/4 v5, 0x3

    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f08021c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v5

    .line 174
    iget-object v4, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->tagText:[Landroid/widget/TextView;

    const/4 v5, 0x4

    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v6, 0x7f08021d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v5

    .line 176
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f080134

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->urlLayout:Landroid/widget/LinearLayout;

    .line 177
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f08021e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->urlText:Landroid/widget/TextView;

    .line 178
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f08021f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->urlTitleText:Landroid/widget/TextView;

    .line 180
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f08012b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f080022

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->backButtonLinear:Landroid/widget/LinearLayout;

    .line 453
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->backButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f080199

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->profileImage:Landroid/widget/ImageView;

    .line 456
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->profileImage:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f080158

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->nameText:Landroid/widget/TextView;

    .line 460
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->nameText:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f08014c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->modifyButtonText:Landroid/widget/TextView;

    .line 464
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f080176

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->officeNameText:Landroid/widget/TextView;

    .line 465
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f080050

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->companyText:Landroid/widget/TextView;

    .line 466
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f080069

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->dateText:Landroid/widget/TextView;

    .line 467
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f08005e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->contentText:Landroid/widget/TextView;

    .line 468
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->contentText:Landroid/widget/TextView;

    new-instance v4, Lco/kr/festfive/fragment/DetailFeedFragment$1;

    invoke-direct {v4, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$1;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 493
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->likeText:Landroid/widget/TextView;

    .line 494
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f080218

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyText:Landroid/widget/TextView;

    .line 495
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->likeButtonText:Landroid/widget/TextView;

    .line 496
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->likeButtonText:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->modifyButtonText:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v3, :cond_0

    .line 502
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 504
    :cond_0
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, "userId":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f080100

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->badgeImage:Landroid/widget/ImageView;

    .line 507
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->badgeImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f0801ad

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyLinear:Landroid/widget/LinearLayout;

    .line 520
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f080251

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->writeReplyLinear:Landroid/widget/LinearLayout;

    .line 521
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->writeReplyLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 523
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f0801ac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyEdittext:Landroid/widget/EditText;

    .line 524
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f08006f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->deleteTextImage:Landroid/widget/LinearLayout;

    .line 525
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyEdittext:Landroid/widget/EditText;

    new-instance v4, Lco/kr/festfive/fragment/DetailFeedFragment$2;

    invoke-direct {v4, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$2;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 540
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->deleteTextImage:Landroid/widget/LinearLayout;

    new-instance v4, Lco/kr/festfive/fragment/DetailFeedFragment$3;

    invoke-direct {v4, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$3;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyEdittext:Landroid/widget/EditText;

    new-instance v4, Lco/kr/festfive/fragment/DetailFeedFragment$4;

    invoke-direct {v4, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$4;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 573
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    const v4, 0x7f0801d6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->sendButtonText:Landroid/widget/TextView;

    .line 574
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->sendButtonText:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    invoke-direct {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getNewsFeedDetailToServer()V

    .line 579
    iget-boolean v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->search:Z

    if-ne v3, v8, :cond_1

    .line 580
    new-instance v0, Lco/kr/festfive/fragment/DetailFeedFragment$5;

    invoke-direct {v0, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$5;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    .line 586
    .local v0, "myTask":Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 587
    .local v1, "timer":Ljava/util/Timer;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v0, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 590
    .end local v0    # "myTask":Ljava/util/TimerTask;
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_1
    iget-object v3, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->rootView:Landroid/view/View;

    return-object v3
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 646
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 647
    invoke-virtual {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 648
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->replyEdittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 649
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 619
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 621
    invoke-virtual {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lco/kr/festfive/utils/KeyboardUtil;->setupUI(Landroid/app/Activity;Landroid/view/View;)V

    .line 623
    iget-boolean v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->search:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 624
    new-instance v0, Lco/kr/festfive/fragment/DetailFeedFragment$7;

    invoke-direct {v0, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$7;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V

    .line 630
    .local v0, "myTask":Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 631
    .local v1, "timer":Ljava/util/Timer;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 642
    .end local v0    # "myTask":Ljava/util/TimerTask;
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_0
    return-void
.end method

.method public onSuccess(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1447
    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->getLikeCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1448
    .local v0, "count":I
    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/kr/festfive/model/NewFeedListItem;->setLikeCount(Ljava/lang/String;)V

    .line 1450
    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->likeText:Landroid/widget/TextView;

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getLikeCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1451
    return-void
.end method
