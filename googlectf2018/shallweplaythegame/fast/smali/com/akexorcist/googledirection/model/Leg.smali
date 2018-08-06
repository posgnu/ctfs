.class public Lcom/akexorcist/googledirection/model/Leg;
.super Ljava/lang/Object;
.source "Leg.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
    parcelsIndex = false
.end annotation


# instance fields
.field arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "arrival_time"
    .end annotation
.end field

.field departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "departure_time"
    .end annotation
.end field

.field distance:Lcom/akexorcist/googledirection/model/Info;

.field duration:Lcom/akexorcist/googledirection/model/Info;

.field durationInTraffic:Lcom/akexorcist/googledirection/model/Info;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration_in_traffic"
    .end annotation
.end field

.field endAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_address"
    .end annotation
.end field

.field endLocation:Lcom/akexorcist/googledirection/model/Coordination;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_location"
    .end annotation
.end field

.field startAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_address"
    .end annotation
.end field

.field startLocation:Lcom/akexorcist/googledirection/model/Coordination;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_location"
    .end annotation
.end field

.field stepList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "steps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akexorcist/googledirection/model/Step;",
            ">;"
        }
    .end annotation
.end field

.field viaWaypointList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "via_waypoint"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akexorcist/googledirection/model/Waypoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArrivalTime()Lcom/akexorcist/googledirection/model/TimeInfo;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Leg;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    return-object v0
.end method

.method public getDepartureTime()Lcom/akexorcist/googledirection/model/TimeInfo;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Leg;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    return-object v0
.end method

.method public getDirectionPoint()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Leg;->stepList:Ljava/util/List;

    invoke-static {v0}, Lcom/akexorcist/googledirection/util/DirectionConverter;->getDirectionPoint(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()Lcom/akexorcist/googledirection/model/Info;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Leg;->distance:Lcom/akexorcist/googledirection/model/Info;

    return-object v0
.end method

.method public getDuration()Lcom/akexorcist/googledirection/model/Info;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Leg;->duration:Lcom/akexorcist/googledirection/model/Info;

    return-object v0
.end method

.method public getDurationInTraffic()Lcom/akexorcist/googledirection/model/Info;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Leg;->durationInTraffic:Lcom/akexorcist/googledirection/model/Info;

    return-object v0
.end method

.method public getEndAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Leg;->endAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEndLocation()Lcom/akexorcist/googledirection/model/Coordination;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Leg;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    return-object v0
.end method

.method public getSectionPoint()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Leg;->stepList:Ljava/util/List;

    invoke-static {v0}, Lcom/akexorcist/googledirection/util/DirectionConverter;->getSectionPoint(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getStartAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Leg;->startAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStartLocation()Lcom/akexorcist/googledirection/model/Coordination;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Leg;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    return-object v0
.end method

.method public getStepList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/akexorcist/googledirection/model/Step;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Leg;->stepList:Ljava/util/List;

    return-object v0
.end method

.method public getViaWaypointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/akexorcist/googledirection/model/Waypoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Leg;->viaWaypointList:Ljava/util/List;

    return-object v0
.end method
