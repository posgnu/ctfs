.class public Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;
.super Ljava/lang/Object;
.source "PeopleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/fragment/PeopleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupHolder"
.end annotation


# instance fields
.field ceoTextTv:Landroid/widget/TextView;

.field companyNmTv:Landroid/widget/TextView;

.field logoIv:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field modifyButtonLinear:Landroid/widget/LinearLayout;

.field modifyImageView:Landroid/widget/ImageView;

.field roomNmTv:Landroid/widget/TextView;

.field summaryTv:Landroid/widget/TextView;

.field final synthetic this$0:Lco/kr/festfive/fragment/PeopleFragment;


# direct methods
.method public constructor <init>(Lco/kr/festfive/fragment/PeopleFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/PeopleFragment;

    .prologue
    .line 474
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
