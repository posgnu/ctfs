.class Lcom/sendbird/android/MessageListQuery$3$1;
.super Ljava/lang/Object;
.source "MessageListQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/MessageListQuery$3;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/MessageListQuery$3;

.field final synthetic val$e:Lcom/sendbird/android/SendBirdException;


# direct methods
.method constructor <init>(Lcom/sendbird/android/MessageListQuery$3;Lcom/sendbird/android/SendBirdException;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sendbird/android/MessageListQuery$3$1;->this$1:Lcom/sendbird/android/MessageListQuery$3;

    iput-object p2, p0, Lcom/sendbird/android/MessageListQuery$3$1;->val$e:Lcom/sendbird/android/SendBirdException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sendbird/android/MessageListQuery$3$1;->this$1:Lcom/sendbird/android/MessageListQuery$3;

    iget-object v0, v0, Lcom/sendbird/android/MessageListQuery$3;->val$handler:Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;

    iget-object v1, p0, Lcom/sendbird/android/MessageListQuery$3$1;->val$e:Lcom/sendbird/android/SendBirdException;

    invoke-interface {v0, v1}, Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;->onError(Ljava/lang/Exception;)V

    .line 138
    iget-object v0, p0, Lcom/sendbird/android/MessageListQuery$3$1;->this$1:Lcom/sendbird/android/MessageListQuery$3;

    iget-object v0, v0, Lcom/sendbird/android/MessageListQuery$3;->this$0:Lcom/sendbird/android/MessageListQuery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sendbird/android/MessageListQuery;->setLoading(Z)V

    .line 139
    return-void
.end method