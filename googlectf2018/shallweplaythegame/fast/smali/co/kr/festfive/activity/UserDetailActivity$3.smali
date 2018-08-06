.class Lco/kr/festfive/activity/UserDetailActivity$3;
.super Ljava/lang/Object;
.source "UserDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/activity/UserDetailActivity;
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
    .line 217
    iput-object p1, p0, Lco/kr/festfive/activity/UserDetailActivity$3;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/activity/UserDetailActivity$3;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/UserDetailActivity;->access$1100(Lco/kr/festfive/activity/UserDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 221
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lco/kr/festfive/activity/UserDetailActivity$3;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-virtual {v2, v0}, Lco/kr/festfive/activity/UserDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void
.end method
