.class Lcom/sendbird/android/MessagingChannelListQuery$1;
.super Ljava/lang/Object;
.source "MessagingChannelListQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/MessagingChannelListQuery;->next(Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/MessagingChannelListQuery;

.field final synthetic val$handler:Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;


# direct methods
.method constructor <init>(Lcom/sendbird/android/MessagingChannelListQuery;Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sendbird/android/MessagingChannelListQuery$1;->this$0:Lcom/sendbird/android/MessagingChannelListQuery;

    iput-object p2, p0, Lcom/sendbird/android/MessagingChannelListQuery$1;->val$handler:Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/model/MessagingChannel;>;"
    iget-object v1, p0, Lcom/sendbird/android/MessagingChannelListQuery$1;->val$handler:Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/sendbird/android/MessagingChannelListQuery$1;->val$handler:Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;

    invoke-interface {v1, v0}, Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;->onResult(Ljava/util/List;)V

    .line 93
    :cond_0
    return-void
.end method
