.class public Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;
.super Ljava/lang/Object;
.source "StopPoint$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lorg/parceler/ParcelWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable$Creator$$12;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lorg/parceler/ParcelWrapper",
        "<",
        "Lcom/akexorcist/googledirection/model/StopPoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable$Creator$$12;


# instance fields
.field private stopPoint$$0:Lcom/akexorcist/googledirection/model/StopPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable$Creator$$12;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable$Creator$$12;-><init>()V

    sput-object v0, Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;->CREATOR:Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable$Creator$$12;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel$$0"    # Landroid/os/Parcel;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 29
    .local v0, "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    :goto_0
    iput-object v0, p0, Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;->stopPoint$$0:Lcom/akexorcist/googledirection/model/StopPoint;

    .line 30
    return-void

    .line 27
    .end local v0    # "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;->readcom_akexorcist_googledirection_model_StopPoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint;

    move-result-object v0

    .restart local v0    # "stopPoint$$2":Lcom/akexorcist/googledirection/model/StopPoint;
    goto :goto_0
.end method

.method public constructor <init>(Lcom/akexorcist/googledirection/model/StopPoint;)V
    .locals 0
    .param p1, "stopPoint$$4"    # Lcom/akexorcist/googledirection/model/StopPoint;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;->stopPoint$$0:Lcom/akexorcist/googledirection/model/StopPoint;

    .line 34
    return-void
.end method

.method private readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;
    .locals 4
    .param p1, "parcel$$3"    # Landroid/os/Parcel;

    .prologue
    .line 62
    new-instance v0, Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Coordination;-><init>()V

    .line 63
    .local v0, "coordination$$0":Lcom/akexorcist/googledirection/model/Coordination;
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/akexorcist/googledirection/model/Coordination;->latitude:D

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/akexorcist/googledirection/model/Coordination;->longitude:D

    .line 65
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_StopPoint(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint;
    .locals 4
    .param p1, "parcel$$2"    # Landroid/os/Parcel;

    .prologue
    .line 48
    new-instance v1, Lcom/akexorcist/googledirection/model/StopPoint;

    invoke-direct {v1}, Lcom/akexorcist/googledirection/model/StopPoint;-><init>()V

    .line 49
    .local v1, "stopPoint$$1":Lcom/akexorcist/googledirection/model/StopPoint;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/akexorcist/googledirection/model/StopPoint;->name:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 56
    .local v0, "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_0
    iput-object v0, v1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    .line 57
    return-object v1

    .line 54
    .end local v0    # "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v0

    .restart local v0    # "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_0
.end method

.method private writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "coordination$$2"    # Lcom/akexorcist/googledirection/model/Coordination;
    .param p2, "parcel$$5"    # Landroid/os/Parcel;
    .param p3, "flags$$1"    # I

    .prologue
    .line 79
    iget-wide v0, p1, Lcom/akexorcist/googledirection/model/Coordination;->latitude:D

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 80
    iget-wide v0, p1, Lcom/akexorcist/googledirection/model/Coordination;->longitude:D

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 81
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_StopPoint(Lcom/akexorcist/googledirection/model/StopPoint;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "stopPoint$$3"    # Lcom/akexorcist/googledirection/model/StopPoint;
    .param p2, "parcel$$4"    # Landroid/os/Parcel;
    .param p3, "flags$$0"    # I

    .prologue
    .line 69
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v0, :cond_0

    .line 71
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/StopPoint;->location:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/akexorcist/googledirection/model/StopPoint;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;->stopPoint$$0:Lcom/akexorcist/googledirection/model/StopPoint;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;->getParcel()Lcom/akexorcist/googledirection/model/StopPoint;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel$$1"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;->stopPoint$$0:Lcom/akexorcist/googledirection/model/StopPoint;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;->stopPoint$$0:Lcom/akexorcist/googledirection/model/StopPoint;

    invoke-direct {p0, v0, p1, p2}, Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;->writecom_akexorcist_googledirection_model_StopPoint(Lcom/akexorcist/googledirection/model/StopPoint;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
