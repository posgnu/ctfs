.class public Lcom/akexorcist/googledirection/GoogleDirection;
.super Ljava/lang/Object;
.source "GoogleDirection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static withServerKey(Ljava/lang/String;)Lcom/akexorcist/googledirection/request/DirectionOriginRequest;
    .locals 1
    .param p0, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Lcom/akexorcist/googledirection/request/DirectionOriginRequest;

    invoke-direct {v0, p0}, Lcom/akexorcist/googledirection/request/DirectionOriginRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
