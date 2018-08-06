.class Lco/kr/festfive/fragment/NewsFeedFragment$3$1;
.super Ljava/lang/Object;
.source "NewsFeedFragment.java"

# interfaces
.implements Lco/kr/festfive/model/auth/listener/OnAuthCheckedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/NewsFeedFragment$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/fragment/NewsFeedFragment$3;

.field final synthetic val$whichButton:I


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/NewsFeedFragment$3;I)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/fragment/NewsFeedFragment$3;

    .prologue
    .line 310
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedFragment$3$1;->this$1:Lco/kr/festfive/fragment/NewsFeedFragment$3;

    iput p2, p0, Lco/kr/festfive/fragment/NewsFeedFragment$3$1;->val$whichButton:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthChecked(ZLjava/lang/String;)V
    .locals 3
    .param p1, "auth"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 313
    if-eqz p1, :cond_0

    .line 314
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/kr/festfive/fragment/NewsFeedFragment$3$1;->this$1:Lco/kr/festfive/fragment/NewsFeedFragment$3;

    iget-object v1, v1, Lco/kr/festfive/fragment/NewsFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/NewsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/WriteNewsFeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "category"

    iget v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment$3$1;->val$whichButton:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lco/kr/festfive/fragment/NewsFeedFragment$3$1;->this$1:Lco/kr/festfive/fragment/NewsFeedFragment$3;

    iget-object v1, v1, Lco/kr/festfive/fragment/NewsFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lco/kr/festfive/fragment/NewsFeedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 320
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v1, p0, Lco/kr/festfive/fragment/NewsFeedFragment$3$1;->this$1:Lco/kr/festfive/fragment/NewsFeedFragment$3;

    iget-object v1, v1, Lco/kr/festfive/fragment/NewsFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/NewsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
