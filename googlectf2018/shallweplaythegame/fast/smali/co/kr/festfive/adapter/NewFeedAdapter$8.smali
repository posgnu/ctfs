.class Lco/kr/festfive/adapter/NewFeedAdapter$8;
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
    .line 443
    iput-object p1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$8;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/NewFeedListItem;

    .line 448
    .local v0, "newFeedListItem":Lco/kr/festfive/model/NewFeedListItem;
    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$8;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v1}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2800(Lco/kr/festfive/adapter/NewFeedAdapter;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$8;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v1}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2800(Lco/kr/festfive/adapter/NewFeedAdapter;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$8;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v1}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2800(Lco/kr/festfive/adapter/NewFeedAdapter;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 454
    :cond_0
    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$8;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v1}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2600(Lco/kr/festfive/adapter/NewFeedAdapter;)Lco/kr/festfive/listener/DeleteListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lco/kr/festfive/listener/DeleteListener;->detail(Lco/kr/festfive/model/NewFeedListItem;)V

    .line 455
    return-void
.end method
