.class public Lco/kr/festfive/activity/MapActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MapActivity.java"


# static fields
.field static final HAMBURG:Lcom/google/android/gms/maps/model/LatLng;

.field static final KIEL:Lcom/google/android/gms/maps/model/LatLng;


# instance fields
.field private address:Ljava/lang/String;

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field latitude:Ljava/lang/String;

.field longitude:Ljava/lang/String;

.field private mResultCallback:Lretrofit/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Callback",
            "<",
            "Lretrofit/Response;",
            ">;"
        }
    .end annotation
.end field

.field private mapView:Lcom/google/android/gms/maps/MapView;

.field private mlatLng:Lcom/google/android/gms/maps/model/LatLng;

.field rootView:Landroid/view/View;

.field private tel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v2, 0x404ac76c8b439581L    # 53.558

    const-wide v4, 0x4023da9fbe76c8b4L    # 9.927

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    sput-object v0, Lco/kr/festfive/activity/MapActivity;->HAMBURG:Lcom/google/android/gms/maps/model/LatLng;

    .line 36
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v2, 0x404ac6872b020c4aL    # 53.551

    const-wide v4, 0x4023fc6a7ef9db23L    # 9.993

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    sput-object v0, Lco/kr/festfive/activity/MapActivity;->KIEL:Lcom/google/android/gms/maps/model/LatLng;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 200
    new-instance v0, Lco/kr/festfive/activity/MapActivity$2;

    invoke-direct {v0, p0}, Lco/kr/festfive/activity/MapActivity$2;-><init>(Lco/kr/festfive/activity/MapActivity;)V

    iput-object v0, p0, Lco/kr/festfive/activity/MapActivity;->mResultCallback:Lretrofit/Callback;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/activity/MapActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/MapActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lco/kr/festfive/activity/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method private getMap()V
    .locals 6

    .prologue
    .line 141
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 143
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    const-string v2, ""

    const-string v3, ""

    const-string v4, "false"

    const-string v5, "ko"

    invoke-interface {v1, v2, v3, v4, v5}, Lco/kr/festfive/service/FestInterface;->requestPlaces(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 145
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v2, Lco/kr/festfive/activity/MapActivity$1;

    invoke-direct {v2, p0}, Lco/kr/festfive/activity/MapActivity$1;-><init>(Lco/kr/festfive/activity/MapActivity;)V

    invoke-interface {v0, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 171
    return-void
.end method

.method private initilizeMap()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lco/kr/festfive/activity/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lco/kr/festfive/activity/MapActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f08013c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 194
    iget-object v0, p0, Lco/kr/festfive/activity/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 195
    const-string v0, "Sorry! unable to create maps"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 198
    :cond_0
    return-void
.end method

.method private setMap()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 86
    iget-object v0, p0, Lco/kr/festfive/activity/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 96
    iget-object v0, p0, Lco/kr/festfive/activity/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 99
    iget-object v0, p0, Lco/kr/festfive/activity/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 102
    iget-object v0, p0, Lco/kr/festfive/activity/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 105
    iget-object v0, p0, Lco/kr/festfive/activity/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 108
    iget-object v0, p0, Lco/kr/festfive/activity/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 120
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lco/kr/festfive/activity/MapActivity;->latitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v1, p0, Lco/kr/festfive/activity/MapActivity;->longitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lco/kr/festfive/activity/MapActivity;->mlatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 129
    iget-object v0, p0, Lco/kr/festfive/activity/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iget-object v2, p0, Lco/kr/festfive/activity/MapActivity;->mlatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 137
    iget-object v0, p0, Lco/kr/festfive/activity/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lco/kr/festfive/activity/MapActivity;->mlatLng:Lcom/google/android/gms/maps/model/LatLng;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 138
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v2, 0x7f0a001e

    invoke-virtual {p0, v2}, Lco/kr/festfive/activity/MapActivity;->setContentView(I)V

    .line 53
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 54
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 60
    const-string v2, "latitude"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/kr/festfive/activity/MapActivity;->latitude:Ljava/lang/String;

    .line 61
    const-string v2, "longitude"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/kr/festfive/activity/MapActivity;->longitude:Ljava/lang/String;

    .line 64
    :cond_1
    invoke-direct {p0}, Lco/kr/festfive/activity/MapActivity;->initilizeMap()V

    .line 66
    invoke-direct {p0}, Lco/kr/festfive/activity/MapActivity;->setMap()V

    .line 67
    const-string v1, "\uc11c\uc6b8\ud2b9\ubcc4\uc2dc \uc11c\ucd08\uad6c \ubc29\ubc30\ub3d9"

    .line 68
    .local v1, "location":Ljava/lang/String;
    return-void
.end method
