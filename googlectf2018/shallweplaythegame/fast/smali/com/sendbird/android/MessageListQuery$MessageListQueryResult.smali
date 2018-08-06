.class public interface abstract Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;
.super Ljava/lang/Object;
.source "MessageListQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/MessageListQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageListQueryResult"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/model/MessageModel;",
            ">;)V"
        }
    .end annotation
.end method
