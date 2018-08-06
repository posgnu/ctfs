.class Lco/kr/festfive/activity/SendBirdChatActivity$1;
.super Ljava/lang/Object;
.source "SendBirdChatActivity.java"

# interfaces
.implements Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdChatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdChatActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdChatActivity;

    .prologue
    .line 171
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 187
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 188
    return-void
.end method

.method public onResult(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/model/MessageModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "messageModels":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/model/MessageModel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/model/MessageModel;

    .line 175
    .local v0, "model":Lcom/sendbird/android/model/MessageModel;
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdChatActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$000(Lco/kr/festfive/activity/SendBirdChatActivity;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->addMessageModel(Lcom/sendbird/android/model/MessageModel;)V

    goto :goto_0

    .line 179
    .end local v0    # "model":Lcom/sendbird/android/model/MessageModel;
    :cond_0
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$000(Lco/kr/festfive/activity/SendBirdChatActivity;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->notifyDataSetChanged()V

    .line 180
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$100(Lco/kr/festfive/activity/SendBirdChatActivity;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    move-result-object v1

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->access$200(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdChatActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$000(Lco/kr/festfive/activity/SendBirdChatActivity;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 181
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$300(Lco/kr/festfive/activity/SendBirdChatActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sendbird/android/SendBird;->join(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$000(Lco/kr/festfive/activity/SendBirdChatActivity;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->getMaxMessageTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sendbird/android/SendBird;->connect(J)V

    .line 183
    return-void
.end method
