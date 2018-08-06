.class Lcom/sendbird/android/SendBird$SendBirdClient$63;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->startMessaging(Ljava/util/Collection;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$guestIds:Ljava/util/Collection;

.field final synthetic val$isGroup:Z


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/util/Collection;Z)V
    .locals 0

    .prologue
    .line 3245
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$63;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$63;->val$guestIds:Ljava/util/Collection;

    iput-boolean p3, p0, Lcom/sendbird/android/SendBird$SendBirdClient$63;->val$isGroup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 3
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 3248
    if-eqz p2, :cond_0

    .line 3253
    :goto_0
    return-void

    .line 3252
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$63;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$63;->val$guestIds:Ljava/util/Collection;

    iget-boolean v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$63;->val$isGroup:Z

    invoke-static {v0, v1, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1400(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/util/Collection;Z)V

    goto :goto_0
.end method
