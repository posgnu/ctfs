.class Lco/kr/festfive/adapter/NewFeedAdapter$5;
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
    .line 366
    iput-object p1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$5;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 370
    .local v0, "index":I
    iget-object v2, p0, Lco/kr/festfive/adapter/NewFeedAdapter$5;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-virtual {v2, v0}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "userId":Ljava/lang/String;
    iget-object v2, p0, Lco/kr/festfive/adapter/NewFeedAdapter$5;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v2}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2600(Lco/kr/festfive/adapter/NewFeedAdapter;)Lco/kr/festfive/listener/DeleteListener;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lco/kr/festfive/listener/DeleteListener;->userDetail(Ljava/lang/String;)V

    .line 372
    return-void
.end method
