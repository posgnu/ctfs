.class public Lcom/akexorcist/googledirection/model/Direction;
.super Ljava/lang/Object;
.source "Direction.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
    parcelsIndex = false
.end annotation


# instance fields
.field errorMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_message"
    .end annotation
.end field

.field geocodedWaypointList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "geocoded_waypoints"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akexorcist/googledirection/model/GeocodedWaypoint;",
            ">;"
        }
    .end annotation
.end field

.field routeList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "routes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akexorcist/googledirection/model/Route;",
            ">;"
        }
    .end annotation
.end field

.field status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Direction;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getGeocodedWaypointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/akexorcist/googledirection/model/GeocodedWaypoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Direction;->geocodedWaypointList:Ljava/util/List;

    return-object v0
.end method

.method public getRouteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/akexorcist/googledirection/model/Route;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Direction;->routeList:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Direction;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isOK()Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Direction;->status:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
