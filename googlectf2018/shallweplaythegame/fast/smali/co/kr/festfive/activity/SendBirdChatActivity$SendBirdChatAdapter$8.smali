.class Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$8;
.super Ljava/lang/Object;
.source "SendBirdChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    .prologue
    .line 1727
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$8;->this$1:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1730
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1734
    .local v1, "id":I
    new-instance v0, Lco/kr/festfive/Dialog/FullImageDialog;

    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$8;->this$1:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    iget-object v3, v2, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$8;->this$1:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    iget-object v2, v2, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$000(Lco/kr/festfive/activity/SendBirdChatActivity;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sendbird/android/model/FileLink;

    invoke-virtual {v2}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sendbird/android/model/FileInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lco/kr/festfive/Dialog/FullImageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1737
    .local v0, "fullImageDialog":Lco/kr/festfive/Dialog/FullImageDialog;
    invoke-virtual {v0}, Lco/kr/festfive/Dialog/FullImageDialog;->show()V

    .line 1739
    return-void
.end method
