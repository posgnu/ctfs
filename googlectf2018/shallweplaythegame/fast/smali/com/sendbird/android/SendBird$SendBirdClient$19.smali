.class Lcom/sendbird/android/SendBird$SendBirdClient$19;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->checkUserExistence(Ljava/util/Collection;Lcom/sendbird/android/handler/UserExistenceHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$handler:Lcom/sendbird/android/handler/UserExistenceHandler;

.field final synthetic val$userIds:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/handler/UserExistenceHandler;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 1936
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$19;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$19;->val$handler:Lcom/sendbird/android/handler/UserExistenceHandler;

    iput-object p3, p0, Lcom/sendbird/android/SendBird$SendBirdClient$19;->val$userIds:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 3
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 1939
    if-eqz p2, :cond_1

    .line 1940
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$19;->val$handler:Lcom/sendbird/android/handler/UserExistenceHandler;

    if-eqz v0, :cond_0

    .line 1941
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$19;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$19$1;

    invoke-direct {v1, p0, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$19$1;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$19;Lcom/sendbird/android/SendBirdException;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1952
    :cond_0
    :goto_0
    return-void

    .line 1951
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$19;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$19;->val$userIds:Ljava/util/Collection;

    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$19;->val$handler:Lcom/sendbird/android/handler/UserExistenceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->checkUserExistence(Ljava/util/Collection;Lcom/sendbird/android/handler/UserExistenceHandler;)V

    goto :goto_0
.end method
