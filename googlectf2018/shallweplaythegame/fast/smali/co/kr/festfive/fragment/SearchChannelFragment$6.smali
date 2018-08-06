.class Lco/kr/festfive/fragment/SearchChannelFragment$6;
.super Ljava/lang/Object;
.source "SearchChannelFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/fragment/SearchChannelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/SearchChannelFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/SearchChannelFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/SearchChannelFragment;

    .prologue
    .line 350
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 353
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v6

    invoke-virtual {v6}, Lco/kr/festfive/FestManager;->getJoinUserList()Ljava/util/ArrayList;

    move-result-object v5

    .line 354
    .local v5, "joinUserList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v6

    invoke-virtual {v6}, Lco/kr/festfive/FestManager;->getJoinUserChannelList()Ljava/util/ArrayList;

    move-result-object v4

    .line 356
    .local v4, "joinUserChannelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_0

    .line 357
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-virtual {v6}, Lco/kr/festfive/fragment/SearchChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    iget-object v7, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    iget-object v7, v7, Lco/kr/festfive/fragment/SearchChannelFragment;->userId:Ljava/lang/String;

    iget-object v8, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    iget-object v8, v8, Lco/kr/festfive/fragment/SearchChannelFragment;->userName:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v9}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$400(Lco/kr/festfive/fragment/SearchChannelFragment;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->makeMessagingStartArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 359
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 360
    iget-object v6, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-virtual {v6, v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->startActivity(Landroid/content/Intent;)V

    .line 399
    :goto_0
    return-void

    .line 367
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 368
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-virtual {v6}, Lco/kr/festfive/fragment/SearchChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v6, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    iget-object v7, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    iget-object v7, v7, Lco/kr/festfive/fragment/SearchChannelFragment;->userId:Ljava/lang/String;

    iget-object v8, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    iget-object v8, v8, Lco/kr/festfive/fragment/SearchChannelFragment;->userName:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v9}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$400(Lco/kr/festfive/fragment/SearchChannelFragment;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->makeMessagingStartArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 370
    .restart local v0    # "args":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 371
    iget-object v6, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-virtual {v6, v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 378
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v3, 0x1

    .line 379
    .local v3, "isJoin":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 380
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v7}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$400(Lco/kr/festfive/fragment/SearchChannelFragment;)Ljava/lang/String;

    move-result-object v7

    if-eq v6, v7, :cond_2

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v7}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$400(Lco/kr/festfive/fragment/SearchChannelFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 381
    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-virtual {v6}, Lco/kr/festfive/fragment/SearchChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 382
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v7, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    iget-object v6, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    iget-object v8, v6, Lco/kr/festfive/fragment/SearchChannelFragment;->userId:Ljava/lang/String;

    iget-object v6, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v6}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$400(Lco/kr/festfive/fragment/SearchChannelFragment;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v8, v9, v6}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->makeMessagingJoinArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 383
    .restart local v0    # "args":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 384
    iget-object v6, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-virtual {v6, v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 379
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    :cond_4
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-virtual {v6}, Lco/kr/festfive/fragment/SearchChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v6, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    iget-object v7, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    iget-object v7, v7, Lco/kr/festfive/fragment/SearchChannelFragment;->userId:Ljava/lang/String;

    iget-object v8, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    iget-object v8, v8, Lco/kr/festfive/fragment/SearchChannelFragment;->userName:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v9}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$400(Lco/kr/festfive/fragment/SearchChannelFragment;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->makeMessagingStartArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 391
    .restart local v0    # "args":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 392
    iget-object v6, p0, Lco/kr/festfive/fragment/SearchChannelFragment$6;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-virtual {v6, v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
