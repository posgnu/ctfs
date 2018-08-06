.class public final Lcom/akexorcist/googledirection/model/Agency$$Parcelable$Creator$$0;
.super Ljava/lang/Object;
.source "Agency$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akexorcist/googledirection/model/Agency$$Parcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator$$0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/akexorcist/googledirection/model/Agency$$Parcelable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Agency$$Parcelable;
    .locals 1
    .param p1, "parcel$$4"    # Landroid/os/Parcel;

    .prologue
    .line 76
    new-instance v0, Lcom/akexorcist/googledirection/model/Agency$$Parcelable;

    invoke-direct {v0, p1}, Lcom/akexorcist/googledirection/model/Agency$$Parcelable;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/akexorcist/googledirection/model/Agency$$Parcelable$Creator$$0;->createFromParcel(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Agency$$Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/akexorcist/googledirection/model/Agency$$Parcelable;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 81
    new-array v0, p1, [Lcom/akexorcist/googledirection/model/Agency$$Parcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/akexorcist/googledirection/model/Agency$$Parcelable$Creator$$0;->newArray(I)[Lcom/akexorcist/googledirection/model/Agency$$Parcelable;

    move-result-object v0

    return-object v0
.end method
