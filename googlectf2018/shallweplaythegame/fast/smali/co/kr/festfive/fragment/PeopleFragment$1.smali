.class Lco/kr/festfive/fragment/PeopleFragment$1;
.super Ljava/lang/Object;
.source "PeopleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/PeopleFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/PeopleFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/PeopleFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/PeopleFragment;

    .prologue
    .line 120
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment$1;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v2, p0, Lco/kr/festfive/fragment/PeopleFragment$1;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/PeopleFragment;->access$000(Lco/kr/festfive/fragment/PeopleFragment;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 124
    iget-object v2, p0, Lco/kr/festfive/fragment/PeopleFragment$1;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    invoke-static {v2, v3}, Lco/kr/festfive/fragment/PeopleFragment;->access$002(Lco/kr/festfive/fragment/PeopleFragment;Lco/kr/festfive/manager/FestPreferenceManager;)Lco/kr/festfive/manager/FestPreferenceManager;

    .line 127
    :cond_0
    iget-object v2, p0, Lco/kr/festfive/fragment/PeopleFragment$1;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/PeopleFragment;->access$000(Lco/kr/festfive/fragment/PeopleFragment;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v2

    const-string v3, "user_level"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "userLevel":Ljava/lang/String;
    const-string v2, "F"

    if-eq v1, v2, :cond_1

    const-string v2, "F"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 131
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lco/kr/festfive/fragment/PeopleFragment$1;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/PeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lco/kr/festfive/fragment/PeopleFragment$1;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    const/16 v3, 0x3f1

    invoke-virtual {v2, v0, v3}, Lco/kr/festfive/fragment/PeopleFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
