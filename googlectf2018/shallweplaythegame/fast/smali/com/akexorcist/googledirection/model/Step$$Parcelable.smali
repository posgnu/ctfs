.class public Lcom/akexorcist/googledirection/model/Step$$Parcelable;
.super Ljava/lang/Object;
.source "Step$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lorg/parceler/ParcelWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akexorcist/googledirection/model/Step$$Parcelable$Creator$$11;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lorg/parceler/ParcelWrapper",
        "<",
        "Lcom/akexorcist/googledirection/model/Step;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/akexorcist/googledirection/model/Step$$Parcelable$Creator$$11;


# instance fields
.field private step$$0:Lcom/akexorcist/googledirection/model/Step;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/akexorcist/googledirection/model/Step$$Parcelable$Creator$$11;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Step$$Parcelable$Creator$$11;-><init>()V

    sput-object v0, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->CREATOR:Lcom/akexorcist/googledirection/model/Step$$Parcelable$Creator$$11;

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
    .local v0, "step$$3":Lcom/akexorcist/googledirection/model/Step;
    :goto_0
    iput-object v0, p0, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->step$$0:Lcom/akexorcist/googledirection/model/Step;

    .line 31
    return-void

    .line 28
    .end local v0    # "step$$3":Lcom/akexorcist/googledirection/model/Step;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->readcom_akexorcist_googledirection_model_Step(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Step;

    move-result-object v0

    .restart local v0    # "step$$3":Lcom/akexorcist/googledirection/model/Step;
    goto :goto_0
.end method

.method public constructor <init>(Lcom/akexorcist/googledirection/model/Step;)V
    .locals 0
    .param p1, "step$$6"    # Lcom/akexorcist/googledirection/model/Step;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->step$$0:Lcom/akexorcist/googledirection/model/Step;

    .line 35
    return-void
.end method

.method private readcom_akexorcist_googledirection_model_Agency(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Agency;
    .locals 2
    .param p1, "parcel$$9"    # Landroid/os/Parcel;

    .prologue
    .line 233
    new-instance v0, Lcom/akexorcist/googledirection/model/Agency;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Agency;-><init>()V

    .line 234
    .local v0, "agency$$0":Lcom/akexorcist/googledirection/model/Agency;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Agency;->name:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Agency;->url:Ljava/lang/String;

    .line 236
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;
    .locals 4
    .param p1, "parcel$$4"    # Landroid/os/Parcel;

    .prologue
    .line 125
    new-instance v0, Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Coordination;-><init>()V

    .line 126
    .local v0, "coordination$$0":Lcom/akexorcist/googledirection/model/Coordination;
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/akexorcist/googledirection/model/Coordination;->latitude:D

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/akexorcist/googledirection/model/Coordination;->longitude:D

    .line 128
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;
    .locals 2
    .param p1, "parcel$$3"    # Landroid/os/Parcel;

    .prologue
    .line 117
    new-instance v0, Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Info;-><init>()V

    .line 118
    .local v0, "info$$0":Lcom/akexorcist/googledirection/model/Info;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Info;->text:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Info;->value:Ljava/lang/String;

    .line 120
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Line(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Line;
    .locals 8
    .param p1, "parcel$$8"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, -0x1

    .line 199
    new-instance v3, Lcom/akexorcist/googledirection/model/Line;

    invoke-direct {v3}, Lcom/akexorcist/googledirection/model/Line;-><init>()V

    .line 200
    .local v3, "line$$0":Lcom/akexorcist/googledirection/model/Line;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->color:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->name:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->shortName:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->textColor:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 206
    .local v1, "int$$0":I
    if-gez v1, :cond_1

    .line 207
    const/4 v4, 0x0

    .line 220
    .local v4, "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    :cond_0
    iput-object v4, v3, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 223
    const/4 v5, 0x0

    .line 227
    .local v5, "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    :goto_0
    iput-object v5, v3, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    .line 228
    return-object v3

    .line 209
    .end local v4    # "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    .end local v5    # "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .restart local v4    # "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    const/4 v2, 0x0

    .local v2, "int$$1":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 213
    const/4 v0, 0x0

    .line 217
    .local v0, "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    :goto_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 215
    .end local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    :cond_2
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->readcom_akexorcist_googledirection_model_Agency(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Agency;

    move-result-object v0

    .restart local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    goto :goto_2

    .line 225
    .end local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    .end local v2    # "int$$1":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->readcom_akexorcist_googledirection_model_Vehicle(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Vehicle;

    move-result-object v5

    .restart local v5    # "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    goto :goto_0
.end method

.method private readcom_akexorcist_googledirection_model_RoutePolyline(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/RoutePolyline;
    .locals 2
    .param p1, "parcel$$11"    # Landroid/os/Parcel;

    .prologue
    .line 250
    new-instance v0, Lcom/akexorcist/googledirection/model/RoutePolyline;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/RoutePolyline;-><init>()V

    .line 251
    .local v0, "routePolyline$$0":Lcom/akexorcist/googledirection/model/RoutePolyline;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/RoutePolyline;->rawPointList:Ljava/lang/String;

    .line 252
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Step(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Step;
    .locals 13
    .param p1, "parcel$$2"    # Landroid/os/Parcel;

    .prologue
    const/4 v12, -0x1

    .line 49
    new-instance v8, Lcom/akexorcist/googledirection/model/Step;

    invoke-direct {v8}, Lcom/akexorcist/googledirection/model/Step;-><init>()V

    .line 51
    .local v8, "step$$1":Lcom/akexorcist/googledirection/model/Step;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_1

    .line 52
    const/4 v2, 0x0

    .line 56
    .local v2, "info$$1":Lcom/akexorcist/googledirection/model/Info;
    :goto_0
    iput-object v2, v8, Lcom/akexorcist/googledirection/model/Step;->duration:Lcom/akexorcist/googledirection/model/Info;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/akexorcist/googledirection/model/Step;->htmlInstruction:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_2

    .line 60
    const/4 v3, 0x0

    .line 64
    .local v3, "info$$2":Lcom/akexorcist/googledirection/model/Info;
    :goto_1
    iput-object v3, v8, Lcom/akexorcist/googledirection/model/Step;->distance:Lcom/akexorcist/googledirection/model/Info;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_3

    .line 67
    const/4 v0, 0x0

    .line 71
    .local v0, "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_2
    iput-object v0, v8, Lcom/akexorcist/googledirection/model/Step;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_4

    .line 74
    const/4 v10, 0x0

    .line 78
    .local v10, "transitDetail$$1":Lcom/akexorcist/googledirection/model/TransitDetail;
    :goto_3
    iput-object v10, v8, Lcom/akexorcist/googledirection/model/Step;->transitDetail:Lcom/akexorcist/googledirection/model/TransitDetail;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 81
    .local v4, "int$$2":I
    if-gez v4, :cond_5

    .line 82
    const/4 v6, 0x0

    .line 95
    .local v6, "list$$1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    :cond_0
    iput-object v6, v8, Lcom/akexorcist/googledirection/model/Step;->stepList:Ljava/util/List;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_7

    .line 98
    const/4 v1, 0x0

    .line 102
    .local v1, "coordination$$3":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_4
    iput-object v1, v8, Lcom/akexorcist/googledirection/model/Step;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/akexorcist/googledirection/model/Step;->maneuver:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_8

    .line 106
    const/4 v7, 0x0

    .line 110
    .local v7, "routePolyline$$1":Lcom/akexorcist/googledirection/model/RoutePolyline;
    :goto_5
    iput-object v7, v8, Lcom/akexorcist/googledirection/model/Step;->polyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/akexorcist/googledirection/model/Step;->travelMode:Ljava/lang/String;

    .line 112
    return-object v8

    .line 54
    .end local v0    # "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    .end local v1    # "coordination$$3":Lcom/akexorcist/googledirection/model/Coordination;
    .end local v2    # "info$$1":Lcom/akexorcist/googledirection/model/Info;
    .end local v3    # "info$$2":Lcom/akexorcist/googledirection/model/Info;
    .end local v4    # "int$$2":I
    .end local v6    # "list$$1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    .end local v7    # "routePolyline$$1":Lcom/akexorcist/googledirection/model/RoutePolyline;
    .end local v10    # "transitDetail$$1":Lcom/akexorcist/googledirection/model/TransitDetail;
    :cond_1
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;

    move-result-object v2

    .restart local v2    # "info$$1":Lcom/akexorcist/googledirection/model/Info;
    goto :goto_0

    .line 62
    :cond_2
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->readcom_akexorcist_googledirection_model_Info(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Info;

    move-result-object v3

    .restart local v3    # "info$$2":Lcom/akexorcist/googledirection/model/Info;
    goto :goto_1

    .line 69
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v0

    .restart local v0    # "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_2

    .line 76
    :cond_4
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->readcom_akexorcist_googledirection_model_TransitDetail(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TransitDetail;

    move-result-object v10

    .restart local v10    # "transitDetail$$1":Lcom/akexorcist/googledirection/model/TransitDetail;
    goto :goto_3

    .line 84
    .restart local v4    # "int$$2":I
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .restart local v6    # "list$$1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Step;>;"
    const/4 v5, 0x0

    .local v5, "int$$3":I
    :goto_6
    if-ge v5, v4, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v12, :cond_6

    .line 88
    const/4 v9, 0x0

    .line 92
    .local v9, "step$$2":Lcom/akexorcist/googledirection/model/Step;
    :goto_7
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 90
    .end local v9    # "step$$2":Lcom/akexorcist/googledirection/model/Step;
    :cond_6
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->readcom_akexorcist_googledirection_model_Step(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Step;

    move-result-object v9

    .restart local v9    # "step$$2":Lcom/akexorcist/googledirection/model/Step;
    goto :goto_7

    .line 100
    .end local v5    # "int$$3":I
    .end local v9    # "step$$2":Lcom/akexorcist/googledirection/model/Step;
    :cond_7
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v1

    .restart local v1    # "coordination$$3":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_4

    .line 108
    :cond_8
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->readcom_akexorcist_googledirection_model_RoutePolyline(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/RoutePolyline;

    move-result-object v7

    .restart local v7    # "routePolyline$$1":Lcom/akexorcist/googledirection/model/RoutePolyline;
    goto :goto_5
.end method

.method private readcom_akexorcist_googledirection_model_StopPoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint;
    .locals 4
    .param p1, "parcel$$7"    # Landroid/os/Parcel;

    .prologue
    .line 185
    new-instance v1, Lcom/akexorcist/googledirection/model/StopPoint;

    invoke-direct {v1}, Lcom/akexorcist/googledirection/model/StopPoint;-><init>()V

    .line 186
    .local v1, "stopPoint$$0":Lcom/akexorcist/googledirection/model/StopPoint;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/akexorcist/googledirection/model/StopPoint;->name:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 193
    .local v0, "coordination$$2":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_0
    iput-object v0, v1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    .line 194
    return-object v1

    .line 191
    .end local v0    # "coordination$$2":Lcom/akexorcist/googledirection/model/Coordination;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v0

    .restart local v0    # "coordination$$2":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_0
.end method

.method private readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;
    .locals 2
    .param p1, "parcel$$6"    # Landroid/os/Parcel;

    .prologue
    .line 176
    new-instance v0, Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/TimeInfo;-><init>()V

    .line 177
    .local v0, "timeInfo$$0":Lcom/akexorcist/googledirection/model/TimeInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/TimeInfo;->timeZone:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/TimeInfo;->text:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/TimeInfo;->value:Ljava/lang/String;

    .line 180
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_TransitDetail(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TransitDetail;
    .locals 8
    .param p1, "parcel$$5"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, -0x1

    .line 133
    new-instance v5, Lcom/akexorcist/googledirection/model/TransitDetail;

    invoke-direct {v5}, Lcom/akexorcist/googledirection/model/TransitDetail;-><init>()V

    .line 135
    .local v5, "transitDetail$$0":Lcom/akexorcist/googledirection/model/TransitDetail;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 136
    const/4 v3, 0x0

    .line 140
    .local v3, "timeInfo$$1":Lcom/akexorcist/googledirection/model/TimeInfo;
    :goto_0
    iput-object v3, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->headsign:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->stopNumber:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 145
    const/4 v1, 0x0

    .line 149
    .local v1, "stopPoint$$1":Lcom/akexorcist/googledirection/model/StopPoint;
    :goto_1
    iput-object v1, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 152
    const/4 v2, 0x0

    .line 156
    .local v2, "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    :goto_2
    iput-object v2, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->departureStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 159
    const/4 v4, 0x0

    .line 163
    .local v4, "timeInfo$$2":Lcom/akexorcist/googledirection/model/TimeInfo;
    :goto_3
    iput-object v4, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_4

    .line 166
    const/4 v0, 0x0

    .line 170
    .local v0, "line$$1":Lcom/akexorcist/googledirection/model/Line;
    :goto_4
    iput-object v0, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->line:Lcom/akexorcist/googledirection/model/Line;

    .line 171
    return-object v5

    .line 138
    .end local v0    # "line$$1":Lcom/akexorcist/googledirection/model/Line;
    .end local v1    # "stopPoint$$1":Lcom/akexorcist/googledirection/model/StopPoint;
    .end local v2    # "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    .end local v3    # "timeInfo$$1":Lcom/akexorcist/googledirection/model/TimeInfo;
    .end local v4    # "timeInfo$$2":Lcom/akexorcist/googledirection/model/TimeInfo;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;

    move-result-object v3

    .restart local v3    # "timeInfo$$1":Lcom/akexorcist/googledirection/model/TimeInfo;
    goto :goto_0

    .line 147
    :cond_1
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->readcom_akexorcist_googledirection_model_StopPoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint;

    move-result-object v1

    .restart local v1    # "stopPoint$$1":Lcom/akexorcist/googledirection/model/StopPoint;
    goto :goto_1

    .line 154
    :cond_2
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->readcom_akexorcist_googledirection_model_StopPoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint;

    move-result-object v2

    .restart local v2    # "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    goto :goto_2

    .line 161
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;

    move-result-object v4

    .restart local v4    # "timeInfo$$2":Lcom/akexorcist/googledirection/model/TimeInfo;
    goto :goto_3

    .line 168
    :cond_4
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->readcom_akexorcist_googledirection_model_Line(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Line;

    move-result-object v0

    .restart local v0    # "line$$1":Lcom/akexorcist/googledirection/model/Line;
    goto :goto_4
.end method

.method private readcom_akexorcist_googledirection_model_Vehicle(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Vehicle;
    .locals 2
    .param p1, "parcel$$10"    # Landroid/os/Parcel;

    .prologue
    .line 241
    new-instance v0, Lcom/akexorcist/googledirection/model/Vehicle;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Vehicle;-><init>()V

    .line 242
    .local v0, "vehicle$$0":Lcom/akexorcist/googledirection/model/Vehicle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->name:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->iconUrl:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->type:Ljava/lang/String;

    .line 245
    return-object v0
.end method

.method private writecom_akexorcist_googledirection_model_Agency(Lcom/akexorcist/googledirection/model/Agency;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "agency$$3"    # Lcom/akexorcist/googledirection/model/Agency;
    .param p2, "parcel$$19"    # Landroid/os/Parcel;
    .param p3, "flags$$7"    # I

    .prologue
    .line 398
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Agency;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Agency;->url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "coordination$$4"    # Lcom/akexorcist/googledirection/model/Coordination;
    .param p2, "parcel$$14"    # Landroid/os/Parcel;
    .param p3, "flags$$2"    # I

    .prologue
    .line 316
    iget-wide v0, p1, Lcom/akexorcist/googledirection/model/Coordination;->latitude:D

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 317
    iget-wide v0, p1, Lcom/akexorcist/googledirection/model/Coordination;->longitude:D

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 318
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "info$$3"    # Lcom/akexorcist/googledirection/model/Info;
    .param p2, "parcel$$13"    # Landroid/os/Parcel;
    .param p3, "flags$$1"    # I

    .prologue
    .line 311
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Info;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Info;->value:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Line(Lcom/akexorcist/googledirection/model/Line;Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "line$$2"    # Lcom/akexorcist/googledirection/model/Line;
    .param p2, "parcel$$18"    # Landroid/os/Parcel;
    .param p3, "flags$$6"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 372
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->color:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->shortName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->textColor:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 377
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    :cond_0
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    if-nez v1, :cond_3

    .line 390
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
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

    .line 381
    .local v0, "agency$$2":Lcom/akexorcist/googledirection/model/Agency;
    if-nez v0, :cond_2

    .line 382
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 384
    :cond_2
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->writecom_akexorcist_googledirection_model_Agency(Lcom/akexorcist/googledirection/model/Agency;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 392
    .end local v0    # "agency$$2":Lcom/akexorcist/googledirection/model/Agency;
    :cond_3
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->writecom_akexorcist_googledirection_model_Vehicle(Lcom/akexorcist/googledirection/model/Vehicle;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private writecom_akexorcist_googledirection_model_RoutePolyline(Lcom/akexorcist/googledirection/model/RoutePolyline;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "routePolyline$$2"    # Lcom/akexorcist/googledirection/model/RoutePolyline;
    .param p2, "parcel$$21"    # Landroid/os/Parcel;
    .param p3, "flags$$9"    # I

    .prologue
    .line 409
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/RoutePolyline;->rawPointList:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Step(Lcom/akexorcist/googledirection/model/Step;Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "step$$4"    # Lcom/akexorcist/googledirection/model/Step;
    .param p2, "parcel$$12"    # Landroid/os/Parcel;
    .param p3, "flags$$0"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 256
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->duration:Lcom/akexorcist/googledirection/model/Info;

    if-nez v1, :cond_1

    .line 257
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    :goto_0
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->htmlInstruction:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->distance:Lcom/akexorcist/googledirection/model/Info;

    if-nez v1, :cond_2

    .line 264
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    :goto_1
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v1, :cond_3

    .line 270
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    :goto_2
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->transitDetail:Lcom/akexorcist/googledirection/model/TransitDetail;

    if-nez v1, :cond_4

    .line 276
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    :goto_3
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->stepList:Ljava/util/List;

    if-nez v1, :cond_5

    .line 282
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    :cond_0
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v1, :cond_7

    .line 295
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    :goto_4
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->maneuver:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->polyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    if-nez v1, :cond_8

    .line 302
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    :goto_5
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->travelMode:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    return-void

    .line 259
    :cond_1
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->duration:Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->distance:Lcom/akexorcist/googledirection/model/Info;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->writecom_akexorcist_googledirection_model_Info(Lcom/akexorcist/googledirection/model/Info;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 272
    :cond_3
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->startLocation:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_2

    .line 278
    :cond_4
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->transitDetail:Lcom/akexorcist/googledirection/model/TransitDetail;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->writecom_akexorcist_googledirection_model_TransitDetail(Lcom/akexorcist/googledirection/model/TransitDetail;Landroid/os/Parcel;I)V

    goto :goto_3

    .line 284
    :cond_5
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->stepList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
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

    .line 286
    .local v0, "step$$5":Lcom/akexorcist/googledirection/model/Step;
    if-nez v0, :cond_6

    .line 287
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 289
    :cond_6
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->writecom_akexorcist_googledirection_model_Step(Lcom/akexorcist/googledirection/model/Step;Landroid/os/Parcel;I)V

    goto :goto_6

    .line 297
    .end local v0    # "step$$5":Lcom/akexorcist/googledirection/model/Step;
    :cond_7
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->endLocation:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_4

    .line 304
    :cond_8
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Step;->polyline:Lcom/akexorcist/googledirection/model/RoutePolyline;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->writecom_akexorcist_googledirection_model_RoutePolyline(Lcom/akexorcist/googledirection/model/RoutePolyline;Landroid/os/Parcel;I)V

    goto :goto_5
.end method

.method private writecom_akexorcist_googledirection_model_StopPoint(Lcom/akexorcist/googledirection/model/StopPoint;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "stopPoint$$3"    # Lcom/akexorcist/googledirection/model/StopPoint;
    .param p2, "parcel$$17"    # Landroid/os/Parcel;
    .param p3, "flags$$5"    # I

    .prologue
    .line 362
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v0, :cond_0

    .line 364
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    :goto_0
    return-void

    .line 366
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "timeInfo$$3"    # Lcom/akexorcist/googledirection/model/TimeInfo;
    .param p2, "parcel$$16"    # Landroid/os/Parcel;
    .param p3, "flags$$4"    # I

    .prologue
    .line 356
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TimeInfo;->timeZone:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TimeInfo;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TimeInfo;->value:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_TransitDetail(Lcom/akexorcist/googledirection/model/TransitDetail;Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "transitDetail$$2"    # Lcom/akexorcist/googledirection/model/TransitDetail;
    .param p2, "parcel$$15"    # Landroid/os/Parcel;
    .param p3, "flags$$3"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 321
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    :goto_0
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->headsign:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->stopNumber:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    if-nez v0, :cond_1

    .line 330
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    :goto_1
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    if-nez v0, :cond_2

    .line 336
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    :goto_2
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    if-nez v0, :cond_3

    .line 342
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    :goto_3
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->line:Lcom/akexorcist/googledirection/model/Line;

    if-nez v0, :cond_4

    .line 348
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    :goto_4
    return-void

    .line 324
    :cond_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->writecom_akexorcist_googledirection_model_StopPoint(Lcom/akexorcist/googledirection/model/StopPoint;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 338
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->writecom_akexorcist_googledirection_model_StopPoint(Lcom/akexorcist/googledirection/model/StopPoint;Landroid/os/Parcel;I)V

    goto :goto_2

    .line 344
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V

    goto :goto_3

    .line 350
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->line:Lcom/akexorcist/googledirection/model/Line;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->writecom_akexorcist_googledirection_model_Line(Lcom/akexorcist/googledirection/model/Line;Landroid/os/Parcel;I)V

    goto :goto_4
.end method

.method private writecom_akexorcist_googledirection_model_Vehicle(Lcom/akexorcist/googledirection/model/Vehicle;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "vehicle$$2"    # Lcom/akexorcist/googledirection/model/Vehicle;
    .param p2, "parcel$$20"    # Landroid/os/Parcel;
    .param p3, "flags$$8"    # I

    .prologue
    .line 403
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 404
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->iconUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->type:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/akexorcist/googledirection/model/Step;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->step$$0:Lcom/akexorcist/googledirection/model/Step;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->getParcel()Lcom/akexorcist/googledirection/model/Step;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel$$1"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->step$$0:Lcom/akexorcist/googledirection/model/Step;

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
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->step$$0:Lcom/akexorcist/googledirection/model/Step;

    invoke-direct {p0, v0, p1, p2}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;->writecom_akexorcist_googledirection_model_Step(Lcom/akexorcist/googledirection/model/Step;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
