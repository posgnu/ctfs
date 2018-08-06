.class Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$9;
.super Ljava/lang/Object;
.source "SendBirdMessagingActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    .prologue
    .line 2271
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$9;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2274
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2276
    .local v0, "id":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$9;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->access$1600(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\uc774\ubbf8\uc9c0 \uc800\uc7a5"

    .line 2277
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\uc800\uc7a5 \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    .line 2278
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\uc608"

    new-instance v3, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$9$2;

    invoke-direct {v3, p0, v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$9$2;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$9;I)V

    .line 2279
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\uc544\ub2c8\uc694"

    new-instance v3, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$9$1;

    invoke-direct {v3, p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$9$1;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$9;)V

    .line 2291
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2296
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2297
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2299
    const/4 v1, 0x0

    return v1
.end method
