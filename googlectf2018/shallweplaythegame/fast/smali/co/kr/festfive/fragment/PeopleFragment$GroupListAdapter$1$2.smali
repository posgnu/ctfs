.class Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1$2;
.super Ljava/lang/Object;
.source "PeopleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;)V
    .locals 0
    .param p1, "this$2"    # Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;

    .prologue
    .line 571
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1$2;->this$2:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 574
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1$2;->this$2:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;

    iget-object v0, v0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;->this$1:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

    iget-object v0, v0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/PeopleFragment;->access$700(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 577
    return-void
.end method
