.class Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$9;
.super Ljava/lang/Object;
.source "SendBirdMessagingActivity.java"

# interfaces
.implements Lcom/sendbird/android/SendBirdFileUploadEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->uploadFile(Ljava/lang/String;Ljava/lang/String;I)V
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
    .line 1041
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$9;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpload(Lcom/sendbird/android/model/FileInfo;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "fileInfo"    # Lcom/sendbird/android/model/FileInfo;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1044
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$9;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->access$1300(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;Z)V

    .line 1045
    if-eqz p2, :cond_0

    .line 1046
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1047
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$9;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Fail to upload the file."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1052
    :goto_0
    return-void

    .line 1051
    :cond_0
    invoke-static {p1}, Lcom/sendbird/android/SendBird;->sendFile(Lcom/sendbird/android/model/FileInfo;)V

    goto :goto_0
.end method
