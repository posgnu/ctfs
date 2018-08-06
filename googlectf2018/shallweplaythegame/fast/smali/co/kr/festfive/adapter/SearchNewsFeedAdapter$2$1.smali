.class Lco/kr/festfive/adapter/SearchNewsFeedAdapter$2$1;
.super Ljava/lang/Object;
.source "SearchNewsFeedAdapter.java"

# interfaces
.implements Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/adapter/SearchNewsFeedAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/adapter/SearchNewsFeedAdapter$2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/SearchNewsFeedAdapter$2;I)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/adapter/SearchNewsFeedAdapter$2;

    .prologue
    .line 245
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$2$1;->this$1:Lco/kr/festfive/adapter/SearchNewsFeedAdapter$2;

    iput p2, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$2$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$2$1;->this$1:Lco/kr/festfive/adapter/SearchNewsFeedAdapter$2;

    iget-object v1, v0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$2;->this$0:Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$2$1;->this$1:Lco/kr/festfive/adapter/SearchNewsFeedAdapter$2;

    iget-object v0, v0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$2;->this$0:Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    iget v2, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$2$1;->val$position:I

    invoke-virtual {v0, v2}, Lco/kr/festfive/adapter/SearchNewsFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/NewFeedListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lco/kr/festfive/adapter/SearchNewsFeedAdapter;->access$2300(Lco/kr/festfive/adapter/SearchNewsFeedAdapter;Ljava/lang/String;Z)V

    .line 249
    return-void
.end method
