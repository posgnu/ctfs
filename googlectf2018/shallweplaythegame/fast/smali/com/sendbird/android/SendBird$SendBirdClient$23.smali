.class Lcom/sendbird/android/SendBird$SendBirdClient$23;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->leave(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$channelUrls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 2054
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$23;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$23;->val$channelUrls:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 2
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 2057
    if-eqz p2, :cond_1

    .line 2058
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$23;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$23;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$23$1;

    invoke-direct {v1, p0, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$23$1;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$23;Lcom/sendbird/android/SendBirdException;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2071
    :cond_0
    :goto_0
    return-void

    .line 2070
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$23;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$23;->val$channelUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->leave(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
