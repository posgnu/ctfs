.class public Ljp/wasabeef/recyclerview/adapters/ScaleInAnimationAdapter;
.super Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;
.source "ScaleInAnimationAdapter.java"


# static fields
.field private static final DEFAULT_SCALE_FROM:F = 0.5f


# instance fields
.field private final mFrom:F


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 30
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v0}, Ljp/wasabeef/recyclerview/adapters/ScaleInAnimationAdapter;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;F)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;F)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "from"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 35
    iput p2, p0, Ljp/wasabeef/recyclerview/adapters/ScaleInAnimationAdapter;->mFrom:F

    .line 36
    return-void
.end method


# virtual methods
.method protected getAnimators(Landroid/view/View;)[Landroid/animation/Animator;
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 39
    const-string v2, "scaleX"

    new-array v3, v7, [F

    iget v4, p0, Ljp/wasabeef/recyclerview/adapters/ScaleInAnimationAdapter;->mFrom:F

    aput v4, v3, v5

    aput v8, v3, v6

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 40
    .local v0, "scaleX":Landroid/animation/ObjectAnimator;
    const-string v2, "scaleY"

    new-array v3, v7, [F

    iget v4, p0, Ljp/wasabeef/recyclerview/adapters/ScaleInAnimationAdapter;->mFrom:F

    aput v4, v3, v5

    aput v8, v3, v6

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 41
    .local v1, "scaleY":Landroid/animation/ObjectAnimator;
    new-array v2, v7, [Landroid/animation/ObjectAnimator;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    return-object v2
.end method
