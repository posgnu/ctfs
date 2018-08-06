.class Lco/kr/festfive/adapter/NewFeedAdapter$7;
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
    .line 423
    iput-object p1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$7;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 428
    .local v0, "id":I
    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$7;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v1}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2800(Lco/kr/festfive/adapter/NewFeedAdapter;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$7;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v1}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2800(Lco/kr/festfive/adapter/NewFeedAdapter;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$7;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v1}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2800(Lco/kr/festfive/adapter/NewFeedAdapter;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 434
    :cond_0
    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$7;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-virtual {v1, v0}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->getIsLike()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$7;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v1, v0, p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2900(Lco/kr/festfive/adapter/NewFeedAdapter;ILandroid/view/View;)V

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$7;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v1, v0, p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$3000(Lco/kr/festfive/adapter/NewFeedAdapter;ILandroid/view/View;)V

    goto :goto_0
.end method
