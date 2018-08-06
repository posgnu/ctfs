.class public Lco/kr/festfive/model/SelectMeetingRoomListItem;
.super Ljava/lang/Object;
.source "SelectMeetingRoomListItem.java"


# instance fields
.field private reservationTimeListItemArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/ReservationTimeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private room_id:Ljava/lang/String;

.field private room_image_url:Ljava/lang/String;

.field private room_location:Ljava/lang/String;

.field private room_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "room_id"    # Ljava/lang/String;
    .param p2, "room_name"    # Ljava/lang/String;
    .param p3, "room_location"    # Ljava/lang/String;
    .param p4, "room_image_url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/ReservationTimeListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p5, "reservationTimeListItemArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lco/kr/festfive/model/ReservationTimeListItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lco/kr/festfive/model/SelectMeetingRoomListItem;->room_id:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lco/kr/festfive/model/SelectMeetingRoomListItem;->room_name:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lco/kr/festfive/model/SelectMeetingRoomListItem;->room_location:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lco/kr/festfive/model/SelectMeetingRoomListItem;->room_image_url:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lco/kr/festfive/model/SelectMeetingRoomListItem;->reservationTimeListItemArrayList:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public getReservationTimeListItemArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/ReservationTimeListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lco/kr/festfive/model/SelectMeetingRoomListItem;->reservationTimeListItemArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lco/kr/festfive/model/SelectMeetingRoomListItem;->room_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lco/kr/festfive/model/SelectMeetingRoomListItem;->room_image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lco/kr/festfive/model/SelectMeetingRoomListItem;->room_location:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lco/kr/festfive/model/SelectMeetingRoomListItem;->room_name:Ljava/lang/String;

    return-object v0
.end method
