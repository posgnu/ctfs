.class Lco/kr/festfive/fragment/SearchChannelFragment$3;
.super Ljava/lang/Object;
.source "SearchChannelFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 157
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchChannelFragment$3;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment$3;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$300(Lco/kr/festfive/fragment/SearchChannelFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchChannelFragment$3;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment$3;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$500(Lco/kr/festfive/fragment/SearchChannelFragment;)Lco/kr/festfive/adapter/SearchChannelAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$402(Lco/kr/festfive/fragment/SearchChannelFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment$3;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-virtual {v0}, Lco/kr/festfive/fragment/SearchChannelFragment;->startChat()V

    .line 170
    :cond_0
    return-void
.end method
