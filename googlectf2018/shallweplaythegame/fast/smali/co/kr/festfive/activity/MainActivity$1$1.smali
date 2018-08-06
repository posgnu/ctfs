.class Lco/kr/festfive/activity/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/MainActivity$1;->onMessagingChannelUpdated(Lcom/sendbird/android/model/MessagingChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/activity/MainActivity$1;

.field final synthetic val$message:Lcom/sendbird/android/model/Message;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/MainActivity$1;Lcom/sendbird/android/model/Message;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/activity/MainActivity$1;

    .prologue
    .line 175
    iput-object p1, p0, Lco/kr/festfive/activity/MainActivity$1$1;->this$1:Lco/kr/festfive/activity/MainActivity$1;

    iput-object p2, p0, Lco/kr/festfive/activity/MainActivity$1$1;->val$message:Lcom/sendbird/android/model/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 178
    iget-object v7, p0, Lco/kr/festfive/activity/MainActivity$1$1;->this$1:Lco/kr/festfive/activity/MainActivity$1;

    iget-object v7, v7, Lco/kr/festfive/activity/MainActivity$1;->this$0:Lco/kr/festfive/activity/MainActivity;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 179
    .local v1, "mInflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0a00a0

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 181
    .local v3, "myView":Landroid/view/View;
    const v7, 0x7f0801d7

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 182
    .local v4, "senderTv":Landroid/widget/TextView;
    const v7, 0x7f080146

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 185
    .local v2, "messageTv":Landroid/widget/TextView;
    iget-object v7, p0, Lco/kr/festfive/activity/MainActivity$1$1;->val$message:Lcom/sendbird/android/model/Message;

    invoke-virtual {v7}, Lcom/sendbird/android/model/Message;->getSenderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v7, p0, Lco/kr/festfive/activity/MainActivity$1$1;->val$message:Lcom/sendbird/android/model/Message;

    invoke-virtual {v7}, Lcom/sendbird/android/model/Message;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v7, p0, Lco/kr/festfive/activity/MainActivity$1$1;->this$1:Lco/kr/festfive/activity/MainActivity$1;

    iget-object v7, v7, Lco/kr/festfive/activity/MainActivity$1;->this$0:Lco/kr/festfive/activity/MainActivity;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Lco/kr/festfive/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 189
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 191
    .local v0, "display":Landroid/view/Display;
    new-instance v5, Landroid/widget/Toast;

    iget-object v7, p0, Lco/kr/festfive/activity/MainActivity$1$1;->this$1:Lco/kr/festfive/activity/MainActivity$1;

    iget-object v7, v7, Lco/kr/festfive/activity/MainActivity$1;->this$0:Lco/kr/festfive/activity/MainActivity;

    invoke-direct {v5, v7}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 192
    .local v5, "toast":Landroid/widget/Toast;
    const/16 v7, 0x30

    const/4 v8, 0x0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    invoke-virtual {v5, v7, v8, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 193
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 194
    invoke-virtual {v5, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 195
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 196
    return-void
.end method
