.class Lco/kr/festfive/activity/SendBirdUserListActivity$1;
.super Ljava/lang/Object;
.source "SendBirdUserListActivity.java"

# interfaces
.implements Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserListHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdUserListActivity;->initFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdUserListActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdUserListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdUserListActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSelected(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sendbird/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "users":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sendbird/android/model/User;>;"
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sendbird/android/model/User;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lco/kr/festfive/activity/SendBirdUserListActivity;->access$002(Lco/kr/festfive/activity/SendBirdUserListActivity;Ljava/util/List;)Ljava/util/List;

    .line 153
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->access$000(Lco/kr/festfive/activity/SendBirdUserListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 154
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->access$100(Lco/kr/festfive/activity/SendBirdUserListActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "#6f5ca7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->access$100(Lco/kr/festfive/activity/SendBirdUserListActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "#35f8ca"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method
