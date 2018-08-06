.class public Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;
.super Ljava/lang/Object;
.source "TransitDetail$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lorg/parceler/ParcelWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable$Creator$$14;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lorg/parceler/ParcelWrapper",
        "<",
        "Lcom/akexorcist/googledirection/model/TransitDetail;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable$Creator$$14;


# instance fields
.field private transitDetail$$0:Lcom/akexorcist/googledirection/model/TransitDetail;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable$Creator$$14;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable$Creator$$14;-><init>()V

    sput-object v0, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->CREATOR:Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable$Creator$$14;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel$$0"    # Landroid/os/Parcel;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 31
    .local v0, "transitDetail$$2":Lcom/akexorcist/googledirection/model/TransitDetail;
    :goto_0
    iput-object v0, p0, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->transitDetail$$0:Lcom/akexorcist/googledirection/model/TransitDetail;

    .line 32
    return-void

    .line 29
    .end local v0    # "transitDetail$$2":Lcom/akexorcist/googledirection/model/TransitDetail;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->readcom_akexorcist_googledirection_model_TransitDetail(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TransitDetail;

    move-result-object v0

    .restart local v0    # "transitDetail$$2":Lcom/akexorcist/googledirection/model/TransitDetail;
    goto :goto_0
.end method

.method public constructor <init>(Lcom/akexorcist/googledirection/model/TransitDetail;)V
    .locals 0
    .param p1, "transitDetail$$4"    # Lcom/akexorcist/googledirection/model/TransitDetail;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->transitDetail$$0:Lcom/akexorcist/googledirection/model/TransitDetail;

    .line 36
    return-void
.end method

.method private readcom_akexorcist_googledirection_model_Agency(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Agency;
    .locals 2
    .param p1, "parcel$$7"    # Landroid/os/Parcel;

    .prologue
    .line 158
    new-instance v0, Lcom/akexorcist/googledirection/model/Agency;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Agency;-><init>()V

    .line 159
    .local v0, "agency$$0":Lcom/akexorcist/googledirection/model/Agency;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Agency;->name:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Agency;->url:Ljava/lang/String;

    .line 161
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;
    .locals 4
    .param p1, "parcel$$5"    # Landroid/os/Parcel;

    .prologue
    .line 116
    new-instance v0, Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Coordination;-><init>()V

    .line 117
    .local v0, "coordination$$0":Lcom/akexorcist/googledirection/model/Coordination;
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/akexorcist/googledirection/model/Coordination;->latitude:D

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/akexorcist/googledirection/model/Coordination;->longitude:D

    .line 119
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Line(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Line;
    .locals 8
    .param p1, "parcel$$6"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, -0x1

    .line 124
    new-instance v3, Lcom/akexorcist/googledirection/model/Line;

    invoke-direct {v3}, Lcom/akexorcist/googledirection/model/Line;-><init>()V

    .line 125
    .local v3, "line$$0":Lcom/akexorcist/googledirection/model/Line;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->color:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->name:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->shortName:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->textColor:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    .local v1, "int$$0":I
    if-gez v1, :cond_1

    .line 132
    const/4 v4, 0x0

    .line 145
    .local v4, "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    :cond_0
    iput-object v4, v3, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 148
    const/4 v5, 0x0

    .line 152
    .local v5, "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    :goto_0
    iput-object v5, v3, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    .line 153
    return-object v3

    .line 134
    .end local v4    # "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    .end local v5    # "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .restart local v4    # "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    const/4 v2, 0x0

    .local v2, "int$$1":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 138
    const/4 v0, 0x0

    .line 142
    .local v0, "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    :goto_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 140
    .end local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    :cond_2
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->readcom_akexorcist_googledirection_model_Agency(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Agency;

    move-result-object v0

    .restart local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    goto :goto_2

    .line 150
    .end local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    .end local v2    # "int$$1":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->readcom_akexorcist_googledirection_model_Vehicle(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Vehicle;

    move-result-object v5

    .restart local v5    # "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    goto :goto_0
.end method

.method private readcom_akexorcist_googledirection_model_StopPoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint;
    .locals 4
    .param p1, "parcel$$4"    # Landroid/os/Parcel;

    .prologue
    .line 102
    new-instance v1, Lcom/akexorcist/googledirection/model/StopPoint;

    invoke-direct {v1}, Lcom/akexorcist/googledirection/model/StopPoint;-><init>()V

    .line 103
    .local v1, "stopPoint$$0":Lcom/akexorcist/googledirection/model/StopPoint;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/akexorcist/googledirection/model/StopPoint;->name:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 110
    .local v0, "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_0
    iput-object v0, v1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    .line 111
    return-object v1

    .line 108
    .end local v0    # "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v0

    .restart local v0    # "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_0
.end method

.method private readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;
    .locals 2
    .param p1, "parcel$$3"    # Landroid/os/Parcel;

    .prologue
    .line 93
    new-instance v0, Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/TimeInfo;-><init>()V

    .line 94
    .local v0, "timeInfo$$0":Lcom/akexorcist/googledirection/model/TimeInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/TimeInfo;->timeZone:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/TimeInfo;->text:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/TimeInfo;->value:Ljava/lang/String;

    .line 97
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_TransitDetail(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TransitDetail;
    .locals 8
    .param p1, "parcel$$2"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, -0x1

    .line 50
    new-instance v5, Lcom/akexorcist/googledirection/model/TransitDetail;

    invoke-direct {v5}, Lcom/akexorcist/googledirection/model/TransitDetail;-><init>()V

    .line 52
    .local v5, "transitDetail$$1":Lcom/akexorcist/googledirection/model/TransitDetail;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 53
    const/4 v3, 0x0

    .line 57
    .local v3, "timeInfo$$1":Lcom/akexorcist/googledirection/model/TimeInfo;
    :goto_0
    iput-object v3, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->headsign:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->stopNumber:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 62
    const/4 v1, 0x0

    .line 66
    .local v1, "stopPoint$$1":Lcom/akexorcist/googledirection/model/StopPoint;
    :goto_1
    iput-object v1, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 69
    const/4 v2, 0x0

    .line 73
    .local v2, "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    :goto_2
    iput-object v2, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->departureStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 76
    const/4 v4, 0x0

    .line 80
    .local v4, "timeInfo$$2":Lcom/akexorcist/googledirection/model/TimeInfo;
    :goto_3
    iput-object v4, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_4

    .line 83
    const/4 v0, 0x0

    .line 87
    .local v0, "line$$1":Lcom/akexorcist/googledirection/model/Line;
    :goto_4
    iput-object v0, v5, Lcom/akexorcist/googledirection/model/TransitDetail;->line:Lcom/akexorcist/googledirection/model/Line;

    .line 88
    return-object v5

    .line 55
    .end local v0    # "line$$1":Lcom/akexorcist/googledirection/model/Line;
    .end local v1    # "stopPoint$$1":Lcom/akexorcist/googledirection/model/StopPoint;
    .end local v2    # "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    .end local v3    # "timeInfo$$1":Lcom/akexorcist/googledirection/model/TimeInfo;
    .end local v4    # "timeInfo$$2":Lcom/akexorcist/googledirection/model/TimeInfo;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;

    move-result-object v3

    .restart local v3    # "timeInfo$$1":Lcom/akexorcist/googledirection/model/TimeInfo;
    goto :goto_0

    .line 64
    :cond_1
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->readcom_akexorcist_googledirection_model_StopPoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint;

    move-result-object v1

    .restart local v1    # "stopPoint$$1":Lcom/akexorcist/googledirection/model/StopPoint;
    goto :goto_1

    .line 71
    :cond_2
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->readcom_akexorcist_googledirection_model_StopPoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint;

    move-result-object v2

    .restart local v2    # "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    goto :goto_2

    .line 78
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->readcom_akexorcist_googledirection_model_TimeInfo(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/TimeInfo;

    move-result-object v4

    .restart local v4    # "timeInfo$$2":Lcom/akexorcist/googledirection/model/TimeInfo;
    goto :goto_3

    .line 85
    :cond_4
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->readcom_akexorcist_googledirection_model_Line(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Line;

    move-result-object v0

    .restart local v0    # "line$$1":Lcom/akexorcist/googledirection/model/Line;
    goto :goto_4
.end method

.method private readcom_akexorcist_googledirection_model_Vehicle(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Vehicle;
    .locals 2
    .param p1, "parcel$$8"    # Landroid/os/Parcel;

    .prologue
    .line 166
    new-instance v0, Lcom/akexorcist/googledirection/model/Vehicle;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Vehicle;-><init>()V

    .line 167
    .local v0, "vehicle$$0":Lcom/akexorcist/googledirection/model/Vehicle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->name:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->iconUrl:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->type:Ljava/lang/String;

    .line 170
    return-object v0
.end method

.method private writecom_akexorcist_googledirection_model_Agency(Lcom/akexorcist/googledirection/model/Agency;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "agency$$3"    # Lcom/akexorcist/googledirection/model/Agency;
    .param p2, "parcel$$14"    # Landroid/os/Parcel;
    .param p3, "flags$$5"    # I

    .prologue
    .line 256
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Agency;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Agency;->url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "coordination$$2"    # Lcom/akexorcist/googledirection/model/Coordination;
    .param p2, "parcel$$12"    # Landroid/os/Parcel;
    .param p3, "flags$$3"    # I

    .prologue
    .line 225
    iget-wide v0, p1, Lcom/akexorcist/googledirection/model/Coordination;->latitude:D

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 226
    iget-wide v0, p1, Lcom/akexorcist/googledirection/model/Coordination;->longitude:D

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 227
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Line(Lcom/akexorcist/googledirection/model/Line;Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "line$$2"    # Lcom/akexorcist/googledirection/model/Line;
    .param p2, "parcel$$13"    # Landroid/os/Parcel;
    .param p3, "flags$$4"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 230
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->color:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->shortName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->textColor:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 235
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    :cond_0
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    if-nez v1, :cond_3

    .line 248
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
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

    .line 239
    .local v0, "agency$$2":Lcom/akexorcist/googledirection/model/Agency;
    if-nez v0, :cond_2

    .line 240
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 242
    :cond_2
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->writecom_akexorcist_googledirection_model_Agency(Lcom/akexorcist/googledirection/model/Agency;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 250
    .end local v0    # "agency$$2":Lcom/akexorcist/googledirection/model/Agency;
    :cond_3
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->writecom_akexorcist_googledirection_model_Vehicle(Lcom/akexorcist/googledirection/model/Vehicle;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private writecom_akexorcist_googledirection_model_StopPoint(Lcom/akexorcist/googledirection/model/StopPoint;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "stopPoint$$3"    # Lcom/akexorcist/googledirection/model/StopPoint;
    .param p2, "parcel$$11"    # Landroid/os/Parcel;
    .param p3, "flags$$2"    # I

    .prologue
    .line 215
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v0, :cond_0

    .line 217
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "timeInfo$$3"    # Lcom/akexorcist/googledirection/model/TimeInfo;
    .param p2, "parcel$$10"    # Landroid/os/Parcel;
    .param p3, "flags$$1"    # I

    .prologue
    .line 209
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TimeInfo;->timeZone:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TimeInfo;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TimeInfo;->value:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_TransitDetail(Lcom/akexorcist/googledirection/model/TransitDetail;Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "transitDetail$$3"    # Lcom/akexorcist/googledirection/model/TransitDetail;
    .param p2, "parcel$$9"    # Landroid/os/Parcel;
    .param p3, "flags$$0"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 174
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    :goto_0
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->headsign:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->stopNumber:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    :goto_1
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    if-nez v0, :cond_2

    .line 189
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    :goto_2
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    if-nez v0, :cond_3

    .line 195
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    :goto_3
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->line:Lcom/akexorcist/googledirection/model/Line;

    if-nez v0, :cond_4

    .line 201
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    :goto_4
    return-void

    .line 177
    :cond_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->writecom_akexorcist_googledirection_model_StopPoint(Lcom/akexorcist/googledirection/model/StopPoint;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 191
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->departureStopPoint:Lcom/akexorcist/googledirection/model/StopPoint;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->writecom_akexorcist_googledirection_model_StopPoint(Lcom/akexorcist/googledirection/model/StopPoint;Landroid/os/Parcel;I)V

    goto :goto_2

    .line 197
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->arrivalTime:Lcom/akexorcist/googledirection/model/TimeInfo;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->writecom_akexorcist_googledirection_model_TimeInfo(Lcom/akexorcist/googledirection/model/TimeInfo;Landroid/os/Parcel;I)V

    goto :goto_3

    .line 203
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/TransitDetail;->line:Lcom/akexorcist/googledirection/model/Line;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->writecom_akexorcist_googledirection_model_Line(Lcom/akexorcist/googledirection/model/Line;Landroid/os/Parcel;I)V

    goto :goto_4
.end method

.method private writecom_akexorcist_googledirection_model_Vehicle(Lcom/akexorcist/googledirection/model/Vehicle;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "vehicle$$2"    # Lcom/akexorcist/googledirection/model/Vehicle;
    .param p2, "parcel$$15"    # Landroid/os/Parcel;
    .param p3, "flags$$6"    # I

    .prologue
    .line 261
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->iconUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->type:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/akexorcist/googledirection/model/TransitDetail;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->transitDetail$$0:Lcom/akexorcist/googledirection/model/TransitDetail;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->getParcel()Lcom/akexorcist/googledirection/model/TransitDetail;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel$$1"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->transitDetail$$0:Lcom/akexorcist/googledirection/model/TransitDetail;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->transitDetail$$0:Lcom/akexorcist/googledirection/model/TransitDetail;

    invoke-direct {p0, v0, p1, p2}, Lcom/akexorcist/googledirection/model/TransitDetail$$Parcelable;->writecom_akexorcist_googledirection_model_TransitDetail(Lcom/akexorcist/googledirection/model/TransitDetail;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
