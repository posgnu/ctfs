.class Lco/kr/festfive/adapter/SearchNewsFeedAdapter$3;
.super Ljava/lang/Object;
.source "SearchNewsFeedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/adapter/SearchNewsFeedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/adapter/SearchNewsFeedAdapter;


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/SearchNewsFeedAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    .prologue
    .line 312
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$3;->this$0:Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 316
    .local v1, "position":I
    const-string v2, ""

    invoke-static {v2}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->newInstance(Ljava/lang/String;)Lco/kr/festfive/Dialog/ListSelectDialogFragment;

    move-result-object v0

    .line 317
    .local v0, "dialog":Lco/kr/festfive/Dialog/ListSelectDialogFragment;
    new-instance v2, Lco/kr/festfive/Dialog/ListSelectDialogItem;

    const-string v3, "\uc218\uc815"

    new-instance v4, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$3$1;

    invoke-direct {v4, p0, v1}, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$3$1;-><init>(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$3;I)V

    invoke-direct {v2, v3, v4}, Lco/kr/festfive/Dialog/ListSelectDialogItem;-><init>(Ljava/lang/String;Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;)V

    invoke-virtual {v0, v2}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->addItem(Lco/kr/festfive/Dialog/ListSelectDialogItem;)V

    .line 336
    new-instance v2, Lco/kr/festfive/Dialog/ListSelectDialogItem;

    const-string v3, "\uc0ad\uc81c"

    new-instance v4, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$3$2;

    invoke-direct {v4, p0, v1}, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$3$2;-><init>(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$3;I)V

    invoke-direct {v2, v3, v4}, Lco/kr/festfive/Dialog/ListSelectDialogItem;-><init>(Ljava/lang/String;Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;)V

    invoke-virtual {v0, v2}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->addItem(Lco/kr/festfive/Dialog/ListSelectDialogItem;)V

    .line 342
    iget-object v2, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$3;->this$0:Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    invoke-static {v2}, Lco/kr/festfive/adapter/SearchNewsFeedAdapter;->access$2500(Lco/kr/festfive/adapter/SearchNewsFeedAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "feedPostProcessDialog"

    invoke-virtual {v0, v2, v3}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 343
    return-void
.end method
