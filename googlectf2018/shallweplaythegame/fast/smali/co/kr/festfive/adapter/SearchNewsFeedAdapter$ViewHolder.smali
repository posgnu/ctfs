.class Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SearchNewsFeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/adapter/SearchNewsFeedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private badgeImage:Landroid/widget/ImageView;

.field private companyText:Landroid/widget/TextView;

.field private contentText:Landroid/widget/TextView;

.field private dateText:Landroid/widget/TextView;

.field private likeButtonImage:Landroid/widget/ImageView;

.field private likeButtonText:Landroid/widget/LinearLayout;

.field private likeButtonText_text:Landroid/widget/TextView;

.field private likeText:Landroid/widget/TextView;

.field private mIb:[Landroid/widget/ImageView;

.field private modifyButton:Landroid/widget/ImageView;

.field private nameText:Landroid/widget/TextView;

.field private newsfeedBottomButton:Landroid/widget/LinearLayout;

.field private officeNameText:Landroid/widget/TextView;

.field private profileImage:Landroid/widget/ImageView;

.field private replyButtonText:Landroid/widget/LinearLayout;

.field private replyText:Landroid/widget/TextView;

.field private tagLayout:Landroid/widget/LinearLayout;

.field private tagText:[Landroid/widget/TextView;

.field final synthetic this$0:Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

.field private urlLayout:Landroid/widget/LinearLayout;

.field private urlText:Landroid/widget/TextView;

.field private urlTitleText:Landroid/widget/TextView;

.field private vp:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Lco/kr/festfive/adapter/SearchNewsFeedAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    .prologue
    .line 621
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->this$0:Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->profileImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->profileImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->nameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->likeButtonText_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1002(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->likeButtonText_text:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$102(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->nameText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1100(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->replyButtonText:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1102(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->replyButtonText:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$1200(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->likeButtonImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1202(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->likeButtonImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1300(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->newsfeedBottomButton:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1302(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->newsfeedBottomButton:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$1400(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->vp:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1402(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ViewPager;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->vp:Landroid/support/v4/view/ViewPager;

    return-object p1
.end method

.method static synthetic access$1500(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->badgeImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1502(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->badgeImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1600(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->mIb:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1602(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;[Landroid/widget/ImageView;)[Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # [Landroid/widget/ImageView;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->mIb:[Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1800(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->tagLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1802(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->tagLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$1900(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)[Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->tagText:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1902(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;[Landroid/widget/TextView;)[Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # [Landroid/widget/TextView;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->tagText:[Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->modifyButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->urlLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2002(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->urlLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$202(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->modifyButton:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2100(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->urlText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2102(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->urlText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2200(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->urlTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2202(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->urlTitleText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->officeNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->officeNameText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->companyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->companyText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->dateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->dateText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->likeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->likeText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$800(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->replyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->replyText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$900(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;

    .prologue
    .line 596
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->likeButtonText:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$902(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$ViewHolder;->likeButtonText:Landroid/widget/LinearLayout;

    return-object p1
.end method
