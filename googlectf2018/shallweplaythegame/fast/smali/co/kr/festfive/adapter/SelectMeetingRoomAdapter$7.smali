.class Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$7;
.super Ljava/lang/Object;
.source "SelectMeetingRoomAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    .prologue
    .line 494
    iput-object p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$7;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 497
    check-cast p1, Lco/kr/festfive/view/ReserveUserProfileImageView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lco/kr/festfive/view/ReserveUserProfileImageView;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "userId":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$7;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-static {v3}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->access$500(Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "myUserId":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 501
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$7;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-virtual {v3}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lco/kr/festfive/fragment/MyDetailUserActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 503
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$7;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-virtual {v3}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 511
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$7;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-virtual {v3}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lco/kr/festfive/activity/UserDetailActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 507
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "targetUserId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    iget-object v3, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$7;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-virtual {v3}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
