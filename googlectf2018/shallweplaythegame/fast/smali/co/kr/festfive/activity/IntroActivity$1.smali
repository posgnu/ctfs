.class Lco/kr/festfive/activity/IntroActivity$1;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/activity/IntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/IntroActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/IntroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/IntroActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lco/kr/festfive/activity/IntroActivity$1;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lco/kr/festfive/activity/IntroActivity$1;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 90
    iget-object v2, p0, Lco/kr/festfive/activity/IntroActivity$1;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    invoke-static {v2, v3}, Lco/kr/festfive/activity/IntroActivity;->access$002(Lco/kr/festfive/activity/IntroActivity;Lco/kr/festfive/manager/FestPreferenceManager;)Lco/kr/festfive/manager/FestPreferenceManager;

    .line 93
    :cond_0
    iget-object v2, p0, Lco/kr/festfive/activity/IntroActivity$1;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v2

    const-string v3, "user_id"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "userId":Ljava/lang/String;
    const-string v2, "cks4451"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GCM Registration Token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lco/kr/festfive/activity/IntroActivity$1;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v4}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    const-string v5, "registration_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v2, ""

    if-eq v1, v2, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lco/kr/festfive/activity/IntroActivity$1;->this$0:Lco/kr/festfive/activity/IntroActivity;

    const-class v3, Lco/kr/festfive/activity/LoginActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lco/kr/festfive/activity/IntroActivity$1;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-virtual {v2, v0}, Lco/kr/festfive/activity/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    iget-object v2, p0, Lco/kr/festfive/activity/IntroActivity$1;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-virtual {v2}, Lco/kr/festfive/activity/IntroActivity;->finish()V

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_2
    iget-object v2, p0, Lco/kr/festfive/activity/IntroActivity$1;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/IntroActivity;->access$100(Lco/kr/festfive/activity/IntroActivity;)V

    goto :goto_0
.end method
