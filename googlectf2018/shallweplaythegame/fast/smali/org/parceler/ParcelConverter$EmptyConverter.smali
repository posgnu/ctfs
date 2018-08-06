.class public Lorg/parceler/ParcelConverter$EmptyConverter;
.super Ljava/lang/Object;
.source "ParcelConverter.java"

# interfaces
.implements Lorg/parceler/ParcelConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/ParcelConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/parceler/ParcelConverter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 40
    new-instance v0, Lorg/parceler/ParcelerRuntimeException;

    const-string v1, "Empty Converter should not be used."

    invoke-direct {v0, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toParcel(Ljava/lang/Object;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/Object;
    .param p2, "destinationParcel"    # Landroid/os/Parcel;

    .prologue
    .line 35
    new-instance v0, Lorg/parceler/ParcelerRuntimeException;

    const-string v1, "Empty Converter should not be used."

    invoke-direct {v0, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
