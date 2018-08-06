.class Lcom/sendbird/android/UserListQuery$1;
.super Ljava/lang/Object;
.source "UserListQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/UserListQuery;->next(Lcom/sendbird/android/UserListQuery$UserListQueryResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/UserListQuery;

.field final synthetic val$handler:Lcom/sendbird/android/UserListQuery$UserListQueryResult;


# direct methods
.method constructor <init>(Lcom/sendbird/android/UserListQuery;Lcom/sendbird/android/UserListQuery$UserListQueryResult;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sendbird/android/UserListQuery$1;->this$0:Lcom/sendbird/android/UserListQuery;

    iput-object p2, p0, Lcom/sendbird/android/UserListQuery$1;->val$handler:Lcom/sendbird/android/UserListQuery$UserListQueryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/model/User;>;"
    iget-object v1, p0, Lcom/sendbird/android/UserListQuery$1;->val$handler:Lcom/sendbird/android/UserListQuery$UserListQueryResult;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/sendbird/android/UserListQuery$1;->val$handler:Lcom/sendbird/android/UserListQuery$UserListQueryResult;

    invoke-interface {v1, v0}, Lcom/sendbird/android/UserListQuery$UserListQueryResult;->onResult(Ljava/util/List;)V

    .line 70
    :cond_0
    return-void
.end method
