.class public interface abstract Lcom/sendbird/android/UserListQuery$UserListQueryResult;
.super Ljava/lang/Object;
.source "UserListQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/UserListQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserListQueryResult"
.end annotation


# virtual methods
.method public abstract onError(Lcom/sendbird/android/SendBirdException;)V
.end method

.method public abstract onResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/model/User;",
            ">;)V"
        }
    .end annotation
.end method
