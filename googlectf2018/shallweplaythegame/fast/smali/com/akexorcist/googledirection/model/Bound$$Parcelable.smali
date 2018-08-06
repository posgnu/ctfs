.class public Lcom/akexorcist/googledirection/model/Bound$$Parcelable;
.super Ljava/lang/Object;
.source "Bound$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lorg/parceler/ParcelWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akexorcist/googledirection/model/Bound$$Parcelable$Creator$$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lorg/parceler/ParcelWrapper",
        "<",
        "Lcom/akexorcist/googledirection/model/Bound;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/akexorcist/googledirection/model/Bound$$Parcelable$Creator$$1;


# instance fields
.field private bound$$0:Lcom/akexorcist/googledirection/model/Bound;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/akexorcist/googledirection/model/Bound$$Parcelable$Creator$$1;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Bound$$Parcelable$Creator$$1;-><init>()V

    sput-object v0, Lcom/akexorcist/googledirection/model/Bound$$Parcelable;->CREATOR:Lcom/akexorcist/googledirection/model/Bound$$Parcelable$Creator$$1;

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
    .local v0, "bound$$2":Lcom/akexorcist/googledirection/model/Bound;
    :goto_0
    iput-object v0, p0, Lcom/akexorcist/googledirection/model/Bound$$Parcelable;->bound$$0:Lcom/akexorcist/googledirection/model/Bound;

    .line 30
    return-void

    .line 27
    .end local v0    # "bound$$2":Lcom/akexorcist/googledirection/model/Bound;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Bound$$Parcelable;->readcom_akexorcist_googledirection_model_Bound(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Bound;

    move-result-object v0

    .restart local v0    # "bound$$2":Lcom/akexorcist/googledirection/model/Bound;
    goto :goto_0
.end method

.method public constructor <init>(Lcom/akexorcist/googledirection/model/Bound;)V
    .locals 0
    .param p1, "bound$$4"    # Lcom/akexorcist/googledirection/model/Bound;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/akexorcist/googledirection/model/Bound$$Parcelable;->bound$$0:Lcom/akexorcist/googledirection/model/Bound;

    .line 34
    return-void
.end method

.method private readcom_akexorcist_googledirection_model_Bound(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Bound;
    .locals 5
    .param p1, "parcel$$2"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, -0x1

    .line 48
    new-instance v0, Lcom/akexorcist/googledirection/model/Bound;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Bound;-><init>()V

    .line 50
    .local v0, "bound$$1":Lcom/akexorcist/googledirection/model/Bound;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 55
    .local v1, "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_0
    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Bound;->southwest:Lcom/akexorcist/googledirection/model/Coordination;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 58
    const/4 v2, 0x0

    .line 62
    .local v2, "coordination$$2":Lcom/akexorcist/googledirection/model/Coordination;
    :goto_1
    iput-object v2, v0, Lcom/akexorcist/googledirection/model/Bound;->northeast:Lcom/akexorcist/googledirection/model/Coordination;

    .line 63
    return-object v0

    .line 53
    .end local v1    # "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    .end local v2    # "coordination$$2":Lcom/akexorcist/googledirection/model/Coordination;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Bound$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v1

    .restart local v1    # "coordination$$1":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_0

    .line 60
    :cond_1
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Bound$$Parcelable;->readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;

    move-result-object v2

    .restart local v2    # "coordination$$2":Lcom/akexorcist/googledirection/model/Coordination;
    goto :goto_1
.end method

.method private readcom_akexorcist_googledirection_model_Coordination(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Coordination;
    .locals 4
    .param p1, "parcel$$3"    # Landroid/os/Parcel;

    .prologue
    .line 68
    new-instance v0, Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Coordination;-><init>()V

    .line 69
    .local v0, "coordination$$0":Lcom/akexorcist/googledirection/model/Coordination;
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/akexorcist/googledirection/model/Coordination;->latitude:D

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/akexorcist/googledirection/model/Coordination;->longitude:D

    .line 71
    return-object v0
.end method

.method private writecom_akexorcist_googledirection_model_Bound(Lcom/akexorcist/googledirection/model/Bound;Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "bound$$3"    # Lcom/akexorcist/googledirection/model/Bound;
    .param p2, "parcel$$4"    # Landroid/os/Parcel;
    .param p3, "flags$$0"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 75
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Bound;->southwest:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    :goto_0
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Bound;->northeast:Lcom/akexorcist/googledirection/model/Coordination;

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    :goto_1
    return-void

    .line 78
    :cond_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Bound;->southwest:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Bound$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Bound;->northeast:Lcom/akexorcist/googledirection/model/Coordination;

    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Bound$$Parcelable;->writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V

    goto :goto_1
.end method

.method private writecom_akexorcist_googledirection_model_Coordination(Lcom/akexorcist/googledirection/model/Coordination;Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "coordination$$3"    # Lcom/akexorcist/googledirection/model/Coordination;
    .param p2, "parcel$$5"    # Landroid/os/Parcel;
    .param p3, "flags$$1"    # I

    .prologue
    .line 90
    iget-wide v0, p1, Lcom/akexorcist/googledirection/model/Coordination;->latitude:D

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 91
    iget-wide v0, p1, Lcom/akexorcist/googledirection/model/Coordination;->longitude:D

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 92
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/akexorcist/googledirection/model/Bound;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Bound$$Parcelable;->bound$$0:Lcom/akexorcist/googledirection/model/Bound;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/akexorcist/googledirection/model/Bound$$Parcelable;->getParcel()Lcom/akexorcist/googledirection/model/Bound;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel$$1"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Bound$$Parcelable;->bound$$0:Lcom/akexorcist/googledirection/model/Bound;

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
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Bound$$Parcelable;->bound$$0:Lcom/akexorcist/googledirection/model/Bound;

    invoke-direct {p0, v0, p1, p2}, Lcom/akexorcist/googledirection/model/Bound$$Parcelable;->writecom_akexorcist_googledirection_model_Bound(Lcom/akexorcist/googledirection/model/Bound;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
