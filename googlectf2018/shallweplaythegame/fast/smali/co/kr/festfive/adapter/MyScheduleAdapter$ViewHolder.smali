.class Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MyScheduleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/adapter/MyScheduleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private contentLinear:Landroid/widget/LinearLayout;

.field private countText:Landroid/widget/TextView;

.field private dateText:Landroid/widget/TextView;

.field private delete:Landroid/widget/ImageButton;

.field private detailAddressText:Landroid/widget/TextView;

.field private detailDateText:Landroid/widget/TextView;

.field final synthetic this$0:Lco/kr/festfive/adapter/MyScheduleAdapter;

.field private titleText:Landroid/widget/TextView;

.field private typeLinear:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lco/kr/festfive/adapter/MyScheduleAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/MyScheduleAdapter;

    .prologue
    .line 237
    iput-object p1, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;->this$0:Lco/kr/festfive/adapter/MyScheduleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;

    .prologue
    .line 227
    iget-object v0, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;->delete:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$002(Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageButton;

    .prologue
    .line 227
    iput-object p1, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;->delete:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$100(Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;

    .prologue
    .line 227
    iget-object v0, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 227
    iput-object p1, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;

    .prologue
    .line 227
    iget-object v0, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;->countText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 227
    iput-object p1, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;->countText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;

    .prologue
    .line 227
    iget-object v0, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;->contentLinear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$302(Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 227
    iput-object p1, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;->contentLinear:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$400(Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;

    .prologue
    .line 227
    iget-object v0, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;->typeLinear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$402(Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 227
    iput-object p1, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;->typeLinear:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$500(Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;

    .prologue
    .line 227
    iget-object v0, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;->dateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 227
    iput-object p1, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;->dateText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;

    .prologue
    .line 227
    iget-object v0, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;->detailDateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 227
    iput-object p1, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;->detailDateText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;

    .prologue
    .line 227
    iget-object v0, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;->detailAddressText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 227
    iput-object p1, p0, Lco/kr/festfive/adapter/MyScheduleAdapter$ViewHolder;->detailAddressText:Landroid/widget/TextView;

    return-object p1
.end method
