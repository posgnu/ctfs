.class public Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$DefaultAddVpaListener;
.super Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$VpaListenerAdapter;
.source "BaseItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DefaultAddVpaListener"
.end annotation


# instance fields
.field mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic this$0:Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;


# direct methods
.method public constructor <init>(Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "this$0"    # Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;
    .param p2, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 652
    iput-object p1, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$DefaultAddVpaListener;->this$0:Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$VpaListenerAdapter;-><init>(Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$1;)V

    .line 653
    iput-object p2, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$DefaultAddVpaListener;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 654
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 661
    invoke-static {p1}, Ljp/wasabeef/recyclerview/internal/ViewHelper;->clear(Landroid/view/View;)V

    .line 662
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 665
    invoke-static {p1}, Ljp/wasabeef/recyclerview/internal/ViewHelper;->clear(Landroid/view/View;)V

    .line 666
    iget-object v0, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$DefaultAddVpaListener;->this$0:Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;

    iget-object v1, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$DefaultAddVpaListener;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 667
    iget-object v0, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$DefaultAddVpaListener;->this$0:Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;

    iget-object v0, v0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$DefaultAddVpaListener;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 668
    iget-object v0, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$DefaultAddVpaListener;->this$0:Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;

    invoke-static {v0}, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;->access$900(Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;)V

    .line 669
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 657
    iget-object v0, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$DefaultAddVpaListener;->this$0:Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;

    iget-object v1, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$DefaultAddVpaListener;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;->dispatchAddStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 658
    return-void
.end method
