.class Lcom/sendbird/android/SendBird$SendBirdClient$54$1;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient$54;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/SendBird$SendBirdClient$54;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient$54;)V
    .locals 0

    .prologue
    .line 3011
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$54$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$54;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3014
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$54$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$54;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$54;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3015
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$54$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$54;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$54;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    const/16 v1, 0x3714

    invoke-interface {v0, v1}, Lcom/sendbird/android/SendBirdEventHandler;->onError(I)V

    .line 3017
    :cond_0
    return-void
.end method