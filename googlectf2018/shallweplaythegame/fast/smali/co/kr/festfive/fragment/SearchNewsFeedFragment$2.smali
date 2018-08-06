.class Lco/kr/festfive/fragment/SearchNewsFeedFragment$2;
.super Ljava/lang/Object;
.source "SearchNewsFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/SearchNewsFeedFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    .prologue
    .line 147
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$2;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$2;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$100(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$2;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$000(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/kr/festfive/adapter/SearchNewsFeedAdapter;->setSearchWord(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$2;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$2;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$000(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$200(Lco/kr/festfive/fragment/SearchNewsFeedFragment;Ljava/lang/String;Z)V

    .line 152
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$2;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$300(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 153
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$2;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-virtual {v0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->hideKeyboard(Landroid/app/Activity;)V

    .line 154
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$2;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$402(Lco/kr/festfive/fragment/SearchNewsFeedFragment;I)I

    .line 155
    return-void
.end method
