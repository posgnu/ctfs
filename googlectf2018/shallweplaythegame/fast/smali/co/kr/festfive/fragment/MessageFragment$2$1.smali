.class Lco/kr/festfive/fragment/MessageFragment$2$1;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MessageFragment$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/fragment/MessageFragment$2;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/MessageFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/fragment/MessageFragment$2;

    .prologue
    .line 161
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageFragment$2$1;->this$1:Lco/kr/festfive/fragment/MessageFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 164
    return-void
.end method
