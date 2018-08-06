.class public Lcom/akexorcist/googledirection/model/Route$$Parcelable;
.super Ljava/lang/Object;
.source "Route$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lorg/parceler/ParcelWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akexorcist/googledirection/model/Route$$Parcelable$Creator$$9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lorg/parceler/ParcelWrapper",
        "<",
        "Lcom/akexorcist/googledirection/model/Route;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/akexorcist/googledirection/model/Route$$Parcelable$Creator$$9;


# instance fields
.field private route$$0:Lcom/akexorcist/googledirection/model/Route;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/akexorcist/googledirection/model/Route$$Parcelable$Creator$$9;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Route$$Parcelable$Creator$$9;-><init>()V

    sput-object v0, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->CREATOR:Lcom/akexorcist/googledirection/model/Route$$Parcelable$Creator$$9;

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
    .local v0, "route$$2":Lcom/akexorcist/googledirection/model/Route;
    :goto_0
    iput-object v0, p0, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->route$$0:Lcom/akexorcist/googledirection/model/Route;

    .line 31
    return-void

    .line 28
    .end local v0    # "route$$2":Lcom/akexorcist/googledirection/model/Route;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Route(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Route;

    move-result-object v0

    .restart local v0    # "route$$2":Lcom/akexorcist/googledirection/model/Route;
    goto :goto_0
.end method

.method public constructor <init>(Lcom/akexorcist/googledirection/model/Route;)V
    .locals 0
    .param p1, "route$$4"    # Lcom/akexorcist/googledirection/model/Route;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->route$$0:Lcom/akexorcist/googledirection/model/Route;

    .line 35
    return-void
.end method

.method private readcom_akexorcist_googledirection_model_Agency(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Agency;
    .locals 2
    .param p1, "parcel$$14"    # Landroid/os/Parcel;

    .prologue
    .line 412
    new-instance v0, Lcom/akexorcist/googledirection/model/Agency;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Agency;-><init>()V

    .line 413
    .local v0, "agency$$0":Lcom/akexorcist/googledirection/model/Agency;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Agency;->name:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Agency;->url:Ljava/lang/String;

    .line 415
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Bound(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Bound;
    .locals 5
    .param p1, "parcel$$16"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, -0x1

    .line 429
    new-instance v0, Lcom/akexorcist/googledirection/model/Bound;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Bound;-><init>()V

    .line 431
    .local v0, "bound$$0":Lcom/akexorcist/googledirection/model/Bound;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 432
    const/4 v1, 0x0

    .line 436
    .local v1, "coordination$$7":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_0
    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Bound;->southwest:Lcom/akexorcist/googledirection/model/Coordination;

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 439
    const/4 v2, 0x0

    .line 443
    .local v2, "coordination$$8":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_1
    iput-object v2, v0, Lcom/akexorcist/googledirection/model/Bound;->northeast:Lcom/akexorcist/googledirection/model/Coordination;

    .line 444
    return-object v0

    .line 434
    .end local v1    # "coordination$$7":Lcom/akexorcist/googledirection/model/Coordination;
    .end local v2    # "coordination$$8":Lcom/akexorcist/googledirection/model/Coordination;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v1

    .restart local v1    # "coordination$$7":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_0

    .line 441
    :cond_1
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v2

    .restart local v2    # "coordination$$8":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_1
.end method

.method private readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;
    .locals 4
    .param p1, "parcel$$8"    # Landroid/os/Parcel;

    .prologue
    .line 230
    new-instance v0, Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Coordination;-><init>()V

    .line 231
    .local v0, "coordination$$0":Lcom/akexorcist/googledirection/model/Coordination;
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/akexorcist/googledirection/model/Coordination;->latitude:D

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/akexorcist/googledirection/model/Coordination;->longitude:D

    .line 233
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Fare(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Fare;
    .locals 2
    .param p1, "parcel$$3"    # Landroid/os/Parcel;

    .prologue
    .line 106
    new-instance v0, Lcom/akexorcist/googledirection/model/Fare;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Fare;-><init>()V

    .line 107
    .local v0, "fare$$0":Lcom/akexorcist/googledirection/model/Fare;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Fare;->currency:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Fare;->text:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Fare;->value:Ljava/lang/String;

    .line 110
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;
    .locals 2
    .param p1, "parcel$$7"    # Landroid/os/Parcel;

    .prologue
    .line 222
    new-instance v0, Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Info;-><init>()V

    .line 223
    .local v0, "info$$0":Lcom/akexorcist/googledirection/model/Info;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Info;->text:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Info;->value:Ljava/lang/String;

    .line 225
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Leg(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Leg;
    .locals 20
    .param p1, "parcel$$5"    # Landroid/os/Parcel;

    .prologue
    .line 122
    new-instance v11, Lcom/akexorcist/googledirection/model/Leg;

    invoke-direct {v11}, Lcom/akexorcist/googledirection/model/Leg;-><init>()V

    .line 124
    .local v11, "leg$$0":Lcom/akexorcist/googledirection/model/Leg;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 125
    const/4 v15, 0x0

    .line 129
    .local v15, "timeInfo$$1":Lcom/akexorcist/googledirection/model/TimeInfo;
    :goto_0
    iput-object v15, v11, Lcom/akexorcist/googledirection/model/Leg;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 132
    const/4 v4, 0x0

    .line 136
    .local v4, "info$$1":Lcom/akexorcist/googledirection/model/Info;
    :goto_1
    iput-object v4, v11, Lcom/akexorcist/googledirection/model/Leg;->duration:Lcom/akexorcist/googledirection/model/Info;

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 139
    const/4 v5, 0x0

    .line 143
    .local v5, "info$$2":Lcom/akexorcist/googledirection/model/Info;
    :goto_2
    iput-object v5, v11, Lcom/akexorcist/googledirection/model/Leg;->durationInTraffic:Lcom/akexorcist/googledirection/model/Info;

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 146
    const/4 v6, 0x0

    .line 150
    .local v6, "info$$3":Lcom/akexorcist/googledirection/model/Info;
    :goto_3
    iput-object v6, v11, Lcom/akexorcist/googledirection/model/Leg;->distance:Lcom/akexorcist/googledirection/model/Info;

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 153
    const/4 v2, 0x0

    .line 157
    .local v2, "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_4
    iput-object v2, v11, Lcom/akexorcist/googledirection/model/Leg;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 160
    const/16 v16, 0x0

    .line 164
    .local v16, "timeInfo$$2":Lcom/akexorcist/googledirection/model/TimeInfo;
    :goto_5
    move-object/from16 v0, v16

    iput-object v0, v11, Lcom/akexorcist/googledirection/model/Leg;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/akexorcist/googledirection/model/Leg;->startAddress:Ljava/lang/String;

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 168
    .local v7, "int$$2":I
    if-gez v7, :cond_8

    .line 169
    const/4 v12, 0x0

    .line 182
    .local v12, "list$$1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Waypoint;>;"
    :cond_0
    iput-object v12, v11, Lcom/akexorcist/googledirection/model/Leg;->viaWaypointList:Ljava/util/List;

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 185
    .local v9, "int$$4":I
    if-gez v9, :cond_a

    .line 186
    const/4 v13, 0x0

    .line 199
    .local v13, "list$$2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    :cond_1
    iput-object v13, v11, Lcom/akexorcist/googledirection/model/Leg;->stepList:Ljava/util/List;

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/akexorcist/googledirection/model/Leg;->endAddress:Ljava/lang/String;

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 203
    const/4 v3, 0x0

    .line 207
    .local v3, "coordination$$6":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_6
    iput-object v3, v11, Lcom/akexorcist/googledirection/model/Leg;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    .line 208
    return-object v11

    .line 127
    .end local v2    # "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    .end local v3    # "coordination$$6":Lcom/akexorcist/googledirection/model/Coordination;
    .end local v4    # "info$$1":Lcom/akexorcist/googledirection/model/Info;
    .end local v5    # "info$$2":Lcom/akexorcist/googledirection/model/Info;
    .end local v6    # "info$$3":Lcom/akexorcist/googledirection/model/Info;
    .end local v7    # "int$$2":I
    .end local v9    # "int$$4":I
    .end local v12    # "list$$1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Waypoint;>;"
    .end local v13    # "list$$2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    .end local v15    # "timeInfo$$1":Lcom/akexorcist/googledirection/model/TimeInfo;
    .end local v16    # "timeInfo$$2":Lcom/akexorcist/googledirection/model/TimeInfo;
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;

    move-result-object v15

    .restart local v15    # "timeInfo$$1":Lcom/akexorcist/googledirection/model/TimeInfo;
    goto/16 :goto_0

    .line 134
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;

    move-result-object v4

    .restart local v4    # "info$$1":Lcom/akexorcist/googledirection/model/Info;
    goto :goto_1

    .line 141
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;

    move-result-object v5

    .restart local v5    # "info$$2":Lcom/akexorcist/googledirection/model/Info;
    goto :goto_2

    .line 148
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;

    move-result-object v6

    .restart local v6    # "info$$3":Lcom/akexorcist/googledirection/model/Info;
    goto :goto_3

    .line 155
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v2

    .restart local v2    # "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_4

    .line 162
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;

    move-result-object v16

    .restart local v16    # "timeInfo$$2":Lcom/akexorcist/googledirection/model/TimeInfo;
    goto :goto_5

    .line 171
    .restart local v7    # "int$$2":I
    :cond_8
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .restart local v12    # "list$$1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Waypoint;>;"
    const/4 v8, 0x0

    .local v8, "int$$3":I
    :goto_7
    if-ge v8, v7, :cond_0

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 175
    const/16 v17, 0x0

    .line 179
    .local v17, "waypoint$$1":Lcom/akexorcist/googledirection/model/Waypoint;
    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 177
    .end local v17    # "waypoint$$1":Lcom/akexorcist/googledirection/model/Waypoint;
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Waypoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Waypoint;

    move-result-object v17

    .restart local v17    # "waypoint$$1":Lcom/akexorcist/googledirection/model/Waypoint;
    goto :goto_8

    .line 188
    .end local v8    # "int$$3":I
    .end local v17    # "waypoint$$1":Lcom/akexorcist/googledirection/model/Waypoint;
    .restart local v9    # "int$$4":I
    :cond_a
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .restart local v13    # "list$$2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    const/4 v10, 0x0

    .local v10, "int$$5":I
    :goto_9
    if-ge v10, v9, :cond_1

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 192
    const/4 v14, 0x0

    .line 196
    .local v14, "step$$2":Lcom/akexorcist/googledirection/model/Step;
    :goto_a
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 194
    .end local v14    # "step$$2":Lcom/akexorcist/googledirection/model/Step;
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Step(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Step;

    move-result-object v14

    .restart local v14    # "step$$2":Lcom/akexorcist/googledirection/model/Step;
    goto :goto_a

    .line 205
    .end local v10    # "int$$5":I
    .end local v14    # "step$$2":Lcom/akexorcist/googledirection/model/Step;
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v3

    .restart local v3    # "coordination$$6":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_6
.end method

.method private readcom_akexorcist_googledirection_model_Line(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Line;
    .locals 8
    .param p1, "parcel$$13"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, -0x1

    .line 378
    new-instance v3, Lcom/akexorcist/googledirection/model/Line;

    invoke-direct {v3}, Lcom/akexorcist/googledirection/model/Line;-><init>()V

    .line 379
    .local v3, "line$$0":Lcom/akexorcist/googledirection/model/Line;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->color:Ljava/lang/String;

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->name:Ljava/lang/String;

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->shortName:Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->textColor:Ljava/lang/String;

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 385
    .local v1, "int$$6":I
    if-gez v1, :cond_1

    .line 386
    const/4 v4, 0x0

    .line 399
    .local v4, "list$$3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    :cond_0
    iput-object v4, v3, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 402
    const/4 v5, 0x0

    .line 406
    .local v5, "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    :goto_0
    iput-object v5, v3, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    .line 407
    return-object v3

    .line 388
    .end local v4    # "list$$3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    .end local v5    # "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .restart local v4    # "list$$3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    const/4 v2, 0x0

    .local v2, "int$$7":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 392
    const/4 v0, 0x0

    .line 396
    .local v0, "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    :goto_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 394
    .end local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    :cond_2
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Agency(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Agency;

    move-result-object v0

    .restart local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    goto :goto_2

    .line 404
    .end local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    .end local v2    # "int$$7":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Vehicle(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Vehicle;

    move-result-object v5

    .restart local v5    # "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    goto :goto_0
.end method

.method private readcom_akexorcist_googledirection_model_Route(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Route;
    .locals 13
    .param p1, "parcel$$2"    # Landroid/os/Parcel;

    .prologue
    const/4 v12, -0x1

    .line 49
    new-instance v9, Lcom/akexorcist/googledirection/model/Route;

    invoke-direct {v9}, Lcom/akexorcist/googledirection/model/Route;-><init>()V

    .line 50
    .local v9, "route$$1":Lcom/akexorcist/googledirection/model/Route;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/akexorcist/googledirection/model/Route;->summary:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_2

    .line 53
    const/4 v1, 0x0

    .line 57
    .local v1, "fare$$1":Lcom/akexorcist/googledirection/model/Fare;
    :goto_0
    iput-object v1, v9, Lcom/akexorcist/googledirection/model/Route;->fare:Lcom/akexorcist/googledirection/model/Fare;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_3

    .line 60
    const/4 v10, 0x0

    .line 64
    .local v10, "routePolyline$$1":Lcom/akexorcist/googledirection/model/RoutePolyline;
    :goto_1
    iput-object v10, v9, Lcom/akexorcist/googledirection/model/Route;->overviewPolyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/akexorcist/googledirection/model/Route;->copyrights:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 68
    .local v2, "int$$0":I
    if-gez v2, :cond_4

    .line 69
    const/4 v7, 0x0

    .line 82
    .local v7, "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Leg;>;"
    :cond_0
    iput-object v7, v9, Lcom/akexorcist/googledirection/model/Route;->legList:Ljava/util/List;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_6

    .line 85
    const/4 v0, 0x0

    .line 89
    .local v0, "bound$$1":Lcom/akexorcist/googledirection/model/Bound;
    :goto_2
    iput-object v0, v9, Lcom/akexorcist/googledirection/model/Route;->bound:Lcom/akexorcist/googledirection/model/Bound;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 92
    .local v4, "int$$10":I
    if-gez v4, :cond_7

    .line 93
    const/4 v8, 0x0

    .line 100
    .local v8, "list$$5":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iput-object v8, v9, Lcom/akexorcist/googledirection/model/Route;->warningList:Ljava/util/List;

    .line 101
    return-object v9

    .line 55
    .end local v0    # "bound$$1":Lcom/akexorcist/googledirection/model/Bound;
    .end local v1    # "fare$$1":Lcom/akexorcist/googledirection/model/Fare;
    .end local v2    # "int$$0":I
    .end local v4    # "int$$10":I
    .end local v7    # "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Leg;>;"
    .end local v8    # "list$$5":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "routePolyline$$1":Lcom/akexorcist/googledirection/model/RoutePolyline;
    :cond_2
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Fare(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Fare;

    move-result-object v1

    .restart local v1    # "fare$$1":Lcom/akexorcist/googledirection/model/Fare;
    goto :goto_0

    .line 62
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_RoutePolyline(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/RoutePolyline;

    move-result-object v10

    .restart local v10    # "routePolyline$$1":Lcom/akexorcist/googledirection/model/RoutePolyline;
    goto :goto_1

    .line 71
    .restart local v2    # "int$$0":I
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .restart local v7    # "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Leg;>;"
    const/4 v3, 0x0

    .local v3, "int$$1":I
    :goto_3
    if-ge v3, v2, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_5

    .line 75
    const/4 v6, 0x0

    .line 79
    .local v6, "leg$$1":Lcom/akexorcist/googledirection/model/Leg;
    :goto_4
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 77
    .end local v6    # "leg$$1":Lcom/akexorcist/googledirection/model/Leg;
    :cond_5
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Leg(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Leg;

    move-result-object v6

    .restart local v6    # "leg$$1":Lcom/akexorcist/googledirection/model/Leg;
    goto :goto_4

    .line 87
    .end local v3    # "int$$1":I
    .end local v6    # "leg$$1":Lcom/akexorcist/googledirection/model/Leg;
    :cond_6
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Bound(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Bound;

    move-result-object v0

    .restart local v0    # "bound$$1":Lcom/akexorcist/googledirection/model/Bound;
    goto :goto_2

    .line 95
    .restart local v4    # "int$$10":I
    :cond_7
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .restart local v8    # "list$$5":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "int$$11":I
    :goto_5
    if-ge v5, v4, :cond_1

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v5, v5, 0x1

    goto :goto_5
.end method

.method private readcom_akexorcist_googledirection_model_RoutePolyline(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/RoutePolyline;
    .locals 2
    .param p1, "parcel$$4"    # Landroid/os/Parcel;

    .prologue
    .line 115
    new-instance v0, Lcom/akexorcist/googledirection/model/RoutePolyline;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/RoutePolyline;-><init>()V

    .line 116
    .local v0, "routePolyline$$0":Lcom/akexorcist/googledirection/model/RoutePolyline;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/RoutePolyline;->rawPointList:Ljava/lang/String;

    .line 117
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Step(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Step;
    .locals 13
    .param p1, "parcel$$10"    # Landroid/os/Parcel;

    .prologue
    const/4 v12, -0x1

    .line 253
    new-instance v8, Lcom/akexorcist/googledirection/model/Step;

    invoke-direct {v8}, Lcom/akexorcist/googledirection/model/Step;-><init>()V

    .line 255
    .local v8, "step$$0":Lcom/akexorcist/googledirection/model/Step;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_1

    .line 256
    const/4 v2, 0x0

    .line 260
    .local v2, "info$$4":Lcom/akexorcist/googledirection/model/Info;
    :goto_0
    iput-object v2, v8, Lcom/akexorcist/googledirection/model/Step;->duration:Lcom/akexorcist/googledirection/model/Info;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/akexorcist/googledirection/model/Step;->htmlInstruction:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_2

    .line 264
    const/4 v3, 0x0

    .line 268
    .local v3, "info$$5":Lcom/akexorcist/googledirection/model/Info;
    :goto_1
    iput-object v3, v8, Lcom/akexorcist/googledirection/model/Step;->distance:Lcom/akexorcist/googledirection/model/Info;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_3

    .line 271
    const/4 v0, 0x0

    .line 275
    .local v0, "coordination$$3":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_2
    iput-object v0, v8, Lcom/akexorcist/googledirection/model/Step;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_4

    .line 278
    const/4 v10, 0x0

    .line 282
    .local v10, "transitDetail$$1":Lcom/akexorcist/googledirection/model/TransitDetail;
    :goto_3
    iput-object v10, v8, Lcom/akexorcist/googledirection/model/Step;->transitDetail:Lcom/akexorcist/googledirection/model/TransitDetail;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 285
    .local v4, "int$$8":I
    if-gez v4, :cond_5

    .line 286
    const/4 v6, 0x0

    .line 299
    .local v6, "list$$4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    :cond_0
    iput-object v6, v8, Lcom/akexorcist/googledirection/model/Step;->stepList:Ljava/util/List;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_7

    .line 302
    const/4 v1, 0x0

    .line 306
    .local v1, "coordination$$5":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_4
    iput-object v1, v8, Lcom/akexorcist/googledirection/model/Step;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/akexorcist/googledirection/model/Step;->maneuver:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_8

    .line 310
    const/4 v7, 0x0

    .line 314
    .local v7, "routePolyline$$2":Lcom/akexorcist/googledirection/model/RoutePolyline;
    :goto_5
    iput-object v7, v8, Lcom/akexorcist/googledirection/model/Step;->polyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/akexorcist/googledirection/model/Step;->travelMode:Ljava/lang/String;

    .line 316
    return-object v8

    .line 258
    .end local v0    # "coordination$$3":Lcom/akexorcist/googledirection/model/Coordination;
    .end local v1    # "coordination$$5":Lcom/akexorcist/googledirection/model/Coordination;
    .end local v2    # "info$$4":Lcom/akexorcist/googledirection/model/Info;
    .end local v3    # "info$$5":Lcom/akexorcist/googledirection/model/Info;
    .end local v4    # "int$$8":I
    .end local v6    # "list$$4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    .end local v7    # "routePolyline$$2":Lcom/akexorcist/googledirection/model/RoutePolyline;
    .end local v10    # "transitDetail$$1":Lcom/akexorcist/googledirection/model/TransitDetail;
    :cond_1
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;

    move-result-object v2

    .restart local v2    # "info$$4":Lcom/akexorcist/googledirection/model/Info;
    goto :goto_0

    .line 266
    :cond_2
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;

    move-result-object v3

    .restart local v3    # "info$$5":Lcom/akexorcist/googledirection/model/Info;
    goto :goto_1

    .line 273
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v0

    .restart local v0    # "coordination$$3":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_2

    .line 280
    :cond_4
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_TransitDetail(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TransitDetail;

    move-result-object v10

    .restart local v10    # "transitDetail$$1":Lcom/akexorcist/googledirection/model/TransitDetail;
    goto :goto_3

    .line 288
    .restart local v4    # "int$$8":I
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .restart local v6    # "list$$4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    const/4 v5, 0x0

    .local v5, "int$$9":I
    :goto_6
    if-ge v5, v4, :cond_0

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_6

    .line 292
    const/4 v9, 0x0

    .line 296
    .local v9, "step$$1":Lcom/akexorcist/googledirection/model/Step;
    :goto_7
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 294
    .end local v9    # "step$$1":Lcom/akexorcist/googledirection/model/Step;
    :cond_6
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Step(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Step;

    move-result-object v9

    .restart local v9    # "step$$1":Lcom/akexorcist/googledirection/model/Step;
    goto :goto_7

    .line 304
    .end local v5    # "int$$9":I
    .end local v9    # "step$$1":Lcom/akexorcist/googledirection/model/Step;
    :cond_7
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v1

    .restart local v1    # "coordination$$5":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_4

    .line 312
    :cond_8
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_RoutePolyline(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/RoutePolyline;

    move-result-object v7

    .restart local v7    # "routePolyline$$2":Lcom/akexorcist/googledirection/model/RoutePolyline;
    goto :goto_5
.end method

.method private readcom_akexorcist_googledirection_model_StopPoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint;
    .locals 4
    .param p1, "parcel$$12"    # Landroid/os/Parcel;

    .prologue
    .line 364
    new-instance v1, Lcom/akexorcist/googledirection/model/StopPoint;

    invoke-direct {v1}, Lcom/akexorcist/googledirection/model/StopPoint;-><init>()V

    .line 365
    .local v1, "stopPoint$$0":Lcom/akexorcist/googledirection/model/StopPoint;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/akexorcist/googledirection/model/StopPoint;->name:Ljava/lang/String;

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 368
    const/4 v0, 0x0

    .line 372
    .local v0, "coordination$$4":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_0
    iput-object v0, v1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    .line 373
    return-object v1

    .line 370
    .end local v0    # "coordination$$4":Lcom/akexorcist/googledirection/model/Coordination;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v0

    .restart local v0    # "coordination$$4":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_0
.end method

.method private readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;
    .locals 2
    .param p1, "parcel$$6"    # Landroid/os/Parcel;

    .prologue
    .line 213
    new-instance v0, Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/TimeInfo;-><init>()V

    .line 214
    .local v0, "timeInfo$$0":Lcom/akexorcist/googledirection/model/TimeInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/TimeInfo;->timeZone:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/TimeInfo;->text:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/TimeInfo;->value:Ljava/lang/String;

    .line 217
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_TransitDetail(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TransitDetail;
    .locals 8
    .param p1, "parcel$$11"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, -0x1

    .line 321
    new-instance v5, Lcom/akexorcist/googledirection/model/TransitDetail;

    invoke-direct {v5}, Lcom/akexorcist/googledirection/model/TransitDetail;-><init>()V

    .line 323
    .local v5, "transitDetail$$0":Lcom/akexorcist/googledirection/model/TransitDetail;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 324
    const/4 v3, 0x0

    .line 328
    .local v3, "timeInfo$$3":Lcom/akexorcist/googledirection/model/TimeInfo;
    :goto_0
    iput-object v3, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->headsign:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->stopNumber:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 333
    const/4 v1, 0x0

    .line 337
    .local v1, "stopPoint$$1":Lcom/akexorcist/googledirection/model/StopPoint;
    :goto_1
    iput-object v1, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 340
    const/4 v2, 0x0

    .line 344
    .local v2, "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    :goto_2
    iput-object v2, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->departureStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 347
    const/4 v4, 0x0

    .line 351
    .local v4, "timeInfo$$4":Lcom/akexorcist/googledirection/model/TimeInfo;
    :goto_3
    iput-object v4, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_4

    .line 354
    const/4 v0, 0x0

    .line 358
    .local v0, "line$$1":Lcom/akexorcist/googledirection/model/Line;
    :goto_4
    iput-object v0, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->line:Lcom/akexorcist/googledirection/model/Line;

    .line 359
    return-object v5

    .line 326
    .end local v0    # "line$$1":Lcom/akexorcist/googledirection/model/Line;
    .end local v1    # "stopPoint$$1":Lcom/akexorcist/googledirection/model/StopPoint;
    .end local v2    # "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    .end local v3    # "timeInfo$$3":Lcom/akexorcist/googledirection/model/TimeInfo;
    .end local v4    # "timeInfo$$4":Lcom/akexorcist/googledirection/model/TimeInfo;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;

    move-result-object v3

    .restart local v3    # "timeInfo$$3":Lcom/akexorcist/googledirection/model/TimeInfo;
    goto :goto_0

    .line 335
    :cond_1
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_StopPoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint;

    move-result-object v1

    .restart local v1    # "stopPoint$$1":Lcom/akexorcist/googledirection/model/StopPoint;
    goto :goto_1

    .line 342
    :cond_2
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_StopPoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint;

    move-result-object v2

    .restart local v2    # "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    goto :goto_2

    .line 349
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;

    move-result-object v4

    .restart local v4    # "timeInfo$$4":Lcom/akexorcist/googledirection/model/TimeInfo;
    goto :goto_3

    .line 356
    :cond_4
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Line(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Line;

    move-result-object v0

    .restart local v0    # "line$$1":Lcom/akexorcist/googledirection/model/Line;
    goto :goto_4
.end method

.method private readcom_akexorcist_googledirection_model_Vehicle(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Vehicle;
    .locals 2
    .param p1, "parcel$$15"    # Landroid/os/Parcel;

    .prologue
    .line 420
    new-instance v0, Lcom/akexorcist/googledirection/model/Vehicle;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Vehicle;-><init>()V

    .line 421
    .local v0, "vehicle$$0":Lcom/akexorcist/googledirection/model/Vehicle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->name:Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->iconUrl:Ljava/lang/String;

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->type:Ljava/lang/String;

    .line 424
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Waypoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Waypoint;
    .locals 4
    .param p1, "parcel$$9"    # Landroid/os/Parcel;

    .prologue
    .line 238
    new-instance v1, Lcom/akexorcist/googledirection/model/Waypoint;

    invoke-direct {v1}, Lcom/akexorcist/googledirection/model/Waypoint;-><init>()V

    .line 239
    .local v1, "waypoint$$0":Lcom/akexorcist/googledirection/model/Waypoint;
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/akexorcist/googledirection/model/Waypoint;->interpolation:D

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/akexorcist/googledirection/model/Waypoint;->index:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 247
    .local v0, "coordination$$2":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_0
    iput-object v0, v1, Lcom/akexorcist/googledirection/model/Waypoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    .line 248
    return-object v1

    .line 245
    .end local v0    # "coordination$$2":Lcom/akexorcist/googledirection/model/Coordination;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v0

    .restart local v0    # "coordination$$2":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_0
.end method

.method private writecom_akexorcist_googledirection_model_Agency(Lcom/akexorcist/googledirection/model/Agency;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "agency$$3"    # Lcom/akexorcist/googledirection/model/Agency;
    .param p2, "parcel$$29"    # Landroid/os/Parcel;
    .param p3, "flags$$12"    # I

    .prologue
    .line 728
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Agency;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 729
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Agency;->url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Bound(Lcom/akexorcist/googledirection/model/Bound;Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "bound$$2"    # Lcom/akexorcist/googledirection/model/Bound;
    .param p2, "parcel$$31"    # Landroid/os/Parcel;
    .param p3, "flags$$14"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 739
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Bound;->southwest:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v0, :cond_0

    .line 740
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    :goto_0
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Bound;->northeast:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v0, :cond_1

    .line 746
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    :goto_1
    return-void

    .line 742
    :cond_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Bound;->southwest:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 748
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Bound;->northeast:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_1
.end method

.method private writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "coordination$$9"    # Lcom/akexorcist/googledirection/model/Coordination;
    .param p2, "parcel$$23"    # Landroid/os/Parcel;
    .param p3, "flags$$6"    # I

    .prologue
    .line 586
    iget-wide v0, p1, Lcom/akexorcist/googledirection/model/Coordination;->latitude:D

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 587
    iget-wide v0, p1, Lcom/akexorcist/googledirection/model/Coordination;->longitude:D

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 588
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Fare(Lcom/akexorcist/googledirection/model/Fare;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "fare$$2"    # Lcom/akexorcist/googledirection/model/Fare;
    .param p2, "parcel$$18"    # Landroid/os/Parcel;
    .param p3, "flags$$1"    # I

    .prologue
    .line 492
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Fare;->currency:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Fare;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Fare;->value:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "info$$6"    # Lcom/akexorcist/googledirection/model/Info;
    .param p2, "parcel$$22"    # Landroid/os/Parcel;
    .param p3, "flags$$5"    # I

    .prologue
    .line 581
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Info;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 582
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Info;->value:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Leg(Lcom/akexorcist/googledirection/model/Leg;Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "leg$$3"    # Lcom/akexorcist/googledirection/model/Leg;
    .param p2, "parcel$$20"    # Landroid/os/Parcel;
    .param p3, "flags$$3"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 502
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    if-nez v2, :cond_2

    .line 503
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    :goto_0
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->duration:Lcom/akexorcist/googledirection/model/Info;

    if-nez v2, :cond_3

    .line 509
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    :goto_1
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->durationInTraffic:Lcom/akexorcist/googledirection/model/Info;

    if-nez v2, :cond_4

    .line 515
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    :goto_2
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->distance:Lcom/akexorcist/googledirection/model/Info;

    if-nez v2, :cond_5

    .line 521
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    :goto_3
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v2, :cond_6

    .line 527
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    :goto_4
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    if-nez v2, :cond_7

    .line 533
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    :goto_5
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->startAddress:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 539
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->viaWaypointList:Ljava/util/List;

    if-nez v2, :cond_8

    .line 540
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    :cond_0
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->stepList:Ljava/util/List;

    if-nez v2, :cond_a

    .line 553
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    :cond_1
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->endAddress:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v2, :cond_c

    .line 567
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    :goto_6
    return-void

    .line 505
    :cond_2
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 511
    :cond_3
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->duration:Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 517
    :cond_4
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->durationInTraffic:Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V

    goto :goto_2

    .line 523
    :cond_5
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->distance:Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V

    goto :goto_3

    .line 529
    :cond_6
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_4

    .line 535
    :cond_7
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V

    goto :goto_5

    .line 542
    :cond_8
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->viaWaypointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
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

    .line 544
    .local v1, "waypoint$$2":Lcom/akexorcist/googledirection/model/Waypoint;
    if-nez v1, :cond_9

    .line 545
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 547
    :cond_9
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Waypoint(Lcom/akexorcist/googledirection/model/Waypoint;Landroid/os/Parcel;I)V

    goto :goto_7

    .line 555
    .end local v1    # "waypoint$$2":Lcom/akexorcist/googledirection/model/Waypoint;
    :cond_a
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->stepList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
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

    .line 557
    .local v0, "step$$3":Lcom/akexorcist/googledirection/model/Step;
    if-nez v0, :cond_b

    .line 558
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 560
    :cond_b
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Step(Lcom/akexorcist/googledirection/model/Step;Landroid/os/Parcel;I)V

    goto :goto_8

    .line 569
    .end local v0    # "step$$3":Lcom/akexorcist/googledirection/model/Step;
    :cond_c
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto/16 :goto_6
.end method

.method private writecom_akexorcist_googledirection_model_Line(Lcom/akexorcist/googledirection/model/Line;Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "line$$2"    # Lcom/akexorcist/googledirection/model/Line;
    .param p2, "parcel$$28"    # Landroid/os/Parcel;
    .param p3, "flags$$11"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 702
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->color:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 703
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 704
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->shortName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 705
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->textColor:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 706
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 707
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    :cond_0
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    if-nez v1, :cond_3

    .line 720
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    :goto_0
    return-void

    .line 709
    :cond_1
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
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

    .line 711
    .local v0, "agency$$2":Lcom/akexorcist/googledirection/model/Agency;
    if-nez v0, :cond_2

    .line 712
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 714
    :cond_2
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Agency(Lcom/akexorcist/googledirection/model/Agency;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 722
    .end local v0    # "agency$$2":Lcom/akexorcist/googledirection/model/Agency;
    :cond_3
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Vehicle(Lcom/akexorcist/googledirection/model/Vehicle;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private writecom_akexorcist_googledirection_model_Route(Lcom/akexorcist/googledirection/model/Route;Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "route$$3"    # Lcom/akexorcist/googledirection/model/Route;
    .param p2, "parcel$$17"    # Landroid/os/Parcel;
    .param p3, "flags$$0"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 448
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->summary:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->fare:Lcom/akexorcist/googledirection/model/Fare;

    if-nez v2, :cond_2

    .line 450
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    :goto_0
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->overviewPolyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    if-nez v2, :cond_3

    .line 456
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    :goto_1
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->copyrights:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->legList:Ljava/util/List;

    if-nez v2, :cond_4

    .line 463
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    :cond_0
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->bound:Lcom/akexorcist/googledirection/model/Bound;

    if-nez v2, :cond_6

    .line 476
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    :goto_2
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->warningList:Ljava/util/List;

    if-nez v2, :cond_7

    .line 482
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    :cond_1
    return-void

    .line 452
    :cond_2
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->fare:Lcom/akexorcist/googledirection/model/Fare;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Fare(Lcom/akexorcist/googledirection/model/Fare;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 458
    :cond_3
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->overviewPolyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_RoutePolyline(Lcom/akexorcist/googledirection/model/RoutePolyline;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 465
    :cond_4
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->legList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
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

    .line 467
    .local v0, "leg$$2":Lcom/akexorcist/googledirection/model/Leg;
    if-nez v0, :cond_5

    .line 468
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 470
    :cond_5
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Leg(Lcom/akexorcist/googledirection/model/Leg;Landroid/os/Parcel;I)V

    goto :goto_3

    .line 478
    .end local v0    # "leg$$2":Lcom/akexorcist/googledirection/model/Leg;
    :cond_6
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->bound:Lcom/akexorcist/googledirection/model/Bound;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Bound(Lcom/akexorcist/googledirection/model/Bound;Landroid/os/Parcel;I)V

    goto :goto_2

    .line 484
    :cond_7
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Route;->warningList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
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

    .line 486
    .local v1, "string$$0":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private writecom_akexorcist_googledirection_model_RoutePolyline(Lcom/akexorcist/googledirection/model/RoutePolyline;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "routePolyline$$3"    # Lcom/akexorcist/googledirection/model/RoutePolyline;
    .param p2, "parcel$$19"    # Landroid/os/Parcel;
    .param p3, "flags$$2"    # I

    .prologue
    .line 498
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/RoutePolyline;->rawPointList:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Step(Lcom/akexorcist/googledirection/model/Step;Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "step$$4"    # Lcom/akexorcist/googledirection/model/Step;
    .param p2, "parcel$$25"    # Landroid/os/Parcel;
    .param p3, "flags$$8"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 602
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->duration:Lcom/akexorcist/googledirection/model/Info;

    if-nez v1, :cond_1

    .line 603
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    :goto_0
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->htmlInstruction:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 609
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->distance:Lcom/akexorcist/googledirection/model/Info;

    if-nez v1, :cond_2

    .line 610
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    :goto_1
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v1, :cond_3

    .line 616
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    :goto_2
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->transitDetail:Lcom/akexorcist/googledirection/model/TransitDetail;

    if-nez v1, :cond_4

    .line 622
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    :goto_3
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->stepList:Ljava/util/List;

    if-nez v1, :cond_5

    .line 628
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    :cond_0
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v1, :cond_7

    .line 641
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    :goto_4
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->maneuver:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 647
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->polyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    if-nez v1, :cond_8

    .line 648
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    :goto_5
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->travelMode:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 654
    return-void

    .line 605
    :cond_1
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->duration:Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 612
    :cond_2
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->distance:Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 618
    :cond_3
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_2

    .line 624
    :cond_4
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->transitDetail:Lcom/akexorcist/googledirection/model/TransitDetail;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_TransitDetail(Lcom/akexorcist/googledirection/model/TransitDetail;Landroid/os/Parcel;I)V

    goto :goto_3

    .line 630
    :cond_5
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->stepList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
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

    .line 632
    .local v0, "step$$5":Lcom/akexorcist/googledirection/model/Step;
    if-nez v0, :cond_6

    .line 633
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 635
    :cond_6
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Step(Lcom/akexorcist/googledirection/model/Step;Landroid/os/Parcel;I)V

    goto :goto_6

    .line 643
    .end local v0    # "step$$5":Lcom/akexorcist/googledirection/model/Step;
    :cond_7
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_4

    .line 650
    :cond_8
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->polyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_RoutePolyline(Lcom/akexorcist/googledirection/model/RoutePolyline;Landroid/os/Parcel;I)V

    goto :goto_5
.end method

.method private writecom_akexorcist_googledirection_model_StopPoint(Lcom/akexorcist/googledirection/model/StopPoint;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "stopPoint$$3"    # Lcom/akexorcist/googledirection/model/StopPoint;
    .param p2, "parcel$$27"    # Landroid/os/Parcel;
    .param p3, "flags$$10"    # I

    .prologue
    .line 692
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 693
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v0, :cond_0

    .line 694
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    :goto_0
    return-void

    .line 696
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "timeInfo$$5"    # Lcom/akexorcist/googledirection/model/TimeInfo;
    .param p2, "parcel$$21"    # Landroid/os/Parcel;
    .param p3, "flags$$4"    # I

    .prologue
    .line 575
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TimeInfo;->timeZone:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 576
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TimeInfo;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 577
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TimeInfo;->value:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_TransitDetail(Lcom/akexorcist/googledirection/model/TransitDetail;Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "transitDetail$$2"    # Lcom/akexorcist/googledirection/model/TransitDetail;
    .param p2, "parcel$$26"    # Landroid/os/Parcel;
    .param p3, "flags$$9"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 657
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    if-nez v0, :cond_0

    .line 658
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    :goto_0
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->headsign:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 664
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->stopNumber:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 665
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    if-nez v0, :cond_1

    .line 666
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    :goto_1
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    if-nez v0, :cond_2

    .line 672
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    :goto_2
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    if-nez v0, :cond_3

    .line 678
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    :goto_3
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->line:Lcom/akexorcist/googledirection/model/Line;

    if-nez v0, :cond_4

    .line 684
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    :goto_4
    return-void

    .line 660
    :cond_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 668
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_StopPoint(Lcom/akexorcist/googledirection/model/StopPoint;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 674
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_StopPoint(Lcom/akexorcist/googledirection/model/StopPoint;Landroid/os/Parcel;I)V

    goto :goto_2

    .line 680
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V

    goto :goto_3

    .line 686
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->line:Lcom/akexorcist/googledirection/model/Line;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Line(Lcom/akexorcist/googledirection/model/Line;Landroid/os/Parcel;I)V

    goto :goto_4
.end method

.method private writecom_akexorcist_googledirection_model_Vehicle(Lcom/akexorcist/googledirection/model/Vehicle;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "vehicle$$2"    # Lcom/akexorcist/googledirection/model/Vehicle;
    .param p2, "parcel$$30"    # Landroid/os/Parcel;
    .param p3, "flags$$13"    # I

    .prologue
    .line 733
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 734
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->iconUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 735
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->type:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Waypoint(Lcom/akexorcist/googledirection/model/Waypoint;Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "waypoint$$3"    # Lcom/akexorcist/googledirection/model/Waypoint;
    .param p2, "parcel$$24"    # Landroid/os/Parcel;
    .param p3, "flags$$7"    # I

    .prologue
    .line 591
    iget-wide v0, p1, Lcom/akexorcist/googledirection/model/Waypoint;->interpolation:D

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 592
    iget v0, p1, Lcom/akexorcist/googledirection/model/Waypoint;->index:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Waypoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v0, :cond_0

    .line 594
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    :goto_0
    return-void

    .line 596
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Waypoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/akexorcist/googledirection/model/Route;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->route$$0:Lcom/akexorcist/googledirection/model/Route;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->getParcel()Lcom/akexorcist/googledirection/model/Route;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel$$1"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->route$$0:Lcom/akexorcist/googledirection/model/Route;

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
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->route$$0:Lcom/akexorcist/googledirection/model/Route;

    invoke-direct {p0, v0, p1, p2}, Lcom/akexorcist/googledirection/model/Route$$Parcelable;->writecom_akexorcist_googledirection_model_Route(Lcom/akexorcist/googledirection/model/Route;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
