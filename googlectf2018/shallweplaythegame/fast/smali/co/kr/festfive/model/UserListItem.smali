.class public Lco/kr/festfive/model/UserListItem;
.super Ljava/lang/Object;
.source "UserListItem.java"


# instance fields
.field private create_date:Ljava/lang/String;

.field private is_agree:Ljava/lang/String;

.field private is_push_feed:Ljava/lang/String;

.field private is_push_reply:Ljava/lang/String;

.field private last_login:Ljava/lang/String;

.field private office_id:Ljava/lang/String;

.field private office_name:Ljava/lang/String;

.field private office_room_id:Ljava/lang/String;

.field private office_room_name:Ljava/lang/String;

.field private user_birth:Ljava/lang/String;

.field private user_company:Ljava/lang/String;

.field private user_device_id:Ljava/lang/String;

.field private user_email:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_introduce:Ljava/lang/String;

.field private user_level:Ljava/lang/String;

.field private user_name:Ljava/lang/String;

.field private user_platform:Ljava/lang/String;

.field private user_position:Ljava/lang/String;

.field private user_profile:Ljava/lang/String;

.field private user_profile_thumb_url:Ljava/lang/String;

.field private user_profile_url:Ljava/lang/String;

.field private user_pw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "user_id"    # Ljava/lang/String;
    .param p2, "office_id"    # Ljava/lang/String;
    .param p3, "office_room_id"    # Ljava/lang/String;
    .param p4, "user_pw"    # Ljava/lang/String;
    .param p5, "user_email"    # Ljava/lang/String;
    .param p6, "user_name"    # Ljava/lang/String;
    .param p7, "user_profile"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lco/kr/festfive/model/UserListItem;->user_id:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lco/kr/festfive/model/UserListItem;->office_id:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lco/kr/festfive/model/UserListItem;->office_room_id:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lco/kr/festfive/model/UserListItem;->user_pw:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lco/kr/festfive/model/UserListItem;->user_email:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lco/kr/festfive/model/UserListItem;->user_name:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lco/kr/festfive/model/UserListItem;->user_profile:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user_id"    # Ljava/lang/String;
    .param p2, "office_id"    # Ljava/lang/String;
    .param p3, "office_room_id"    # Ljava/lang/String;
    .param p4, "user_pw"    # Ljava/lang/String;
    .param p5, "user_email"    # Ljava/lang/String;
    .param p6, "user_name"    # Ljava/lang/String;
    .param p7, "user_profile"    # Ljava/lang/String;
    .param p8, "user_birth"    # Ljava/lang/String;
    .param p9, "user_company"    # Ljava/lang/String;
    .param p10, "user_position"    # Ljava/lang/String;
    .param p11, "user_introduce"    # Ljava/lang/String;
    .param p12, "user_level"    # Ljava/lang/String;
    .param p13, "user_device_id"    # Ljava/lang/String;
    .param p14, "user_platform"    # Ljava/lang/String;
    .param p15, "last_login"    # Ljava/lang/String;
    .param p16, "create_date"    # Ljava/lang/String;
    .param p17, "office_name"    # Ljava/lang/String;
    .param p18, "office_room_name"    # Ljava/lang/String;
    .param p19, "user_profile_thumb_url"    # Ljava/lang/String;
    .param p20, "user_profile_url"    # Ljava/lang/String;
    .param p21, "is_push_feed"    # Ljava/lang/String;
    .param p22, "is_push_reply"    # Ljava/lang/String;
    .param p23, "is_agree"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lco/kr/festfive/model/UserListItem;->user_id:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lco/kr/festfive/model/UserListItem;->office_id:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lco/kr/festfive/model/UserListItem;->office_room_id:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lco/kr/festfive/model/UserListItem;->user_pw:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lco/kr/festfive/model/UserListItem;->user_email:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lco/kr/festfive/model/UserListItem;->user_name:Ljava/lang/String;

    .line 51
    iput-object p7, p0, Lco/kr/festfive/model/UserListItem;->user_profile:Ljava/lang/String;

    .line 52
    iput-object p8, p0, Lco/kr/festfive/model/UserListItem;->user_birth:Ljava/lang/String;

    .line 53
    iput-object p9, p0, Lco/kr/festfive/model/UserListItem;->user_company:Ljava/lang/String;

    .line 54
    iput-object p10, p0, Lco/kr/festfive/model/UserListItem;->user_position:Ljava/lang/String;

    .line 55
    iput-object p11, p0, Lco/kr/festfive/model/UserListItem;->user_introduce:Ljava/lang/String;

    .line 56
    iput-object p12, p0, Lco/kr/festfive/model/UserListItem;->user_level:Ljava/lang/String;

    .line 57
    iput-object p13, p0, Lco/kr/festfive/model/UserListItem;->user_device_id:Ljava/lang/String;

    .line 58
    iput-object p14, p0, Lco/kr/festfive/model/UserListItem;->user_platform:Ljava/lang/String;

    .line 59
    move-object/from16 v0, p15

    iput-object v0, p0, Lco/kr/festfive/model/UserListItem;->last_login:Ljava/lang/String;

    .line 60
    move-object/from16 v0, p16

    iput-object v0, p0, Lco/kr/festfive/model/UserListItem;->create_date:Ljava/lang/String;

    .line 61
    move-object/from16 v0, p17

    iput-object v0, p0, Lco/kr/festfive/model/UserListItem;->office_name:Ljava/lang/String;

    .line 62
    move-object/from16 v0, p18

    iput-object v0, p0, Lco/kr/festfive/model/UserListItem;->office_room_name:Ljava/lang/String;

    .line 63
    move-object/from16 v0, p19

    iput-object v0, p0, Lco/kr/festfive/model/UserListItem;->user_profile_thumb_url:Ljava/lang/String;

    .line 64
    move-object/from16 v0, p20

    iput-object v0, p0, Lco/kr/festfive/model/UserListItem;->user_profile_url:Ljava/lang/String;

    .line 65
    move-object/from16 v0, p21

    iput-object v0, p0, Lco/kr/festfive/model/UserListItem;->is_push_feed:Ljava/lang/String;

    .line 66
    move-object/from16 v0, p22

    iput-object v0, p0, Lco/kr/festfive/model/UserListItem;->is_push_reply:Ljava/lang/String;

    .line 67
    move-object/from16 v0, p23

    iput-object v0, p0, Lco/kr/festfive/model/UserListItem;->is_agree:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public getIsPushFeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lco/kr/festfive/model/UserListItem;->is_push_feed:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPushReply()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lco/kr/festfive/model/UserListItem;->is_push_reply:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lco/kr/festfive/model/UserListItem;->office_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lco/kr/festfive/model/UserListItem;->office_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficeRoomName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lco/kr/festfive/model/UserListItem;->office_room_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lco/kr/festfive/model/UserListItem;->user_company:Ljava/lang/String;

    return-object v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lco/kr/festfive/model/UserListItem;->user_email:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lco/kr/festfive/model/UserListItem;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIntroduce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lco/kr/festfive/model/UserListItem;->user_introduce:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lco/kr/festfive/model/UserListItem;->user_level:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lco/kr/festfive/model/UserListItem;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lco/kr/festfive/model/UserListItem;->user_position:Ljava/lang/String;

    return-object v0
.end method

.method public getUserProfileThumb_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lco/kr/festfive/model/UserListItem;->user_profile_thumb_url:Ljava/lang/String;

    return-object v0
.end method
