.class public Lco/kr/festfive/vo/RoomVo;
.super Ljava/lang/Object;
.source "RoomVo.java"


# instance fields
.field private roomId:Ljava/lang/String;

.field private roomName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "roomName"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lco/kr/festfive/vo/RoomVo;->roomId:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lco/kr/festfive/vo/RoomVo;->roomName:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getRoomId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lco/kr/festfive/vo/RoomVo;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lco/kr/festfive/vo/RoomVo;->roomName:Ljava/lang/String;

    return-object v0
.end method

.method public setRoomId(Ljava/lang/String;)V
    .locals 0
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lco/kr/festfive/vo/RoomVo;->roomId:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setRoomName(Ljava/lang/String;)V
    .locals 0
    .param p1, "roomName"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lco/kr/festfive/vo/RoomVo;->roomName:Ljava/lang/String;

    .line 30
    return-void
.end method
