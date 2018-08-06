.class Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$1;
.super Ljava/lang/Object;
.source "SendBirdUserListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->initUIComponents(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    .prologue
    .line 236
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$1;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
