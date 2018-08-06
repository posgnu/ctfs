.class Lco/kr/festfive/activity/SendBirdUserListActivity$3;
.super Ljava/lang/Object;
.source "SendBirdUserListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdUserListActivity;->initUIComponents()V
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
    .line 180
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v3, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/SendBirdUserListActivity;->access$000(Lco/kr/festfive/activity/SendBirdUserListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 184
    iget-object v3, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/SendBirdUserListActivity;->access$000(Lco/kr/festfive/activity/SendBirdUserListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 185
    .local v2, "userIds":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 186
    iget-object v3, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/SendBirdUserListActivity;->access$000(Lco/kr/festfive/activity/SendBirdUserListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/User;

    invoke-virtual {v3}, Lcom/sendbird/android/model/User;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v0, "data":Landroid/content/Intent;
    const-string v3, "userIds"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    iget-object v3, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->setResult(ILandroid/content/Intent;)V

    .line 194
    .end local v0    # "data":Landroid/content/Intent;
    .end local v1    # "i":I
    .end local v2    # "userIds":[Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity;

    invoke-virtual {v3}, Lco/kr/festfive/activity/SendBirdUserListActivity;->finish()V

    .line 195
    return-void

    .line 192
    :cond_1
    iget-object v3, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lco/kr/festfive/activity/SendBirdUserListActivity;->setResult(I)V

    goto :goto_1
.end method
