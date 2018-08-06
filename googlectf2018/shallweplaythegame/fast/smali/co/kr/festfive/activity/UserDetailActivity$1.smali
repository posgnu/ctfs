.class Lco/kr/festfive/activity/UserDetailActivity$1;
.super Ljava/lang/Object;
.source "UserDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/UserDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/UserDetailActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/UserDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/UserDetailActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lco/kr/festfive/activity/UserDetailActivity$1;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity$1;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/UserDetailActivity;->access$000(Lco/kr/festfive/activity/UserDetailActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lco/kr/festfive/Dialog/FullImageDialog;

    iget-object v1, p0, Lco/kr/festfive/activity/UserDetailActivity$1;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/UserDetailActivity;->access$100(Lco/kr/festfive/activity/UserDetailActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/activity/UserDetailActivity$1;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/UserDetailActivity;->access$000(Lco/kr/festfive/activity/UserDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lco/kr/festfive/Dialog/FullImageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lco/kr/festfive/Dialog/FullImageDialog;->show()V

    .line 90
    :cond_0
    return-void
.end method
