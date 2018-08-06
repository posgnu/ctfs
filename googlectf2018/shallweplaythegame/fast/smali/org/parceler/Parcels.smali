.class public final Lorg/parceler/Parcels;
.super Ljava/lang/Object;
.source "Parcels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/parceler/Parcels$ParcelCodeRepository;,
        Lorg/parceler/Parcels$ParcelableFactoryReflectionProxy;,
        Lorg/parceler/Parcels$ParcelableFactory;,
        Lorg/parceler/Parcels$NullParcelable;
    }
.end annotation


# static fields
.field public static final IMPL_EXT:Ljava/lang/String; = "Parcelable"

.field private static final NULL_PARCELABLE:Lorg/parceler/Parcels$NullParcelable;

.field public static final PARCELS_NAME:Ljava/lang/String; = "Parcels"

.field public static final PARCELS_PACKAGE:Ljava/lang/String; = "org.parceler"

.field public static final PARCELS_REPOSITORY_NAME:Ljava/lang/String; = "Parceler$$Parcels"

.field private static final REPOSITORY:Lorg/parceler/Parcels$ParcelCodeRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lorg/parceler/Parcels$ParcelCodeRepository;

    invoke-direct {v0}, Lorg/parceler/Parcels$ParcelCodeRepository;-><init>()V

    sput-object v0, Lorg/parceler/Parcels;->REPOSITORY:Lorg/parceler/Parcels$ParcelCodeRepository;

    .line 38
    new-instance v0, Lorg/parceler/Parcels$NullParcelable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/parceler/Parcels$NullParcelable;-><init>(Lorg/parceler/Parcels$1;)V

    sput-object v0, Lorg/parceler/Parcels;->NULL_PARCELABLE:Lorg/parceler/Parcels$NullParcelable;

    .line 41
    sget-object v0, Lorg/parceler/Parcels;->REPOSITORY:Lorg/parceler/Parcels$ParcelCodeRepository;

    invoke-static {}, Lorg/parceler/NonParcelRepository;->getInstance()Lorg/parceler/NonParcelRepository;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/parceler/Parcels$ParcelCodeRepository;->loadRepository(Lorg/parceler/Repository;)V

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static unwrap(Landroid/os/Parcelable;)Ljava/lang/Object;
    .locals 2
    .param p0, "input"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 104
    :goto_0
    return-object v1

    :cond_0
    move-object v0, p0

    .line 103
    check-cast v0, Lorg/parceler/ParcelWrapper;

    .line 104
    .local v0, "wrapper":Lorg/parceler/ParcelWrapper;, "Lorg/parceler/ParcelWrapper<TT;>;"
    invoke-interface {v0}, Lorg/parceler/ParcelWrapper;->getParcel()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected static update(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 54
    sget-object v0, Lorg/parceler/Parcels;->REPOSITORY:Lorg/parceler/Parcels$ParcelCodeRepository;

    invoke-virtual {v0, p0}, Lorg/parceler/Parcels$ParcelCodeRepository;->loadRepository(Ljava/lang/ClassLoader;)V

    .line 55
    return-void
.end method

.method public static wrap(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "inputType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p1, "input":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 83
    sget-object v1, Lorg/parceler/Parcels;->NULL_PARCELABLE:Lorg/parceler/Parcels$NullParcelable;

    .line 87
    :goto_0
    return-object v1

    .line 85
    :cond_0
    sget-object v1, Lorg/parceler/Parcels;->REPOSITORY:Lorg/parceler/Parcels$ParcelCodeRepository;

    invoke-virtual {v1, p0}, Lorg/parceler/Parcels$ParcelCodeRepository;->get(Ljava/lang/Class;)Lorg/parceler/Parcels$ParcelableFactory;

    move-result-object v0

    .line 87
    .local v0, "parcelableFactory":Lorg/parceler/Parcels$ParcelableFactory;
    invoke-interface {v0, p1}, Lorg/parceler/Parcels$ParcelableFactory;->buildParcelable(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "input":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 67
    sget-object v0, Lorg/parceler/Parcels;->NULL_PARCELABLE:Lorg/parceler/Parcels$NullParcelable;

    .line 69
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/parceler/Parcels;->wrap(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method
