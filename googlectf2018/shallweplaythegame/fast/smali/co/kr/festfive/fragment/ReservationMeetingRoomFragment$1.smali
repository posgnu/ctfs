.class Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$1;
.super Ljava/lang/Object;
.source "ReservationMeetingRoomFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    .prologue
    .line 79
    iput-object p1, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$1;->this$0:Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 82
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$1;->this$0:Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->access$000(Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;)Lco/kr/festfive/adapter/ReservationMeetingRoomAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lco/kr/festfive/adapter/ReservationMeetingRoomAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/kr/festfive/model/ReservationMeetingRoomListItem;

    invoke-virtual {v4}, Lco/kr/festfive/model/ReservationMeetingRoomListItem;->getOfficeId()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "officeId":Ljava/lang/String;
    iget-object v4, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$1;->this$0:Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->access$000(Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;)Lco/kr/festfive/adapter/ReservationMeetingRoomAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lco/kr/festfive/adapter/ReservationMeetingRoomAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/kr/festfive/model/ReservationMeetingRoomListItem;

    invoke-virtual {v4}, Lco/kr/festfive/model/ReservationMeetingRoomListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "officeName":Ljava/lang/String;
    iget-object v4, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$1;->this$0:Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    invoke-virtual {v4}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 87
    .local v3, "transaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v4, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$1;->this$0:Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->access$100(Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 89
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$1;->this$0:Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    invoke-virtual {v4}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lco/kr/festfive/activity/SelectMeetingRoomActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "officeId"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v4, "officeName"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v4, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$1;->this$0:Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    invoke-virtual {v4, v0}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->startActivity(Landroid/content/Intent;)V

    .line 103
    :goto_0
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 104
    return-void

    .line 95
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$1;->this$0:Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    invoke-virtual {v4}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lco/kr/festfive/activity/VisitorReservationActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v4, "officeId"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v4, "officeName"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v4, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$1;->this$0:Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    invoke-virtual {v4, v0}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
