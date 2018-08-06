.class public Lcom/akexorcist/googledirection/model/Coordination;
.super Ljava/lang/Object;
.source "Coordination.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
    parcelsIndex = false
.end annotation


# instance fields
.field latitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lat"
    .end annotation
.end field

.field longitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lng"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoordination()Lcom/google/android/gms/maps/model/LatLng;
    .locals 6

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p0, Lcom/akexorcist/googledirection/model/Coordination;->latitude:D

    iget-wide v4, p0, Lcom/akexorcist/googledirection/model/Coordination;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/akexorcist/googledirection/model/Coordination;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/akexorcist/googledirection/model/Coordination;->longitude:D

    return-wide v0
.end method
