.class public Lcom/akexorcist/googledirection/model/Route;
.super Ljava/lang/Object;
.source "Route.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
    parcelsIndex = false
.end annotation


# instance fields
.field bound:Lcom/akexorcist/googledirection/model/Bound;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bounds"
    .end annotation
.end field

.field copyrights:Ljava/lang/String;

.field fare:Lcom/akexorcist/googledirection/model/Fare;

.field legList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "legs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akexorcist/googledirection/model/Leg;",
            ">;"
        }
    .end annotation
.end field

.field overviewPolyline:Lcom/akexorcist/googledirection/model/RoutePolyline;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "overview_polyline"
    .end annotation
.end field

.field summary:Ljava/lang/String;

.field warningList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "warnings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBound()Lcom/akexorcist/googledirection/model/Bound;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Route;->bound:Lcom/akexorcist/googledirection/model/Bound;

    return-object v0
.end method

.method public getCopyrights()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Route;->copyrights:Ljava/lang/String;

    return-object v0
.end method

.method public getFare()Lcom/akexorcist/googledirection/model/Fare;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Route;->fare:Lcom/akexorcist/googledirection/model/Fare;

    return-object v0
.end method

.method public getLegList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/akexorcist/googledirection/model/Leg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Route;->legList:Ljava/util/List;

    return-object v0
.end method

.method public getOverviewPolyline()Lcom/akexorcist/googledirection/model/RoutePolyline;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Route;->overviewPolyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Route;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getWarningList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Route;->warningList:Ljava/util/List;

    return-object v0
.end method
