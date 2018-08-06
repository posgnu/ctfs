.class public Lcom/akexorcist/googledirection/model/Line;
.super Ljava/lang/Object;
.source "Line.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
    parcelsIndex = false
.end annotation


# instance fields
.field agencyList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "agencies"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akexorcist/googledirection/model/Agency;",
            ">;"
        }
    .end annotation
.end field

.field color:Ljava/lang/String;

.field name:Ljava/lang/String;

.field shortName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "short_name"
    .end annotation
.end field

.field textColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text_color"
    .end annotation
.end field

.field vehicle:Lcom/akexorcist/googledirection/model/Vehicle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/akexorcist/googledirection/model/Agency;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Line;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Line;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Line;->shortName:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Line;->textColor:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicle()Lcom/akexorcist/googledirection/model/Vehicle;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    return-object v0
.end method
