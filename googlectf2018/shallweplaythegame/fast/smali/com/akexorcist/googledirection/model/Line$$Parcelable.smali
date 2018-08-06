.class public Lcom/akexorcist/googledirection/model/Line$$Parcelable;
.super Ljava/lang/Object;
.source "Line$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lorg/parceler/ParcelWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akexorcist/googledirection/model/Line$$Parcelable$Creator$$8;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lorg/parceler/ParcelWrapper",
        "<",
        "Lcom/akexorcist/googledirection/model/Line;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/akexorcist/googledirection/model/Line$$Parcelable$Creator$$8;


# instance fields
.field private line$$0:Lcom/akexorcist/googledirection/model/Line;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/akexorcist/googledirection/model/Line$$Parcelable$Creator$$8;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Line$$Parcelable$Creator$$8;-><init>()V

    sput-object v0, Lcom/akexorcist/googledirection/model/Line$$Parcelable;->CREATOR:Lcom/akexorcist/googledirection/model/Line$$Parcelable$Creator$$8;

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
    .local v0, "line$$2":Lcom/akexorcist/googledirection/model/Line;
    :goto_0
    iput-object v0, p0, Lcom/akexorcist/googledirection/model/Line$$Parcelable;->line$$0:Lcom/akexorcist/googledirection/model/Line;

    .line 32
    return-void

    .line 29
    .end local v0    # "line$$2":Lcom/akexorcist/googledirection/model/Line;
    :cond_0
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Line$$Parcelable;->readcom_akexorcist_googledirection_model_Line(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Line;

    move-result-object v0

    .restart local v0    # "line$$2":Lcom/akexorcist/googledirection/model/Line;
    goto :goto_0
.end method

.method public constructor <init>(Lcom/akexorcist/googledirection/model/Line;)V
    .locals 0
    .param p1, "line$$4"    # Lcom/akexorcist/googledirection/model/Line;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/akexorcist/googledirection/model/Line$$Parcelable;->line$$0:Lcom/akexorcist/googledirection/model/Line;

    .line 36
    return-void
.end method

.method private readcom_akexorcist_googledirection_model_Agency(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Agency;
    .locals 2
    .param p1, "parcel$$3"    # Landroid/os/Parcel;

    .prologue
    .line 84
    new-instance v0, Lcom/akexorcist/googledirection/model/Agency;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Agency;-><init>()V

    .line 85
    .local v0, "agency$$0":Lcom/akexorcist/googledirection/model/Agency;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Agency;->name:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Agency;->url:Ljava/lang/String;

    .line 87
    return-object v0
.end method

.method private readcom_akexorcist_googledirection_model_Line(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Line;
    .locals 8
    .param p1, "parcel$$2"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, -0x1

    .line 50
    new-instance v3, Lcom/akexorcist/googledirection/model/Line;

    invoke-direct {v3}, Lcom/akexorcist/googledirection/model/Line;-><init>()V

    .line 51
    .local v3, "line$$1":Lcom/akexorcist/googledirection/model/Line;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->color:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->name:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->shortName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/akexorcist/googledirection/model/Line;->textColor:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    .local v1, "int$$0":I
    if-gez v1, :cond_1

    .line 58
    const/4 v4, 0x0

    .line 71
    .local v4, "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    :cond_0
    iput-object v4, v3, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 74
    const/4 v5, 0x0

    .line 78
    .local v5, "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    :goto_0
    iput-object v5, v3, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    .line 79
    return-object v3

    .line 60
    .end local v4    # "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    .end local v5    # "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .restart local v4    # "list$$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akexorcist/googledirection/model/Agency;>;"
    const/4 v2, 0x0

    .local v2, "int$$1":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 64
    const/4 v0, 0x0

    .line 68
    .local v0, "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    :goto_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    .end local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    :cond_2
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Line$$Parcelable;->readcom_akexorcist_googledirection_model_Agency(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Agency;

    move-result-object v0

    .restart local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    goto :goto_2

    .line 76
    .end local v0    # "agency$$1":Lcom/akexorcist/googledirection/model/Agency;
    .end local v2    # "int$$1":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/akexorcist/googledirection/model/Line$$Parcelable;->readcom_akexorcist_googledirection_model_Vehicle(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Vehicle;

    move-result-object v5

    .restart local v5    # "vehicle$$1":Lcom/akexorcist/googledirection/model/Vehicle;
    goto :goto_0
.end method

.method private readcom_akexorcist_googledirection_model_Vehicle(Landroid/os/Parcel;)Lcom/akexorcist/googledirection/model/Vehicle;
    .locals 2
    .param p1, "parcel$$4"    # Landroid/os/Parcel;

    .prologue
    .line 92
    new-instance v0, Lcom/akexorcist/googledirection/model/Vehicle;

    invoke-direct {v0}, Lcom/akexorcist/googledirection/model/Vehicle;-><init>()V

    .line 93
    .local v0, "vehicle$$0":Lcom/akexorcist/googledirection/model/Vehicle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->name:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->iconUrl:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akexorcist/googledirection/model/Vehicle;->type:Ljava/lang/String;

    .line 96
    return-object v0
.end method

.method private writecom_akexorcist_googledirection_model_Agency(Lcom/akexorcist/googledirection/model/Agency;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "agency$$3"    # Lcom/akexorcist/googledirection/model/Agency;
    .param p2, "parcel$$6"    # Landroid/os/Parcel;
    .param p3, "flags$$1"    # I

    .prologue
    .line 126
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Agency;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Agency;->url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private writecom_akexorcist_googledirection_model_Line(Lcom/akexorcist/googledirection/model/Line;Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "line$$3"    # Lcom/akexorcist/googledirection/model/Line;
    .param p2, "parcel$$5"    # Landroid/os/Parcel;
    .param p3, "flags$$0"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 100
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->color:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->shortName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->textColor:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 105
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    :cond_0
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    if-nez v1, :cond_3

    .line 118
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->agencyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akexorcist/googledirection/model/Agency;

    .line 109
    .local v0, "agency$$2":Lcom/akexorcist/googledirection/model/Agency;
    if-nez v0, :cond_2

    .line 110
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-direct {p0, v0, p2, p3}, Lcom/akexorcist/googledirection/model/Line$$Parcelable;->writecom_akexorcist_googledirection_model_Agency(Lcom/akexorcist/googledirection/model/Agency;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 120
    .end local v0    # "agency$$2":Lcom/akexorcist/googledirection/model/Agency;
    :cond_3
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v1, p1, Lcom/akexorcist/googledirection/model/Line;->vehicle:Lcom/akexorcist/googledirection/model/Vehicle;

    invoke-direct {p0, v1, p2, p3}, Lcom/akexorcist/googledirection/model/Line$$Parcelable;->writecom_akexorcist_googledirection_model_Vehicle(Lcom/akexorcist/googledirection/model/Vehicle;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private writecom_akexorcist_googledirection_model_Vehicle(Lcom/akexorcist/googledirection/model/Vehicle;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "vehicle$$2"    # Lcom/akexorcist/googledirection/model/Vehicle;
    .param p2, "parcel$$7"    # Landroid/os/Parcel;
    .param p3, "flags$$2"    # I

    .prologue
    .line 131
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->iconUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p1, Lcom/akexorcist/googledirection/model/Vehicle;->type:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/akexorcist/googledirection/model/Line;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Line$$Parcelable;->line$$0:Lcom/akexorcist/googledirection/model/Line;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/akexorcist/googledirection/model/Line$$Parcelable;->getParcel()Lcom/akexorcist/googledirection/model/Line;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel$$1"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Line$$Parcelable;->line$$0:Lcom/akexorcist/googledirection/model/Line;

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
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Line$$Parcelable;->line$$0:Lcom/akexorcist/googledirection/model/Line;

    invoke-direct {p0, v0, p1, p2}, Lcom/akexorcist/googledirection/model/Line$$Parcelable;->writecom_akexorcist_googledirection_model_Line(Lcom/akexorcist/googledirection/model/Line;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
