.class public Lcom/akexorcist/googledirection/model/Leg$$Parcelable;
.super Ljava/lang/Object;
.source "Leg$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lorg/parceler/ParcelWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akexorcist/googledirection/model/Leg$$Parcelable$Creator$$7;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lorg/parceler/ParcelWrapper",
        "<",
        "Lcom/akexorcist/googledirection/model/Leg;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/akexorcist/googledirection/model/Leg$$Parcelable$Creator$$7;


# instance fields
.field private leg$$0:Lcom/akexorcist/googledirection/model/Leg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/akexorcist/googledirection/model/Leg$$Parcelable$Creator$$7;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable$Creator$$7;-><init>()V

    sput-object v0, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->CREATOR:Lcom/akexorcist/googledirection/model/Leg$$Parcelable$Creator$$7;

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
    .local v0, "leg$$2":Lcom/akexorcist/googledirection/model/Leg;
    :goto_0
    iput-object v0, p0, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->leg$$0:Lcom/akexorcist/googledirection/model/Leg;

    .line 31
    return-void

    .line 28
    .end local v0    # "leg$$2":Lcom/akexorcist/googledirection/model/Leg;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Leg(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Leg;

    move-result-object v0

    .restart local v0    # "leg$$2":Lcom/akexorcist/googledirection/model/Leg;
    goto :goto_0
.end method

.method public constructor <init>(Lcom/akexorcist/googledirection/model/Leg;)V
    .locals 0
    .param p1, "leg$$4"    # Lcom/akexorcist/googledirection/model/Leg;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->leg$$0:Lcom/akexorcist/googledirection/model/Leg;

    .line 35
    return-void
.end method

.method private readcom_akexorcist_googledirection_model_Agency(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Agency;
    .locals 2
    .param p1, "parcel$$11"    # Landroid/os/Parcel;

    .prologue
    .line 339
    new-instance v0, Lcom/akexorcist/googledirection/model/Agency;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Agency;-><init>()V

    .line 340
    .local v0, "agency$$0":Lcom/akexorcist/googledirection/model/Agency;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Agency;->name:Ljava/lang/String;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Agency;->url:Ljava/lang/String;

    .line 342
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;
    .locals 4
    .param p1, "parcel$$5"    # Landroid/os/Parcel;

    .prologue
    .line 157
    new-instance v0, Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Coordination;-><init>()V

    .line 158
    .local v0, "coordination$$0":Lcom/akexorcist/googledirection/model/Coordination;
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/akexorcist/googledirection/model/Coordination;->latitude:D

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/akexorcist/googledirection/model/Coordination;->longitude:D

    .line 160
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;
    .locals 2
    .param p1, "parcel$$4"    # Landroid/os/Parcel;

    .prologue
    .line 149
    new-instance v0, Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Info;-><init>()V

    .line 150
    .local v0, "info$$0":Lcom/akexorcist/googledirection/model/Info;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Info;->text:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Info;->value:Ljava/lang/String;

    .line 152
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Leg(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Leg;
    .locals 20
    .param p1, "parcel$$2"    # Landroid/os/Parcel;

    .prologue
    .line 49
    new-instance v11, Lcom/akexorcist/googledirection/model/Leg;

    invoke-direct {v11}, Lcom/akexorcist/googledirection/model/Leg;-><init>()V

    .line 51
    .local v11, "leg$$1":Lcom/akexorcist/googledirection/model/Leg;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 52
    const/4 v15, 0x0

    .line 56
    .local v15, "timeInfo$$1":Lcom/akexorcist/googledirection/model/TimeInfo;
    :goto_0
    iput-object v15, v11, Lcom/akexorcist/googledirection/model/Leg;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 59
    const/4 v4, 0x0

    .line 63
    .local v4, "info$$1":Lcom/akexorcist/googledirection/model/Info;
    :goto_1
    iput-object v4, v11, Lcom/akexorcist/googledirection/model/Leg;->duration:Lcom/akexorcist/googledirection/model/Info;

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 66
    const/4 v5, 0x0

    .line 70
    .local v5, "info$$2":Lcom/akexorcist/googledirection/model/Info;
    :goto_2
    iput-object v5, v11, Lcom/akexorcist/googledirection/model/Leg;->durationInTraffic:Lcom/akexorcist/googledirection/model/Info;

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 73
    const/4 v6, 0x0

    .line 77
    .local v6, "info$$3":Lcom/akexorcist/googledirection/model/Info;
    :goto_3
    iput-object v6, v11, Lcom/akexorcist/googledirection/model/Leg;->distance:Lcom/akexorcist/googledirection/model/Info;

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 80
    const/4 v2, 0x0

    .line 84
    .local v2, "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_4
    iput-object v2, v11, Lcom/akexorcist/googledirection/model/Leg;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 87
    const/16 v16, 0x0

    .line 91
    .local v16, "timeInfo$$2":Lcom/akexorcist/googledirection/model/TimeInfo;
    :goto_5
    move-object/from16 v0, v16

    iput-object v0, v11, Lcom/akexorcist/googledirection/model/Leg;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/akexorcist/googledirection/model/Leg;->startAddress:Ljava/lang/String;

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 95
    .local v7, "int$$0":I
    if-gez v7, :cond_8

    .line 96
    const/4 v12, 0x0

    .line 109
    .local v12, "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Waypoint;>;"
    :cond_0
    iput-object v12, v11, Lcom/akexorcist/googledirection/model/Leg;->viaWaypointList:Ljava/util/List;

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 112
    .local v9, "int$$2":I
    if-gez v9, :cond_a

    .line 113
    const/4 v13, 0x0

    .line 126
    .local v13, "list$$1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    :cond_1
    iput-object v13, v11, Lcom/akexorcist/googledirection/model/Leg;->stepList:Ljava/util/List;

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/akexorcist/googledirection/model/Leg;->endAddress:Ljava/lang/String;

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 130
    const/4 v3, 0x0

    .line 134
    .local v3, "coordination$$6":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_6
    iput-object v3, v11, Lcom/akexorcist/googledirection/model/Leg;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    .line 135
    return-object v11

    .line 54
    .end local v2    # "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    .end local v3    # "coordination$$6":Lcom/akexorcist/googledirection/model/Coordination;
    .end local v4    # "info$$1":Lcom/akexorcist/googledirection/model/Info;
    .end local v5    # "info$$2":Lcom/akexorcist/googledirection/model/Info;
    .end local v6    # "info$$3":Lcom/akexorcist/googledirection/model/Info;
    .end local v7    # "int$$0":I
    .end local v9    # "int$$2":I
    .end local v12    # "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Waypoint;>;"
    .end local v13    # "list$$1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    .end local v15    # "timeInfo$$1":Lcom/akexorcist/googledirection/model/TimeInfo;
    .end local v16    # "timeInfo$$2":Lcom/akexorcist/googledirection/model/TimeInfo;
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;

    move-result-object v15

    .restart local v15    # "timeInfo$$1":Lcom/akexorcist/googledirection/model/TimeInfo;
    goto/16 :goto_0

    .line 61
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;

    move-result-object v4

    .restart local v4    # "info$$1":Lcom/akexorcist/googledirection/model/Info;
    goto :goto_1

    .line 68
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;

    move-result-object v5

    .restart local v5    # "info$$2":Lcom/akexorcist/googledirection/model/Info;
    goto :goto_2

    .line 75
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;

    move-result-object v6

    .restart local v6    # "info$$3":Lcom/akexorcist/googledirection/model/Info;
    goto :goto_3

    .line 82
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v2

    .restart local v2    # "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_4

    .line 89
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;

    move-result-object v16

    .restart local v16    # "timeInfo$$2":Lcom/akexorcist/googledirection/model/TimeInfo;
    goto :goto_5

    .line 98
    .restart local v7    # "int$$0":I
    :cond_8
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .restart local v12    # "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Waypoint;>;"
    const/4 v8, 0x0

    .local v8, "int$$1":I
    :goto_7
    if-ge v8, v7, :cond_0

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 102
    const/16 v17, 0x0

    .line 106
    .local v17, "waypoint$$1":Lcom/akexorcist/googledirection/model/Waypoint;
    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 104
    .end local v17    # "waypoint$$1":Lcom/akexorcist/googledirection/model/Waypoint;
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Waypoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Waypoint;

    move-result-object v17

    .restart local v17    # "waypoint$$1":Lcom/akexorcist/googledirection/model/Waypoint;
    goto :goto_8

    .line 115
    .end local v8    # "int$$1":I
    .end local v17    # "waypoint$$1":Lcom/akexorcist/googledirection/model/Waypoint;
    .restart local v9    # "int$$2":I
    :cond_a
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .restart local v13    # "list$$1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    const/4 v10, 0x0

    .local v10, "int$$3":I
    :goto_9
    if-ge v10, v9, :cond_1

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 119
    const/4 v14, 0x0

    .line 123
    .local v14, "step$$2":Lcom/akexorcist/googledirection/model/Step;
    :goto_a
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 121
    .end local v14    # "step$$2":Lcom/akexorcist/googledirection/model/Step;
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Step(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Step;

    move-result-object v14

    .restart local v14    # "step$$2":Lcom/akexorcist/googledirection/model/Step;
    goto :goto_a

    .line 132
    .end local v10    # "int$$3":I
    .end local v14    # "step$$2":Lcom/akexorcist/googledirection/model/Step;
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v3

    .restart local v3    # "coordination$$6":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_6
.end method

.method private readcom_akexorcist_googledirection_model_Line(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Line;
    .locals 8
    .param p1, "parcel$$10"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, -0x1

    .line 305
    new-instance v3, Lcom/akexorcist/googledirection/model/Line;

    invoke-direct {v3}, Lcom/akexorcist/googledirection/model/Line;-><init>()V

    .line 306
    .local v3, "line$$0":Lcom/akexorcist/googledirection/model/Line;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->color:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->name:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->shortName:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->textColor:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 312
    .local v1, "int$$4":I
    if-gez v1, :cond_1

    .line 313
    const/4 v4, 0x0

    .line 326
    .local v4, "list$$2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    :cond_0
    iput-object v4, v3, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 329
    const/4 v5, 0x0

    .line 333
    .local v5, "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    :goto_0
    iput-object v5, v3, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    .line 334
    return-object v3

    .line 315
    .end local v4    # "list$$2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    .end local v5    # "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .restart local v4    # "list$$2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    const/4 v2, 0x0

    .local v2, "int$$5":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 319
    const/4 v0, 0x0

    .line 323
    .local v0, "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    :goto_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 321
    .end local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    :cond_2
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Agency(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Agency;

    move-result-object v0

    .restart local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    goto :goto_2

    .line 331
    .end local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    .end local v2    # "int$$5":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Vehicle(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Vehicle;

    move-result-object v5

    .restart local v5    # "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    goto :goto_0
.end method

.method private readcom_akexorcist_googledirection_model_RoutePolyline(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/RoutePolyline;
    .locals 2
    .param p1, "parcel$$13"    # Landroid/os/Parcel;

    .prologue
    .line 356
    new-instance v0, Lcom/akexorcist/googledirection/model/RoutePolyline;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/RoutePolyline;-><init>()V

    .line 357
    .local v0, "routePolyline$$0":Lcom/akexorcist/googledirection/model/RoutePolyline;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/RoutePolyline;->rawPointList:Ljava/lang/String;

    .line 358
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Step(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Step;
    .locals 13
    .param p1, "parcel$$7"    # Landroid/os/Parcel;

    .prologue
    const/4 v12, -0x1

    .line 180
    new-instance v8, Lcom/akexorcist/googledirection/model/Step;

    invoke-direct {v8}, Lcom/akexorcist/googledirection/model/Step;-><init>()V

    .line 182
    .local v8, "step$$0":Lcom/akexorcist/googledirection/model/Step;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_1

    .line 183
    const/4 v2, 0x0

    .line 187
    .local v2, "info$$4":Lcom/akexorcist/googledirection/model/Info;
    :goto_0
    iput-object v2, v8, Lcom/akexorcist/googledirection/model/Step;->duration:Lcom/akexorcist/googledirection/model/Info;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/akexorcist/googledirection/model/Step;->htmlInstruction:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_2

    .line 191
    const/4 v3, 0x0

    .line 195
    .local v3, "info$$5":Lcom/akexorcist/googledirection/model/Info;
    :goto_1
    iput-object v3, v8, Lcom/akexorcist/googledirection/model/Step;->distance:Lcom/akexorcist/googledirection/model/Info;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_3

    .line 198
    const/4 v0, 0x0

    .line 202
    .local v0, "coordination$$3":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_2
    iput-object v0, v8, Lcom/akexorcist/googledirection/model/Step;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_4

    .line 205
    const/4 v10, 0x0

    .line 209
    .local v10, "transitDetail$$1":Lcom/akexorcist/googledirection/model/TransitDetail;
    :goto_3
    iput-object v10, v8, Lcom/akexorcist/googledirection/model/Step;->transitDetail:Lcom/akexorcist/googledirection/model/TransitDetail;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 212
    .local v4, "int$$6":I
    if-gez v4, :cond_5

    .line 213
    const/4 v6, 0x0

    .line 226
    .local v6, "list$$3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    :cond_0
    iput-object v6, v8, Lcom/akexorcist/googledirection/model/Step;->stepList:Ljava/util/List;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_7

    .line 229
    const/4 v1, 0x0

    .line 233
    .local v1, "coordination$$5":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_4
    iput-object v1, v8, Lcom/akexorcist/googledirection/model/Step;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/akexorcist/googledirection/model/Step;->maneuver:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_8

    .line 237
    const/4 v7, 0x0

    .line 241
    .local v7, "routePolyline$$1":Lcom/akexorcist/googledirection/model/RoutePolyline;
    :goto_5
    iput-object v7, v8, Lcom/akexorcist/googledirection/model/Step;->polyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/akexorcist/googledirection/model/Step;->travelMode:Ljava/lang/String;

    .line 243
    return-object v8

    .line 185
    .end local v0    # "coordination$$3":Lcom/akexorcist/googledirection/model/Coordination;
    .end local v1    # "coordination$$5":Lcom/akexorcist/googledirection/model/Coordination;
    .end local v2    # "info$$4":Lcom/akexorcist/googledirection/model/Info;
    .end local v3    # "info$$5":Lcom/akexorcist/googledirection/model/Info;
    .end local v4    # "int$$6":I
    .end local v6    # "list$$3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    .end local v7    # "routePolyline$$1":Lcom/akexorcist/googledirection/model/RoutePolyline;
    .end local v10    # "transitDetail$$1":Lcom/akexorcist/googledirection/model/TransitDetail;
    :cond_1
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;

    move-result-object v2

    .restart local v2    # "info$$4":Lcom/akexorcist/googledirection/model/Info;
    goto :goto_0

    .line 193
    :cond_2
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;

    move-result-object v3

    .restart local v3    # "info$$5":Lcom/akexorcist/googledirection/model/Info;
    goto :goto_1

    .line 200
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v0

    .restart local v0    # "coordination$$3":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_2

    .line 207
    :cond_4
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_TransitDetail(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TransitDetail;

    move-result-object v10

    .restart local v10    # "transitDetail$$1":Lcom/akexorcist/googledirection/model/TransitDetail;
    goto :goto_3

    .line 215
    .restart local v4    # "int$$6":I
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .restart local v6    # "list$$3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    const/4 v5, 0x0

    .local v5, "int$$7":I
    :goto_6
    if-ge v5, v4, :cond_0

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_6

    .line 219
    const/4 v9, 0x0

    .line 223
    .local v9, "step$$1":Lcom/akexorcist/googledirection/model/Step;
    :goto_7
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 221
    .end local v9    # "step$$1":Lcom/akexorcist/googledirection/model/Step;
    :cond_6
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Step(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Step;

    move-result-object v9

    .restart local v9    # "step$$1":Lcom/akexorcist/googledirection/model/Step;
    goto :goto_7

    .line 231
    .end local v5    # "int$$7":I
    .end local v9    # "step$$1":Lcom/akexorcist/googledirection/model/Step;
    :cond_7
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v1

    .restart local v1    # "coordination$$5":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_4

    .line 239
    :cond_8
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_RoutePolyline(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/RoutePolyline;

    move-result-object v7

    .restart local v7    # "routePolyline$$1":Lcom/akexorcist/googledirection/model/RoutePolyline;
    goto :goto_5
.end method

.method private readcom_akexorcist_googledirection_model_StopPoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint;
    .locals 4
    .param p1, "parcel$$9"    # Landroid/os/Parcel;

    .prologue
    .line 291
    new-instance v1, Lcom/akexorcist/googledirection/model/StopPoint;

    invoke-direct {v1}, Lcom/akexorcist/googledirection/model/StopPoint;-><init>()V

    .line 292
    .local v1, "stopPoint$$0":Lcom/akexorcist/googledirection/model/StopPoint;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/akexorcist/googledirection/model/StopPoint;->name:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 295
    const/4 v0, 0x0

    .line 299
    .local v0, "coordination$$4":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_0
    iput-object v0, v1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    .line 300
    return-object v1

    .line 297
    .end local v0    # "coordination$$4":Lcom/akexorcist/googledirection/model/Coordination;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v0

    .restart local v0    # "coordination$$4":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_0
.end method

.method private readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;
    .locals 2
    .param p1, "parcel$$3"    # Landroid/os/Parcel;

    .prologue
    .line 140
    new-instance v0, Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/TimeInfo;-><init>()V

    .line 141
    .local v0, "timeInfo$$0":Lcom/akexorcist/googledirection/model/TimeInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/TimeInfo;->timeZone:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/TimeInfo;->text:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/TimeInfo;->value:Ljava/lang/String;

    .line 144
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_TransitDetail(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TransitDetail;
    .locals 8
    .param p1, "parcel$$8"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, -0x1

    .line 248
    new-instance v5, Lcom/akexorcist/googledirection/model/TransitDetail;

    invoke-direct {v5}, Lcom/akexorcist/googledirection/model/TransitDetail;-><init>()V

    .line 250
    .local v5, "transitDetail$$0":Lcom/akexorcist/googledirection/model/TransitDetail;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 251
    const/4 v3, 0x0

    .line 255
    .local v3, "timeInfo$$3":Lcom/akexorcist/googledirection/model/TimeInfo;
    :goto_0
    iput-object v3, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->headsign:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->stopNumber:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 260
    const/4 v1, 0x0

    .line 264
    .local v1, "stopPoint$$1":Lcom/akexorcist/googledirection/model/StopPoint;
    :goto_1
    iput-object v1, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 267
    const/4 v2, 0x0

    .line 271
    .local v2, "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    :goto_2
    iput-object v2, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->departureStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 274
    const/4 v4, 0x0

    .line 278
    .local v4, "timeInfo$$4":Lcom/akexorcist/googledirection/model/TimeInfo;
    :goto_3
    iput-object v4, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_4

    .line 281
    const/4 v0, 0x0

    .line 285
    .local v0, "line$$1":Lcom/akexorcist/googledirection/model/Line;
    :goto_4
    iput-object v0, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->line:Lcom/akexorcist/googledirection/model/Line;

    .line 286
    return-object v5

    .line 253
    .end local v0    # "line$$1":Lcom/akexorcist/googledirection/model/Line;
    .end local v1    # "stopPoint$$1":Lcom/akexorcist/googledirection/model/StopPoint;
    .end local v2    # "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    .end local v3    # "timeInfo$$3":Lcom/akexorcist/googledirection/model/TimeInfo;
    .end local v4    # "timeInfo$$4":Lcom/akexorcist/googledirection/model/TimeInfo;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;

    move-result-object v3

    .restart local v3    # "timeInfo$$3":Lcom/akexorcist/googledirection/model/TimeInfo;
    goto :goto_0

    .line 262
    :cond_1
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_StopPoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint;

    move-result-object v1

    .restart local v1    # "stopPoint$$1":Lcom/akexorcist/googledirection/model/StopPoint;
    goto :goto_1

    .line 269
    :cond_2
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_StopPoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint;

    move-result-object v2

    .restart local v2    # "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    goto :goto_2

    .line 276
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;

    move-result-object v4

    .restart local v4    # "timeInfo$$4":Lcom/akexorcist/googledirection/model/TimeInfo;
    goto :goto_3

    .line 283
    :cond_4
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Line(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Line;

    move-result-object v0

    .restart local v0    # "line$$1":Lcom/akexorcist/googledirection/model/Line;
    goto :goto_4
.end method

.method private readcom_akexorcist_googledirection_model_Vehicle(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Vehicle;
    .locals 2
    .param p1, "parcel$$12"    # Landroid/os/Parcel;

    .prologue
    .line 347
    new-instance v0, Lcom/akexorcist/googledirection/model/Vehicle;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Vehicle;-><init>()V

    .line 348
    .local v0, "vehicle$$0":Lcom/akexorcist/googledirection/model/Vehicle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->name:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->iconUrl:Ljava/lang/String;

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->type:Ljava/lang/String;

    .line 351
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Waypoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Waypoint;
    .locals 4
    .param p1, "parcel$$6"    # Landroid/os/Parcel;

    .prologue
    .line 165
    new-instance v1, Lcom/akexorcist/googledirection/model/Waypoint;

    invoke-direct {v1}, Lcom/akexorcist/googledirection/model/Waypoint;-><init>()V

    .line 166
    .local v1, "waypoint$$0":Lcom/akexorcist/googledirection/model/Waypoint;
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/akexorcist/googledirection/model/Waypoint;->interpolation:D

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/akexorcist/googledirection/model/Waypoint;->index:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 174
    .local v0, "coordination$$2":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_0
    iput-object v0, v1, Lcom/akexorcist/googledirection/model/Waypoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    .line 175
    return-object v1

    .line 172
    .end local v0    # "coordination$$2":Lcom/akexorcist/googledirection/model/Coordination;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v0

    .restart local v0    # "coordination$$2":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_0
.end method

.method private writecom_akexorcist_googledirection_model_Agency(Lcom/akexorcist/googledirection/model/Agency;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "agency$$3"    # Lcom/akexorcist/googledirection/model/Agency;
    .param p2, "parcel$$23"    # Landroid/os/Parcel;
    .param p3, "flags$$9"    # I

    .prologue
    .line 588
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Agency;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Agency;->url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "coordination$$7"    # Lcom/akexorcist/googledirection/model/Coordination;
    .param p2, "parcel$$17"    # Landroid/os/Parcel;
    .param p3, "flags$$3"    # I

    .prologue
    .line 446
    iget-wide v0, p1, Lcom/akexorcist/googledirection/model/Coordination;->latitude:D

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 447
    iget-wide v0, p1, Lcom/akexorcist/googledirection/model/Coordination;->longitude:D

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 448
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "info$$6"    # Lcom/akexorcist/googledirection/model/Info;
    .param p2, "parcel$$16"    # Landroid/os/Parcel;
    .param p3, "flags$$2"    # I

    .prologue
    .line 441
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Info;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 442
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Info;->value:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Leg(Lcom/akexorcist/googledirection/model/Leg;Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "leg$$3"    # Lcom/akexorcist/googledirection/model/Leg;
    .param p2, "parcel$$14"    # Landroid/os/Parcel;
    .param p3, "flags$$0"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 362
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    if-nez v2, :cond_2

    .line 363
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    :goto_0
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->duration:Lcom/akexorcist/googledirection/model/Info;

    if-nez v2, :cond_3

    .line 369
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    :goto_1
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->durationInTraffic:Lcom/akexorcist/googledirection/model/Info;

    if-nez v2, :cond_4

    .line 375
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    :goto_2
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->distance:Lcom/akexorcist/googledirection/model/Info;

    if-nez v2, :cond_5

    .line 381
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    :goto_3
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v2, :cond_6

    .line 387
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    :goto_4
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    if-nez v2, :cond_7

    .line 393
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    :goto_5
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->startAddress:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->viaWaypointList:Ljava/util/List;

    if-nez v2, :cond_8

    .line 400
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    :cond_0
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->stepList:Ljava/util/List;

    if-nez v2, :cond_a

    .line 413
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    :cond_1
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->endAddress:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v2, :cond_c

    .line 427
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    :goto_6
    return-void

    .line 365
    :cond_2
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 371
    :cond_3
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->duration:Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 377
    :cond_4
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->durationInTraffic:Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V

    goto :goto_2

    .line 383
    :cond_5
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->distance:Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V

    goto :goto_3

    .line 389
    :cond_6
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_4

    .line 395
    :cond_7
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V

    goto :goto_5

    .line 402
    :cond_8
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->viaWaypointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
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

    .line 404
    .local v1, "waypoint$$2":Lcom/akexorcist/googledirection/model/Waypoint;
    if-nez v1, :cond_9

    .line 405
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 407
    :cond_9
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Waypoint(Lcom/akexorcist/googledirection/model/Waypoint;Landroid/os/Parcel;I)V

    goto :goto_7

    .line 415
    .end local v1    # "waypoint$$2":Lcom/akexorcist/googledirection/model/Waypoint;
    :cond_a
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->stepList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
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

    .line 417
    .local v0, "step$$3":Lcom/akexorcist/googledirection/model/Step;
    if-nez v0, :cond_b

    .line 418
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 420
    :cond_b
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Step(Lcom/akexorcist/googledirection/model/Step;Landroid/os/Parcel;I)V

    goto :goto_8

    .line 429
    .end local v0    # "step$$3":Lcom/akexorcist/googledirection/model/Step;
    :cond_c
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget-object v2, p1, Lcom/akexorcist/googledirection/model/Leg;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v2, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto/16 :goto_6
.end method

.method private writecom_akexorcist_googledirection_model_Line(Lcom/akexorcist/googledirection/model/Line;Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "line$$2"    # Lcom/akexorcist/googledirection/model/Line;
    .param p2, "parcel$$22"    # Landroid/os/Parcel;
    .param p3, "flags$$8"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 562
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->color:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 563
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 564
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->shortName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 565
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->textColor:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 567
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    :cond_0
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    if-nez v1, :cond_3

    .line 580
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
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

    .line 571
    .local v0, "agency$$2":Lcom/akexorcist/googledirection/model/Agency;
    if-nez v0, :cond_2

    .line 572
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 574
    :cond_2
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Agency(Lcom/akexorcist/googledirection/model/Agency;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 582
    .end local v0    # "agency$$2":Lcom/akexorcist/googledirection/model/Agency;
    :cond_3
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Vehicle(Lcom/akexorcist/googledirection/model/Vehicle;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private writecom_akexorcist_googledirection_model_RoutePolyline(Lcom/akexorcist/googledirection/model/RoutePolyline;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "routePolyline$$2"    # Lcom/akexorcist/googledirection/model/RoutePolyline;
    .param p2, "parcel$$25"    # Landroid/os/Parcel;
    .param p3, "flags$$11"    # I

    .prologue
    .line 599
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/RoutePolyline;->rawPointList:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Step(Lcom/akexorcist/googledirection/model/Step;Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "step$$4"    # Lcom/akexorcist/googledirection/model/Step;
    .param p2, "parcel$$19"    # Landroid/os/Parcel;
    .param p3, "flags$$5"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 462
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->duration:Lcom/akexorcist/googledirection/model/Info;

    if-nez v1, :cond_1

    .line 463
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    :goto_0
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->htmlInstruction:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->distance:Lcom/akexorcist/googledirection/model/Info;

    if-nez v1, :cond_2

    .line 470
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    :goto_1
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v1, :cond_3

    .line 476
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    :goto_2
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->transitDetail:Lcom/akexorcist/googledirection/model/TransitDetail;

    if-nez v1, :cond_4

    .line 482
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    :goto_3
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->stepList:Ljava/util/List;

    if-nez v1, :cond_5

    .line 488
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    :cond_0
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v1, :cond_7

    .line 501
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    :goto_4
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->maneuver:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 507
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->polyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    if-nez v1, :cond_8

    .line 508
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    :goto_5
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->travelMode:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    return-void

    .line 465
    :cond_1
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->duration:Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 472
    :cond_2
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->distance:Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 478
    :cond_3
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_2

    .line 484
    :cond_4
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->transitDetail:Lcom/akexorcist/googledirection/model/TransitDetail;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_TransitDetail(Lcom/akexorcist/googledirection/model/TransitDetail;Landroid/os/Parcel;I)V

    goto :goto_3

    .line 490
    :cond_5
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->stepList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
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

    .line 492
    .local v0, "step$$5":Lcom/akexorcist/googledirection/model/Step;
    if-nez v0, :cond_6

    .line 493
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 495
    :cond_6
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Step(Lcom/akexorcist/googledirection/model/Step;Landroid/os/Parcel;I)V

    goto :goto_6

    .line 503
    .end local v0    # "step$$5":Lcom/akexorcist/googledirection/model/Step;
    :cond_7
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_4

    .line 510
    :cond_8
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->polyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_RoutePolyline(Lcom/akexorcist/googledirection/model/RoutePolyline;Landroid/os/Parcel;I)V

    goto :goto_5
.end method

.method private writecom_akexorcist_googledirection_model_StopPoint(Lcom/akexorcist/googledirection/model/StopPoint;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "stopPoint$$3"    # Lcom/akexorcist/googledirection/model/StopPoint;
    .param p2, "parcel$$21"    # Landroid/os/Parcel;
    .param p3, "flags$$7"    # I

    .prologue
    .line 552
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 553
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v0, :cond_0

    .line 554
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    :goto_0
    return-void

    .line 556
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "timeInfo$$5"    # Lcom/akexorcist/googledirection/model/TimeInfo;
    .param p2, "parcel$$15"    # Landroid/os/Parcel;
    .param p3, "flags$$1"    # I

    .prologue
    .line 435
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TimeInfo;->timeZone:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TimeInfo;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 437
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TimeInfo;->value:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_TransitDetail(Lcom/akexorcist/googledirection/model/TransitDetail;Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "transitDetail$$2"    # Lcom/akexorcist/googledirection/model/TransitDetail;
    .param p2, "parcel$$20"    # Landroid/os/Parcel;
    .param p3, "flags$$6"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 517
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    if-nez v0, :cond_0

    .line 518
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    :goto_0
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->headsign:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->stopNumber:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    if-nez v0, :cond_1

    .line 526
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    :goto_1
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    if-nez v0, :cond_2

    .line 532
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    :goto_2
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    if-nez v0, :cond_3

    .line 538
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    :goto_3
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->line:Lcom/akexorcist/googledirection/model/Line;

    if-nez v0, :cond_4

    .line 544
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    :goto_4
    return-void

    .line 520
    :cond_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 528
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_StopPoint(Lcom/akexorcist/googledirection/model/StopPoint;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 534
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_StopPoint(Lcom/akexorcist/googledirection/model/StopPoint;Landroid/os/Parcel;I)V

    goto :goto_2

    .line 540
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V

    goto :goto_3

    .line 546
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->line:Lcom/akexorcist/googledirection/model/Line;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Line(Lcom/akexorcist/googledirection/model/Line;Landroid/os/Parcel;I)V

    goto :goto_4
.end method

.method private writecom_akexorcist_googledirection_model_Vehicle(Lcom/akexorcist/googledirection/model/Vehicle;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "vehicle$$2"    # Lcom/akexorcist/googledirection/model/Vehicle;
    .param p2, "parcel$$24"    # Landroid/os/Parcel;
    .param p3, "flags$$10"    # I

    .prologue
    .line 593
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 594
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->iconUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->type:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Waypoint(Lcom/akexorcist/googledirection/model/Waypoint;Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "waypoint$$3"    # Lcom/akexorcist/googledirection/model/Waypoint;
    .param p2, "parcel$$18"    # Landroid/os/Parcel;
    .param p3, "flags$$4"    # I

    .prologue
    .line 451
    iget-wide v0, p1, Lcom/akexorcist/googledirection/model/Waypoint;->interpolation:D

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 452
    iget v0, p1, Lcom/akexorcist/googledirection/model/Waypoint;->index:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Waypoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v0, :cond_0

    .line 454
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    :goto_0
    return-void

    .line 456
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Waypoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/akexorcist/googledirection/model/Leg;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->leg$$0:Lcom/akexorcist/googledirection/model/Leg;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->getParcel()Lcom/akexorcist/googledirection/model/Leg;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel$$1"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->leg$$0:Lcom/akexorcist/googledirection/model/Leg;

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
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->leg$$0:Lcom/akexorcist/googledirection/model/Leg;

    invoke-direct {p0, v0, p1, p2}, Lcom/akexorcist/googledirection/model/Leg$$Parcelable;->writecom_akexorcist_googledirection_model_Leg(Lcom/akexorcist/googledirection/model/Leg;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
