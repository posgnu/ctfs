.class Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$5;
.super Ljava/lang/Object;
.source "SendBirdMessagingActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->initUIComponents(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    .prologue
    .line 730
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$5;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 743
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$5;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->access$1000(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 745
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 746
    invoke-static {}, Lcom/sendbird/android/SendBird;->typeStart()V

    .line 750
    :goto_1
    return-void

    .line 743
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 748
    :cond_1
    invoke-static {}, Lcom/sendbird/android/SendBird;->typeEnd()V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 734
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 739
    return-void
.end method
