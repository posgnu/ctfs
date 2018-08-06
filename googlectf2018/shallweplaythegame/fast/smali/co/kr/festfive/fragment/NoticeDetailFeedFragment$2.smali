.class Lco/kr/festfive/fragment/NoticeDetailFeedFragment$2;
.super Ljava/lang/Object;
.source "NoticeDetailFeedFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    .prologue
    .line 260
    iput-object p1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$2;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 264
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 265
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$2;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$100(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$2;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-virtual {v0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\uae00\uc744 \uc785\ub825 \ud574\uc8fc\uc138\uc694."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 272
    :cond_0
    :goto_0
    return v2

    .line 268
    :cond_1
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$2;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$200(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)V

    goto :goto_0
.end method
