.class public interface abstract Lcom/sendbird/android/MemberListQuery$MemberListQueryResult;
.super Ljava/lang/Object;
.source "MemberListQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/MemberListQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MemberListQueryResult"
.end annotation


# virtual methods
.method public abstract onError(Lcom/sendbird/android/SendBirdException;)V
.end method

.method public abstract onResult(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sendbird/android/model/Member;",
            ">;)V"
        }
    .end annotation
.end method
