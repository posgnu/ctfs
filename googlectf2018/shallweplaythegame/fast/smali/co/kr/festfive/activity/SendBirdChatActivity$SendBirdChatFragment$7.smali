.class Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$7;
.super Ljava/lang/Object;
.source "SendBirdChatActivity.java"

# interfaces
.implements Lcom/sendbird/android/SendBirdFileUploadEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->upload(Landroid/net/Uri;)V
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
    .line 813
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$7;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpload(Lcom/sendbird/android/model/FileInfo;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "fileInfo"    # Lcom/sendbird/android/model/FileInfo;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 816
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$7;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->access$800(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;Z)V

    .line 817
    if-eqz p2, :cond_0

    .line 818
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 819
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$7;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Fail to upload the file."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 824
    :goto_0
    return-void

    .line 823
    :cond_0
    invoke-static {p1}, Lcom/sendbird/android/SendBird;->sendFile(Lcom/sendbird/android/model/FileInfo;)V

    goto :goto_0
.end method
