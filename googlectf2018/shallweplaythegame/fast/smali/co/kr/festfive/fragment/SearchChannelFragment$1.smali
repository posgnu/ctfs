.class Lco/kr/festfive/fragment/SearchChannelFragment$1;
.super Ljava/lang/Object;
.source "SearchChannelFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/SearchChannelFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/SearchChannelFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/SearchChannelFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/SearchChannelFragment;

    .prologue
    .line 129
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchChannelFragment$1;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchChannelFragment$1;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$000(Lco/kr/festfive/fragment/SearchChannelFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    .line 133
    .local v0, "index":I
    iget-object v2, p0, Lco/kr/festfive/fragment/SearchChannelFragment$1;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    iget-object v1, p0, Lco/kr/festfive/fragment/SearchChannelFragment$1;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$100(Lco/kr/festfive/fragment/SearchChannelFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lco/kr/festfive/fragment/SearchChannelFragment$1;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$000(Lco/kr/festfive/fragment/SearchChannelFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;->getOffice_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$200(Lco/kr/festfive/fragment/SearchChannelFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method