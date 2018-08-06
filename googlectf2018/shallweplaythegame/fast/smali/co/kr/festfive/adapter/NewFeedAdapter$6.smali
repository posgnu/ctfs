.class Lco/kr/festfive/adapter/NewFeedAdapter$6;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/NewFeedAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/NewFeedAdapter;

    .prologue
    .line 388
    iput-object p1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$6;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    iput p2, p0, Lco/kr/festfive/adapter/NewFeedAdapter$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 391
    iget-object v0, p0, Lco/kr/festfive/adapter/NewFeedAdapter$6;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v0}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2700(Lco/kr/festfive/adapter/NewFeedAdapter;)Lco/kr/festfive/adapter/NewFeedAdapter$OnDetailListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lco/kr/festfive/adapter/NewFeedAdapter$6;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v0}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2700(Lco/kr/festfive/adapter/NewFeedAdapter;)Lco/kr/festfive/adapter/NewFeedAdapter$OnDetailListener;

    move-result-object v1

    iget-object v0, p0, Lco/kr/festfive/adapter/NewFeedAdapter$6;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    iget v2, p0, Lco/kr/festfive/adapter/NewFeedAdapter$6;->val$position:I

    invoke-virtual {v0, v2}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/NewFeedListItem;

    invoke-interface {v1, v0}, Lco/kr/festfive/adapter/NewFeedAdapter$OnDetailListener;->onDetail(Lco/kr/festfive/model/NewFeedListItem;)V

    .line 394
    :cond_0
    return-void
.end method
