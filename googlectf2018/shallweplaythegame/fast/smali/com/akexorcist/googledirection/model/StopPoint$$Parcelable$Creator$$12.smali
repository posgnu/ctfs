.class public final Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable$Creator$$12;
.super Ljava/lang/Object;
.source "StopPoint$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator$$12"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;
    .locals 1
    .param p1, "parcel$$6"    # Landroid/os/Parcel;

    .prologue
    .line 100
    new-instance v0, Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;

    invoke-direct {v0, p1}, Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable$Creator$$12;->createFromParcel(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 105
    new-array v0, p1, [Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable$Creator$$12;->newArray(I)[Lcom/akexorcist/googledirection/model/StopPoint$$Parcelable;

    move-result-object v0

    return-object v0
.end method
