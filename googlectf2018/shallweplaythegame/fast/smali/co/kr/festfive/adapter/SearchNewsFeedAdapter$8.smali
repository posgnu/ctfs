.class Lco/kr/festfive/adapter/SearchNewsFeedAdapter$8;
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
    .line 467
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$8;->this$0:Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 471
    .local v0, "word":Ljava/lang/String;
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$8;->this$0:Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    invoke-static {v1}, Lco/kr/festfive/adapter/SearchNewsFeedAdapter;->access$3100(Lco/kr/festfive/adapter/SearchNewsFeedAdapter;)Lco/kr/festfive/listener/ItemActionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lco/kr/festfive/listener/ItemActionListener;->search(Ljava/lang/String;)V

    .line 472
    return-void
.end method
