.class Lcom/sendbird/android/MessagingUnreadCountQuery$1$2;
.super Ljava/lang/Object;
.source "MessagingUnreadCountQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/MessagingUnreadCountQuery$1;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/MessagingUnreadCountQuery$1;

.field final synthetic val$unreadMessageCount:I


# direct methods
.method constructor <init>(Lcom/sendbird/android/MessagingUnreadCountQuery$1;I)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sendbird/android/MessagingUnreadCountQuery$1$2;->this$1:Lcom/sendbird/android/MessagingUnreadCountQuery$1;

    iput p2, p0, Lcom/sendbird/android/MessagingUnreadCountQuery$1$2;->val$unreadMessageCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sendbird/android/MessagingUnreadCountQuery$1$2;->this$1:Lcom/sendbird/android/MessagingUnreadCountQuery$1;

    iget-object v0, v0, Lcom/sendbird/android/MessagingUnreadCountQuery$1;->val$handler:Lcom/sendbird/android/MessagingUnreadCountQuery$MessagingUnreadCountQueryResult;

    iget v1, p0, Lcom/sendbird/android/MessagingUnreadCountQuery$1$2;->val$unreadMessageCount:I

    invoke-interface {v0, v1}, Lcom/sendbird/android/MessagingUnreadCountQuery$MessagingUnreadCountQueryResult;->onResult(I)V

    .line 57
    iget-object v0, p0, Lcom/sendbird/android/MessagingUnreadCountQuery$1$2;->this$1:Lcom/sendbird/android/MessagingUnreadCountQuery$1;

    iget-object v0, v0, Lcom/sendbird/android/MessagingUnreadCountQuery$1;->this$0:Lcom/sendbird/android/MessagingUnreadCountQuery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sendbird/android/MessagingUnreadCountQuery;->setLoading(Z)V

    .line 58
    return-void
.end method
