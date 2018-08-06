.class Lco/kr/festfive/fragment/MessageFragment$2$2;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MessageFragment$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/fragment/MessageFragment$2;

.field final synthetic val$channel:Lco/kr/festfive/model/ChannelListItem;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/MessageFragment$2;Lco/kr/festfive/model/ChannelListItem;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/fragment/MessageFragment$2;

    .prologue
    .line 136
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageFragment$2$2;->this$1:Lco/kr/festfive/fragment/MessageFragment$2;

    iput-object p2, p0, Lco/kr/festfive/fragment/MessageFragment$2$2;->val$channel:Lco/kr/festfive/model/ChannelListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment$2$2;->this$1:Lco/kr/festfive/fragment/MessageFragment$2;

    iget-object v0, v0, Lco/kr/festfive/fragment/MessageFragment$2;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/MessageFragment;->access$000(Lco/kr/festfive/fragment/MessageFragment;)Lco/kr/festfive/adapter/ChannelListAdapter;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$2$2;->val$channel:Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v0, v1}, Lco/kr/festfive/adapter/ChannelListAdapter;->remove(Lco/kr/festfive/model/ChannelListItem;)V

    .line 141
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment$2$2;->this$1:Lco/kr/festfive/fragment/MessageFragment$2;

    iget-object v0, v0, Lco/kr/festfive/fragment/MessageFragment$2;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/MessageFragment;->access$000(Lco/kr/festfive/fragment/MessageFragment;)Lco/kr/festfive/adapter/ChannelListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/adapter/ChannelListAdapter;->notifyDataSetChanged()V

    .line 143
    const-string v0, "cks4451"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemLongClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/MessageFragment$2$2;->val$channel:Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/ChannelListItem;->getChannelUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment$2$2;->val$channel:Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/ChannelListItem;->getIsChannel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment$2$2;->val$channel:Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/ChannelListItem;->getChannelUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->leave(Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment$2$2;->val$channel:Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/ChannelListItem;->getChannelUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->endMessaging(Ljava/lang/String;)V

    goto :goto_0
.end method
