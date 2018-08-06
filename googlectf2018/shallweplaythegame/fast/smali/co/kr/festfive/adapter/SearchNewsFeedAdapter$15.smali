.class Lco/kr/festfive/adapter/SearchNewsFeedAdapter$15;
.super Landroid/os/Handler;
.source "SearchNewsFeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/adapter/SearchNewsFeedAdapter;
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
    .line 791
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$15;->this$0:Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 793
    iget-object v0, p0, Lco/kr/festfive/adapter/SearchNewsFeedAdapter$15;->this$0:Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    invoke-virtual {v0}, Lco/kr/festfive/adapter/SearchNewsFeedAdapter;->notifyDataSetChanged()V

    .line 794
    return-void
.end method
