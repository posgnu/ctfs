.class Lcom/sendbird/android/SendBird$SendBirdClient$16;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->messageListByTimestamp(Ljava/lang/String;JJLcom/sendbird/android/APIClient$APIClientEventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$channelUrl:Ljava/lang/String;

.field final synthetic val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

.field final synthetic val$messageTimestampEnd:J

.field final synthetic val$messageTimestampStart:J


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 1872
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$16;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$16;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    iput-object p3, p0, Lcom/sendbird/android/SendBird$SendBirdClient$16;->val$channelUrl:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sendbird/android/SendBird$SendBirdClient$16;->val$messageTimestampStart:J

    iput-wide p6, p0, Lcom/sendbird/android/SendBird$SendBirdClient$16;->val$messageTimestampEnd:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 7
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 1875
    if-eqz p2, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$16;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/sendbird/android/APIClient$APIClientEventHandler;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V

    .line 1881
    :goto_0
    return-void

    .line 1880
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$16;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$16;->val$channelUrl:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$16;->val$messageTimestampStart:J

    iget-wide v4, p0, Lcom/sendbird/android/SendBird$SendBirdClient$16;->val$messageTimestampEnd:J

    iget-object v6, p0, Lcom/sendbird/android/SendBird$SendBirdClient$16;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-virtual/range {v0 .. v6}, Lcom/sendbird/android/SendBird$SendBirdClient;->messageListByTimestamp(Ljava/lang/String;JJLcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method
