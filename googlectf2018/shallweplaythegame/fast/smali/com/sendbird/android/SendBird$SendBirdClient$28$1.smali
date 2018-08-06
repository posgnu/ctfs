.class Lcom/sendbird/android/SendBird$SendBirdClient$28$1;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient$28;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/SendBird$SendBirdClient$28;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient$28;)V
    .locals 0

    .prologue
    .line 2219
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$28$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$28$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$28;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$28;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2223
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$28$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$28;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$28;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    move-result-object v0

    const/16 v1, 0x2af8

    invoke-interface {v0, v1}, Lcom/sendbird/android/SendBirdMultiChannelEventHandler;->onMultiChannelError(I)V

    .line 2225
    :cond_0
    return-void
.end method
