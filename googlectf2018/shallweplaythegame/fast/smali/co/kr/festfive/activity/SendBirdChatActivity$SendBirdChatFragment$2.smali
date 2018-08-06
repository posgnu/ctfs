.class Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$2;
.super Ljava/lang/Object;
.source "SendBirdChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 550
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$2;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 553
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 554
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$2;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    const-string v2, "Select Picture"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 557
    return-void
.end method
