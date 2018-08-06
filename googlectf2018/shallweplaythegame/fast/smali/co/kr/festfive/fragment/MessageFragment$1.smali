.class Lco/kr/festfive/fragment/MessageFragment$1;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MessageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/MessageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/MessageFragment;

    .prologue
    .line 106
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageFragment$1;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 109
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageFragment$1;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageFragment;->access$000(Lco/kr/festfive/fragment/MessageFragment;)Lco/kr/festfive/adapter/ChannelListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lco/kr/festfive/adapter/ChannelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v3}, Lco/kr/festfive/model/ChannelListItem;->getChannelUrl()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "channelUrl":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageFragment$1;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageFragment;->access$000(Lco/kr/festfive/fragment/MessageFragment;)Lco/kr/festfive/adapter/ChannelListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lco/kr/festfive/adapter/ChannelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v3}, Lco/kr/festfive/model/ChannelListItem;->getIsChannel()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 112
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lco/kr/festfive/fragment/MessageFragment$1;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-virtual {v3}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    iget-object v3, p0, Lco/kr/festfive/fragment/MessageFragment$1;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v5, v3, Lco/kr/festfive/fragment/MessageFragment;->userId:Ljava/lang/String;

    const-string v6, ""

    iget-object v3, p0, Lco/kr/festfive/fragment/MessageFragment$1;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageFragment;->access$000(Lco/kr/festfive/fragment/MessageFragment;)Lco/kr/festfive/adapter/ChannelListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lco/kr/festfive/adapter/ChannelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v3}, Lco/kr/festfive/model/ChannelListItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v6, v3, v1}, Lco/kr/festfive/activity/SendBirdChatActivity;->makeSendBirdArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 114
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 117
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageFragment$1;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-virtual {v3, v2}, Lco/kr/festfive/fragment/MessageFragment;->startActivity(Landroid/content/Intent;)V

    .line 126
    :goto_0
    return-void

    .line 119
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lco/kr/festfive/fragment/MessageFragment$1;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-virtual {v3}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    iget-object v3, p0, Lco/kr/festfive/fragment/MessageFragment$1;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v5, v3, Lco/kr/festfive/fragment/MessageFragment;->userId:Ljava/lang/String;

    iget-object v3, p0, Lco/kr/festfive/fragment/MessageFragment$1;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageFragment;->access$000(Lco/kr/festfive/fragment/MessageFragment;)Lco/kr/festfive/adapter/ChannelListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lco/kr/festfive/adapter/ChannelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v3}, Lco/kr/festfive/model/ChannelListItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->makeMessagingJoinArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .restart local v0    # "args":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 124
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageFragment$1;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-virtual {v3, v2}, Lco/kr/festfive/fragment/MessageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
