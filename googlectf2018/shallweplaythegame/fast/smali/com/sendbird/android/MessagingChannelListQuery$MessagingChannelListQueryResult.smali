.class public interface abstract Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;
.super Ljava/lang/Object;
.source "MessagingChannelListQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/MessagingChannelListQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessagingChannelListQueryResult"
.end annotation


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/model/MessagingChannel;",
            ">;)V"
        }
    .end annotation
.end method
