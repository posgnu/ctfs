.class Lco/kr/festfive/adapter/NewFeedAdapter$2;
.super Ljava/lang/Object;
.source "NewFeedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/adapter/NewFeedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/adapter/NewFeedAdapter;


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/NewFeedAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/NewFeedAdapter;

    .prologue
    .line 239
    iput-object p1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$2;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 243
    .local v2, "position":I
    iget-object v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$2;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-virtual {v3, v2}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/NewFeedListItem;

    .line 245
    .local v1, "item":Lco/kr/festfive/model/NewFeedListItem;
    const-string v3, ""

    invoke-static {v3}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->newInstance(Ljava/lang/String;)Lco/kr/festfive/Dialog/ListSelectDialogFragment;

    move-result-object v0

    .line 247
    .local v0, "dialog":Lco/kr/festfive/Dialog/ListSelectDialogFragment;
    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->isSigned()Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    new-instance v3, Lco/kr/festfive/Dialog/ListSelectDialogItem;

    const-string v4, "\uc2b9\uc778"

    new-instance v5, Lco/kr/festfive/adapter/NewFeedAdapter$2$1;

    invoke-direct {v5, p0, v2}, Lco/kr/festfive/adapter/NewFeedAdapter$2$1;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter$2;I)V

    invoke-direct {v3, v4, v5}, Lco/kr/festfive/Dialog/ListSelectDialogItem;-><init>(Ljava/lang/String;Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;)V

    invoke-virtual {v0, v3}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->addItem(Lco/kr/festfive/Dialog/ListSelectDialogItem;)V

    .line 264
    :goto_0
    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->isFixed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    new-instance v3, Lco/kr/festfive/Dialog/ListSelectDialogItem;

    const-string v4, "\ucd5c\uc0c1\ub2e8 \uace0\uc815 \ud574\uc81c"

    new-instance v5, Lco/kr/festfive/adapter/NewFeedAdapter$2$3;

    invoke-direct {v5, p0, v2}, Lco/kr/festfive/adapter/NewFeedAdapter$2$3;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter$2;I)V

    invoke-direct {v3, v4, v5}, Lco/kr/festfive/Dialog/ListSelectDialogItem;-><init>(Ljava/lang/String;Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;)V

    invoke-virtual {v0, v3}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->addItem(Lco/kr/festfive/Dialog/ListSelectDialogItem;)V

    .line 281
    :goto_1
    new-instance v3, Lco/kr/festfive/Dialog/ListSelectDialogItem;

    const-string v4, "\uc218\uc815"

    new-instance v5, Lco/kr/festfive/adapter/NewFeedAdapter$2$5;

    invoke-direct {v5, p0, v2}, Lco/kr/festfive/adapter/NewFeedAdapter$2$5;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter$2;I)V

    invoke-direct {v3, v4, v5}, Lco/kr/festfive/Dialog/ListSelectDialogItem;-><init>(Ljava/lang/String;Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;)V

    invoke-virtual {v0, v3}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->addItem(Lco/kr/festfive/Dialog/ListSelectDialogItem;)V

    .line 301
    new-instance v3, Lco/kr/festfive/Dialog/ListSelectDialogItem;

    const-string v4, "\uc0ad\uc81c"

    new-instance v5, Lco/kr/festfive/adapter/NewFeedAdapter$2$6;

    invoke-direct {v5, p0, v2}, Lco/kr/festfive/adapter/NewFeedAdapter$2$6;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter$2;I)V

    invoke-direct {v3, v4, v5}, Lco/kr/festfive/Dialog/ListSelectDialogItem;-><init>(Ljava/lang/String;Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;)V

    invoke-virtual {v0, v3}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->addItem(Lco/kr/festfive/Dialog/ListSelectDialogItem;)V

    .line 308
    iget-object v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$2;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v3}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2400(Lco/kr/festfive/adapter/NewFeedAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "feedPostProcessDialog"

    invoke-virtual {v0, v3, v4}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 309
    return-void

    .line 255
    :cond_0
    new-instance v3, Lco/kr/festfive/Dialog/ListSelectDialogItem;

    const-string v4, "\uc2b9\uc778\ucde8\uc18c"

    new-instance v5, Lco/kr/festfive/adapter/NewFeedAdapter$2$2;

    invoke-direct {v5, p0, v2}, Lco/kr/festfive/adapter/NewFeedAdapter$2$2;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter$2;I)V

    invoke-direct {v3, v4, v5}, Lco/kr/festfive/Dialog/ListSelectDialogItem;-><init>(Ljava/lang/String;Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;)V

    invoke-virtual {v0, v3}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->addItem(Lco/kr/festfive/Dialog/ListSelectDialogItem;)V

    goto :goto_0

    .line 273
    :cond_1
    new-instance v3, Lco/kr/festfive/Dialog/ListSelectDialogItem;

    const-string v4, "\ucd5c\uc0c1\ub2e8 \uace0\uc815"

    new-instance v5, Lco/kr/festfive/adapter/NewFeedAdapter$2$4;

    invoke-direct {v5, p0, v2}, Lco/kr/festfive/adapter/NewFeedAdapter$2$4;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter$2;I)V

    invoke-direct {v3, v4, v5}, Lco/kr/festfive/Dialog/ListSelectDialogItem;-><init>(Ljava/lang/String;Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;)V

    invoke-virtual {v0, v3}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->addItem(Lco/kr/festfive/Dialog/ListSelectDialogItem;)V

    goto :goto_1
.end method