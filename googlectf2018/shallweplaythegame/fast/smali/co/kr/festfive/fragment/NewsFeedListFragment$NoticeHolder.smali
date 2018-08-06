.class public Lco/kr/festfive/fragment/NewsFeedListFragment$NoticeHolder;
.super Ljava/lang/Object;
.source "NewsFeedListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/fragment/NewsFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoticeHolder"
.end annotation


# instance fields
.field contentTv:Landroid/widget/TextView;

.field final synthetic this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;


# direct methods
.method public constructor <init>(Lco/kr/festfive/fragment/NewsFeedListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/NewsFeedListFragment;

    .prologue
    .line 450
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$NoticeHolder;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
