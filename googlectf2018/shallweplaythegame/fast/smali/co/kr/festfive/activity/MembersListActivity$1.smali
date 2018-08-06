.class Lco/kr/festfive/activity/MembersListActivity$1;
.super Ljava/lang/Object;
.source "MembersListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/MembersListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/MembersListActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/MembersListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/MembersListActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lco/kr/festfive/activity/MembersListActivity$1;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
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
    .line 64
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$1;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$000(Lco/kr/festfive/activity/MembersListActivity;)Lco/kr/festfive/adapter/MemberListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$1;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$000(Lco/kr/festfive/activity/MembersListActivity;)Lco/kr/festfive/adapter/MemberListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lco/kr/festfive/model/SearchChannelListItem;->setChecked(Z)V

    .line 66
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$1;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$100(Lco/kr/festfive/activity/MembersListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$1;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$100(Lco/kr/festfive/activity/MembersListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity$1;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/MembersListActivity;->access$000(Lco/kr/festfive/activity/MembersListActivity;)Lco/kr/festfive/adapter/MemberListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$1;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$100(Lco/kr/festfive/activity/MembersListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 73
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$1;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$200(Lco/kr/festfive/activity/MembersListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 74
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$1;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$200(Lco/kr/festfive/activity/MembersListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity$1;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/MembersListActivity;->access$000(Lco/kr/festfive/activity/MembersListActivity;)Lco/kr/festfive/adapter/MemberListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserProfileThumbUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$1;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$200(Lco/kr/festfive/activity/MembersListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 85
    .end local v0    # "k":I
    :cond_1
    :goto_2
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$1;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$000(Lco/kr/festfive/activity/MembersListActivity;)Lco/kr/festfive/adapter/MemberListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/adapter/MemberListAdapter;->notifyDataSetChanged()V

    .line 86
    return-void

    .line 66
    .restart local v0    # "k":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "k":I
    :cond_4
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$1;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$000(Lco/kr/festfive/activity/MembersListActivity;)Lco/kr/festfive/adapter/MemberListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lco/kr/festfive/model/SearchChannelListItem;->setChecked(Z)V

    .line 81
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$1;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$100(Lco/kr/festfive/activity/MembersListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$1;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$000(Lco/kr/festfive/activity/MembersListActivity;)Lco/kr/festfive/adapter/MemberListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$1;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$200(Lco/kr/festfive/activity/MembersListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, p0, Lco/kr/festfive/activity/MembersListActivity$1;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/MembersListActivity;->access$000(Lco/kr/festfive/activity/MembersListActivity;)Lco/kr/festfive/adapter/MemberListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserProfileThumbUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
