.class public Lcom/akexorcist/googledirection/request/DirectionOriginRequest;
.super Ljava/lang/Object;
.source "DirectionOriginRequest.java"


# instance fields
.field private apiKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/akexorcist/googledirection/request/DirectionOriginRequest;->apiKey:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public from(Lcom/google/android/gms/maps/model/LatLng;)Lcom/akexorcist/googledirection/request/DirectionDestinationRequest;
    .locals 2
    .param p1, "origin"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 34
    new-instance v0, Lcom/akexorcist/googledirection/request/DirectionDestinationRequest;

    iget-object v1, p0, Lcom/akexorcist/googledirection/request/DirectionOriginRequest;->apiKey:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/akexorcist/googledirection/request/DirectionDestinationRequest;-><init>(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v0
.end method
