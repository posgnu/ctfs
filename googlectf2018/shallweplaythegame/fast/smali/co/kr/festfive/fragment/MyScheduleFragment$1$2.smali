.class Lco/kr/festfive/fragment/MyScheduleFragment$1$2;
.super Ljava/lang/Object;
.source "MyScheduleFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MyScheduleFragment$1;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/fragment/MyScheduleFragment$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/MyScheduleFragment$1;I)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/fragment/MyScheduleFragment$1;

    .prologue
    .line 65
    iput-object p1, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->this$1:Lco/kr/festfive/fragment/MyScheduleFragment$1;

    iput p2, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->this$1:Lco/kr/festfive/fragment/MyScheduleFragment$1;

    iget-object v0, v0, Lco/kr/festfive/fragment/MyScheduleFragment$1;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;

    move-result-object v0

    iget v1, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->val$position:I

    invoke-virtual {v0, v1}, Lco/kr/festfive/adapter/MyScheduleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/MyScheduleListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/MyScheduleListItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    if-eq v0, v1, :cond_0

    const-string v1, "r"

    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->this$1:Lco/kr/festfive/fragment/MyScheduleFragment$1;

    iget-object v0, v0, Lco/kr/festfive/fragment/MyScheduleFragment$1;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;

    move-result-object v0

    iget v2, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->val$position:I

    invoke-virtual {v0, v2}, Lco/kr/festfive/adapter/MyScheduleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/MyScheduleListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/MyScheduleListItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->this$1:Lco/kr/festfive/fragment/MyScheduleFragment$1;

    iget-object v1, v0, Lco/kr/festfive/fragment/MyScheduleFragment$1;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    const/4 v2, 0x1

    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->this$1:Lco/kr/festfive/fragment/MyScheduleFragment$1;

    iget-object v0, v0, Lco/kr/festfive/fragment/MyScheduleFragment$1;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;

    move-result-object v0

    iget v3, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->val$position:I

    invoke-virtual {v0, v3}, Lco/kr/festfive/adapter/MyScheduleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/MyScheduleListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/MyScheduleListItem;->getRoomReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$100(Lco/kr/festfive/fragment/MyScheduleFragment;ILjava/lang/String;)V

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 70
    :cond_2
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->this$1:Lco/kr/festfive/fragment/MyScheduleFragment$1;

    iget-object v0, v0, Lco/kr/festfive/fragment/MyScheduleFragment$1;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;

    move-result-object v0

    iget v1, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->val$position:I

    invoke-virtual {v0, v1}, Lco/kr/festfive/adapter/MyScheduleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/MyScheduleListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/MyScheduleListItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "v"

    if-eq v0, v1, :cond_3

    const-string v1, "v"

    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->this$1:Lco/kr/festfive/fragment/MyScheduleFragment$1;

    iget-object v0, v0, Lco/kr/festfive/fragment/MyScheduleFragment$1;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;

    move-result-object v0

    iget v2, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->val$position:I

    invoke-virtual {v0, v2}, Lco/kr/festfive/adapter/MyScheduleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/MyScheduleListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/MyScheduleListItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    :cond_3
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->this$1:Lco/kr/festfive/fragment/MyScheduleFragment$1;

    iget-object v1, v0, Lco/kr/festfive/fragment/MyScheduleFragment$1;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    const/4 v2, 0x2

    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->this$1:Lco/kr/festfive/fragment/MyScheduleFragment$1;

    iget-object v0, v0, Lco/kr/festfive/fragment/MyScheduleFragment$1;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;

    move-result-object v0

    iget v3, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->val$position:I

    invoke-virtual {v0, v3}, Lco/kr/festfive/adapter/MyScheduleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/MyScheduleListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/MyScheduleListItem;->getVisitorReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$100(Lco/kr/festfive/fragment/MyScheduleFragment;ILjava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_4
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->this$1:Lco/kr/festfive/fragment/MyScheduleFragment$1;

    iget-object v0, v0, Lco/kr/festfive/fragment/MyScheduleFragment$1;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;

    move-result-object v0

    iget v1, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->val$position:I

    invoke-virtual {v0, v1}, Lco/kr/festfive/adapter/MyScheduleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/MyScheduleListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/MyScheduleListItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "c"

    if-eq v0, v1, :cond_5

    const-string v1, "c"

    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->this$1:Lco/kr/festfive/fragment/MyScheduleFragment$1;

    iget-object v0, v0, Lco/kr/festfive/fragment/MyScheduleFragment$1;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;

    move-result-object v0

    iget v2, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->val$position:I

    invoke-virtual {v0, v2}, Lco/kr/festfive/adapter/MyScheduleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/MyScheduleListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/MyScheduleListItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_5
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->this$1:Lco/kr/festfive/fragment/MyScheduleFragment$1;

    iget-object v1, v0, Lco/kr/festfive/fragment/MyScheduleFragment$1;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    const/4 v2, 0x3

    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->this$1:Lco/kr/festfive/fragment/MyScheduleFragment$1;

    iget-object v0, v0, Lco/kr/festfive/fragment/MyScheduleFragment$1;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;

    move-result-object v0

    iget v3, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;->val$position:I

    invoke-virtual {v0, v3}, Lco/kr/festfive/adapter/MyScheduleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/MyScheduleListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/MyScheduleListItem;->getCommunityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lco/kr/festfive/fragment/MyScheduleFragment;->access$100(Lco/kr/festfive/fragment/MyScheduleFragment;ILjava/lang/String;)V

    goto/16 :goto_0
.end method
