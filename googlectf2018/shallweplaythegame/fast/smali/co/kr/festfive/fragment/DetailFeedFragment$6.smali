.class Lco/kr/festfive/fragment/DetailFeedFragment$6;
.super Ljava/lang/Object;
.source "DetailFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/fragment/DetailFeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/DetailFeedFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 593
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$6;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 597
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 614
    :goto_0
    return-void

    .line 599
    :pswitch_0
    new-instance v0, Lco/kr/festfive/Dialog/FullImageDialog;

    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$6;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$6;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getImage1Url()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lco/kr/festfive/Dialog/FullImageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lco/kr/festfive/Dialog/FullImageDialog;->show()V

    goto :goto_0

    .line 602
    :pswitch_1
    new-instance v0, Lco/kr/festfive/Dialog/FullImageDialog;

    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$6;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$6;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getImage2Url()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lco/kr/festfive/Dialog/FullImageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lco/kr/festfive/Dialog/FullImageDialog;->show()V

    goto :goto_0

    .line 605
    :pswitch_2
    new-instance v0, Lco/kr/festfive/Dialog/FullImageDialog;

    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$6;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$6;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getImage3Url()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lco/kr/festfive/Dialog/FullImageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lco/kr/festfive/Dialog/FullImageDialog;->show()V

    goto :goto_0

    .line 608
    :pswitch_3
    new-instance v0, Lco/kr/festfive/Dialog/FullImageDialog;

    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$6;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$6;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getImage4Url()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lco/kr/festfive/Dialog/FullImageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lco/kr/festfive/Dialog/FullImageDialog;->show()V

    goto :goto_0

    .line 611
    :pswitch_4
    new-instance v0, Lco/kr/festfive/Dialog/FullImageDialog;

    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$6;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$6;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getImage5Url()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lco/kr/festfive/Dialog/FullImageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lco/kr/festfive/Dialog/FullImageDialog;->show()V

    goto :goto_0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x7f080056
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
