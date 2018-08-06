.class Lco/kr/festfive/activity/SendBirdChannelListActivity$1;
.super Ljava/lang/Object;
.source "SendBirdChannelListActivity.java"

# interfaces
.implements Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelListHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdChannelListActivity;->initFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdChannelListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdChannelListActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelSelected(Lcom/sendbird/android/model/Channel;)V
    .locals 3
    .param p1, "channel"    # Lcom/sendbird/android/model/Channel;

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "channelUrl"

    invoke-virtual {p1}, Lcom/sendbird/android/model/Channel;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->setResult(ILandroid/content/Intent;)V

    .line 146
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity;

    invoke-virtual {v1}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->finish()V

    .line 147
    return-void
.end method
