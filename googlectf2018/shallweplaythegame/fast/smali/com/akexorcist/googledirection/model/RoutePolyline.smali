.class public Lcom/akexorcist/googledirection/model/RoutePolyline;
.super Ljava/lang/Object;
.source "RoutePolyline.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
    parcelsIndex = false
.end annotation


# instance fields
.field rawPointList:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "points"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/RoutePolyline;->rawPointList:Ljava/lang/String;

    invoke-static {v0}, Lcom/akexorcist/googledirection/util/DirectionConverter;->decodePoly(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRawPointList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/RoutePolyline;->rawPointList:Ljava/lang/String;

    return-object v0
.end method
