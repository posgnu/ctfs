.class Lco/kr/festfive/fragment/DetailFeedFragment$1$2;
.super Ljava/lang/Object;
.source "DetailFeedFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/DetailFeedFragment$1;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/fragment/DetailFeedFragment$1;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/DetailFeedFragment$1;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/fragment/DetailFeedFragment$1;

    .prologue
    .line 473
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$1$2;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$1;

    iput-object p2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$1$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 476
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment$1$2;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$1;

    iget-object v0, v0, Lco/kr/festfive/fragment/DetailFeedFragment$1;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment$1$2;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lco/kr/festfive/utils/Utils;->copyClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 478
    return-void
.end method
