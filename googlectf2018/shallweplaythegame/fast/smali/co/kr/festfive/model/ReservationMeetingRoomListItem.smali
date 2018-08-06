.class public Lco/kr/festfive/model/ReservationMeetingRoomListItem;
.super Ljava/lang/Object;
.source "ReservationMeetingRoomListItem.java"


# instance fields
.field private office_address:Ljava/lang/String;

.field private office_id:Ljava/lang/String;

.field private office_image_url:Ljava/lang/String;

.field private office_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "office_id"    # Ljava/lang/String;
    .param p2, "office_name"    # Ljava/lang/String;
    .param p3, "office_address"    # Ljava/lang/String;
    .param p4, "office_image_url"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lco/kr/festfive/model/ReservationMeetingRoomListItem;->office_id:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lco/kr/festfive/model/ReservationMeetingRoomListItem;->office_name:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lco/kr/festfive/model/ReservationMeetingRoomListItem;->office_address:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lco/kr/festfive/model/ReservationMeetingRoomListItem;->office_image_url:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getOfficeAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lco/kr/festfive/model/ReservationMeetingRoomListItem;->office_address:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lco/kr/festfive/model/ReservationMeetingRoomListItem;->office_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficeImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lco/kr/festfive/model/ReservationMeetingRoomListItem;->office_image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lco/kr/festfive/model/ReservationMeetingRoomListItem;->office_name:Ljava/lang/String;

    return-object v0
.end method
