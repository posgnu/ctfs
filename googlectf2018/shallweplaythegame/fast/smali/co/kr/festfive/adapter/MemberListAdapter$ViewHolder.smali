.class Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MemberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/adapter/MemberListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private badgeImage:Landroid/widget/ImageView;

.field private checkImage:Landroid/widget/ImageView;

.field private companyText:Landroid/widget/TextView;

.field private contentRelative:Landroid/widget/RelativeLayout;

.field private nameText:Landroid/widget/TextView;

.field private officeNameText:Landroid/widget/TextView;

.field private profileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field final synthetic this$0:Lco/kr/festfive/adapter/MemberListAdapter;

.field private titleRelative:Landroid/widget/RelativeLayout;

.field private titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lco/kr/festfive/adapter/MemberListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/MemberListAdapter;

    .prologue
    .line 136
    iput-object p1, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->this$0:Lco/kr/festfive/adapter/MemberListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    .prologue
    .line 124
    iget-object v0, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->titleRelative:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$002(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 124
    iput-object p1, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->titleRelative:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$100(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    .prologue
    .line 124
    iget-object v0, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->contentRelative:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$102(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 124
    iput-object p1, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->contentRelative:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$200(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    .prologue
    .line 124
    iget-object v0, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 124
    iput-object p1, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Lcom/mikhaellopez/circularimageview/CircularImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    .prologue
    .line 124
    iget-object v0, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->profileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    return-object v0
.end method

.method static synthetic access$302(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Lcom/mikhaellopez/circularimageview/CircularImageView;)Lcom/mikhaellopez/circularimageview/CircularImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;
    .param p1, "x1"    # Lcom/mikhaellopez/circularimageview/CircularImageView;

    .prologue
    .line 124
    iput-object p1, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->profileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    return-object p1
.end method

.method static synthetic access$400(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    .prologue
    .line 124
    iget-object v0, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->nameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 124
    iput-object p1, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->nameText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    .prologue
    .line 124
    iget-object v0, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->officeNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 124
    iput-object p1, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->officeNameText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    .prologue
    .line 124
    iget-object v0, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->companyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 124
    iput-object p1, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->companyText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    .prologue
    .line 124
    iget-object v0, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->checkImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$702(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 124
    iput-object p1, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->checkImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$800(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    .prologue
    .line 124
    iget-object v0, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->badgeImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$802(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 124
    iput-object p1, p0, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->badgeImage:Landroid/widget/ImageView;

    return-object p1
.end method
