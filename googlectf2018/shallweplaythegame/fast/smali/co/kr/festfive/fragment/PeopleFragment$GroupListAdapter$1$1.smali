.class Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1$1;
.super Ljava/lang/Object;
.source "PeopleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;I)V
    .locals 0
    .param p1, "this$2"    # Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;

    .prologue
    .line 553
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1$1;->this$2:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;

    iput p2, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 557
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1$1;->this$2:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;

    iget-object v2, v2, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;->this$1:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

    iget-object v2, v2, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/PeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/kr/festfive/activity/WriteMemberActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 559
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1$1;->this$2:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;

    iget-object v2, v2, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;->this$1:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

    iget-object v2, v2, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/PeopleFragment;->access$1100(Lco/kr/festfive/fragment/PeopleFragment;)Lcom/google/gson/JsonArray;

    move-result-object v2

    iget v3, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1$1;->val$position:I

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 560
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "companyId"

    const-string v3, "company_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    iget-object v2, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1$1;->this$2:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;

    iget-object v2, v2, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;->this$1:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

    iget-object v2, v2, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-virtual {v2, v0}, Lco/kr/festfive/fragment/PeopleFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    iget-object v2, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1$1;->this$2:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;

    iget-object v2, v2, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;->this$1:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

    iget-object v2, v2, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/PeopleFragment;->access$700(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 567
    return-void

    .line 562
    :catch_0
    move-exception v2

    goto :goto_0
.end method
