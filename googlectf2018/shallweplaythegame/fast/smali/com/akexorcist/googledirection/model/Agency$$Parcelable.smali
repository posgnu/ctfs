.class public Lcom/akexorcist/googledirection/model/Agency$$Parcelable;
.super Ljava/lang/Object;
.source "Agency$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lorg/parceler/ParcelWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akexorcist/googledirection/model/Agency$$Parcelable$Creator$$0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lorg/parceler/ParcelWrapper",
        "<",
        "Lcom/akexorcist/googledirection/model/Agency;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/akexorcist/googledirection/model/Agency$$Parcelable$Creator$$0;


# instance fields
.field private agency$$0:Lcom/akexorcist/googledirection/model/Agency;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/akexorcist/googledirection/model/Agency$$Parcelable$Creator$$0;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Agency$$Parcelable$Creator$$0;-><init>()V

    sput-object v0, Lcom/akexorcist/googledirection/model/Agency$$Parcelable;->CREATOR:Lcom/akexorcist/googledirection/model/Agency$$Parcelable$Creator$$0;

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
    .local v0, "agency$$2":Lcom/akexorcist/googledirection/model/Agency;
    :goto_0
    iput-object v0, p0, Lcom/akexorcist/googledirection/model/Agency$$Parcelable;->agency$$0:Lcom/akexorcist/googledirection/model/Agency;

    .line 30
    return-void

    .line 27
    .end local v0    # "agency$$2":Lcom/akexorcist/googledirection/model/Agency;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Agency$$Parcelable;->readcom_akexorcist_googledirection_model_Agency(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Agency;

    move-result-object v0

    .restart local v0    # "agency$$2":Lcom/akexorcist/googledirection/model/Agency;
    goto :goto_0
.end method

.method public constructor <init>(Lcom/akexorcist/googledirection/model/Agency;)V
    .locals 0
    .param p1, "agency$$4"    # Lcom/akexorcist/googledirection/model/Agency;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/akexorcist/googledirection/model/Agency$$Parcelable;->agency$$0:Lcom/akexorcist/googledirection/model/Agency;

    .line 34
    return-void
.end method

.method private readcom_akexorcist_googledirection_model_Agency(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Agency;
    .locals 2
    .param p1, "parcel$$2"    # Landroid/os/Parcel;

    .prologue
    .line 48
    new-instance v0, Lcom/akexorcist/googledirection/model/Agency;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Agency;-><init>()V

    .line 49
    .local v0, "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Agency;->name:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Agency;->url:Ljava/lang/String;

    .line 51
    return-object v0
.end method

.method private writecom_akexorcist_googledirection_model_Agency(Lcom/akexorcist/googledirection/model/Agency;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "agency$$3"    # Lcom/akexorcist/googledirection/model/Agency;
    .param p2, "parcel$$3"    # Landroid/os/Parcel;
    .param p3, "flags$$0"    # I

    .prologue
    .line 55
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Agency;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Agency;->url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/akexorcist/googledirection/model/Agency;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Agency$$Parcelable;->agency$$0:Lcom/akexorcist/googledirection/model/Agency;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/akexorcist/googledirection/model/Agency$$Parcelable;->getParcel()Lcom/akexorcist/googledirection/model/Agency;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel$$1"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Agency$$Parcelable;->agency$$0:Lcom/akexorcist/googledirection/model/Agency;

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
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Agency$$Parcelable;->agency$$0:Lcom/akexorcist/googledirection/model/Agency;

    invoke-direct {p0, v0, p1, p2}, Lcom/akexorcist/googledirection/model/Agency$$Parcelable;->writecom_akexorcist_googledirection_model_Agency(Lcom/akexorcist/googledirection/model/Agency;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
