.class Lcom/sendbird/android/ChannelMetaDataQuery$2$2;
.super Ljava/lang/Object;
.source "ChannelMetaDataQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/ChannelMetaDataQuery$2;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/ChannelMetaDataQuery$2;

.field final synthetic val$data:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/sendbird/android/ChannelMetaDataQuery$2;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sendbird/android/ChannelMetaDataQuery$2$2;->this$1:Lcom/sendbird/android/ChannelMetaDataQuery$2;

    iput-object p2, p0, Lcom/sendbird/android/ChannelMetaDataQuery$2$2;->val$data:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sendbird/android/ChannelMetaDataQuery$2$2;->this$1:Lcom/sendbird/android/ChannelMetaDataQuery$2;

    iget-object v0, v0, Lcom/sendbird/android/ChannelMetaDataQuery$2;->val$handler:Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;

    iget-object v1, p0, Lcom/sendbird/android/ChannelMetaDataQuery$2$2;->val$data:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;->onResult(Ljava/util/Map;)V

    .line 111
    return-void
.end method
