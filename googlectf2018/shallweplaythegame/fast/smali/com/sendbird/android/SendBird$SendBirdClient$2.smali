.class Lcom/sendbird/android/SendBird$SendBirdClient$2;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->channelMetaDataSet(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$channelUrl:Ljava/lang/String;

.field final synthetic val$data:Ljava/util/Map;

.field final synthetic val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$2;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$2;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    iput-object p3, p0, Lcom/sendbird/android/SendBird$SendBirdClient$2;->val$channelUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/sendbird/android/SendBird$SendBirdClient$2;->val$data:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 4
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 1579
    if-eqz p2, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$2;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/sendbird/android/APIClient$APIClientEventHandler;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V

    .line 1585
    :goto_0
    return-void

    .line 1584
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$2;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$2;->val$channelUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$2;->val$data:Ljava/util/Map;

    iget-object v3, p0, Lcom/sendbird/android/SendBird$SendBirdClient$2;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sendbird/android/SendBird$SendBirdClient;->channelMetaDataSet(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method
