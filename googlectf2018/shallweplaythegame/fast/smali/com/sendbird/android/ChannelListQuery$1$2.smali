.class Lcom/sendbird/android/ChannelListQuery$1$2;
.super Ljava/lang/Object;
.source "ChannelListQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/ChannelListQuery$1;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/ChannelListQuery$1;

.field final synthetic val$channels:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sendbird/android/ChannelListQuery$1;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sendbird/android/ChannelListQuery$1$2;->this$1:Lcom/sendbird/android/ChannelListQuery$1;

    iput-object p2, p0, Lcom/sendbird/android/ChannelListQuery$1$2;->val$channels:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sendbird/android/ChannelListQuery$1$2;->this$1:Lcom/sendbird/android/ChannelListQuery$1;

    iget-object v0, v0, Lcom/sendbird/android/ChannelListQuery$1;->val$handler:Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;

    iget-object v1, p0, Lcom/sendbird/android/ChannelListQuery$1$2;->val$channels:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;->onResult(Ljava/util/Collection;)V

    .line 131
    iget-object v0, p0, Lcom/sendbird/android/ChannelListQuery$1$2;->this$1:Lcom/sendbird/android/ChannelListQuery$1;

    iget-object v0, v0, Lcom/sendbird/android/ChannelListQuery$1;->this$0:Lcom/sendbird/android/ChannelListQuery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sendbird/android/ChannelListQuery;->setLoading(Z)V

    .line 132
    return-void
.end method
