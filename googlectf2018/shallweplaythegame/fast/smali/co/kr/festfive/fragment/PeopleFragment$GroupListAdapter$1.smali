.class Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;
.super Ljava/lang/Object;
.source "PeopleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

    .prologue
    .line 545
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;->this$1:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

    iput-object p2, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, -0x2

    .line 548
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 549
    .local v4, "position":I
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;->val$context:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 550
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0a0054

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 552
    .local v3, "popupView":Landroid/view/View;
    const v5, 0x7f08014f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 553
    .local v2, "modifyButtonText":Landroid/widget/TextView;
    new-instance v5, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1$1;

    invoke-direct {v5, p0, v4}, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1$1;-><init>(Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    const v5, 0x7f08006e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 571
    .local v0, "deleteButtonText":Landroid/widget/TextView;
    new-instance v5, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1$2;

    invoke-direct {v5, p0}, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1$2;-><init>(Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;->this$1:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

    iget-object v5, v5, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/PeopleFragment;->access$700(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/widget/PopupWindow;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 581
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;->this$1:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

    iget-object v5, v5, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/PeopleFragment;->access$700(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 584
    :cond_0
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;->this$1:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

    iget-object v5, v5, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    new-instance v6, Landroid/widget/PopupWindow;

    invoke-direct {v6, v3, v7, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v5, v6}, Lco/kr/festfive/fragment/PeopleFragment;->access$702(Lco/kr/festfive/fragment/PeopleFragment;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 585
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;->this$1:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

    iget-object v5, v5, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/PeopleFragment;->access$700(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 586
    return-void
.end method
