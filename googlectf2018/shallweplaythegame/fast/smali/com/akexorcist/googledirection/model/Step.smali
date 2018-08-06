.class public Lcom/akexorcist/googledirection/model/Step;
.super Ljava/lang/Object;
.source "Step.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
    parcelsIndex = false
.end annotation


# instance fields
.field distance:Lcom/akexorcist/googledirection/model/Info;

.field duration:Lcom/akexorcist/googledirection/model/Info;

.field endLocation:Lcom/akexorcist/googledirection/model/Coordination;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_location"
    .end annotation
.end field

.field htmlInstruction:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "html_instructions"
    .end annotation
.end field

.field maneuver:Ljava/lang/String;

.field polyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

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

.field transitDetail:Lcom/akexorcist/googledirection/model/TransitDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transit_details"
    .end annotation
.end field

.field travelMode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "travel_mode"
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
.method public getDistance()Lcom/akexorcist/googledirection/model/Info;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Step;->distance:Lcom/akexorcist/googledirection/model/Info;

    return-object v0
.end method

.method public getDuration()Lcom/akexorcist/googledirection/model/Info;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Step;->duration:Lcom/akexorcist/googledirection/model/Info;

    return-object v0
.end method

.method public getEndLocation()Lcom/akexorcist/googledirection/model/Coordination;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Step;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    return-object v0
.end method

.method public getHtmlInstruction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Step;->htmlInstruction:Ljava/lang/String;

    return-object v0
.end method

.method public getManeuver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Step;->maneuver:Ljava/lang/String;

    return-object v0
.end method

.method public getPolyline()Lcom/akexorcist/googledirection/model/RoutePolyline;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Step;->polyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    return-object v0
.end method

.method public getStartLocation()Lcom/akexorcist/googledirection/model/Coordination;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Step;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

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
    .line 79
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Step;->stepList:Ljava/util/List;

    return-object v0
.end method

.method public getTransitDetail()Lcom/akexorcist/googledirection/model/TransitDetail;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Step;->transitDetail:Lcom/akexorcist/googledirection/model/TransitDetail;

    return-object v0
.end method

.method public getTravelMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Step;->travelMode:Ljava/lang/String;

    return-object v0
.end method

.method public isContainStepList()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Step;->stepList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Step;->stepList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
