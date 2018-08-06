.class Lcom/sendbird/android/SendBird$SendBirdClient$14;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->messagingList_v3(Ljava/lang/String;IIZLcom/sendbird/android/APIClient$APIClientEventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

.field final synthetic val$limit:I

.field final synthetic val$page:I

.field final synthetic val$showEmpty:Z

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;IIZ)V
    .locals 0

    .prologue
    .line 1829
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$14;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$14;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    iput-object p3, p0, Lcom/sendbird/android/SendBird$SendBirdClient$14;->val$token:Ljava/lang/String;

    iput p4, p0, Lcom/sendbird/android/SendBird$SendBirdClient$14;->val$page:I

    iput p5, p0, Lcom/sendbird/android/SendBird$SendBirdClient$14;->val$limit:I

    iput-boolean p6, p0, Lcom/sendbird/android/SendBird$SendBirdClient$14;->val$showEmpty:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 6
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 1832
    if-eqz p2, :cond_0

    .line 1833
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$14;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/sendbird/android/APIClient$APIClientEventHandler;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V

    .line 1838
    :goto_0
    return-void

    .line 1837
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$14;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$14;->val$token:Ljava/lang/String;

    iget v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$14;->val$page:I

    iget v3, p0, Lcom/sendbird/android/SendBird$SendBirdClient$14;->val$limit:I

    iget-boolean v4, p0, Lcom/sendbird/android/SendBird$SendBirdClient$14;->val$showEmpty:Z

    iget-object v5, p0, Lcom/sendbird/android/SendBird$SendBirdClient$14;->val$handler:Lcom/sendbird/android/APIClient$APIClientEventHandler;

    invoke-virtual/range {v0 .. v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->messagingList_v3(Ljava/lang/String;IIZLcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method
