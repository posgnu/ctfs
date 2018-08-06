.class Lco/kr/festfive/fragment/DetailFeedFragment$4;
.super Ljava/lang/Object;
.source "DetailFeedFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/DetailFeedFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 548
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$4;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 564
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 569
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 551
    if-eqz p4, :cond_0

    .line 552
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment$4;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$300(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment$4;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$400(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\ub4f1\ub85d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment$4;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$300(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment$4;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$400(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\uc4f0\uae30"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
