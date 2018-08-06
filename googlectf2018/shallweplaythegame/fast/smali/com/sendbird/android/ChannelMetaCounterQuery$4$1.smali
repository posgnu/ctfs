.class Lcom/sendbird/android/ChannelMetaCounterQuery$4$1;
.super Ljava/lang/Object;
.source "ChannelMetaCounterQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/ChannelMetaCounterQuery$4;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/ChannelMetaCounterQuery$4;

.field final synthetic val$e:Lcom/sendbird/android/SendBirdException;


# direct methods
.method constructor <init>(Lcom/sendbird/android/ChannelMetaCounterQuery$4;Lcom/sendbird/android/SendBirdException;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/sendbird/android/ChannelMetaCounterQuery$4$1;->this$1:Lcom/sendbird/android/ChannelMetaCounterQuery$4;

    iput-object p2, p0, Lcom/sendbird/android/ChannelMetaCounterQuery$4$1;->val$e:Lcom/sendbird/android/SendBirdException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sendbird/android/ChannelMetaCounterQuery$4$1;->this$1:Lcom/sendbird/android/ChannelMetaCounterQuery$4;

    iget-object v0, v0, Lcom/sendbird/android/ChannelMetaCounterQuery$4;->val$handler:Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;

    iget-object v1, p0, Lcom/sendbird/android/ChannelMetaCounterQuery$4$1;->val$e:Lcom/sendbird/android/SendBirdException;

    invoke-interface {v0, v1}, Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;->onError(Lcom/sendbird/android/SendBirdException;)V

    .line 216
    return-void
.end method
