.class public Lco/kr/festfive/vo/OfficeVo;
.super Ljava/lang/Object;
.source "OfficeVo.java"


# instance fields
.field private officeId:Ljava/lang/String;

.field private officeName:Ljava/lang/String;

.field private rooms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lco/kr/festfive/vo/RoomVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "officeId"    # Ljava/lang/String;
    .param p2, "officeName"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/vo/OfficeVo;->rooms:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lco/kr/festfive/vo/OfficeVo;->officeId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lco/kr/festfive/vo/OfficeVo;->officeName:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public addRooms(Lco/kr/festfive/vo/RoomVo;)V
    .locals 1
    .param p1, "room"    # Lco/kr/festfive/vo/RoomVo;

    .prologue
    .line 45
    iget-object v0, p0, Lco/kr/festfive/vo/OfficeVo;->rooms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public getOfficeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lco/kr/festfive/vo/OfficeVo;->officeId:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lco/kr/festfive/vo/OfficeVo;->officeName:Ljava/lang/String;

    return-object v0
.end method

.method public getRooms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lco/kr/festfive/vo/RoomVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lco/kr/festfive/vo/OfficeVo;->rooms:Ljava/util/List;

    return-object v0
.end method

.method public setOfficeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "officeId"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lco/kr/festfive/vo/OfficeVo;->officeId:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setOfficeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "officeName"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lco/kr/festfive/vo/OfficeVo;->officeName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setRooms(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lco/kr/festfive/vo/RoomVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "rooms":Ljava/util/List;, "Ljava/util/List<Lco/kr/festfive/vo/RoomVo;>;"
    iput-object p1, p0, Lco/kr/festfive/vo/OfficeVo;->rooms:Ljava/util/List;

    .line 42
    return-void
.end method
