.class Lcom/sendbird/android/SendBird$SendBirdClient$61;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->joinMessaging(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$channelUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3192
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$61;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$61;->val$channelUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 2
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 3195
    if-eqz p2, :cond_0

    .line 3200
    :goto_0
    return-void

    .line 3199
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$61;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$61;->val$channelUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1500(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V

    goto :goto_0
.end method