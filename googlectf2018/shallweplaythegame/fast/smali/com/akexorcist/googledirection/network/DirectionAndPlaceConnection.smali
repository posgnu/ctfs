.class public Lcom/akexorcist/googledirection/network/DirectionAndPlaceConnection;
.super Ljava/lang/Object;
.source "DirectionAndPlaceConnection.java"


# static fields
.field private static connection:Lcom/akexorcist/googledirection/network/DirectionAndPlaceConnection;


# instance fields
.field private service:Lcom/akexorcist/googledirection/network/DirectionAndPlaceService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/akexorcist/googledirection/network/DirectionAndPlaceConnection;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/akexorcist/googledirection/network/DirectionAndPlaceConnection;->connection:Lcom/akexorcist/googledirection/network/DirectionAndPlaceConnection;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/akexorcist/googledirection/network/DirectionAndPlaceConnection;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/network/DirectionAndPlaceConnection;-><init>()V

    sput-object v0, Lcom/akexorcist/googledirection/network/DirectionAndPlaceConnection;->connection:Lcom/akexorcist/googledirection/network/DirectionAndPlaceConnection;

    .line 36
    :cond_0
    sget-object v0, Lcom/akexorcist/googledirection/network/DirectionAndPlaceConnection;->connection:Lcom/akexorcist/googledirection/network/DirectionAndPlaceConnection;

    return-object v0
.end method


# virtual methods
.method public createService()Lcom/akexorcist/googledirection/network/DirectionAndPlaceService;
    .locals 3

    .prologue
    .line 42
    iget-object v1, p0, Lcom/akexorcist/googledirection/network/DirectionAndPlaceConnection;->service:Lcom/akexorcist/googledirection/network/DirectionAndPlaceService;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v2, "https://maps.googleapis.com/maps/api/"

    .line 44
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 45
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 47
    .local v0, "retrofit":Lretrofit2/Retrofit;
    const-class v1, Lcom/akexorcist/googledirection/network/DirectionAndPlaceService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akexorcist/googledirection/network/DirectionAndPlaceService;

    iput-object v1, p0, Lcom/akexorcist/googledirection/network/DirectionAndPlaceConnection;->service:Lcom/akexorcist/googledirection/network/DirectionAndPlaceService;

    .line 49
    .end local v0    # "retrofit":Lretrofit2/Retrofit;
    :cond_0
    iget-object v1, p0, Lcom/akexorcist/googledirection/network/DirectionAndPlaceConnection;->service:Lcom/akexorcist/googledirection/network/DirectionAndPlaceService;

    return-object v1
.end method
