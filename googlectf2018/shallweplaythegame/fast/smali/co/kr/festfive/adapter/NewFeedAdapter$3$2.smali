.class Lco/kr/festfive/adapter/NewFeedAdapter$3$2;
.super Ljava/lang/Object;
.source "NewFeedAdapter.java"

# interfaces
.implements Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/adapter/NewFeedAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/NewFeedAdapter$3;I)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/adapter/NewFeedAdapter$3;

    .prologue
    .line 339
    iput-object p1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$2;->this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

    iput p2, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect()V
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$2;->this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

    iget-object v1, v0, Lco/kr/festfive/adapter/NewFeedAdapter$3;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    iget-object v0, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$2;->this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter$3;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    iget v2, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$2;->val$position:I

    invoke-virtual {v0, v2}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/NewFeedListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2500(Lco/kr/festfive/adapter/NewFeedAdapter;Ljava/lang/String;)V

    .line 343
    return-void
.end method