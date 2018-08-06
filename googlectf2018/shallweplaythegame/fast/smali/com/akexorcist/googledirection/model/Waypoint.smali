.class public Lcom/akexorcist/googledirection/model/Waypoint;
.super Ljava/lang/Object;
.source "Waypoint.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
    parcelsIndex = false
.end annotation


# instance fields
.field index:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "step_index"
    .end annotation
.end field

.field interpolation:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "step_interpolation"
    .end annotation
.end field

.field location:Lcom/akexorcist/googledirection/model/Coordination;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/akexorcist/googledirection/model/Waypoint;->index:I

    return v0
.end method

.method public getInterpolation()D
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/akexorcist/googledirection/model/Waypoint;->interpolation:D

    return-wide v0
.end method

.method public getLocation()Lcom/akexorcist/googledirection/model/Coordination;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Waypoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    return-object v0
.end method
