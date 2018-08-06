.class public Lcom/akexorcist/googledirection/request/DirectionDestinationRequest;
.super Ljava/lang/Object;
.source "DirectionDestinationRequest.java"


# instance fields
.field apiKey:Ljava/lang/String;

.field origin:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "origin"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/akexorcist/googledirection/request/DirectionDestinationRequest;->apiKey:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/akexorcist/googledirection/request/DirectionDestinationRequest;->origin:Lcom/google/android/gms/maps/model/LatLng;

    .line 33
    return-void
.end method


# virtual methods
.method public to(Lcom/google/android/gms/maps/model/LatLng;)Lcom/akexorcist/googledirection/request/DirectionRequest;
    .locals 3
    .param p1, "destination"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 36
    new-instance v0, Lcom/akexorcist/googledirection/request/DirectionRequest;

    iget-object v1, p0, Lcom/akexorcist/googledirection/request/DirectionDestinationRequest;->apiKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/akexorcist/googledirection/request/DirectionDestinationRequest;->origin:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v1, v2, p1}, Lcom/akexorcist/googledirection/request/DirectionRequest;-><init>(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v0
.end method
