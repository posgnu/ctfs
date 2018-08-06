.class public interface abstract Lcom/sendbird/android/WSClient$WSClientEventHandler;
.super Ljava/lang/Object;
.source "WSClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/WSClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WSClientEventHandler"
.end annotation


# virtual methods
.method public abstract onClose()V
.end method

.method public abstract onError()V
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public abstract onOpen()V
.end method
