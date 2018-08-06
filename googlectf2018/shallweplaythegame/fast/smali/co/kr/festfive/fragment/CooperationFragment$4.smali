.class Lco/kr/festfive/fragment/CooperationFragment$4;
.super Ljava/lang/Object;
.source "CooperationFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/CooperationFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/CooperationFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/CooperationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/CooperationFragment;

    .prologue
    .line 171
    iput-object p1, p0, Lco/kr/festfive/fragment/CooperationFragment$4;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 2
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    .line 178
    iget-object v1, p0, Lco/kr/festfive/fragment/CooperationFragment$4;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CooperationFragment;->access$500(Lco/kr/festfive/fragment/CooperationFragment;)Lco/kr/festfive/model/AnimatedExpandableListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Lco/kr/festfive/model/AnimatedExpandableListView;->isGroupExpanded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lco/kr/festfive/fragment/CooperationFragment$4;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CooperationFragment;->access$500(Lco/kr/festfive/fragment/CooperationFragment;)Lco/kr/festfive/model/AnimatedExpandableListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Lco/kr/festfive/model/AnimatedExpandableListView;->collapseGroupWithAnimation(I)Z

    .line 190
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 181
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lco/kr/festfive/fragment/CooperationFragment$4;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CooperationFragment;->access$200(Lco/kr/festfive/fragment/CooperationFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 183
    if-eq v0, p3, :cond_1

    iget-object v1, p0, Lco/kr/festfive/fragment/CooperationFragment$4;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CooperationFragment;->access$500(Lco/kr/festfive/fragment/CooperationFragment;)Lco/kr/festfive/model/AnimatedExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/kr/festfive/model/AnimatedExpandableListView;->isGroupExpanded(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lco/kr/festfive/fragment/CooperationFragment$4;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CooperationFragment;->access$500(Lco/kr/festfive/fragment/CooperationFragment;)Lco/kr/festfive/model/AnimatedExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/kr/festfive/model/AnimatedExpandableListView;->collapseGroup(I)Z

    .line 181
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_2
    iget-object v1, p0, Lco/kr/festfive/fragment/CooperationFragment$4;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CooperationFragment;->access$500(Lco/kr/festfive/fragment/CooperationFragment;)Lco/kr/festfive/model/AnimatedExpandableListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Lco/kr/festfive/model/AnimatedExpandableListView;->expandGroupWithAnimation(I)Z

    goto :goto_0
.end method
