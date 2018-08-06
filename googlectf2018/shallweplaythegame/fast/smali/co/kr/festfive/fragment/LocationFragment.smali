.class public Lco/kr/festfive/fragment/LocationFragment;
.super Landroid/support/v4/app/Fragment;
.source "LocationFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/fragment/LocationFragment$Action;
    }
.end annotation


# static fields
.field static final HAMBURG:Lcom/google/android/gms/maps/model/LatLng;

.field static final KIEL:Lcom/google/android/gms/maps/model/LatLng;

.field private static final MIN_DISTANCE:I = 0x64

.field private static final logTag:Ljava/lang/String; = "SwipeDetector"


# instance fields
.field public final HORIZONTAL_MIN_DISTANCE:I

.field public final VERTICAL_MIN_DISTANCE:I

.field private address:Ljava/lang/String;

.field private detailFrame:Landroid/widget/FrameLayout;

.field private detailLinear:Landroid/widget/LinearLayout;

.field private downX:F

.field private downY:F

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

.field private mSwipeDetected:Lco/kr/festfive/fragment/LocationFragment$Action;

.field private mapView:Lcom/google/android/gms/maps/MapView;

.field private mlatLng:Lcom/google/android/gms/maps/model/LatLng;

.field rootView:Landroid/view/View;

.field private tel:Ljava/lang/String;

.field private upX:F

.field private upY:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 71
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v2, 0x404ac76c8b439581L    # 53.558

    const-wide v4, 0x4023da9fbe76c8b4L    # 9.927

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    sput-object v0, Lco/kr/festfive/fragment/LocationFragment;->HAMBURG:Lcom/google/android/gms/maps/model/LatLng;

    .line 72
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v2, 0x404ac6872b020c4aL    # 53.551

    const-wide v4, 0x4023fc6a7ef9db23L    # 9.993

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    sput-object v0, Lco/kr/festfive/fragment/LocationFragment;->KIEL:Lcom/google/android/gms/maps/model/LatLng;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 83
    new-instance v0, Lco/kr/festfive/fragment/LocationFragment$1;

    invoke-direct {v0, p0}, Lco/kr/festfive/fragment/LocationFragment$1;-><init>(Lco/kr/festfive/fragment/LocationFragment;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/LocationFragment;->mResultCallback:Lretrofit/Callback;

    .line 107
    const/16 v0, 0x28

    iput v0, p0, Lco/kr/festfive/fragment/LocationFragment;->HORIZONTAL_MIN_DISTANCE:I

    .line 108
    const/16 v0, 0x50

    iput v0, p0, Lco/kr/festfive/fragment/LocationFragment;->VERTICAL_MIN_DISTANCE:I

    .line 121
    sget-object v0, Lco/kr/festfive/fragment/LocationFragment$Action;->None:Lco/kr/festfive/fragment/LocationFragment$Action;

    iput-object v0, p0, Lco/kr/festfive/fragment/LocationFragment;->mSwipeDetected:Lco/kr/festfive/fragment/LocationFragment$Action;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/LocationFragment;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/LocationFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/fragment/LocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method private createRandLocation(DD)[D
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    const-wide v4, 0x407f400000000000L    # 500.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 368
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sub-double/2addr v2, v6

    div-double/2addr v2, v4

    add-double/2addr v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 369
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sub-double/2addr v2, v6

    div-double/2addr v2, v4

    add-double/2addr v2, p3

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide v2, 0x4062c00000000000L    # 150.0

    .line 370
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    return-object v0
.end method

.method private getMap()V
    .locals 6

    .prologue
    .line 305
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 307
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    const-string v2, ""

    const-string v3, ""

    const-string v4, "false"

    const-string v5, "ko"

    invoke-interface {v1, v2, v3, v4, v5}, Lco/kr/festfive/service/FestInterface;->requestPlaces(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 309
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v2, Lco/kr/festfive/fragment/LocationFragment$4;

    invoke-direct {v2, p0}, Lco/kr/festfive/fragment/LocationFragment$4;-><init>(Lco/kr/festfive/fragment/LocationFragment;)V

    invoke-interface {v0, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 336
    return-void
.end method

.method private initilizeMap()V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lco/kr/festfive/fragment/LocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lco/kr/festfive/fragment/LocationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f08013c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/LocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 359
    iget-object v0, p0, Lco/kr/festfive/fragment/LocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lco/kr/festfive/fragment/LocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Sorry! unable to create maps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 363
    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "lat"    # Ljava/lang/String;
    .param p1, "lon"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Lco/kr/festfive/fragment/LocationFragment;

    invoke-direct {v0}, Lco/kr/festfive/fragment/LocationFragment;-><init>()V

    .line 59
    .local v0, "f":Lco/kr/festfive/fragment/LocationFragment;
    iput-object p0, v0, Lco/kr/festfive/fragment/LocationFragment;->latitude:Ljava/lang/String;

    .line 60
    iput-object p1, v0, Lco/kr/festfive/fragment/LocationFragment;->longitude:Ljava/lang/String;

    .line 62
    return-object v0
.end method

.method private setMap()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 250
    iget-object v0, p0, Lco/kr/festfive/fragment/LocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 260
    iget-object v0, p0, Lco/kr/festfive/fragment/LocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 263
    iget-object v0, p0, Lco/kr/festfive/fragment/LocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 266
    iget-object v0, p0, Lco/kr/festfive/fragment/LocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 269
    iget-object v0, p0, Lco/kr/festfive/fragment/LocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 272
    iget-object v0, p0, Lco/kr/festfive/fragment/LocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 284
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lco/kr/festfive/fragment/LocationFragment;->latitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v1, p0, Lco/kr/festfive/fragment/LocationFragment;->longitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lco/kr/festfive/fragment/LocationFragment;->mlatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 293
    iget-object v0, p0, Lco/kr/festfive/fragment/LocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iget-object v2, p0, Lco/kr/festfive/fragment/LocationFragment;->mlatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 301
    iget-object v0, p0, Lco/kr/festfive/fragment/LocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lco/kr/festfive/fragment/LocationFragment;->mlatLng:Lcom/google/android/gms/maps/model/LatLng;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 302
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    const v1, 0x7f0a005c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/fragment/LocationFragment;->rootView:Landroid/view/View;

    .line 128
    iget-object v1, p0, Lco/kr/festfive/fragment/LocationFragment;->rootView:Landroid/view/View;

    const v2, 0x7f08007c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lco/kr/festfive/fragment/LocationFragment;->detailLinear:Landroid/widget/LinearLayout;

    .line 129
    iget-object v1, p0, Lco/kr/festfive/fragment/LocationFragment;->detailLinear:Landroid/widget/LinearLayout;

    new-instance v2, Lco/kr/festfive/fragment/LocationFragment$2;

    invoke-direct {v2, p0}, Lco/kr/festfive/fragment/LocationFragment$2;-><init>(Lco/kr/festfive/fragment/LocationFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v1, p0, Lco/kr/festfive/fragment/LocationFragment;->rootView:Landroid/view/View;

    const v2, 0x7f08007b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lco/kr/festfive/fragment/LocationFragment;->detailFrame:Landroid/widget/FrameLayout;

    .line 189
    iget-object v1, p0, Lco/kr/festfive/fragment/LocationFragment;->detailFrame:Landroid/widget/FrameLayout;

    new-instance v2, Lco/kr/festfive/fragment/LocationFragment$3;

    invoke-direct {v2, p0}, Lco/kr/festfive/fragment/LocationFragment$3;-><init>(Lco/kr/festfive/fragment/LocationFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    invoke-direct {p0}, Lco/kr/festfive/fragment/LocationFragment;->initilizeMap()V

    .line 202
    invoke-direct {p0}, Lco/kr/festfive/fragment/LocationFragment;->setMap()V

    .line 203
    const-string v0, "\uc11c\uc6b8\ud2b9\ubcc4\uc2dc \uc11c\ucd08\uad6c \ubc29\ubc30\ub3d9"

    .line 246
    .local v0, "location":Ljava/lang/String;
    iget-object v1, p0, Lco/kr/festfive/fragment/LocationFragment;->rootView:Landroid/view/View;

    return-object v1
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 377
    return-void
.end method
