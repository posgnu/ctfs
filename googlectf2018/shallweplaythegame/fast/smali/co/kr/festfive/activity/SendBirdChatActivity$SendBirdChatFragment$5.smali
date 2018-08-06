.class Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$5;
.super Ljava/lang/Object;
.source "SendBirdChatActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->initUIComponents(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    .prologue
    .line 589
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$5;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 592
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$5;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdChatActivity$Helper;->hideKeyboard(Landroid/app/Activity;)V

    .line 593
    const/4 v0, 0x0

    return v0
.end method
