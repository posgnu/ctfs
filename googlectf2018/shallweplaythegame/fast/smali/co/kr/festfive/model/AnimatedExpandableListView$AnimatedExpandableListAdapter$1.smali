.class Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter$1;
.super Ljava/lang/Object;
.source "AnimatedExpandableListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;

.field final synthetic val$dummyView:Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;ILco/kr/festfive/model/AnimatedExpandableListView$DummyView;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    .prologue
    .line 446
    iput-object p1, p0, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter$1;->this$0:Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    iput p2, p0, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter$1;->val$groupPosition:I

    iput-object p3, p0, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter$1;->val$dummyView:Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 450
    iget-object v0, p0, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter$1;->this$0:Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    iget v1, p0, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter$1;->val$groupPosition:I

    invoke-static {v0, v1}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->access$600(Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;I)V

    .line 451
    iget-object v0, p0, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter$1;->this$0:Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    invoke-virtual {v0}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->notifyDataSetChanged()V

    .line 452
    iget-object v0, p0, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter$1;->val$dummyView:Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->setTag(Ljava/lang/Object;)V

    .line 453
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 456
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 459
    return-void
.end method
