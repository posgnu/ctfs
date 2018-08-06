.class Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$4;
.super Ljava/lang/Object;
.source "SendBirdMessagingActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 703
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$4;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 706
    packed-switch p2, :pswitch_data_0

    .line 711
    const/4 v0, 0x0

    .line 713
    :goto_0
    return v0

    .line 708
    :pswitch_0
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$4;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->access$900(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)V

    .line 713
    const/4 v0, 0x1

    goto :goto_0

    .line 706
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
