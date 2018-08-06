.class Lco/kr/festfive/adapter/ViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "ViewPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/adapter/ViewPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/adapter/ViewPagerAdapter;


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/ViewPagerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/ViewPagerAdapter;

    .prologue
    .line 67
    iput-object p1, p0, Lco/kr/festfive/adapter/ViewPagerAdapter$1;->this$0:Lco/kr/festfive/adapter/ViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lco/kr/festfive/adapter/ViewPagerAdapter$1;->this$0:Lco/kr/festfive/adapter/ViewPagerAdapter;

    iget-object v0, v0, Lco/kr/festfive/adapter/ViewPagerAdapter;->deleteListener:Lco/kr/festfive/listener/DeleteListener;

    iget-object v1, p0, Lco/kr/festfive/adapter/ViewPagerAdapter$1;->this$0:Lco/kr/festfive/adapter/ViewPagerAdapter;

    iget-object v1, v1, Lco/kr/festfive/adapter/ViewPagerAdapter;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    invoke-interface {v0, v1}, Lco/kr/festfive/listener/DeleteListener;->detail(Lco/kr/festfive/model/NewFeedListItem;)V

    .line 71
    return-void
.end method
