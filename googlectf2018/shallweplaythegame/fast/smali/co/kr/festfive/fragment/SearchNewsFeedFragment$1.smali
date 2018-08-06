.class Lco/kr/festfive/fragment/SearchNewsFeedFragment$1;
.super Ljava/lang/Object;
.source "SearchNewsFeedFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 129
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$1;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 144
    :goto_0
    return v0

    .line 134
    :pswitch_0
    iget-object v2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$1;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$100(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$1;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$000(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lco/kr/festfive/adapter/SearchNewsFeedAdapter;->setSearchWord(Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$1;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    iget-object v3, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$1;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$000(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$200(Lco/kr/festfive/fragment/SearchNewsFeedFragment;Ljava/lang/String;Z)V

    .line 136
    iget-object v2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$1;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$300(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 137
    iget-object v2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$1;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->hideKeyboard(Landroid/app/Activity;)V

    .line 138
    iget-object v2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$1;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v2, v1}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$402(Lco/kr/festfive/fragment/SearchNewsFeedFragment;I)I

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
