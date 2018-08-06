.class Lco/kr/festfive/fragment/MyScheduleFragment$2;
.super Ljava/lang/Object;
.source "MyScheduleFragment.java"

# interfaces
.implements Lco/kr/festfive/adapter/MyScheduleAdapter$OnDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MyScheduleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/MyScheduleFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/MyScheduleFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/MyScheduleFragment;

    .prologue
    .line 89
    iput-object p1, p0, Lco/kr/festfive/fragment/MyScheduleFragment$2;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(Lco/kr/festfive/model/MyScheduleListItem;)V
    .locals 3
    .param p1, "item"    # Lco/kr/festfive/model/MyScheduleListItem;

    .prologue
    .line 93
    invoke-virtual {p1}, Lco/kr/festfive/model/MyScheduleListItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    if-eq v0, v1, :cond_0

    const-string v0, "r"

    invoke-virtual {p1}, Lco/kr/festfive/model/MyScheduleListItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment$2;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lco/kr/festfive/model/MyScheduleListItem;->getRoomReservationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$100(Lco/kr/festfive/fragment/MyScheduleFragment;ILjava/lang/String;)V

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    invoke-virtual {p1}, Lco/kr/festfive/model/MyScheduleListItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "v"

    if-eq v0, v1, :cond_3

    const-string v0, "v"

    invoke-virtual {p1}, Lco/kr/festfive/model/MyScheduleListItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    :cond_3
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment$2;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lco/kr/festfive/model/MyScheduleListItem;->getVisitorReservationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$100(Lco/kr/festfive/fragment/MyScheduleFragment;ILjava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {p1}, Lco/kr/festfive/model/MyScheduleListItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "c"

    if-eq v0, v1, :cond_5

    const-string v0, "c"

    invoke-virtual {p1}, Lco/kr/festfive/model/MyScheduleListItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_5
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment$2;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    const/4 v1, 0x3

    invoke-virtual {p1}, Lco/kr/festfive/model/MyScheduleListItem;->getCommunityId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$100(Lco/kr/festfive/fragment/MyScheduleFragment;ILjava/lang/String;)V

    goto :goto_0
.end method
