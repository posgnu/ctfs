.class public interface abstract Lcom/sendbird/android/handler/UserExistenceHandler;
.super Ljava/lang/Object;
.source "UserExistenceHandler.java"


# virtual methods
.method public abstract onError(Lcom/sendbird/android/SendBirdException;)V
.end method

.method public abstract onSuccess(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sendbird/android/model/User;",
            ">;)V"
        }
    .end annotation
.end method
