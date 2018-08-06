.class public interface abstract Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;
.super Ljava/lang/Object;
.source "ChannelMetaDataQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/ChannelMetaDataQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChannelMetaDataQueryResult"
.end annotation


# virtual methods
.method public abstract onError(Lcom/sendbird/android/SendBirdException;)V
.end method

.method public abstract onResult(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
