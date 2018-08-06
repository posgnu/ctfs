.class public interface abstract Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;
.super Ljava/lang/Object;
.source "ChannelListQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/ChannelListQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChannelListQueryResult"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onResult(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sendbird/android/model/Channel;",
            ">;)V"
        }
    .end annotation
.end method
