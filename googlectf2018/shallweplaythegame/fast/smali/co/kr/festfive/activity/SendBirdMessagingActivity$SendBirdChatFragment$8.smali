.class Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$8;
.super Ljava/lang/Object;
.source "SendBirdMessagingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->upload(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

.field final synthetic val$mime:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    .prologue
    .line 1005
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$8;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    iput-object p2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$8;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$8;->val$mime:Ljava/lang/String;

    iput p4, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$8;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1008
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$8;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$8;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$8;->val$mime:Ljava/lang/String;

    iget v3, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$8;->val$size:I

    invoke-static {v0, v1, v2, v3}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->access$1200(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1009
    return-void
.end method
