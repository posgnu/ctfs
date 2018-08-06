.class Lco/kr/festfive/activity/SendBirdChannelListActivity$3;
.super Ljava/lang/Object;
.source "SendBirdChannelListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdChannelListActivity;->initUIComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdChannelListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdChannelListActivity;

    .prologue
    .line 169
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "SendBird"

    .line 173
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird In App version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sendbird/android/SendBird;->VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lco/kr/festfive/activity/SendBirdChannelListActivity$3$1;

    invoke-direct {v2, p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$3$1;-><init>(Lco/kr/festfive/activity/SendBirdChannelListActivity$3;)V

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 180
    return-void
.end method
