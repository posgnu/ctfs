.class Lcom/sendbird/android/SendBird$SendBirdClient$51;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->inviteMessaging(Ljava/lang/String;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$channelUrl:Ljava/lang/String;

.field final synthetic val$guestIds:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 2931
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$51;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$51;->val$channelUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/sendbird/android/SendBird$SendBirdClient$51;->val$guestIds:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 3
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 2934
    if-eqz p2, :cond_0

    .line 2940
    :goto_0
    return-void

    .line 2939
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$51;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$51;->val$channelUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$51;->val$guestIds:Ljava/util/Collection;

    invoke-static {v0, v1, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1600(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0
.end method
