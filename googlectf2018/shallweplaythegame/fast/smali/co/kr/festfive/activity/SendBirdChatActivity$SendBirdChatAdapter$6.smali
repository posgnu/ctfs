.class Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$6;
.super Ljava/lang/Object;
.source "SendBirdChatActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$item:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    .prologue
    .line 1438
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$6;->this$1:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    iput-object p2, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$6;->val$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 1470
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "\ubcf5\uc0ac\ud558\uae30"

    aput-object v2, v0, v1

    const-string v1, "\uc0ad\uc81c\ud558\uae30"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "\ucde8\uc18c"

    aput-object v2, v0, v1

    .line 1471
    .local v0, "items":[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$6;->this$1:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->access$1100(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\uc120\ud0dd"

    .line 1472
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$6$1;

    invoke-direct {v2, p0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$6$1;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$6;)V

    .line 1473
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1504
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1506
    return v3
.end method
