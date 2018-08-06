.class public Lco/kr/festfive/model/MyScheduleListItem;
.super Ljava/lang/Object;
.source "MyScheduleListItem.java"


# instance fields
.field private community_date:Ljava/lang/String;

.field private community_id:Ljava/lang/String;

.field private community_lat:Ljava/lang/String;

.field private community_lon:Ljava/lang/String;

.field private community_time:Ljava/lang/String;

.field private count:Ljava/lang/String;

.field private create_date:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private join_count:Ljava/lang/String;

.field private office_id:Ljava/lang/String;

.field private office_name:Ljava/lang/String;

.field private reservation_date:Ljava/lang/String;

.field private reservation_end_time:Ljava/lang/String;

.field private reservation_start_time:Ljava/lang/String;

.field private reservation_time:Ljava/lang/String;

.field private room_id:Ljava/lang/String;

.field private room_location:Ljava/lang/String;

.field private room_name:Ljava/lang/String;

.field private room_reservation_id:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private visitor_count:Ljava/lang/String;

.field private visitor_name:Ljava/lang/String;

.field private visitor_reservation_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "visitor_reservation_id"    # Ljava/lang/String;
    .param p2, "office_id"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "reservation_date"    # Ljava/lang/String;
    .param p5, "reservation_time"    # Ljava/lang/String;
    .param p6, "visitor_name"    # Ljava/lang/String;
    .param p7, "visitor_count"    # Ljava/lang/String;
    .param p8, "create_date"    # Ljava/lang/String;
    .param p9, "office_name"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lco/kr/festfive/model/MyScheduleListItem;->visitor_reservation_id:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lco/kr/festfive/model/MyScheduleListItem;->office_id:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Lco/kr/festfive/model/MyScheduleListItem;->user_id:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Lco/kr/festfive/model/MyScheduleListItem;->reservation_date:Ljava/lang/String;

    .line 130
    iput-object p5, p0, Lco/kr/festfive/model/MyScheduleListItem;->reservation_time:Ljava/lang/String;

    .line 131
    iput-object p6, p0, Lco/kr/festfive/model/MyScheduleListItem;->visitor_name:Ljava/lang/String;

    .line 132
    iput-object p7, p0, Lco/kr/festfive/model/MyScheduleListItem;->visitor_count:Ljava/lang/String;

    .line 133
    iput-object p8, p0, Lco/kr/festfive/model/MyScheduleListItem;->create_date:Ljava/lang/String;

    .line 134
    iput-object p9, p0, Lco/kr/festfive/model/MyScheduleListItem;->office_name:Ljava/lang/String;

    .line 135
    const-string v0, "v"

    iput-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->type:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "community_id"    # Ljava/lang/String;
    .param p2, "office_id"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "community_date"    # Ljava/lang/String;
    .param p6, "community_time"    # Ljava/lang/String;
    .param p7, "summary"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "create_date"    # Ljava/lang/String;
    .param p10, "type"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lco/kr/festfive/model/MyScheduleListItem;->community_id:Ljava/lang/String;

    .line 169
    iput-object p2, p0, Lco/kr/festfive/model/MyScheduleListItem;->office_id:Ljava/lang/String;

    .line 170
    iput-object p3, p0, Lco/kr/festfive/model/MyScheduleListItem;->user_id:Ljava/lang/String;

    .line 171
    iput-object p4, p0, Lco/kr/festfive/model/MyScheduleListItem;->title:Ljava/lang/String;

    .line 172
    iput-object p5, p0, Lco/kr/festfive/model/MyScheduleListItem;->community_date:Ljava/lang/String;

    .line 173
    iput-object p6, p0, Lco/kr/festfive/model/MyScheduleListItem;->community_time:Ljava/lang/String;

    .line 174
    iput-object p7, p0, Lco/kr/festfive/model/MyScheduleListItem;->summary:Ljava/lang/String;

    .line 175
    iput-object p8, p0, Lco/kr/festfive/model/MyScheduleListItem;->description:Ljava/lang/String;

    .line 176
    iput-object p9, p0, Lco/kr/festfive/model/MyScheduleListItem;->create_date:Ljava/lang/String;

    .line 177
    iput-object p10, p0, Lco/kr/festfive/model/MyScheduleListItem;->type:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "room_reservation_id"    # Ljava/lang/String;
    .param p2, "office_id"    # Ljava/lang/String;
    .param p3, "room_id"    # Ljava/lang/String;
    .param p4, "user_id"    # Ljava/lang/String;
    .param p5, "reservation_date"    # Ljava/lang/String;
    .param p6, "reservation_start_time"    # Ljava/lang/String;
    .param p7, "reservation_end_time"    # Ljava/lang/String;
    .param p8, "create_date"    # Ljava/lang/String;
    .param p9, "office_name"    # Ljava/lang/String;
    .param p10, "room_name"    # Ljava/lang/String;
    .param p11, "room_location"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lco/kr/festfive/model/MyScheduleListItem;->room_reservation_id:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lco/kr/festfive/model/MyScheduleListItem;->office_id:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lco/kr/festfive/model/MyScheduleListItem;->room_id:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lco/kr/festfive/model/MyScheduleListItem;->user_id:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lco/kr/festfive/model/MyScheduleListItem;->reservation_date:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lco/kr/festfive/model/MyScheduleListItem;->reservation_start_time:Ljava/lang/String;

    .line 60
    iput-object p7, p0, Lco/kr/festfive/model/MyScheduleListItem;->reservation_end_time:Ljava/lang/String;

    .line 61
    iput-object p8, p0, Lco/kr/festfive/model/MyScheduleListItem;->create_date:Ljava/lang/String;

    .line 62
    iput-object p9, p0, Lco/kr/festfive/model/MyScheduleListItem;->office_name:Ljava/lang/String;

    .line 63
    iput-object p10, p0, Lco/kr/festfive/model/MyScheduleListItem;->room_name:Ljava/lang/String;

    .line 64
    iput-object p11, p0, Lco/kr/festfive/model/MyScheduleListItem;->room_location:Ljava/lang/String;

    .line 65
    const-string v0, "r"

    iput-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->type:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "room_reservation_id"    # Ljava/lang/String;
    .param p2, "office_id"    # Ljava/lang/String;
    .param p3, "room_id"    # Ljava/lang/String;
    .param p4, "user_id"    # Ljava/lang/String;
    .param p5, "reservation_date"    # Ljava/lang/String;
    .param p6, "reservation_start_time"    # Ljava/lang/String;
    .param p7, "reservation_end_time"    # Ljava/lang/String;
    .param p8, "create_date"    # Ljava/lang/String;
    .param p9, "office_name"    # Ljava/lang/String;
    .param p10, "room_name"    # Ljava/lang/String;
    .param p11, "room_location"    # Ljava/lang/String;
    .param p12, "type"    # Ljava/lang/String;
    .param p13, "count"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lco/kr/festfive/model/MyScheduleListItem;->room_reservation_id:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lco/kr/festfive/model/MyScheduleListItem;->office_id:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lco/kr/festfive/model/MyScheduleListItem;->room_id:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lco/kr/festfive/model/MyScheduleListItem;->user_id:Ljava/lang/String;

    .line 102
    iput-object p5, p0, Lco/kr/festfive/model/MyScheduleListItem;->reservation_date:Ljava/lang/String;

    .line 103
    iput-object p6, p0, Lco/kr/festfive/model/MyScheduleListItem;->reservation_start_time:Ljava/lang/String;

    .line 104
    iput-object p7, p0, Lco/kr/festfive/model/MyScheduleListItem;->reservation_end_time:Ljava/lang/String;

    .line 105
    iput-object p8, p0, Lco/kr/festfive/model/MyScheduleListItem;->create_date:Ljava/lang/String;

    .line 106
    iput-object p9, p0, Lco/kr/festfive/model/MyScheduleListItem;->office_name:Ljava/lang/String;

    .line 107
    iput-object p10, p0, Lco/kr/festfive/model/MyScheduleListItem;->room_name:Ljava/lang/String;

    .line 108
    iput-object p11, p0, Lco/kr/festfive/model/MyScheduleListItem;->room_location:Ljava/lang/String;

    .line 109
    iput-object p12, p0, Lco/kr/festfive/model/MyScheduleListItem;->type:Ljava/lang/String;

    .line 110
    iput-object p13, p0, Lco/kr/festfive/model/MyScheduleListItem;->count:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public getCommunityDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->community_date:Ljava/lang/String;

    return-object v0
.end method

.method public getCommunityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->community_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCommunityTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->community_time:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->office_name:Ljava/lang/String;

    return-object v0
.end method

.method public getReservationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->reservation_date:Ljava/lang/String;

    return-object v0
.end method

.method public getReservationEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->reservation_end_time:Ljava/lang/String;

    return-object v0
.end method

.method public getReservationStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->reservation_start_time:Ljava/lang/String;

    return-object v0
.end method

.method public getReservationTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->reservation_time:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->room_location:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->room_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomReservationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->room_reservation_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->visitor_name:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitorReservationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lco/kr/festfive/model/MyScheduleListItem;->visitor_reservation_id:Ljava/lang/String;

    return-object v0
.end method
