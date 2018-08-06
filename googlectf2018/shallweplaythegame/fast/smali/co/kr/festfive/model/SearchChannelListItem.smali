.class public Lco/kr/festfive/model/SearchChannelListItem;
.super Ljava/lang/Object;
.source "SearchChannelListItem.java"


# instance fields
.field private channelId:J

.field private channelName:Ljava/lang/String;

.field private channelUrl:Ljava/lang/String;

.field private contents:Ljava/lang/String;

.field private coverUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private detailName:Ljava/lang/String;

.field private image1:Ljava/lang/String;

.field private image2:Ljava/lang/String;

.field private image3:Ljava/lang/String;

.field private image4:Ljava/lang/String;

.field private image5:Ljava/lang/String;

.field private isChecked:Z

.field private like_count:Ljava/lang/String;

.field private memberCount:I

.field private message:Ljava/lang/String;

.field private office_name:Ljava/lang/String;

.field private office_room_name:Ljava/lang/String;

.field private user_company:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_level:Ljava/lang/String;

.field private user_name:Ljava/lang/String;

.field private user_position:Ljava/lang/String;

.field private user_profile_thumb_url:Ljava/lang/String;

.field private user_profile_url:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "channelId"    # J
    .param p3, "coverUrl"    # Ljava/lang/String;
    .param p4, "channelName"    # Ljava/lang/String;
    .param p5, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lco/kr/festfive/model/SearchChannelListItem;->channelId:J

    .line 55
    iput-object p3, p0, Lco/kr/festfive/model/SearchChannelListItem;->coverUrl:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lco/kr/festfive/model/SearchChannelListItem;->channelName:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lco/kr/festfive/model/SearchChannelListItem;->channelUrl:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->isChecked:Z

    .line 59
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "channelId"    # J
    .param p3, "coverUrl"    # Ljava/lang/String;
    .param p4, "channelName"    # Ljava/lang/String;
    .param p5, "channelUrl"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "detailName"    # Ljava/lang/String;
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "memberCount"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p1, p0, Lco/kr/festfive/model/SearchChannelListItem;->channelId:J

    .line 63
    iput-object p3, p0, Lco/kr/festfive/model/SearchChannelListItem;->coverUrl:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lco/kr/festfive/model/SearchChannelListItem;->channelName:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lco/kr/festfive/model/SearchChannelListItem;->channelUrl:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lco/kr/festfive/model/SearchChannelListItem;->description:Ljava/lang/String;

    .line 67
    iput-object p7, p0, Lco/kr/festfive/model/SearchChannelListItem;->detailName:Ljava/lang/String;

    .line 68
    iput-object p8, p0, Lco/kr/festfive/model/SearchChannelListItem;->message:Ljava/lang/String;

    .line 69
    iput p9, p0, Lco/kr/festfive/model/SearchChannelListItem;->memberCount:I

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->isChecked:Z

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user_id"    # Ljava/lang/String;
    .param p2, "user_name"    # Ljava/lang/String;
    .param p3, "user_company"    # Ljava/lang/String;
    .param p4, "user_position"    # Ljava/lang/String;
    .param p5, "office_name"    # Ljava/lang/String;
    .param p6, "office_room_name"    # Ljava/lang/String;
    .param p7, "user_profile_thumb_url"    # Ljava/lang/String;
    .param p8, "user_level"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lco/kr/festfive/model/SearchChannelListItem;->user_id:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lco/kr/festfive/model/SearchChannelListItem;->user_name:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lco/kr/festfive/model/SearchChannelListItem;->user_company:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lco/kr/festfive/model/SearchChannelListItem;->user_position:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lco/kr/festfive/model/SearchChannelListItem;->office_name:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lco/kr/festfive/model/SearchChannelListItem;->office_room_name:Ljava/lang/String;

    .line 46
    iput-object p7, p0, Lco/kr/festfive/model/SearchChannelListItem;->user_profile_thumb_url:Ljava/lang/String;

    .line 47
    iput-object p8, p0, Lco/kr/festfive/model/SearchChannelListItem;->user_level:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->isChecked:Z

    .line 50
    return-void
.end method


# virtual methods
.method public getChannelId()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->channelId:J

    return-wide v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->channelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->detailName:Ljava/lang/String;

    return-object v0
.end method

.method public getLikeCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->like_count:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberCount()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->memberCount:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->office_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficeRoomName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->office_room_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->user_company:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->user_level:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->user_position:Ljava/lang/String;

    return-object v0
.end method

.method public getUserProfileThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->user_profile_thumb_url:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lco/kr/festfive/model/SearchChannelListItem;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lco/kr/festfive/model/SearchChannelListItem;->isChecked:Z

    .line 167
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lco/kr/festfive/model/SearchChannelListItem;->description:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setDetailName(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailName"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lco/kr/festfive/model/SearchChannelListItem;->detailName:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setLikeCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "like_count"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lco/kr/festfive/model/SearchChannelListItem;->like_count:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lco/kr/festfive/model/SearchChannelListItem;->message:Ljava/lang/String;

    .line 151
    return-void
.end method
