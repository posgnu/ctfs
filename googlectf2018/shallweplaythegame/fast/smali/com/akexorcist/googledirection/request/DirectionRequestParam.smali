.class public Lcom/akexorcist/googledirection/request/DirectionRequestParam;
.super Ljava/lang/Object;
.source "DirectionRequestParam.java"


# instance fields
.field alternatives:Z

.field apiKey:Ljava/lang/String;

.field avoid:Ljava/lang/String;

.field departureTime:Ljava/lang/String;

.field destination:Lcom/google/android/gms/maps/model/LatLng;

.field language:Ljava/lang/String;

.field origin:Lcom/google/android/gms/maps/model/LatLng;

.field transitMode:Ljava/lang/String;

.field transportMode:Ljava/lang/String;

.field unit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAvoid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->avoid:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->departureTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDestination()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->destination:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->origin:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getTransitMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->transitMode:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->transportMode:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public isAlternatives()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->alternatives:Z

    return v0
.end method

.method public setAlternatives(Z)V
    .locals 0
    .param p1, "alternatives"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->alternatives:Z

    .line 103
    return-void
.end method

.method public setApiKey(Ljava/lang/String;)Lcom/akexorcist/googledirection/request/DirectionRequestParam;
    .locals 0
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->apiKey:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public setAvoid(Ljava/lang/String;)V
    .locals 0
    .param p1, "avoid"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->avoid:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setDepartureTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "departureTime"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->departureTime:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setDestination(Lcom/google/android/gms/maps/model/LatLng;)Lcom/akexorcist/googledirection/request/DirectionRequestParam;
    .locals 0
    .param p1, "destination"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->destination:Lcom/google/android/gms/maps/model/LatLng;

    .line 54
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->language:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setOrigin(Lcom/google/android/gms/maps/model/LatLng;)Lcom/akexorcist/googledirection/request/DirectionRequestParam;
    .locals 0
    .param p1, "origin"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->origin:Lcom/google/android/gms/maps/model/LatLng;

    .line 45
    return-object p0
.end method

.method public setTransitMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "transitMode"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->transitMode:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setTransportMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "transportMode"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->transportMode:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->unit:Ljava/lang/String;

    .line 79
    return-void
.end method
