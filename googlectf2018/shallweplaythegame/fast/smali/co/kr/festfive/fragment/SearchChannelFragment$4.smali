.class Lco/kr/festfive/fragment/SearchChannelFragment$4;
.super Ljava/lang/Object;
.source "SearchChannelFragment.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


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
    .line 191
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchChannelFragment$4;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 214
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 5
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lco/kr/festfive/fragment/SearchChannelFragment$4;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$600(Lco/kr/festfive/fragment/SearchChannelFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v2, p0, Lco/kr/festfive/fragment/SearchChannelFragment$4;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$600(Lco/kr/festfive/fragment/SearchChannelFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;->getOffice_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    move v1, v0

    .line 202
    :cond_0
    const-string v2, "SearchChannelFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v3, p0, Lco/kr/festfive/fragment/SearchChannelFragment$4;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    iget-object v2, p0, Lco/kr/festfive/fragment/SearchChannelFragment$4;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$100(Lco/kr/festfive/fragment/SearchChannelFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lco/kr/festfive/fragment/SearchChannelFragment$4;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$600(Lco/kr/festfive/fragment/SearchChannelFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;->getOffice_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$200(Lco/kr/festfive/fragment/SearchChannelFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void

    .line 196
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 208
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment$4;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v0, p1}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$702(Lco/kr/festfive/fragment/SearchChannelFragment;Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$Tab;

    .line 209
    return-void
.end method
