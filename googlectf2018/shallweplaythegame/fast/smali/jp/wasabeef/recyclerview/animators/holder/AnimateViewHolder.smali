.class public abstract Ljp/wasabeef/recyclerview/animators/holder/AnimateViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AnimateViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    return-void
.end method


# virtual methods
.method public abstract animateAddImpl(Landroid/support/v4/view/ViewPropertyAnimatorListener;)V
.end method

.method public abstract animateRemoveImpl(Landroid/support/v4/view/ViewPropertyAnimatorListener;)V
.end method

.method public preAnimateAddImpl()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public preAnimateRemoveImpl()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method
