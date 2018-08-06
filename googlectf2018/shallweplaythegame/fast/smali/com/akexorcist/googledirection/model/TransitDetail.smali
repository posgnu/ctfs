.class public Lcom/akexorcist/googledirection/model/TransitDetail;
.super Ljava/lang/Object;
.source "TransitDetail.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
    parcelsIndex = false
.end annotation


# instance fields
.field arrivalStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "arrival_stop"
    .end annotation
.end field

.field arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "arrival_time"
    .end annotation
.end field

.field departureStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "departure_stop"
    .end annotation
.end field

.field departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "departure_time"
    .end annotation
.end field

.field headsign:Ljava/lang/String;

.field line:Lcom/akexorcist/googledirection/model/Line;

.field stopNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "num_stops"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArrivalStopPoint()Lcom/akexorcist/googledirection/model/StopPoint;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    return-object v0
.end method

.method public getArrivalTime()Lcom/akexorcist/googledirection/model/TimeInfo;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    return-object v0
.end method

.method public getDepartureStopPoint()Lcom/akexorcist/googledirection/model/StopPoint;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/TransitDetail;->departureStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    return-object v0
.end method

.method public getDepartureTime()Lcom/akexorcist/googledirection/model/TimeInfo;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/TransitDetail;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    return-object v0
.end method

.method public getHeadsign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/TransitDetail;->headsign:Ljava/lang/String;

    return-object v0
.end method

.method public getLine()Lcom/akexorcist/googledirection/model/Line;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/TransitDetail;->line:Lcom/akexorcist/googledirection/model/Line;

    return-object v0
.end method

.method public getStopNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/TransitDetail;->stopNumber:Ljava/lang/String;

    return-object v0
.end method
