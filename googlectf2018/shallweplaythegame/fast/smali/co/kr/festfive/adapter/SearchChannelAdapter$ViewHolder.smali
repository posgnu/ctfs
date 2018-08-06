.class Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SearchChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/adapter/SearchChannelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private badgeImage:Landroid/widget/ImageView;

.field private companyText:Landroid/widget/TextView;

.field private contentRelative:Landroid/widget/RelativeLayout;

.field private nameText:Landroid/widget/TextView;

.field private officeNameText:Landroid/widget/TextView;

.field private profileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field final synthetic this$0:Lco/kr/festfive/adapter/SearchChannelAdapter;


# direct methods
.method public constructor <init>(Lco/kr/festfive/adapter/SearchChannelAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/SearchChannelAdapter;

    .prologue
    .line 130
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->this$0:Lco/kr/festfive/adapter/SearchChannelAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    .prologue
    .line 120
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->contentRelative:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$002(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 120
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->contentRelative:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$100(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Lcom/mikhaellopez/circularimageview/CircularImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    .prologue
    .line 120
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->profileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    return-object v0
.end method

.method static synthetic access$102(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;Lcom/mikhaellopez/circularimageview/CircularImageView;)Lcom/mikhaellopez/circularimageview/CircularImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;
    .param p1, "x1"    # Lcom/mikhaellopez/circularimageview/CircularImageView;

    .prologue
    .line 120
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->profileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    return-object p1
.end method

.method static synthetic access$200(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    .prologue
    .line 120
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->nameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 120
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->nameText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    .prologue
    .line 120
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->officeNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 120
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->officeNameText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    .prologue
    .line 120
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->companyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 120
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->companyText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    .prologue
    .line 120
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->badgeImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$502(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 120
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->badgeImage:Landroid/widget/ImageView;

    return-object p1
.end method
