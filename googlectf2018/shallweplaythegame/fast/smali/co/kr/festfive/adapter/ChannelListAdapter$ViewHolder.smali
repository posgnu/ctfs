.class Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ChannelListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/adapter/ChannelListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private channelNameText:Landroid/widget/TextView;

.field private lastMessageText:Landroid/widget/TextView;

.field private listLinear:Landroid/widget/LinearLayout;

.field private messageInfo:Landroid/widget/RelativeLayout;

.field private profileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field final synthetic this$0:Lco/kr/festfive/adapter/ChannelListAdapter;

.field private timeText:Landroid/widget/TextView;

.field private txtUnreadCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lco/kr/festfive/adapter/ChannelListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/ChannelListAdapter;

    .prologue
    .line 139
    iput-object p1, p0, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->this$0:Lco/kr/festfive/adapter/ChannelListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method static synthetic access$002(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 130
    iput-object p1, p0, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->listLinear:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$100(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Lcom/mikhaellopez/circularimageview/CircularImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    .prologue
    .line 130
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->profileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    return-object v0
.end method

.method static synthetic access$102(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;Lcom/mikhaellopez/circularimageview/CircularImageView;)Lcom/mikhaellopez/circularimageview/CircularImageView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;
    .param p1, "x1"    # Lcom/mikhaellopez/circularimageview/CircularImageView;

    .prologue
    .line 130
    iput-object p1, p0, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->profileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    return-object p1
.end method

.method static synthetic access$202(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 130
    iput-object p1, p0, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->messageInfo:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$300(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    .prologue
    .line 130
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->channelNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 130
    iput-object p1, p0, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->channelNameText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    .prologue
    .line 130
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->lastMessageText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 130
    iput-object p1, p0, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->lastMessageText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    .prologue
    .line 130
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->timeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 130
    iput-object p1, p0, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->timeText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    .prologue
    .line 130
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->txtUnreadCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 130
    iput-object p1, p0, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->txtUnreadCount:Landroid/widget/TextView;

    return-object p1
.end method
