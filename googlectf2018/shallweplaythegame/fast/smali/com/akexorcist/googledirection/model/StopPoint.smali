.class public Lcom/akexorcist/googledirection/model/StopPoint;
.super Ljava/lang/Object;
.source "StopPoint.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
    parcelsIndex = false
.end annotation


# instance fields
.field location:Lcom/akexorcist/googledirection/model/Coordination;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocation()Lcom/akexorcist/googledirection/model/Coordination;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/StopPoint;->name:Ljava/lang/String;

    return-object v0
.end method
