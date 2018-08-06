.class Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1$2;
.super Ljava/lang/Object;
.source "SelectMeetingRoomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;

    .prologue
    .line 174
    iput-object p1, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1$2;->this$1:Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 177
    iget-object v1, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1$2;->this$1:Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;

    iget-object v1, v1, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;->this$0:Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 178
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1$2;->this$1:Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;

    iget-object v1, v1, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;->this$0:Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/MyScheduleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1$2;->this$1:Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;

    iget-object v1, v1, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;->this$0:Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    invoke-virtual {v1, v0}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method
