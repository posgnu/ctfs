.class Lco/kr/festfive/adapter/NewFeedAdapter$1;
.super Ljava/lang/Object;
.source "NewFeedAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/adapter/NewFeedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/adapter/NewFeedAdapter;


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/NewFeedAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/NewFeedAdapter;

    .prologue
    .line 133
    iput-object p1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$1;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 150
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 137
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lco/kr/festfive/adapter/NewFeedAdapter$1;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v0, p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$1602(Lco/kr/festfive/adapter/NewFeedAdapter;I)I

    .line 145
    return-void
.end method
