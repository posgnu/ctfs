.class Lco/kr/festfive/fragment/CooperationFragment$2;
.super Ljava/lang/Object;
.source "CooperationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 128
    iput-object p1, p0, Lco/kr/festfive/fragment/CooperationFragment$2;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment$2;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/CooperationFragment;->access$200(Lco/kr/festfive/fragment/CooperationFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 132
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment$2;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    new-instance v1, Lco/kr/festfive/adapter/CooperationAdapter;

    iget-object v2, p0, Lco/kr/festfive/fragment/CooperationFragment$2;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/CooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/fragment/CooperationFragment$2;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-direct {v1, v2, v3}, Lco/kr/festfive/adapter/CooperationAdapter;-><init>(Landroid/content/Context;Lco/kr/festfive/listener/CooperateItemListener;)V

    invoke-static {v0, v1}, Lco/kr/festfive/fragment/CooperationFragment;->access$102(Lco/kr/festfive/fragment/CooperationFragment;Lco/kr/festfive/adapter/CooperationAdapter;)Lco/kr/festfive/adapter/CooperationAdapter;

    .line 134
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment$2;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    iget-object v1, p0, Lco/kr/festfive/fragment/CooperationFragment$2;->this$0:Lco/kr/festfive/fragment/CooperationFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CooperationFragment;->access$300(Lco/kr/festfive/fragment/CooperationFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/kr/festfive/fragment/CooperationFragment;->access$400(Lco/kr/festfive/fragment/CooperationFragment;Ljava/lang/String;)V

    .line 135
    return-void
.end method
