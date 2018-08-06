.class Lco/kr/festfive/fragment/CommunityFragment$2;
.super Ljava/lang/Object;
.source "CommunityFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/CommunityFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/CommunityFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/CommunityFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/CommunityFragment;

    .prologue
    .line 89
    iput-object p1, p0, Lco/kr/festfive/fragment/CommunityFragment$2;->this$0:Lco/kr/festfive/fragment/CommunityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment$2;->this$0:Lco/kr/festfive/fragment/CommunityFragment;

    iget-object v1, p0, Lco/kr/festfive/fragment/CommunityFragment$2;->this$0:Lco/kr/festfive/fragment/CommunityFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CommunityFragment;->access$000(Lco/kr/festfive/fragment/CommunityFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/kr/festfive/fragment/CommunityFragment;->access$100(Lco/kr/festfive/fragment/CommunityFragment;Ljava/lang/String;)V

    .line 93
    return-void
.end method
