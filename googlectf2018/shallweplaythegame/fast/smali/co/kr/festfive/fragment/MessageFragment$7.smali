.class Lco/kr/festfive/fragment/MessageFragment$7;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MessageFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/MessageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/MessageFragment;

    .prologue
    .line 658
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageFragment$7;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 670
    const-string v0, "cks4451"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMessagingChannelListQuery="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-void
.end method

.method public onResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/model/MessagingChannel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/model/MessagingChannel;>;"
    const-string v0, "cks4451"

    const-string v1, "mMessagingChannelListQuery=onResult"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return-void
.end method
