.class Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SendBirdChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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

.field final synthetic this$1:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

.field private type:I


# direct methods
.method private constructor <init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)V
    .locals 1

    .prologue
    .line 1828
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->this$1:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1829
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->holder:Ljava/util/Hashtable;

    return-void
.end method

.method synthetic constructor <init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;Lco/kr/festfive/activity/SendBirdChatActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;
    .param p2, "x1"    # Lco/kr/festfive/activity/SendBirdChatActivity$1;

    .prologue
    .line 1828
    invoke-direct {p0, p1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)V

    return-void
.end method


# virtual methods
.method public getView(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    .line 1844
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->holder:Ljava/util/Hashtable;

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
    .line 1848
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 1833
    iget v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->type:I

    return v0
.end method

.method public setView(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 1840
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->holder:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1837
    iput p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->type:I

    .line 1838
    return-void
.end method
