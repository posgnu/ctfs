.class public final Lcom/akexorcist/googledirection/model/Line$$Parcelable$Creator$$8;
.super Ljava/lang/Object;
.source "Line$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akexorcist/googledirection/model/Line$$Parcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator$$8"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/akexorcist/googledirection/model/Line$$Parcelable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Line$$Parcelable;
    .locals 1
    .param p1, "parcel$$8"    # Landroid/os/Parcel;

    .prologue
    .line 153
    new-instance v0, Lcom/akexorcist/googledirection/model/Line$$Parcelable;

    invoke-direct {v0, p1}, Lcom/akexorcist/googledirection/model/Line$$Parcelable;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/akexorcist/googledirection/model/Line$$Parcelable$Creator$$8;->createFromParcel(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Line$$Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/akexorcist/googledirection/model/Line$$Parcelable;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 158
    new-array v0, p1, [Lcom/akexorcist/googledirection/model/Line$$Parcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/akexorcist/googledirection/model/Line$$Parcelable$Creator$$8;->newArray(I)[Lcom/akexorcist/googledirection/model/Line$$Parcelable;

    move-result-object v0

    return-object v0
.end method
