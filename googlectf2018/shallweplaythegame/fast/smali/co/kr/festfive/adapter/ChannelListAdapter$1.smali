.class Lco/kr/festfive/adapter/ChannelListAdapter$1;
.super Ljava/lang/Object;
.source "ChannelListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/adapter/ChannelListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/adapter/ChannelListAdapter;


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/ChannelListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/ChannelListAdapter;

    .prologue
    .line 85
    iput-object p1, p0, Lco/kr/festfive/adapter/ChannelListAdapter$1;->this$0:Lco/kr/festfive/adapter/ChannelListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 90
    .local v0, "index":I
    iget-object v2, p0, Lco/kr/festfive/adapter/ChannelListAdapter$1;->this$0:Lco/kr/festfive/adapter/ChannelListAdapter;

    invoke-virtual {v2, v0}, Lco/kr/festfive/adapter/ChannelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/ChannelListItem;->getId()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "userId":Ljava/lang/String;
    iget-object v2, p0, Lco/kr/festfive/adapter/ChannelListAdapter$1;->this$0:Lco/kr/festfive/adapter/ChannelListAdapter;

    invoke-static {v2}, Lco/kr/festfive/adapter/ChannelListAdapter;->access$700(Lco/kr/festfive/adapter/ChannelListAdapter;)Lco/kr/festfive/listener/DeleteListener;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lco/kr/festfive/listener/DeleteListener;->userDetail(Ljava/lang/String;)V

    .line 92
    return-void
.end method
