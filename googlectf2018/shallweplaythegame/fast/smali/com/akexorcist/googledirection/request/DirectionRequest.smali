.class public Lcom/akexorcist/googledirection/request/DirectionRequest;
.super Ljava/lang/Object;
.source "DirectionRequest.java"


# instance fields
.field protected param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "origin"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p3, "destination"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;-><init>()V

    invoke-virtual {v0, p1}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->setApiKey(Ljava/lang/String;)Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->setOrigin(Lcom/google/android/gms/maps/model/LatLng;)Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->setDestination(Lcom/google/android/gms/maps/model/LatLng;)Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    move-result-object v0

    iput-object v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    .line 39
    return-void
.end method


# virtual methods
.method public alternativeRoute(Z)Lcom/akexorcist/googledirection/request/DirectionRequest;
    .locals 1
    .param p1, "alternative"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    invoke-virtual {v0, p1}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->setAlternatives(Z)V

    .line 82
    return-object p0
.end method

.method public avoid(Ljava/lang/String;)Lcom/akexorcist/googledirection/request/DirectionRequest;
    .locals 3
    .param p1, "avoid"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    invoke-virtual {v1}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->getAvoid()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "oldAvoid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    invoke-virtual {v1, v0}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->setAvoid(Ljava/lang/String;)V

    .line 65
    return-object p0

    .line 61
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public departureTime(Ljava/lang/String;)Lcom/akexorcist/googledirection/request/DirectionRequest;
    .locals 1
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    invoke-virtual {v0, p1}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->setDepartureTime(Ljava/lang/String;)V

    .line 87
    return-object p0
.end method

.method public execute(Lcom/akexorcist/googledirection/DirectionCallback;)V
    .locals 12
    .param p1, "callback"    # Lcom/akexorcist/googledirection/DirectionCallback;

    .prologue
    .line 91
    invoke-static {}, Lcom/akexorcist/googledirection/network/DirectionAndPlaceConnection;->getInstance()Lcom/akexorcist/googledirection/network/DirectionAndPlaceConnection;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/akexorcist/googledirection/network/DirectionAndPlaceConnection;->createService()Lcom/akexorcist/googledirection/network/DirectionAndPlaceService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    .line 93
    invoke-virtual {v2}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->getOrigin()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    invoke-virtual {v2}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->getOrigin()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    .line 94
    invoke-virtual {v3}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->getDestination()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    invoke-virtual {v3}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->getDestination()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    .line 95
    invoke-virtual {v3}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->getTransportMode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    .line 96
    invoke-virtual {v4}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->getDepartureTime()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    .line 97
    invoke-virtual {v5}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->getLanguage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    .line 98
    invoke-virtual {v6}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->getUnit()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    .line 99
    invoke-virtual {v7}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->getAvoid()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    .line 100
    invoke-virtual {v8}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->getTransitMode()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    .line 101
    invoke-virtual {v9}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->isAlternatives()Z

    move-result v9

    iget-object v10, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    .line 102
    invoke-virtual {v10}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->getApiKey()Ljava/lang/String;

    move-result-object v10

    .line 93
    invoke-interface/range {v0 .. v10}, Lcom/akexorcist/googledirection/network/DirectionAndPlaceService;->getDirection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lretrofit2/Call;

    move-result-object v11

    .line 104
    .local v11, "direction":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/akexorcist/googledirection/model/Direction;>;"
    new-instance v0, Lcom/akexorcist/googledirection/request/DirectionRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/akexorcist/googledirection/request/DirectionRequest$1;-><init>(Lcom/akexorcist/googledirection/request/DirectionRequest;Lcom/akexorcist/googledirection/DirectionCallback;)V

    invoke-interface {v11, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 117
    return-void
.end method

.method public language(Ljava/lang/String;)Lcom/akexorcist/googledirection/request/DirectionRequest;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    invoke-virtual {v0, p1}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->setLanguage(Ljava/lang/String;)V

    .line 48
    return-object p0
.end method

.method public transitMode(Ljava/lang/String;)Lcom/akexorcist/googledirection/request/DirectionRequest;
    .locals 3
    .param p1, "transitMode"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    invoke-virtual {v1}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->getTransitMode()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "oldTransitMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    invoke-virtual {v1, v0}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->setTransitMode(Ljava/lang/String;)V

    .line 77
    return-object p0

    .line 73
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public transportMode(Ljava/lang/String;)Lcom/akexorcist/googledirection/request/DirectionRequest;
    .locals 1
    .param p1, "transportMode"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    invoke-virtual {v0, p1}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->setTransportMode(Ljava/lang/String;)V

    .line 43
    return-object p0
.end method

.method public unit(Ljava/lang/String;)Lcom/akexorcist/googledirection/request/DirectionRequest;
    .locals 1
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/akexorcist/googledirection/request/DirectionRequest;->param:Lcom/akexorcist/googledirection/request/DirectionRequestParam;

    invoke-virtual {v0, p1}, Lcom/akexorcist/googledirection/request/DirectionRequestParam;->setUnit(Ljava/lang/String;)V

    .line 53
    return-object p0
.end method
