.class public Lcom/akexorcist/googledirection/model/Bound;
.super Ljava/lang/Object;
.source "Bound.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
    parcelsIndex = false
.end annotation


# instance fields
.field northeast:Lcom/akexorcist/googledirection/model/Coordination;

.field southwest:Lcom/akexorcist/googledirection/model/Coordination;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNortheastCoordination()Lcom/akexorcist/googledirection/model/Coordination;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Bound;->northeast:Lcom/akexorcist/googledirection/model/Coordination;

    return-object v0
.end method

.method public getSouthwestCoordination()Lcom/akexorcist/googledirection/model/Coordination;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Bound;->southwest:Lcom/akexorcist/googledirection/model/Coordination;

    return-object v0
.end method
