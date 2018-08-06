.class Lco/kr/festfive/fragment/MoreFragment$1;
.super Ljava/lang/Object;
.source "MoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MoreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/MoreFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/MoreFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/MoreFragment;

    .prologue
    .line 126
    iput-object p1, p0, Lco/kr/festfive/fragment/MoreFragment$1;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment$1;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/QrcodeReaderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment$1;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    iget-object v2, p0, Lco/kr/festfive/fragment/MoreFragment$1;->this$0:Lco/kr/festfive/fragment/MoreFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MoreFragment;->access$000(Lco/kr/festfive/fragment/MoreFragment;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lco/kr/festfive/fragment/MoreFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    return-void
.end method
