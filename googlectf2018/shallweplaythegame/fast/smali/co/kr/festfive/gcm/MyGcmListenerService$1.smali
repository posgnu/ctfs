.class final Lco/kr/festfive/gcm/MyGcmListenerService$1;
.super Ljava/lang/Object;
.source "MyGcmListenerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/gcm/MyGcmListenerService;->showToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$sender:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lco/kr/festfive/gcm/MyGcmListenerService$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lco/kr/festfive/gcm/MyGcmListenerService$1;->val$sender:Ljava/lang/String;

    iput-object p3, p0, Lco/kr/festfive/gcm/MyGcmListenerService$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 176
    iget-object v7, p0, Lco/kr/festfive/gcm/MyGcmListenerService$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 177
    .local v1, "mInflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0a00a0

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 179
    .local v3, "myView":Landroid/view/View;
    const v7, 0x7f0801d7

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 180
    .local v4, "senderTv":Landroid/widget/TextView;
    const v7, 0x7f080146

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 182
    .local v2, "messageTv":Landroid/widget/TextView;
    iget-object v7, p0, Lco/kr/festfive/gcm/MyGcmListenerService$1;->val$sender:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v7, p0, Lco/kr/festfive/gcm/MyGcmListenerService$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v7, p0, Lco/kr/festfive/gcm/MyGcmListenerService$1;->val$context:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 186
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 188
    .local v0, "display":Landroid/view/Display;
    new-instance v5, Landroid/widget/Toast;

    iget-object v7, p0, Lco/kr/festfive/gcm/MyGcmListenerService$1;->val$context:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 189
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

    .line 190
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 191
    invoke-virtual {v5, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 192
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 193
    return-void
.end method
