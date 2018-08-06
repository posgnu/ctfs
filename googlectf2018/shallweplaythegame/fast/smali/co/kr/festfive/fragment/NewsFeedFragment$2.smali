.class Lco/kr/festfive/fragment/NewsFeedFragment$2;
.super Ljava/lang/Object;
.source "NewsFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/NewsFeedFragment;->setTab(Landroid/support/design/widget/TabLayout;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/NewsFeedFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/NewsFeedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/NewsFeedFragment;

    .prologue
    .line 196
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedFragment$2;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/kr/festfive/fragment/NewsFeedFragment$2;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/NewsFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/PeoPleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lco/kr/festfive/fragment/NewsFeedFragment$2;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lco/kr/festfive/fragment/NewsFeedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 201
    return-void
.end method
