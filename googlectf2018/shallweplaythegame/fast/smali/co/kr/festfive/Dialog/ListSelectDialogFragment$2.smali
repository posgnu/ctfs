.class Lco/kr/festfive/Dialog/ListSelectDialogFragment$2;
.super Ljava/lang/Object;
.source "ListSelectDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/Dialog/ListSelectDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/Dialog/ListSelectDialogFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/Dialog/ListSelectDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/Dialog/ListSelectDialogFragment;

    .prologue
    .line 50
    iput-object p1, p0, Lco/kr/festfive/Dialog/ListSelectDialogFragment$2;->this$0:Lco/kr/festfive/Dialog/ListSelectDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 52
    iget-object v1, p0, Lco/kr/festfive/Dialog/ListSelectDialogFragment$2;->this$0:Lco/kr/festfive/Dialog/ListSelectDialogFragment;

    invoke-static {v1}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->access$000(Lco/kr/festfive/Dialog/ListSelectDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/Dialog/ListSelectDialogItem;

    .line 53
    .local v0, "item":Lco/kr/festfive/Dialog/ListSelectDialogItem;
    invoke-virtual {v0}, Lco/kr/festfive/Dialog/ListSelectDialogItem;->getListener()Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v0}, Lco/kr/festfive/Dialog/ListSelectDialogItem;->getListener()Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;

    move-result-object v1

    invoke-interface {v1}, Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;->onSelect()V

    .line 57
    :cond_0
    iget-object v1, p0, Lco/kr/festfive/Dialog/ListSelectDialogFragment$2;->this$0:Lco/kr/festfive/Dialog/ListSelectDialogFragment;

    invoke-virtual {v1}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->dismiss()V

    .line 58
    return-void
.end method
