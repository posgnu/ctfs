.class Lco/kr/festfive/fragment/MyScheduleFragment$1;
.super Ljava/lang/Object;
.source "MyScheduleFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MyScheduleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/MyScheduleFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/MyScheduleFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/MyScheduleFragment;

    .prologue
    .line 59
    iput-object p1, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 62
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lco/kr/festfive/fragment/MyScheduleFragment$1;->this$0:Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/MyScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Delete?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\ub124"

    new-instance v4, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;

    invoke-direct {v4, p0, p3}, Lco/kr/festfive/fragment/MyScheduleFragment$1$2;-><init>(Lco/kr/festfive/fragment/MyScheduleFragment$1;I)V

    .line 64
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\uc544\ub2c8\uc694"

    new-instance v4, Lco/kr/festfive/fragment/MyScheduleFragment$1$1;

    invoke-direct {v4, p0}, Lco/kr/festfive/fragment/MyScheduleFragment$1$1;-><init>(Lco/kr/festfive/fragment/MyScheduleFragment$1;)V

    .line 76
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 83
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 85
    return v5
.end method
