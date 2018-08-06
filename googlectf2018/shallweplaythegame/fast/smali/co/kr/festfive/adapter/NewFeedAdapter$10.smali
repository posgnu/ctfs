.class Lco/kr/festfive/adapter/NewFeedAdapter$10;
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
    .line 502
    iput-object p1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$10;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 505
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 506
    .local v0, "url":Ljava/lang/String;
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 507
    :cond_0
    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$10;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v1}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$3100(Lco/kr/festfive/adapter/NewFeedAdapter;)Lco/kr/festfive/listener/ItemActionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lco/kr/festfive/listener/ItemActionListener;->link(Ljava/lang/String;)V

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$10;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v1}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$3100(Lco/kr/festfive/adapter/NewFeedAdapter;)Lco/kr/festfive/listener/ItemActionListener;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lco/kr/festfive/listener/ItemActionListener;->link(Ljava/lang/String;)V

    goto :goto_0
.end method
