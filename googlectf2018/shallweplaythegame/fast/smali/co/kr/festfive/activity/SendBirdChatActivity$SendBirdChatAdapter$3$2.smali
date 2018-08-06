.class Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$3$2;
.super Ljava/lang/Object;
.source "SendBirdChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$3;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$3;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$3;I)V
    .locals 0
    .param p1, "this$2"    # Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$3;

    .prologue
    .line 1222
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$3$2;->this$2:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$3;

    iput p2, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$3$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1228
    :try_start_0
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$3$2;->this$2:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$3;

    iget-object v1, v1, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$3;->this$1:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    iget-object v1, v1, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$000(Lco/kr/festfive/activity/SendBirdChatActivity;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    move-result-object v1

    iget v2, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$3$2;->val$id:I

    invoke-virtual {v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sendbird/android/model/FileLink;

    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$3$2;->this$2:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$3;

    iget-object v2, v2, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$3;->this$1:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->access$1100(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$1200(Lcom/sendbird/android/model/FileLink;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    :goto_0
    return-void

    .line 1229
    :catch_0
    move-exception v0

    .line 1230
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
