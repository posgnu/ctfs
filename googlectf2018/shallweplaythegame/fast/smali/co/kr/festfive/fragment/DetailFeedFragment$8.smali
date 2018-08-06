.class Lco/kr/festfive/fragment/DetailFeedFragment$8;
.super Ljava/util/TimerTask;
.source "DetailFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/DetailFeedFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/DetailFeedFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 656
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$8;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 658
    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$8;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 659
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$8;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$100(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 660
    return-void
.end method
