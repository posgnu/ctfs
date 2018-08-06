.class Lco/kr/festfive/fragment/LocationFragment$1;
.super Ljava/lang/Object;
.source "LocationFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/fragment/LocationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lretrofit/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/LocationFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/LocationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/LocationFragment;

    .prologue
    .line 83
    iput-object p1, p0, Lco/kr/festfive/fragment/LocationFragment$1;->this$0:Lco/kr/festfive/fragment/LocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 100
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 6
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lretrofit/Response;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lretrofit/Response;>;"
    iget-object v2, p0, Lco/kr/festfive/fragment/LocationFragment$1;->this$0:Lco/kr/festfive/fragment/LocationFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/LocationFragment;->access$000(Lco/kr/festfive/fragment/LocationFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 88
    const/4 v0, 0x0

    .line 91
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    .end local v0    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    const-wide v2, 0x404158e4f3343fa3L    # 34.694487

    const-wide v4, 0x4060e63ed527e521L    # 135.19517

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 92
    .restart local v0    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    const-string v1, "\ud14c\uc2a4\ud2b8"

    .line 93
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lco/kr/festfive/fragment/LocationFragment$1;->this$0:Lco/kr/festfive/fragment/LocationFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/LocationFragment;->access$000(Lco/kr/festfive/fragment/LocationFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 95
    iget-object v2, p0, Lco/kr/festfive/fragment/LocationFragment$1;->this$0:Lco/kr/festfive/fragment/LocationFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/LocationFragment;->access$000(Lco/kr/festfive/fragment/LocationFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v0, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 96
    return-void
.end method
