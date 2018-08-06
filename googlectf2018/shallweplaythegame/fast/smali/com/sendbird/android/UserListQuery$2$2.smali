.class Lcom/sendbird/android/UserListQuery$2$2;
.super Ljava/lang/Object;
.source "UserListQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/UserListQuery$2;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/UserListQuery$2;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sendbird/android/UserListQuery$2;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sendbird/android/UserListQuery$2$2;->this$1:Lcom/sendbird/android/UserListQuery$2;

    iput-object p2, p0, Lcom/sendbird/android/UserListQuery$2$2;->val$users:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sendbird/android/UserListQuery$2$2;->this$1:Lcom/sendbird/android/UserListQuery$2;

    iget-object v0, v0, Lcom/sendbird/android/UserListQuery$2;->val$handler:Lcom/sendbird/android/UserListQuery$UserListQueryResult;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sendbird/android/UserListQuery$2$2;->this$1:Lcom/sendbird/android/UserListQuery$2;

    iget-object v0, v0, Lcom/sendbird/android/UserListQuery$2;->val$handler:Lcom/sendbird/android/UserListQuery$UserListQueryResult;

    iget-object v1, p0, Lcom/sendbird/android/UserListQuery$2$2;->val$users:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/sendbird/android/UserListQuery$UserListQueryResult;->onResult(Ljava/util/List;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/UserListQuery$2$2;->this$1:Lcom/sendbird/android/UserListQuery$2;

    iget-object v0, v0, Lcom/sendbird/android/UserListQuery$2;->this$0:Lcom/sendbird/android/UserListQuery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sendbird/android/UserListQuery;->setLoading(Z)V

    .line 113
    return-void
.end method
