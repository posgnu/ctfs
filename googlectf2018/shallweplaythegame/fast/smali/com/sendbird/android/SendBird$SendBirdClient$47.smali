.class Lcom/sendbird/android/SendBird$SendBirdClient$47;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/WSClient$WSClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->startWSClient(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$reconnect:Z


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Z)V
    .locals 0

    .prologue
    .line 2620
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-boolean p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->val$reconnect:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .prologue
    .line 2697
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2698
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "WS closed."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2700
    :cond_0
    return-void
.end method

.method public onError()V
    .locals 3

    .prologue
    .line 2704
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2705
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "WS error."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2708
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4400(Lcom/sendbird/android/SendBird$SendBirdClient;)I

    move-result v1

    const v2, 0x493e0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4402(Lcom/sendbird/android/SendBird$SendBirdClient;I)I

    .line 2709
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4512(Lcom/sendbird/android/SendBird$SendBirdClient;I)I

    .line 2711
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4500(Lcom/sendbird/android/SendBird$SendBirdClient;)I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 2712
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4400(Lcom/sendbird/android/SendBird$SendBirdClient;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4700(Lcom/sendbird/android/SendBird$SendBirdClient;I)V

    .line 2713
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4428(Lcom/sendbird/android/SendBird$SendBirdClient;I)I

    .line 2726
    :cond_1
    :goto_0
    return-void

    .line 2715
    :cond_2
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2716
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$47$4;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$47$4;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$47;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 2680
    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4600(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Z)Lcom/sendbird/android/SendBird$SendBirdDataType;

    move-result-object v0

    .line 2682
    .local v0, "type":Lcom/sendbird/android/SendBird$SendBirdDataType;
    sget-object v1, Lcom/sendbird/android/SendBird$SendBirdDataType;->None:Lcom/sendbird/android/SendBird$SendBirdDataType;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2683
    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v2, Lcom/sendbird/android/SendBird$SendBirdClient$47$3;

    invoke-direct {v2, p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient$47$3;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$47;Lcom/sendbird/android/SendBird$SendBirdDataType;)V

    invoke-virtual {v1, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2693
    :cond_0
    return-void
.end method

.method public onOpen()V
    .locals 14

    .prologue
    .line 2623
    sget-boolean v8, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 2624
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "WS connected."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2627
    :cond_0
    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v8}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4200(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/WSClient;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 2628
    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v8}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4200(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/WSClient;

    move-result-object v8

    iget-object v9, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v9}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2900(Lcom/sendbird/android/SendBird$SendBirdClient;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sendbird/android/Command;->bLogin(Ljava/lang/String;)Lcom/sendbird/android/Command;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sendbird/android/WSClient;->send(Lcom/sendbird/android/Command;)Z

    .line 2631
    :cond_1
    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v8}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3200(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/model/Channel;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v8}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4200(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/WSClient;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2632
    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v8}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4200(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/WSClient;

    move-result-object v8

    iget-object v9, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v9}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3200(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/model/Channel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sendbird/android/model/Channel;->getId()J

    move-result-wide v10

    iget-object v9, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v9}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4300(Lcom/sendbird/android/SendBird$SendBirdClient;)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcom/sendbird/android/Command;->bJoin(JJ)Lcom/sendbird/android/Command;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sendbird/android/WSClient;->send(Lcom/sendbird/android/Command;)Z

    .line 2633
    iget-boolean v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->val$reconnect:Z

    if-nez v8, :cond_2

    .line 2634
    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v8}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2635
    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v9, Lcom/sendbird/android/SendBird$SendBirdClient$47$1;

    invoke-direct {v9, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$47$1;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$47;)V

    invoke-virtual {v8, v9}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2674
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    const/16 v9, 0xbb8

    invoke-static {v8, v9}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4402(Lcom/sendbird/android/SendBird$SendBirdClient;I)I

    .line 2675
    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4502(Lcom/sendbird/android/SendBird$SendBirdClient;I)I

    .line 2676
    return-void

    .line 2646
    :cond_3
    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v8}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3400(Lcom/sendbird/android/SendBird$SendBirdClient;)Ljava/util/Hashtable;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v8}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3400(Lcom/sendbird/android/SendBird$SendBirdClient;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Hashtable;->size()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v8}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4200(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/WSClient;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2647
    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v8}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3400(Lcom/sendbird/android/SendBird$SendBirdClient;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 2648
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2649
    .local v3, "joinedChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sendbird/android/model/Channel;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2650
    .local v4, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v8}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3400(Lcom/sendbird/android/SendBird$SendBirdClient;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/model/Channel;

    .line 2651
    .local v0, "channel":Lcom/sendbird/android/model/Channel;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2652
    invoke-virtual {v0}, Lcom/sendbird/android/model/Channel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2653
    .local v1, "channelId":Ljava/lang/String;
    const-wide v6, 0x7fffffffffffffffL

    .line 2654
    .local v6, "lastMessagets":J
    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v8}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3500(Lcom/sendbird/android/SendBird$SendBirdClient;)Ljava/util/Hashtable;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v8}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3500(Lcom/sendbird/android/SendBird$SendBirdClient;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 2655
    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v8}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3500(Lcom/sendbird/android/SendBird$SendBirdClient;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2657
    :cond_4
    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v8}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4200(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/WSClient;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sendbird/android/model/Channel;->getId()J

    move-result-wide v10

    iget-object v9, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v9}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$4300(Lcom/sendbird/android/SendBird$SendBirdClient;)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcom/sendbird/android/Command;->bJoin(JJ)Lcom/sendbird/android/Command;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sendbird/android/WSClient;->send(Lcom/sendbird/android/Command;)Z

    goto :goto_1

    .line 2660
    .end local v0    # "channel":Lcom/sendbird/android/model/Channel;
    .end local v1    # "channelId":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "lastMessagets":J
    :cond_5
    iget-boolean v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->val$reconnect:Z

    if-nez v8, :cond_2

    .line 2661
    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v8}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2662
    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$47;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v9, Lcom/sendbird/android/SendBird$SendBirdClient$47$2;

    invoke-direct {v9, p0, v3}, Lcom/sendbird/android/SendBird$SendBirdClient$47$2;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$47;Ljava/util/ArrayList;)V

    invoke-virtual {v8, v9}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
