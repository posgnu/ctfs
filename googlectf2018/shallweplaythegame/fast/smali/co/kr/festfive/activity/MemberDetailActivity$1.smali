.class Lco/kr/festfive/activity/MemberDetailActivity$1;
.super Ljava/lang/Object;
.source "MemberDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/MemberDetailActivity;->drawCompanyDetail(Lcom/google/gson/JsonObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/MemberDetailActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/MemberDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/MemberDetailActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lco/kr/festfive/activity/MemberDetailActivity$1;->this$0:Lco/kr/festfive/activity/MemberDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v2, p0, Lco/kr/festfive/activity/MemberDetailActivity$1;->this$0:Lco/kr/festfive/activity/MemberDetailActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/MemberDetailActivity;->access$000(Lco/kr/festfive/activity/MemberDetailActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v2

    const-string v3, "user_id"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "myId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lco/kr/festfive/activity/MemberDetailActivity$1;->this$0:Lco/kr/festfive/activity/MemberDetailActivity;

    invoke-virtual {v2}, Lco/kr/festfive/activity/MemberDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lco/kr/festfive/fragment/MyDetailUserActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lco/kr/festfive/activity/MemberDetailActivity$1;->this$0:Lco/kr/festfive/activity/MemberDetailActivity;

    invoke-virtual {v2, v0}, Lco/kr/festfive/activity/MemberDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    :goto_0
    return-void

    .line 120
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lco/kr/festfive/activity/MemberDetailActivity$1;->this$0:Lco/kr/festfive/activity/MemberDetailActivity;

    invoke-virtual {v2}, Lco/kr/festfive/activity/MemberDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lco/kr/festfive/activity/UserDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "targetUserId"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v2, p0, Lco/kr/festfive/activity/MemberDetailActivity$1;->this$0:Lco/kr/festfive/activity/MemberDetailActivity;

    invoke-virtual {v2, v0}, Lco/kr/festfive/activity/MemberDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
