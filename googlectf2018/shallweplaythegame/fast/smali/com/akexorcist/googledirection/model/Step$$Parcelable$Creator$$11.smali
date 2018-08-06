.class public final Lcom/akexorcist/googledirection/model/Step$$Parcelable$Creator$$11;
.super Ljava/lang/Object;
.source "Step$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akexorcist/googledirection/model/Step$$Parcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator$$11"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/akexorcist/googledirection/model/Step$$Parcelable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Step$$Parcelable;
    .locals 1
    .param p1, "parcel$$22"    # Landroid/os/Parcel;

    .prologue
    .line 429
    new-instance v0, Lcom/akexorcist/googledirection/model/Step$$Parcelable;

    invoke-direct {v0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable$Creator$$11;->createFromParcel(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Step$$Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/akexorcist/googledirection/model/Step$$Parcelable;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 434
    new-array v0, p1, [Lcom/akexorcist/googledirection/model/Step$$Parcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lcom/akexorcist/googledirection/model/Step$$Parcelable$Creator$$11;->newArray(I)[Lcom/akexorcist/googledirection/model/Step$$Parcelable;

    move-result-object v0

    return-object v0
.end method
