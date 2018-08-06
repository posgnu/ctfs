.class Lcom/sendbird/android/MessagingChannelListQuery$2$3;
.super Ljava/lang/Object;
.source "MessagingChannelListQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/MessagingChannelListQuery$2;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/MessagingChannelListQuery$2;

.field final synthetic val$channels:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sendbird/android/MessagingChannelListQuery$2;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sendbird/android/MessagingChannelListQuery$2$3;->this$1:Lcom/sendbird/android/MessagingChannelListQuery$2;

    iput-object p2, p0, Lcom/sendbird/android/MessagingChannelListQuery$2$3;->val$channels:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sendbird/android/MessagingChannelListQuery$2$3;->this$1:Lcom/sendbird/android/MessagingChannelListQuery$2;

    iget-object v0, v0, Lcom/sendbird/android/MessagingChannelListQuery$2;->val$handler:Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sendbird/android/MessagingChannelListQuery$2$3;->this$1:Lcom/sendbird/android/MessagingChannelListQuery$2;

    iget-object v0, v0, Lcom/sendbird/android/MessagingChannelListQuery$2;->val$handler:Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;

    iget-object v1, p0, Lcom/sendbird/android/MessagingChannelListQuery$2$3;->val$channels:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;->onResult(Ljava/util/List;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/MessagingChannelListQuery$2$3;->this$1:Lcom/sendbird/android/MessagingChannelListQuery$2;

    iget-object v0, v0, Lcom/sendbird/android/MessagingChannelListQuery$2;->this$0:Lcom/sendbird/android/MessagingChannelListQuery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sendbird/android/MessagingChannelListQuery;->setLoading(Z)V

    .line 152
    return-void
.end method
