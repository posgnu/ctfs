.class public abstract Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AnimationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private isFirstOnly:Z

.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastPosition:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    const/16 v0, 0x12c

    iput v0, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mDuration:I

    .line 30
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mLastPosition:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->isFirstOnly:Z

    .line 36
    iput-object p1, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract getAnimators(Landroid/view/View;)[Landroid/animation/Animator;
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 104
    iget-object v0, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 96
    iget-object v0, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 54
    iget-object v2, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 56
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 57
    .local v0, "adapterPosition":I
    iget-boolean v2, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->isFirstOnly:Z

    if-eqz v2, :cond_0

    iget v2, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mLastPosition:I

    if-le v0, v2, :cond_2

    .line 58
    :cond_0
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->getAnimators(Landroid/view/View;)[Landroid/animation/Animator;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 59
    .local v1, "anim":Landroid/animation/Animator;
    iget v5, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mDuration:I

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    .line 60
    iget-object v5, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "anim":Landroid/animation/Animator;
    :cond_1
    iput v0, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mLastPosition:I

    .line 66
    :goto_1
    return-void

    .line 64
    :cond_2
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Ljp/wasabeef/recyclerview/internal/ViewHelper;->clear(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 40
    iget-object v0, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 69
    iget-object v0, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 71
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 45
    iget-object v0, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 46
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 78
    iput p1, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mDuration:I

    .line 79
    return-void
.end method

.method public setFirstOnly(Z)V
    .locals 0
    .param p1, "firstOnly"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->isFirstOnly:Z

    .line 93
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 82
    iput-object p1, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 83
    return-void
.end method

.method public setStartPosition(I)V
    .locals 0
    .param p1, "start"    # I

    .prologue
    .line 86
    iput p1, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mLastPosition:I

    .line 87
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 50
    iget-object v0, p0, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 51
    return-void
.end method
