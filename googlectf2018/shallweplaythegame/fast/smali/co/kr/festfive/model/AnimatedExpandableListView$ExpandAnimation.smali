.class Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;
.super Landroid/view/animation/Animation;
.source "AnimatedExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/model/AnimatedExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpandAnimation"
.end annotation


# instance fields
.field private baseHeight:I

.field private delta:I

.field private groupInfo:Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;IILco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "startHeight"    # I
    .param p3, "endHeight"    # I
    .param p4, "info"    # Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;

    .prologue
    .line 588
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 589
    iput p2, p0, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->baseHeight:I

    .line 590
    sub-int v0, p3, p2

    iput v0, p0, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->delta:I

    .line 591
    iput-object p1, p0, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->view:Landroid/view/View;

    .line 592
    iput-object p4, p0, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->groupInfo:Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;

    .line 594
    iget-object v0, p0, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 595
    iget-object v0, p0, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 596
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;IILco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;Lco/kr/festfive/model/AnimatedExpandableListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;
    .param p5, "x4"    # Lco/kr/festfive/model/AnimatedExpandableListView$1;

    .prologue
    .line 582
    invoke-direct {p0, p1, p2, p3, p4}, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;-><init>(Landroid/view/View;IILco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 600
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 601
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 602
    iget v1, p0, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->baseHeight:I

    iget v2, p0, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->delta:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 603
    .local v0, "val":I
    iget-object v1, p0, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 604
    iget-object v1, p0, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->groupInfo:Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;

    iput v0, v1, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->dummyHeight:I

    .line 605
    iget-object v1, p0, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 612
    :goto_0
    return-void

    .line 607
    .end local v0    # "val":I
    :cond_0
    iget v1, p0, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->baseHeight:I

    iget v2, p0, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->delta:I

    add-int v0, v1, v2

    .line 608
    .restart local v0    # "val":I
    iget-object v1, p0, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 609
    iget-object v1, p0, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->groupInfo:Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;

    iput v0, v1, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->dummyHeight:I

    .line 610
    iget-object v1, p0, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method
