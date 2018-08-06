.class public Lcom/akexorcist/googledirection/model/GeocodedWaypoint$$Parcelable;
.super Ljava/lang/Object;
.source "GeocodedWaypoint$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lorg/parceler/ParcelWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akexorcist/googledirection/model/GeocodedWaypoint$$Parcelable$Creator$$5;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lorg/parceler/ParcelWrapper",
        "<",
        "Lcom/akexorcist/googledirection/model/GeocodedWaypoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/akexorcist/googledirection/model/GeocodedWaypoint$$Parcelable$Creator$$5;


# instance fields
.field private geocodedWaypoint$$0:Lcom/akexorcist/googledirection/model/GeocodedWaypoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/akexorcist/googledirection/model/GeocodedWaypoint$$Parcelable$Creator$$5;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/GeocodedWaypoint$$Parcelable$Creator$$5;-><init>()V

    sput-object v0, Lcom/akexorcist/googledirection/model/GeocodedWaypoint$$Parcelable;->CREATOR:Lcom/akexorcist/googledirection/model/GeocodedWaypoint$$Parcelable$Creator$$5;

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
    .local v0, "geocodedWaypoint$$2":Lcom/akexorcist/googledirection/model/GeocodedWaypoint;
    :goto_0
    iput-object v0, p0, Lcom/akexorcist/googledirection/model/GeocodedWaypoint$$Parcelable;->geocodedWaypoint$$0:Lcom/akexorcist/googledirection/model/GeocodedWaypoint;

    .line 32
    return-void

    .line 29
    .end local v0    # "geocodedWaypoint$$2":Lcom/akexorcist/googledirection/model/GeocodedWaypoint;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/GeocodedWaypoint$$Parcelable;->readcom_akexorcist_googledirection_model_GeocodedWaypoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/GeocodedWaypoint;

    move-result-object v0

    .restart local v0    # "geocodedWaypoint$$2":Lcom/akexorcist/googledirection/model/GeocodedWaypoint;
    goto :goto_0
.end method

.method public constructor <init>(Lcom/akexorcist/googledirection/model/GeocodedWaypoint;)V
    .locals 0
    .param p1, "geocodedWaypoint$$4"    # Lcom/akexorcist/googledirection/model/GeocodedWaypoint;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/akexorcist/googledirection/model/GeocodedWaypoint$$Parcelable;->geocodedWaypoint$$0:Lcom/akexorcist/googledirection/model/GeocodedWaypoint;

    .line 36
    return-void
.end method

.method private readcom_akexorcist_googledirection_model_GeocodedWaypoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/GeocodedWaypoint;
    .locals 5
    .param p1, "parcel$$2"    # Landroid/os/Parcel;

    .prologue
    .line 50
    new-instance v0, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;-><init>()V

    .line 51
    .local v0, "geocodedWaypoint$$1":Lcom/akexorcist/googledirection/model/GeocodedWaypoint;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, "int$$0":I
    if-gez v1, :cond_1

    .line 54
    const/4 v3, 0x0

    .line 61
    .local v3, "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iput-object v3, v0, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;->types:Ljava/util/List;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;->placeId:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;->status:Ljava/lang/String;

    .line 64
    return-object v0

    .line 56
    .end local v3    # "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .restart local v3    # "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "int$$1":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private writecom_akexorcist_googledirection_model_GeocodedWaypoint(Lcom/akexorcist/googledirection/model/GeocodedWaypoint;Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "geocodedWaypoint$$3"    # Lcom/akexorcist/googledirection/model/GeocodedWaypoint;
    .param p2, "parcel$$3"    # Landroid/os/Parcel;
    .param p3, "flags$$0"    # I

    .prologue
    .line 68
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;->types:Ljava/util/List;

    if-nez v1, :cond_1

    .line 69
    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    :cond_0
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;->placeId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;->status:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return-void

    .line 71
    :cond_1
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/GeocodedWaypoint;->types:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
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

    .line 73
    .local v0, "string$$0":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/akexorcist/googledirection/model/GeocodedWaypoint;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/GeocodedWaypoint$$Parcelable;->geocodedWaypoint$$0:Lcom/akexorcist/googledirection/model/GeocodedWaypoint;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/akexorcist/googledirection/model/GeocodedWaypoint$$Parcelable;->getParcel()Lcom/akexorcist/googledirection/model/GeocodedWaypoint;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel$$1"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/GeocodedWaypoint$$Parcelable;->geocodedWaypoint$$0:Lcom/akexorcist/googledirection/model/GeocodedWaypoint;

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
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/GeocodedWaypoint$$Parcelable;->geocodedWaypoint$$0:Lcom/akexorcist/googledirection/model/GeocodedWaypoint;

    invoke-direct {p0, v0, p1, p2}, Lcom/akexorcist/googledirection/model/GeocodedWaypoint$$Parcelable;->writecom_akexorcist_googledirection_model_GeocodedWaypoint(Lcom/akexorcist/googledirection/model/GeocodedWaypoint;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
