.class Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SendBirdChannelListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private holder:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter$ViewHolder;->holder:Ljava/util/Hashtable;

    return-void
.end method

.method synthetic constructor <init>(Lco/kr/festfive/activity/SendBirdChannelListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lco/kr/festfive/activity/SendBirdChannelListActivity$1;

    .prologue
    .line 438
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter$ViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    .line 446
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter$ViewHolder;->holder:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 450
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setView(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 442
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter$ViewHolder;->holder:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    return-void
.end method
