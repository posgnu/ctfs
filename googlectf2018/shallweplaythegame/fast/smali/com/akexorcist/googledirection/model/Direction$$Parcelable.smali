.class public Lcom/akexorcist/googledirection/model/Direction$$Parcelable;
.super Ljava/lang/Object;
.source "Direction$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lorg/parceler/ParcelWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akexorcist/googledirection/model/Direction$$Parcelable$Creator$$3;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lorg/parceler/ParcelWrapper",
        "<",
        "Lcom/akexorcist/googledirection/model/Direction;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/akexorcist/googledirection/model/Direction$$Parcelable$Creator$$3;


# instance fields
.field private direction$$0:Lcom/akexorcist/googledirection/model/Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/akexorcist/googledirection/model/Direction$$Parcelable$Creator$$3;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable$Creator$$3;-><init>()V

    sput-object v0, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->CREATOR:Lcom/akexorcist/googledirection/model/Direction$$Parcelable$Creator$$3;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel$$0"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 30
    .local v0, "direction$$2":Lcom/akexorcist/googledirection/model/Direction;
    :goto_0
    iput-object v0, p0, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->direction$$0:Lcom/akexorcist/googledirection/model/Direction;

    .line 31
    return-void

    .line 28
    .end local v0    # "direction$$2":Lcom/akexorcist/googledirection/model/Direction;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Direction(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Direction;

    move-result-object v0

    .restart local v0    # "direction$$2":Lcom/akexorcist/googledirection/model/Direction;
    goto :goto_0
.end method

.method public constructor <init>(Lcom/akexorcist/googledirection/model/Direction;)V
    .locals 0
    .param p1, "direction$$4"    # Lcom/akexorcist/googledirection/model/Direction;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->direction$$0:Lcom/akexorcist/googledirection/model/Direction;

    .line 35
    return-void
.end method

.method private readcom_akexorcist_googledirection_model_Agency(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Agency;
    .locals 2
    .param p1, "parcel$$16"    # Landroid/os/Parcel;

    .prologue
    .line 473
    new-instance v0, Lcom/akexorcist/googledirection/model/Agency;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Agency;-><init>()V

    .line 474
    .local v0, "agency$$0":Lcom/akexorcist/googledirection/model/Agency;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Agency;->name:Ljava/lang/String;

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Agency;->url:Ljava/lang/String;

    .line 476
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Bound(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Bound;
    .locals 5
    .param p1, "parcel$$18"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, -0x1

    .line 490
    new-instance v0, Lcom/akexorcist/googledirection/model/Bound;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Bound;-><init>()V

    .line 492
    .local v0, "bound$$0":Lcom/akexorcist/googledirection/model/Bound;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 493
    const/4 v1, 0x0

    .line 497
    .local v1, "coordination$$7":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_0
    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Bound;->southwest:Lcom/akexorcist/googledirection/model/Coordination;

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 500
    const/4 v2, 0x0

    .line 504
    .local v2, "coordination$$8":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_1
    iput-object v2, v0, Lcom/akexorcist/googledirection/model/Bound;->northeast:Lcom/akexorcist/googledirection/model/Coordination;

    .line 505
    return-object v0

    .line 495
    .end local v1    # "coordination$$7":Lcom/akexorcist/googledirection/model/Coordination;
    .end local v2    # "coordination$$8":Lcom/akexorcist/googledirection/model/Coordination;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v1

    .restart local v1    # "coordination$$7":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_0

    .line 502
    :cond_1
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v2

    .restart local v2    # "coordination$$8":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_1
.end method

.method private readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;
    .locals 4
    .param p1, "parcel$$10"    # Landroid/os/Parcel;

    .prologue
    .line 291
    new-instance v0, Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Coordination;-><init>()V

    .line 292
    .local v0, "coordination$$0":Lcom/akexorcist/googledirection/model/Coordination;
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/akexorcist/googledirection/model/Coordination;->latitude:D

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/akexorcist/googledirection/model/Coordination;->longitude:D

    .line 294
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Direction(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Direction;
    .locals 11
    .param p1, "parcel$$2"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, -0x1

    .line 49
    new-instance v0, Lcom/akexorcist/googledirection/model/Direction;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Direction;-><init>()V

    .line 50
    .local v0, "direction$$1":Lcom/akexorcist/googledirection/model/Direction;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 52
    .local v2, "int$$0":I
    if-gez v2, :cond_2

    .line 53
    const/4 v6, 0x0

    .line 66
    .local v6, "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/GeocodedWaypoint;>;"
    :cond_0
    iput-object v6, v0, Lcom/akexorcist/googledirection/model/Direction;->geocodedWaypointList:Ljava/util/List;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/akexorcist/googledirection/model/Direction;->errorMessage:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 70
    .local v4, "int$$4":I
    if-gez v4, :cond_4

    .line 71
    const/4 v7, 0x0

    .line 84
    .local v7, "list$$2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Route;>;"
    :cond_1
    iput-object v7, v0, Lcom/akexorcist/googledirection/model/Direction;->routeList:Ljava/util/List;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/akexorcist/googledirection/model/Direction;->status:Ljava/lang/String;

    .line 86
    return-object v0

    .line 55
    .end local v4    # "int$$4":I
    .end local v6    # "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/GeocodedWaypoint;>;"
    .end local v7    # "list$$2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Route;>;"
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .restart local v6    # "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/GeocodedWaypoint;>;"
    const/4 v3, 0x0

    .local v3, "int$$1":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v10, :cond_3

    .line 59
    const/4 v1, 0x0

    .line 63
    .local v1, "geocodedWaypoint$$1":Lcom/akexorcist/googledirection/model/GeocodedWaypoint;
    :goto_1
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "geocodedWaypoint$$1":Lcom/akexorcist/googledirection/model/GeocodedWaypoint;
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_GeocodedWaypoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/GeocodedWaypoint;

    move-result-object v1

    .restart local v1    # "geocodedWaypoint$$1":Lcom/akexorcist/googledirection/model/GeocodedWaypoint;
    goto :goto_1

    .line 73
    .end local v1    # "geocodedWaypoint$$1":Lcom/akexorcist/googledirection/model/GeocodedWaypoint;
    .end local v3    # "int$$1":I
    .restart local v4    # "int$$4":I
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .restart local v7    # "list$$2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Route;>;"
    const/4 v5, 0x0

    .local v5, "int$$5":I
    :goto_2
    if-ge v5, v4, :cond_1

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v10, :cond_5

    .line 77
    const/4 v8, 0x0

    .line 81
    .local v8, "route$$1":Lcom/akexorcist/googledirection/model/Route;
    :goto_3
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 79
    .end local v8    # "route$$1":Lcom/akexorcist/googledirection/model/Route;
    :cond_5
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Route(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Route;

    move-result-object v8

    .restart local v8    # "route$$1":Lcom/akexorcist/googledirection/model/Route;
    goto :goto_3
.end method

.method private readcom_akexorcist_googledirection_model_Fare(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Fare;
    .locals 2
    .param p1, "parcel$$5"    # Landroid/os/Parcel;

    .prologue
    .line 167
    new-instance v0, Lcom/akexorcist/googledirection/model/Fare;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Fare;-><init>()V

    .line 168
    .local v0, "fare$$0":Lcom/akexorcist/googledirection/model/Fare;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Fare;->currency:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Fare;->text:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Fare;->value:Ljava/lang/String;

    .line 171
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_GeocodedWaypoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/GeocodedWaypoint;
    .locals 5
    .param p1, "parcel$$3"    # Landroid/os/Parcel;

    .prologue
    .line 91
    new-instance v0, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;-><init>()V

    .line 92
    .local v0, "geocodedWaypoint$$0":Lcom/akexorcist/googledirection/model/GeocodedWaypoint;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    .local v1, "int$$2":I
    if-gez v1, :cond_1

    .line 95
    const/4 v3, 0x0

    .line 102
    .local v3, "list$$1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iput-object v3, v0, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;->types:Ljava/util/List;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;->placeId:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;->status:Ljava/lang/String;

    .line 105
    return-object v0

    .line 97
    .end local v3    # "list$$1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .restart local v3    # "list$$1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "int$$3":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;
    .locals 2
    .param p1, "parcel$$9"    # Landroid/os/Parcel;

    .prologue
    .line 283
    new-instance v0, Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Info;-><init>()V

    .line 284
    .local v0, "info$$0":Lcom/akexorcist/googledirection/model/Info;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Info;->text:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Info;->value:Ljava/lang/String;

    .line 286
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Leg(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Leg;
    .locals 20
    .param p1, "parcel$$7"    # Landroid/os/Parcel;

    .prologue
    .line 183
    new-instance v11, Lcom/akexorcist/googledirection/model/Leg;

    invoke-direct {v11}, Lcom/akexorcist/googledirection/model/Leg;-><init>()V

    .line 185
    .local v11, "leg$$0":Lcom/akexorcist/googledirection/model/Leg;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 186
    const/4 v15, 0x0

    .line 190
    .local v15, "timeInfo$$1":Lcom/akexorcist/googledirection/model/TimeInfo;
    :goto_0
    iput-object v15, v11, Lcom/akexorcist/googledirection/model/Leg;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 193
    const/4 v4, 0x0

    .line 197
    .local v4, "info$$1":Lcom/akexorcist/googledirection/model/Info;
    :goto_1
    iput-object v4, v11, Lcom/akexorcist/googledirection/model/Leg;->duration:Lcom/akexorcist/googledirection/model/Info;

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 200
    const/4 v5, 0x0

    .line 204
    .local v5, "info$$2":Lcom/akexorcist/googledirection/model/Info;
    :goto_2
    iput-object v5, v11, Lcom/akexorcist/googledirection/model/Leg;->durationInTraffic:Lcom/akexorcist/googledirection/model/Info;

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 207
    const/4 v6, 0x0

    .line 211
    .local v6, "info$$3":Lcom/akexorcist/googledirection/model/Info;
    :goto_3
    iput-object v6, v11, Lcom/akexorcist/googledirection/model/Leg;->distance:Lcom/akexorcist/googledirection/model/Info;

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 214
    const/4 v2, 0x0

    .line 218
    .local v2, "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_4
    iput-object v2, v11, Lcom/akexorcist/googledirection/model/Leg;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 221
    const/16 v16, 0x0

    .line 225
    .local v16, "timeInfo$$2":Lcom/akexorcist/googledirection/model/TimeInfo;
    :goto_5
    move-object/from16 v0, v16

    iput-object v0, v11, Lcom/akexorcist/googledirection/model/Leg;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/akexorcist/googledirection/model/Leg;->startAddress:Ljava/lang/String;

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 229
    .local v9, "int$$8":I
    if-gez v9, :cond_8

    .line 230
    const/4 v12, 0x0

    .line 243
    .local v12, "list$$4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Waypoint;>;"
    :cond_0
    iput-object v12, v11, Lcom/akexorcist/googledirection/model/Leg;->viaWaypointList:Ljava/util/List;

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 246
    .local v7, "int$$10":I
    if-gez v7, :cond_a

    .line 247
    const/4 v13, 0x0

    .line 260
    .local v13, "list$$5":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    :cond_1
    iput-object v13, v11, Lcom/akexorcist/googledirection/model/Leg;->stepList:Ljava/util/List;

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/akexorcist/googledirection/model/Leg;->endAddress:Ljava/lang/String;

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 264
    const/4 v3, 0x0

    .line 268
    .local v3, "coordination$$6":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_6
    iput-object v3, v11, Lcom/akexorcist/googledirection/model/Leg;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    .line 269
    return-object v11

    .line 188
    .end local v2    # "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    .end local v3    # "coordination$$6":Lcom/akexorcist/googledirection/model/Coordination;
    .end local v4    # "info$$1":Lcom/akexorcist/googledirection/model/Info;
    .end local v5    # "info$$2":Lcom/akexorcist/googledirection/model/Info;
    .end local v6    # "info$$3":Lcom/akexorcist/googledirection/model/Info;
    .end local v7    # "int$$10":I
    .end local v9    # "int$$8":I
    .end local v12    # "list$$4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Waypoint;>;"
    .end local v13    # "list$$5":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    .end local v15    # "timeInfo$$1":Lcom/akexorcist/googledirection/model/TimeInfo;
    .end local v16    # "timeInfo$$2":Lcom/akexorcist/googledirection/model/TimeInfo;
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;

    move-result-object v15

    .restart local v15    # "timeInfo$$1":Lcom/akexorcist/googledirection/model/TimeInfo;
    goto/16 :goto_0

    .line 195
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;

    move-result-object v4

    .restart local v4    # "info$$1":Lcom/akexorcist/googledirection/model/Info;
    goto :goto_1

    .line 202
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;

    move-result-object v5

    .restart local v5    # "info$$2":Lcom/akexorcist/googledirection/model/Info;
    goto :goto_2

    .line 209
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;

    move-result-object v6

    .restart local v6    # "info$$3":Lcom/akexorcist/googledirection/model/Info;
    goto :goto_3

    .line 216
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v2

    .restart local v2    # "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_4

    .line 223
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;

    move-result-object v16

    .restart local v16    # "timeInfo$$2":Lcom/akexorcist/googledirection/model/TimeInfo;
    goto :goto_5

    .line 232
    .restart local v9    # "int$$8":I
    :cond_8
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .restart local v12    # "list$$4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Waypoint;>;"
    const/4 v10, 0x0

    .local v10, "int$$9":I
    :goto_7
    if-ge v10, v9, :cond_0

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 236
    const/16 v17, 0x0

    .line 240
    .local v17, "waypoint$$1":Lcom/akexorcist/googledirection/model/Waypoint;
    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 238
    .end local v17    # "waypoint$$1":Lcom/akexorcist/googledirection/model/Waypoint;
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Waypoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Waypoint;

    move-result-object v17

    .restart local v17    # "waypoint$$1":Lcom/akexorcist/googledirection/model/Waypoint;
    goto :goto_8

    .line 249
    .end local v10    # "int$$9":I
    .end local v17    # "waypoint$$1":Lcom/akexorcist/googledirection/model/Waypoint;
    .restart local v7    # "int$$10":I
    :cond_a
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .restart local v13    # "list$$5":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    const/4 v8, 0x0

    .local v8, "int$$11":I
    :goto_9
    if-ge v8, v7, :cond_1

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 253
    const/4 v14, 0x0

    .line 257
    .local v14, "step$$2":Lcom/akexorcist/googledirection/model/Step;
    :goto_a
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 255
    .end local v14    # "step$$2":Lcom/akexorcist/googledirection/model/Step;
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Step(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Step;

    move-result-object v14

    .restart local v14    # "step$$2":Lcom/akexorcist/googledirection/model/Step;
    goto :goto_a

    .line 266
    .end local v8    # "int$$11":I
    .end local v14    # "step$$2":Lcom/akexorcist/googledirection/model/Step;
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v3

    .restart local v3    # "coordination$$6":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_6
.end method

.method private readcom_akexorcist_googledirection_model_Line(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Line;
    .locals 8
    .param p1, "parcel$$15"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, -0x1

    .line 439
    new-instance v3, Lcom/akexorcist/googledirection/model/Line;

    invoke-direct {v3}, Lcom/akexorcist/googledirection/model/Line;-><init>()V

    .line 440
    .local v3, "line$$0":Lcom/akexorcist/googledirection/model/Line;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->color:Ljava/lang/String;

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->name:Ljava/lang/String;

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->shortName:Ljava/lang/String;

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->textColor:Ljava/lang/String;

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 446
    .local v1, "int$$12":I
    if-gez v1, :cond_1

    .line 447
    const/4 v4, 0x0

    .line 460
    .local v4, "list$$6":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    :cond_0
    iput-object v4, v3, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 463
    const/4 v5, 0x0

    .line 467
    .local v5, "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    :goto_0
    iput-object v5, v3, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    .line 468
    return-object v3

    .line 449
    .end local v4    # "list$$6":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    .end local v5    # "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .restart local v4    # "list$$6":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    const/4 v2, 0x0

    .local v2, "int$$13":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 453
    const/4 v0, 0x0

    .line 457
    .local v0, "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    :goto_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 455
    .end local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    :cond_2
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Agency(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Agency;

    move-result-object v0

    .restart local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    goto :goto_2

    .line 465
    .end local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    .end local v2    # "int$$13":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Vehicle(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Vehicle;

    move-result-object v5

    .restart local v5    # "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    goto :goto_0
.end method

.method private readcom_akexorcist_googledirection_model_Route(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Route;
    .locals 13
    .param p1, "parcel$$4"    # Landroid/os/Parcel;

    .prologue
    const/4 v12, -0x1

    .line 110
    new-instance v9, Lcom/akexorcist/googledirection/model/Route;

    invoke-direct {v9}, Lcom/akexorcist/googledirection/model/Route;-><init>()V

    .line 111
    .local v9, "route$$0":Lcom/akexorcist/googledirection/model/Route;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/akexorcist/googledirection/model/Route;->summary:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_2

    .line 114
    const/4 v1, 0x0

    .line 118
    .local v1, "fare$$1":Lcom/akexorcist/googledirection/model/Fare;
    :goto_0
    iput-object v1, v9, Lcom/akexorcist/googledirection/model/Route;->fare:Lcom/akexorcist/googledirection/model/Fare;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_3

    .line 121
    const/4 v10, 0x0

    .line 125
    .local v10, "routePolyline$$1":Lcom/akexorcist/googledirection/model/RoutePolyline;
    :goto_1
    iput-object v10, v9, Lcom/akexorcist/googledirection/model/Route;->overviewPolyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/akexorcist/googledirection/model/Route;->copyrights:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 129
    .local v4, "int$$6":I
    if-gez v4, :cond_4

    .line 130
    const/4 v7, 0x0

    .line 143
    .local v7, "list$$3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Leg;>;"
    :cond_0
    iput-object v7, v9, Lcom/akexorcist/googledirection/model/Route;->legList:Ljava/util/List;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_6

    .line 146
    const/4 v0, 0x0

    .line 150
    .local v0, "bound$$1":Lcom/akexorcist/googledirection/model/Bound;
    :goto_2
    iput-object v0, v9, Lcom/akexorcist/googledirection/model/Route;->bound:Lcom/akexorcist/googledirection/model/Bound;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .local v2, "int$$16":I
    if-gez v2, :cond_7

    .line 154
    const/4 v8, 0x0

    .line 161
    .local v8, "list$$8":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iput-object v8, v9, Lcom/akexorcist/googledirection/model/Route;->warningList:Ljava/util/List;

    .line 162
    return-object v9

    .line 116
    .end local v0    # "bound$$1":Lcom/akexorcist/googledirection/model/Bound;
    .end local v1    # "fare$$1":Lcom/akexorcist/googledirection/model/Fare;
    .end local v2    # "int$$16":I
    .end local v4    # "int$$6":I
    .end local v7    # "list$$3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Leg;>;"
    .end local v8    # "list$$8":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "routePolyline$$1":Lcom/akexorcist/googledirection/model/RoutePolyline;
    :cond_2
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Fare(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Fare;

    move-result-object v1

    .restart local v1    # "fare$$1":Lcom/akexorcist/googledirection/model/Fare;
    goto :goto_0

    .line 123
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_RoutePolyline(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/RoutePolyline;

    move-result-object v10

    .restart local v10    # "routePolyline$$1":Lcom/akexorcist/googledirection/model/RoutePolyline;
    goto :goto_1

    .line 132
    .restart local v4    # "int$$6":I
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .restart local v7    # "list$$3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Leg;>;"
    const/4 v5, 0x0

    .local v5, "int$$7":I
    :goto_3
    if-ge v5, v4, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_5

    .line 136
    const/4 v6, 0x0

    .line 140
    .local v6, "leg$$1":Lcom/akexorcist/googledirection/model/Leg;
    :goto_4
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 138
    .end local v6    # "leg$$1":Lcom/akexorcist/googledirection/model/Leg;
    :cond_5
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Leg(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Leg;

    move-result-object v6

    .restart local v6    # "leg$$1":Lcom/akexorcist/googledirection/model/Leg;
    goto :goto_4

    .line 148
    .end local v5    # "int$$7":I
    .end local v6    # "leg$$1":Lcom/akexorcist/googledirection/model/Leg;
    :cond_6
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Bound(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Bound;

    move-result-object v0

    .restart local v0    # "bound$$1":Lcom/akexorcist/googledirection/model/Bound;
    goto :goto_2

    .line 156
    .restart local v2    # "int$$16":I
    :cond_7
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .restart local v8    # "list$$8":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "int$$17":I
    :goto_5
    if-ge v3, v2, :cond_1

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method private readcom_akexorcist_googledirection_model_RoutePolyline(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/RoutePolyline;
    .locals 2
    .param p1, "parcel$$6"    # Landroid/os/Parcel;

    .prologue
    .line 176
    new-instance v0, Lcom/akexorcist/googledirection/model/RoutePolyline;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/RoutePolyline;-><init>()V

    .line 177
    .local v0, "routePolyline$$0":Lcom/akexorcist/googledirection/model/RoutePolyline;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/RoutePolyline;->rawPointList:Ljava/lang/String;

    .line 178
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Step(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Step;
    .locals 13
    .param p1, "parcel$$12"    # Landroid/os/Parcel;

    .prologue
    const/4 v12, -0x1

    .line 314
    new-instance v8, Lcom/akexorcist/googledirection/model/Step;

    invoke-direct {v8}, Lcom/akexorcist/googledirection/model/Step;-><init>()V

    .line 316
    .local v8, "step$$0":Lcom/akexorcist/googledirection/model/Step;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_1

    .line 317
    const/4 v2, 0x0

    .line 321
    .local v2, "info$$4":Lcom/akexorcist/googledirection/model/Info;
    :goto_0
    iput-object v2, v8, Lcom/akexorcist/googledirection/model/Step;->duration:Lcom/akexorcist/googledirection/model/Info;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/akexorcist/googledirection/model/Step;->htmlInstruction:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_2

    .line 325
    const/4 v3, 0x0

    .line 329
    .local v3, "info$$5":Lcom/akexorcist/googledirection/model/Info;
    :goto_1
    iput-object v3, v8, Lcom/akexorcist/googledirection/model/Step;->distance:Lcom/akexorcist/googledirection/model/Info;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_3

    .line 332
    const/4 v0, 0x0

    .line 336
    .local v0, "coordination$$3":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_2
    iput-object v0, v8, Lcom/akexorcist/googledirection/model/Step;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_4

    .line 339
    const/4 v10, 0x0

    .line 343
    .local v10, "transitDetail$$1":Lcom/akexorcist/googledirection/model/TransitDetail;
    :goto_3
    iput-object v10, v8, Lcom/akexorcist/googledirection/model/Step;->transitDetail:Lcom/akexorcist/googledirection/model/TransitDetail;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 346
    .local v4, "int$$14":I
    if-gez v4, :cond_5

    .line 347
    const/4 v6, 0x0

    .line 360
    .local v6, "list$$7":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    :cond_0
    iput-object v6, v8, Lcom/akexorcist/googledirection/model/Step;->stepList:Ljava/util/List;

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_7

    .line 363
    const/4 v1, 0x0

    .line 367
    .local v1, "coordination$$5":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_4
    iput-object v1, v8, Lcom/akexorcist/googledirection/model/Step;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/akexorcist/googledirection/model/Step;->maneuver:Ljava/lang/String;

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_8

    .line 371
    const/4 v7, 0x0

    .line 375
    .local v7, "routePolyline$$2":Lcom/akexorcist/googledirection/model/RoutePolyline;
    :goto_5
    iput-object v7, v8, Lcom/akexorcist/googledirection/model/Step;->polyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/akexorcist/googledirection/model/Step;->travelMode:Ljava/lang/String;

    .line 377
    return-object v8

    .line 319
    .end local v0    # "coordination$$3":Lcom/akexorcist/googledirection/model/Coordination;
    .end local v1    # "coordination$$5":Lcom/akexorcist/googledirection/model/Coordination;
    .end local v2    # "info$$4":Lcom/akexorcist/googledirection/model/Info;
    .end local v3    # "info$$5":Lcom/akexorcist/googledirection/model/Info;
    .end local v4    # "int$$14":I
    .end local v6    # "list$$7":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    .end local v7    # "routePolyline$$2":Lcom/akexorcist/googledirection/model/RoutePolyline;
    .end local v10    # "transitDetail$$1":Lcom/akexorcist/googledirection/model/TransitDetail;
    :cond_1
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;

    move-result-object v2

    .restart local v2    # "info$$4":Lcom/akexorcist/googledirection/model/Info;
    goto :goto_0

    .line 327
    :cond_2
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;

    move-result-object v3

    .restart local v3    # "info$$5":Lcom/akexorcist/googledirection/model/Info;
    goto :goto_1

    .line 334
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v0

    .restart local v0    # "coordination$$3":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_2

    .line 341
    :cond_4
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_TransitDetail(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TransitDetail;

    move-result-object v10

    .restart local v10    # "transitDetail$$1":Lcom/akexorcist/googledirection/model/TransitDetail;
    goto :goto_3

    .line 349
    .restart local v4    # "int$$14":I
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .restart local v6    # "list$$7":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    const/4 v5, 0x0

    .local v5, "int$$15":I
    :goto_6
    if-ge v5, v4, :cond_0

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_6

    .line 353
    const/4 v9, 0x0

    .line 357
    .local v9, "step$$1":Lcom/akexorcist/googledirection/model/Step;
    :goto_7
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 355
    .end local v9    # "step$$1":Lcom/akexorcist/googledirection/model/Step;
    :cond_6
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Step(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Step;

    move-result-object v9

    .restart local v9    # "step$$1":Lcom/akexorcist/googledirection/model/Step;
    goto :goto_7

    .line 365
    .end local v5    # "int$$15":I
    .end local v9    # "step$$1":Lcom/akexorcist/googledirection/model/Step;
    :cond_7
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v1

    .restart local v1    # "coordination$$5":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_4

    .line 373
    :cond_8
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_RoutePolyline(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/RoutePolyline;

    move-result-object v7

    .restart local v7    # "routePolyline$$2":Lcom/akexorcist/googledirection/model/RoutePolyline;
    goto :goto_5
.end method

.method private readcom_akexorcist_googledirection_model_StopPoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint;
    .locals 4
    .param p1, "parcel$$14"    # Landroid/os/Parcel;

    .prologue
    .line 425
    new-instance v1, Lcom/akexorcist/googledirection/model/StopPoint;

    invoke-direct {v1}, Lcom/akexorcist/googledirection/model/StopPoint;-><init>()V

    .line 426
    .local v1, "stopPoint$$0":Lcom/akexorcist/googledirection/model/StopPoint;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/akexorcist/googledirection/model/StopPoint;->name:Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 429
    const/4 v0, 0x0

    .line 433
    .local v0, "coordination$$4":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_0
    iput-object v0, v1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    .line 434
    return-object v1

    .line 431
    .end local v0    # "coordination$$4":Lcom/akexorcist/googledirection/model/Coordination;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v0

    .restart local v0    # "coordination$$4":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_0
.end method

.method private readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;
    .locals 2
    .param p1, "parcel$$8"    # Landroid/os/Parcel;

    .prologue
    .line 274
    new-instance v0, Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/TimeInfo;-><init>()V

    .line 275
    .local v0, "timeInfo$$0":Lcom/akexorcist/googledirection/model/TimeInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/TimeInfo;->timeZone:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/TimeInfo;->text:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/TimeInfo;->value:Ljava/lang/String;

    .line 278
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_TransitDetail(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TransitDetail;
    .locals 8
    .param p1, "parcel$$13"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, -0x1

    .line 382
    new-instance v5, Lcom/akexorcist/googledirection/model/TransitDetail;

    invoke-direct {v5}, Lcom/akexorcist/googledirection/model/TransitDetail;-><init>()V

    .line 384
    .local v5, "transitDetail$$0":Lcom/akexorcist/googledirection/model/TransitDetail;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 385
    const/4 v3, 0x0

    .line 389
    .local v3, "timeInfo$$3":Lcom/akexorcist/googledirection/model/TimeInfo;
    :goto_0
    iput-object v3, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->headsign:Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->stopNumber:Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 394
    const/4 v1, 0x0

    .line 398
    .local v1, "stopPoint$$1":Lcom/akexorcist/googledirection/model/StopPoint;
    :goto_1
    iput-object v1, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 401
    const/4 v2, 0x0

    .line 405
    .local v2, "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    :goto_2
    iput-object v2, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->departureStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 408
    const/4 v4, 0x0

    .line 412
    .local v4, "timeInfo$$4":Lcom/akexorcist/googledirection/model/TimeInfo;
    :goto_3
    iput-object v4, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_4

    .line 415
    const/4 v0, 0x0

    .line 419
    .local v0, "line$$1":Lcom/akexorcist/googledirection/model/Line;
    :goto_4
    iput-object v0, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->line:Lcom/akexorcist/googledirection/model/Line;

    .line 420
    return-object v5

    .line 387
    .end local v0    # "line$$1":Lcom/akexorcist/googledirection/model/Line;
    .end local v1    # "stopPoint$$1":Lcom/akexorcist/googledirection/model/StopPoint;
    .end local v2    # "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    .end local v3    # "timeInfo$$3":Lcom/akexorcist/googledirection/model/TimeInfo;
    .end local v4    # "timeInfo$$4":Lcom/akexorcist/googledirection/model/TimeInfo;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;

    move-result-object v3

    .restart local v3    # "timeInfo$$3":Lcom/akexorcist/googledirection/model/TimeInfo;
    goto :goto_0

    .line 396
    :cond_1
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_StopPoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint;

    move-result-object v1

    .restart local v1    # "stopPoint$$1":Lcom/akexorcist/googledirection/model/StopPoint;
    goto :goto_1

    .line 403
    :cond_2
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_StopPoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint;

    move-result-object v2

    .restart local v2    # "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    goto :goto_2

    .line 410
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;

    move-result-object v4

    .restart local v4    # "timeInfo$$4":Lcom/akexorcist/googledirection/model/TimeInfo;
    goto :goto_3

    .line 417
    :cond_4
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Line(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Line;

    move-result-object v0

    .restart local v0    # "line$$1":Lcom/akexorcist/googledirection/model/Line;
    goto :goto_4
.end method

.method private readcom_akexorcist_googledirection_model_Vehicle(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Vehicle;
    .locals 2
    .param p1, "parcel$$17"    # Landroid/os/Parcel;

    .prologue
    .line 481
    new-instance v0, Lcom/akexorcist/googledirection/model/Vehicle;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Vehicle;-><init>()V

    .line 482
    .local v0, "vehicle$$0":Lcom/akexorcist/googledirection/model/Vehicle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->name:Ljava/lang/String;

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->iconUrl:Ljava/lang/String;

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->type:Ljava/lang/String;

    .line 485
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Waypoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Waypoint;
    .locals 4
    .param p1, "parcel$$11"    # Landroid/os/Parcel;

    .prologue
    .line 299
    new-instance v1, Lcom/akexorcist/googledirection/model/Waypoint;

    invoke-direct {v1}, Lcom/akexorcist/googledirection/model/Waypoint;-><init>()V

    .line 300
    .local v1, "waypoint$$0":Lcom/akexorcist/googledirection/model/Waypoint;
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/akexorcist/googledirection/model/Waypoint;->interpolation:D

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/akexorcist/googledirection/model/Waypoint;->index:I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 308
    .local v0, "coordination$$2":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_0
    iput-object v0, v1, Lcom/akexorcist/googledirection/model/Waypoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    .line 309
    return-object v1

    .line 306
    .end local v0    # "coordination$$2":Lcom/akexorcist/googledirection/model/Coordination;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v0

    .restart local v0    # "coordination$$2":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_0
.end method

.method private writecom_akexorcist_googledirection_model_Agency(Lcom/akexorcist/googledirection/model/Agency;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "agency$$3"    # Lcom/akexorcist/googledirection/model/Agency;
    .param p2, "parcel$$33"    # Landroid/os/Parcel;
    .param p3, "flags$$14"    # I

    .prologue
    .line 833
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Agency;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 834
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Agency;->url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 835
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Bound(Lcom/akexorcist/googledirection/model/Bound;Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "bound$$2"    # Lcom/akexorcist/googledirection/model/Bound;
    .param p2, "parcel$$35"    # Landroid/os/Parcel;
    .param p3, "flags$$16"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 844
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Bound;->southwest:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v0, :cond_0

    .line 845
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    :goto_0
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Bound;->northeast:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v0, :cond_1

    .line 851
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    :goto_1
    return-void

    .line 847
    :cond_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Bound;->southwest:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 853
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Bound;->northeast:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_1
.end method

.method private writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "coordination$$9"    # Lcom/akexorcist/googledirection/model/Coordination;
    .param p2, "parcel$$27"    # Landroid/os/Parcel;
    .param p3, "flags$$8"    # I

    .prologue
    .line 691
    iget-wide v0, p1, Lcom/akexorcist/googledirection/model/Coordination;->latitude:D

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 692
    iget-wide v0, p1, Lcom/akexorcist/googledirection/model/Coordination;->longitude:D

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 693
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Direction(Lcom/akexorcist/googledirection/model/Direction;Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "direction$$3"    # Lcom/akexorcist/googledirection/model/Direction;
    .param p2, "parcel$$19"    # Landroid/os/Parcel;
    .param p3, "flags$$0"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 509
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Direction;->geocodedWaypointList:Ljava/util/List;

    if-nez v2, :cond_2

    .line 510
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    :cond_0
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Direction;->errorMessage:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 523
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Direction;->routeList:Ljava/util/List;

    if-nez v2, :cond_4

    .line 524
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    :cond_1
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Direction;->status:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    return-void

    .line 512
    :cond_2
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Direction;->geocodedWaypointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Direction;->geocodedWaypointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;

    .line 514
    .local v0, "geocodedWaypoint$$2":Lcom/akexorcist/googledirection/model/GeocodedWaypoint;
    if-nez v0, :cond_3

    .line 515
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 517
    :cond_3
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_GeocodedWaypoint(Lcom/akexorcist/googledirection/model/GeocodedWaypoint;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 526
    .end local v0    # "geocodedWaypoint$$2":Lcom/akexorcist/googledirection/model/GeocodedWaypoint;
    :cond_4
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Direction;->routeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Direction;->routeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akexorcist/googledirection/model/Route;

    .line 528
    .local v1, "route$$2":Lcom/akexorcist/googledirection/model/Route;
    if-nez v1, :cond_5

    .line 529
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 531
    :cond_5
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Route(Lcom/akexorcist/googledirection/model/Route;Landroid/os/Parcel;I)V

    goto :goto_1
.end method

.method private writecom_akexorcist_googledirection_model_Fare(Lcom/akexorcist/googledirection/model/Fare;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "fare$$2"    # Lcom/akexorcist/googledirection/model/Fare;
    .param p2, "parcel$$22"    # Landroid/os/Parcel;
    .param p3, "flags$$3"    # I

    .prologue
    .line 597
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Fare;->currency:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 598
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Fare;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 599
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Fare;->value:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_GeocodedWaypoint(Lcom/akexorcist/googledirection/model/GeocodedWaypoint;Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "geocodedWaypoint$$3"    # Lcom/akexorcist/googledirection/model/GeocodedWaypoint;
    .param p2, "parcel$$20"    # Landroid/os/Parcel;
    .param p3, "flags$$1"    # I

    .prologue
    .line 540
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;->types:Ljava/util/List;

    if-nez v1, :cond_1

    .line 541
    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    :cond_0
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;->placeId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;->status:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    return-void

    .line 543
    :cond_1
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;->types:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;->types:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 545
    .local v0, "string$$0":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "info$$6"    # Lcom/akexorcist/googledirection/model/Info;
    .param p2, "parcel$$26"    # Landroid/os/Parcel;
    .param p3, "flags$$7"    # I

    .prologue
    .line 686
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Info;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 687
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Info;->value:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Leg(Lcom/akexorcist/googledirection/model/Leg;Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "leg$$3"    # Lcom/akexorcist/googledirection/model/Leg;
    .param p2, "parcel$$24"    # Landroid/os/Parcel;
    .param p3, "flags$$5"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 607
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    if-nez v2, :cond_2

    .line 608
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    :goto_0
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->duration:Lcom/akexorcist/googledirection/model/Info;

    if-nez v2, :cond_3

    .line 614
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    :goto_1
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->durationInTraffic:Lcom/akexorcist/googledirection/model/Info;

    if-nez v2, :cond_4

    .line 620
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    :goto_2
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->distance:Lcom/akexorcist/googledirection/model/Info;

    if-nez v2, :cond_5

    .line 626
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    :goto_3
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v2, :cond_6

    .line 632
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    :goto_4
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    if-nez v2, :cond_7

    .line 638
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    :goto_5
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->startAddress:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 644
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->viaWaypointList:Ljava/util/List;

    if-nez v2, :cond_8

    .line 645
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    :cond_0
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->stepList:Ljava/util/List;

    if-nez v2, :cond_a

    .line 658
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    :cond_1
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->endAddress:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 671
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v2, :cond_c

    .line 672
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    :goto_6
    return-void

    .line 610
    :cond_2
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 616
    :cond_3
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->duration:Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 622
    :cond_4
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->durationInTraffic:Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V

    goto :goto_2

    .line 628
    :cond_5
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->distance:Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V

    goto :goto_3

    .line 634
    :cond_6
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_4

    .line 640
    :cond_7
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V

    goto :goto_5

    .line 647
    :cond_8
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->viaWaypointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->viaWaypointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akexorcist/googledirection/model/Waypoint;

    .line 649
    .local v1, "waypoint$$2":Lcom/akexorcist/googledirection/model/Waypoint;
    if-nez v1, :cond_9

    .line 650
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 652
    :cond_9
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Waypoint(Lcom/akexorcist/googledirection/model/Waypoint;Landroid/os/Parcel;I)V

    goto :goto_7

    .line 660
    .end local v1    # "waypoint$$2":Lcom/akexorcist/googledirection/model/Waypoint;
    :cond_a
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->stepList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->stepList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akexorcist/googledirection/model/Step;

    .line 662
    .local v0, "step$$3":Lcom/akexorcist/googledirection/model/Step;
    if-nez v0, :cond_b

    .line 663
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 665
    :cond_b
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Step(Lcom/akexorcist/googledirection/model/Step;Landroid/os/Parcel;I)V

    goto :goto_8

    .line 674
    .end local v0    # "step$$3":Lcom/akexorcist/googledirection/model/Step;
    :cond_c
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto/16 :goto_6
.end method

.method private writecom_akexorcist_googledirection_model_Line(Lcom/akexorcist/googledirection/model/Line;Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "line$$2"    # Lcom/akexorcist/googledirection/model/Line;
    .param p2, "parcel$$32"    # Landroid/os/Parcel;
    .param p3, "flags$$13"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 807
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->color:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 808
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 809
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->shortName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 810
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->textColor:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 811
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 812
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    :cond_0
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    if-nez v1, :cond_3

    .line 825
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    :goto_0
    return-void

    .line 814
    :cond_1
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akexorcist/googledirection/model/Agency;

    .line 816
    .local v0, "agency$$2":Lcom/akexorcist/googledirection/model/Agency;
    if-nez v0, :cond_2

    .line 817
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 819
    :cond_2
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Agency(Lcom/akexorcist/googledirection/model/Agency;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 827
    .end local v0    # "agency$$2":Lcom/akexorcist/googledirection/model/Agency;
    :cond_3
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Vehicle(Lcom/akexorcist/googledirection/model/Vehicle;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private writecom_akexorcist_googledirection_model_Route(Lcom/akexorcist/googledirection/model/Route;Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "route$$3"    # Lcom/akexorcist/googledirection/model/Route;
    .param p2, "parcel$$21"    # Landroid/os/Parcel;
    .param p3, "flags$$2"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 553
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->summary:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->fare:Lcom/akexorcist/googledirection/model/Fare;

    if-nez v2, :cond_2

    .line 555
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    :goto_0
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->overviewPolyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    if-nez v2, :cond_3

    .line 561
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    :goto_1
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->copyrights:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->legList:Ljava/util/List;

    if-nez v2, :cond_4

    .line 568
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    :cond_0
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->bound:Lcom/akexorcist/googledirection/model/Bound;

    if-nez v2, :cond_6

    .line 581
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    :goto_2
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->warningList:Ljava/util/List;

    if-nez v2, :cond_7

    .line 587
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    :cond_1
    return-void

    .line 557
    :cond_2
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->fare:Lcom/akexorcist/googledirection/model/Fare;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Fare(Lcom/akexorcist/googledirection/model/Fare;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 563
    :cond_3
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->overviewPolyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_RoutePolyline(Lcom/akexorcist/googledirection/model/RoutePolyline;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 570
    :cond_4
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->legList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->legList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akexorcist/googledirection/model/Leg;

    .line 572
    .local v0, "leg$$2":Lcom/akexorcist/googledirection/model/Leg;
    if-nez v0, :cond_5

    .line 573
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 575
    :cond_5
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Leg(Lcom/akexorcist/googledirection/model/Leg;Landroid/os/Parcel;I)V

    goto :goto_3

    .line 583
    .end local v0    # "leg$$2":Lcom/akexorcist/googledirection/model/Leg;
    :cond_6
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->bound:Lcom/akexorcist/googledirection/model/Bound;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Bound(Lcom/akexorcist/googledirection/model/Bound;Landroid/os/Parcel;I)V

    goto :goto_2

    .line 589
    :cond_7
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->warningList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->warningList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 591
    .local v1, "string$$1":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private writecom_akexorcist_googledirection_model_RoutePolyline(Lcom/akexorcist/googledirection/model/RoutePolyline;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "routePolyline$$3"    # Lcom/akexorcist/googledirection/model/RoutePolyline;
    .param p2, "parcel$$23"    # Landroid/os/Parcel;
    .param p3, "flags$$4"    # I

    .prologue
    .line 603
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/RoutePolyline;->rawPointList:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Step(Lcom/akexorcist/googledirection/model/Step;Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "step$$4"    # Lcom/akexorcist/googledirection/model/Step;
    .param p2, "parcel$$29"    # Landroid/os/Parcel;
    .param p3, "flags$$10"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 707
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->duration:Lcom/akexorcist/googledirection/model/Info;

    if-nez v1, :cond_1

    .line 708
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    :goto_0
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->htmlInstruction:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 714
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->distance:Lcom/akexorcist/googledirection/model/Info;

    if-nez v1, :cond_2

    .line 715
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    :goto_1
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v1, :cond_3

    .line 721
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    :goto_2
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->transitDetail:Lcom/akexorcist/googledirection/model/TransitDetail;

    if-nez v1, :cond_4

    .line 727
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    :goto_3
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->stepList:Ljava/util/List;

    if-nez v1, :cond_5

    .line 733
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    :cond_0
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v1, :cond_7

    .line 746
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    :goto_4
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->maneuver:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 752
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->polyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    if-nez v1, :cond_8

    .line 753
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    :goto_5
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->travelMode:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 759
    return-void

    .line 710
    :cond_1
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->duration:Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 717
    :cond_2
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->distance:Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 723
    :cond_3
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_2

    .line 729
    :cond_4
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->transitDetail:Lcom/akexorcist/googledirection/model/TransitDetail;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_TransitDetail(Lcom/akexorcist/googledirection/model/TransitDetail;Landroid/os/Parcel;I)V

    goto :goto_3

    .line 735
    :cond_5
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->stepList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->stepList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akexorcist/googledirection/model/Step;

    .line 737
    .local v0, "step$$5":Lcom/akexorcist/googledirection/model/Step;
    if-nez v0, :cond_6

    .line 738
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 740
    :cond_6
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Step(Lcom/akexorcist/googledirection/model/Step;Landroid/os/Parcel;I)V

    goto :goto_6

    .line 748
    .end local v0    # "step$$5":Lcom/akexorcist/googledirection/model/Step;
    :cond_7
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_4

    .line 755
    :cond_8
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->polyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_RoutePolyline(Lcom/akexorcist/googledirection/model/RoutePolyline;Landroid/os/Parcel;I)V

    goto :goto_5
.end method

.method private writecom_akexorcist_googledirection_model_StopPoint(Lcom/akexorcist/googledirection/model/StopPoint;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "stopPoint$$3"    # Lcom/akexorcist/googledirection/model/StopPoint;
    .param p2, "parcel$$31"    # Landroid/os/Parcel;
    .param p3, "flags$$12"    # I

    .prologue
    .line 797
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 798
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v0, :cond_0

    .line 799
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    :goto_0
    return-void

    .line 801
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "timeInfo$$5"    # Lcom/akexorcist/googledirection/model/TimeInfo;
    .param p2, "parcel$$25"    # Landroid/os/Parcel;
    .param p3, "flags$$6"    # I

    .prologue
    .line 680
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TimeInfo;->timeZone:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 681
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TimeInfo;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 682
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TimeInfo;->value:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_TransitDetail(Lcom/akexorcist/googledirection/model/TransitDetail;Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "transitDetail$$2"    # Lcom/akexorcist/googledirection/model/TransitDetail;
    .param p2, "parcel$$30"    # Landroid/os/Parcel;
    .param p3, "flags$$11"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 762
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    if-nez v0, :cond_0

    .line 763
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    :goto_0
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->headsign:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 769
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->stopNumber:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 770
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    if-nez v0, :cond_1

    .line 771
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    :goto_1
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    if-nez v0, :cond_2

    .line 777
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    :goto_2
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    if-nez v0, :cond_3

    .line 783
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    :goto_3
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->line:Lcom/akexorcist/googledirection/model/Line;

    if-nez v0, :cond_4

    .line 789
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    :goto_4
    return-void

    .line 765
    :cond_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 773
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_StopPoint(Lcom/akexorcist/googledirection/model/StopPoint;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 779
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_StopPoint(Lcom/akexorcist/googledirection/model/StopPoint;Landroid/os/Parcel;I)V

    goto :goto_2

    .line 785
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V

    goto :goto_3

    .line 791
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->line:Lcom/akexorcist/googledirection/model/Line;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Line(Lcom/akexorcist/googledirection/model/Line;Landroid/os/Parcel;I)V

    goto :goto_4
.end method

.method private writecom_akexorcist_googledirection_model_Vehicle(Lcom/akexorcist/googledirection/model/Vehicle;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "vehicle$$2"    # Lcom/akexorcist/googledirection/model/Vehicle;
    .param p2, "parcel$$34"    # Landroid/os/Parcel;
    .param p3, "flags$$15"    # I

    .prologue
    .line 838
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 839
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->iconUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 840
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->type:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 841
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Waypoint(Lcom/akexorcist/googledirection/model/Waypoint;Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "waypoint$$3"    # Lcom/akexorcist/googledirection/model/Waypoint;
    .param p2, "parcel$$28"    # Landroid/os/Parcel;
    .param p3, "flags$$9"    # I

    .prologue
    .line 696
    iget-wide v0, p1, Lcom/akexorcist/googledirection/model/Waypoint;->interpolation:D

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 697
    iget v0, p1, Lcom/akexorcist/googledirection/model/Waypoint;->index:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Waypoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v0, :cond_0

    .line 699
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    :goto_0
    return-void

    .line 701
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Waypoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 860
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/akexorcist/googledirection/model/Direction;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->direction$$0:Lcom/akexorcist/googledirection/model/Direction;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->getParcel()Lcom/akexorcist/googledirection/model/Direction;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel$$1"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->direction$$0:Lcom/akexorcist/googledirection/model/Direction;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->direction$$0:Lcom/akexorcist/googledirection/model/Direction;

    invoke-direct {p0, v0, p1, p2}, Lcom/akexorcist/googledirection/model/Direction$$Parcelable;->writecom_akexorcist_googledirection_model_Direction(Lcom/akexorcist/googledirection/model/Direction;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
