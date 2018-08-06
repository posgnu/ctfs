.class public Lcom/akexorcist/googledirection/util/DirectionConverter;
.super Ljava/lang/Object;
.source "DirectionConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertStepToPosition(Lcom/akexorcist/googledirection/model/Step;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "step"    # Lcom/akexorcist/googledirection/model/Step;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/akexorcist/googledirection/model/Step;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "directionPointList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-virtual {p0}, Lcom/akexorcist/googledirection/model/Step;->getStartLocation()Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akexorcist/googledirection/model/Coordination;->getCoordination()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p0}, Lcom/akexorcist/googledirection/model/Step;->getPolyline()Lcom/akexorcist/googledirection/model/RoutePolyline;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/akexorcist/googledirection/model/Step;->getPolyline()Lcom/akexorcist/googledirection/model/RoutePolyline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akexorcist/googledirection/model/RoutePolyline;->getPointList()Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "decodedPointList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/akexorcist/googledirection/model/Step;->getPolyline()Lcom/akexorcist/googledirection/model/RoutePolyline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akexorcist/googledirection/model/RoutePolyline;->getPointList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 54
    .local v1, "position":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v0    # "decodedPointList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    .end local v1    # "position":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    invoke-virtual {p0}, Lcom/akexorcist/googledirection/model/Step;->getEndLocation()Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akexorcist/googledirection/model/Coordination;->getCoordination()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public static createPolyline(Landroid/content/Context;Ljava/util/ArrayList;II)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "color"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;II)",
            "Lcom/google/android/gms/maps/model/PolylineOptions;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "locationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    new-instance v2, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    invoke-static {p0, p2}, Lcom/akexorcist/googledirection/util/DirectionConverter;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    .line 107
    .local v1, "rectLine":Lcom/google/android/gms/maps/model/PolylineOptions;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    .line 108
    .local v0, "location":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    goto :goto_0

    .line 110
    .end local v0    # "location":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    return-object v1
.end method

.method public static createTransitPolyline(Landroid/content/Context;Ljava/util/List;IIII)Ljava/util/ArrayList;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "transitWidth"    # I
    .param p3, "transitColor"    # I
    .param p4, "walkingWidth"    # I
    .param p5, "walkingColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/akexorcist/googledirection/model/Step;",
            ">;IIII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/PolylineOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "stepList":Ljava/util/List;, "Ljava/util/List<Lcom/akexorcist/googledirection/model/Step;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v1, "polylineOptionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/PolylineOptions;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/akexorcist/googledirection/model/Step;

    .line 117
    .local v2, "step":Lcom/akexorcist/googledirection/model/Step;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "directionPointList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-static {v2, v0}, Lcom/akexorcist/googledirection/util/DirectionConverter;->convertStepToPosition(Lcom/akexorcist/googledirection/model/Step;Ljava/util/ArrayList;)V

    .line 119
    invoke-virtual {v2}, Lcom/akexorcist/googledirection/model/Step;->isContainStepList()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    invoke-static {p0, v0, p4, p5}, Lcom/akexorcist/googledirection/util/DirectionConverter;->createPolyline(Landroid/content/Context;Ljava/util/ArrayList;II)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/util/DirectionConverter;->createPolyline(Landroid/content/Context;Ljava/util/ArrayList;II)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v0    # "directionPointList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    .end local v2    # "step":Lcom/akexorcist/googledirection/model/Step;
    :cond_1
    return-object v1
.end method

.method public static decodePoly(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .param p0, "encoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v10, "poly":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v5, 0x0

    .local v5, "index":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 79
    .local v8, "len":I
    const/4 v7, 0x0

    .local v7, "lat":I
    const/4 v9, 0x0

    .line 80
    .local v9, "lng":I
    :goto_0
    if-ge v5, v8, :cond_2

    .line 81
    const/4 v13, 0x0

    .local v13, "shift":I
    const/4 v12, 0x0

    .line 83
    .local v12, "result":I
    :goto_1
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v2, v14, -0x3f

    .line 84
    .local v2, "b":I
    and-int/lit8 v14, v2, 0x1f

    shl-int/2addr v14, v13

    or-int/2addr v12, v14

    .line 85
    add-int/lit8 v13, v13, 0x5

    .line 86
    const/16 v14, 0x20

    if-ge v2, v14, :cond_4

    .line 87
    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_0

    shr-int/lit8 v14, v12, 0x1

    xor-int/lit8 v3, v14, -0x1

    .line 88
    .local v3, "dlat":I
    :goto_2
    add-int/2addr v7, v3

    .line 89
    const/4 v13, 0x0

    .line 90
    const/4 v12, 0x0

    move v5, v6

    .line 92
    .end local v6    # "index":I
    .restart local v5    # "index":I
    :goto_3
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .restart local v6    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v2, v14, -0x3f

    .line 93
    and-int/lit8 v14, v2, 0x1f

    shl-int/2addr v14, v13

    or-int/2addr v12, v14

    .line 94
    add-int/lit8 v13, v13, 0x5

    .line 95
    const/16 v14, 0x20

    if-ge v2, v14, :cond_3

    .line 96
    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_1

    shr-int/lit8 v14, v12, 0x1

    xor-int/lit8 v4, v14, -0x1

    .line 97
    .local v4, "dlng":I
    :goto_4
    add-int/2addr v9, v4

    .line 99
    new-instance v11, Lcom/google/android/gms/maps/model/LatLng;

    int-to-double v14, v7

    const-wide v16, 0x40f86a0000000000L    # 100000.0

    div-double v14, v14, v16

    int-to-double v0, v9

    move-wide/from16 v16, v0

    const-wide v18, 0x40f86a0000000000L    # 100000.0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v11, v14, v15, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 100
    .local v11, "position":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v6

    .line 101
    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_0

    .line 87
    .end local v3    # "dlat":I
    .end local v4    # "dlng":I
    .end local v5    # "index":I
    .end local v11    # "position":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v6    # "index":I
    :cond_0
    shr-int/lit8 v3, v12, 0x1

    goto :goto_2

    .line 96
    .restart local v3    # "dlat":I
    :cond_1
    shr-int/lit8 v4, v12, 0x1

    goto :goto_4

    .line 102
    .end local v2    # "b":I
    .end local v3    # "dlat":I
    .end local v6    # "index":I
    .end local v12    # "result":I
    .end local v13    # "shift":I
    .restart local v5    # "index":I
    :cond_2
    return-object v10

    .end local v5    # "index":I
    .restart local v2    # "b":I
    .restart local v3    # "dlat":I
    .restart local v6    # "index":I
    .restart local v12    # "result":I
    .restart local v13    # "shift":I
    :cond_3
    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_3

    .end local v3    # "dlat":I
    .end local v5    # "index":I
    .restart local v6    # "index":I
    :cond_4
    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_1
.end method

.method private static dpToPx(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 131
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    int-to-float v1, p1

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public static getDirectionPoint(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/akexorcist/googledirection/model/Step;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "stepList":Ljava/util/List;, "Ljava/util/List<Lcom/akexorcist/googledirection/model/Step;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "directionPointList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 38
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akexorcist/googledirection/model/Step;

    .line 39
    .local v1, "step":Lcom/akexorcist/googledirection/model/Step;
    invoke-static {v1, v0}, Lcom/akexorcist/googledirection/util/DirectionConverter;->convertStepToPosition(Lcom/akexorcist/googledirection/model/Step;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 42
    .end local v1    # "step":Lcom/akexorcist/googledirection/model/Step;
    :cond_0
    return-object v0
.end method

.method public static getSectionPoint(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/akexorcist/googledirection/model/Step;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "stepList":Ljava/util/List;, "Ljava/util/List<Lcom/akexorcist/googledirection/model/Step;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "directionPointList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 67
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/akexorcist/googledirection/model/Step;

    invoke-virtual {v2}, Lcom/akexorcist/googledirection/model/Step;->getStartLocation()Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akexorcist/googledirection/model/Coordination;->getCoordination()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akexorcist/googledirection/model/Step;

    .line 70
    .local v1, "step":Lcom/akexorcist/googledirection/model/Step;
    invoke-virtual {v1}, Lcom/akexorcist/googledirection/model/Step;->getEndLocation()Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akexorcist/googledirection/model/Coordination;->getCoordination()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    .end local v1    # "step":Lcom/akexorcist/googledirection/model/Step;
    :cond_0
    return-object v0
.end method
