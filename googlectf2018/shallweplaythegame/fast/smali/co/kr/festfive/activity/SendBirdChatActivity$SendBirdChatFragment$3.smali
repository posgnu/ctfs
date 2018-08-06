.class Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$3;
.super Ljava/lang/Object;
.source "SendBirdChatActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 560
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$3;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 563
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 564
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$3;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->access$500(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)V

    .line 567
    :cond_0
    const/4 v0, 0x1

    .line 569
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
