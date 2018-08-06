.class Lco/kr/festfive/fragment/NewsFeedListFragment$PagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "NewsFeedListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/fragment/NewsFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;


# direct methods
.method public constructor <init>(Lco/kr/festfive/fragment/NewsFeedListFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 143
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$PagerAdapter;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    .line 144
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 145
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x5

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 149
    invoke-static {p1}, Lco/kr/festfive/fragment/PageFragment;->create(I)Lco/kr/festfive/fragment/PageFragment;

    move-result-object v0

    return-object v0
.end method
