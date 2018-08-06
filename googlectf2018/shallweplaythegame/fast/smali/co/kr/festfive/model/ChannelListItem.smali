.class public Lco/kr/festfive/model/ChannelListItem;
.super Ljava/lang/Object;
.source "ChannelListItem.java"


# instance fields
.field private channelId:J

.field private channelName:Ljava/lang/String;

.field private channelUrl:Ljava/lang/String;

.field private channel_url:Ljava/lang/String;

.field private corverUrl:Ljava/lang/String;

.field private cover_img_url:Ljava/lang/String;

.field private create_date:Ljava/lang/String;

.field private created_at:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image1_url:Ljava/lang/String;

.field private image2_url:Ljava/lang/String;

.field private image3:Ljava/lang/String;

.field private image3_url:Ljava/lang/String;

.field private image4:Ljava/lang/String;

.field private image4_url:Ljava/lang/String;

.field private image5:Ljava/lang/String;

.field private image5_url:Ljava/lang/String;

.field private isChannel:Z

.field private is_channel:Z

.field private is_manager_user:Z

.field private lastMessage:Ljava/lang/String;

.field private lastMessageTimestamp:Ljava/lang/String;

.field private last_message:Ljava/lang/String;

.field private last_message_ts:Ljava/lang/String;

.field private like_count:Ljava/lang/String;

.field private memberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/model/MessagingChannel$Member;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private office_name:Ljava/lang/String;

.field private office_room_name:Ljava/lang/String;

.field private ori_name:Ljava/lang/String;

.field private reply_count:Ljava/lang/String;

.field private topic:Ljava/lang/String;

.field private unread_count:I

.field private user_company:Ljava/lang/String;

.field private user_name:Ljava/lang/String;

.field private user_position:Ljava/lang/String;

.field private user_profile_thumb_url:Ljava/lang/String;

.field private user_profile_url:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .param p1, "channelId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "cover_img_url"    # Ljava/lang/String;
    .param p5, "last_message"    # Ljava/lang/String;
    .param p6, "last_message_ts"    # Ljava/lang/String;
    .param p7, "channel_url"    # Ljava/lang/String;
    .param p9, "is_channel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/model/MessagingChannel$Member;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p8, "memberList":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/model/MessagingChannel$Member;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-wide p1, p0, Lco/kr/festfive/model/ChannelListItem;->channelId:J

    .line 127
    iput-object p3, p0, Lco/kr/festfive/model/ChannelListItem;->name:Ljava/lang/String;

    .line 128
    iput-object p4, p0, Lco/kr/festfive/model/ChannelListItem;->cover_img_url:Ljava/lang/String;

    .line 129
    iput-object p5, p0, Lco/kr/festfive/model/ChannelListItem;->last_message:Ljava/lang/String;

    .line 130
    iput-object p6, p0, Lco/kr/festfive/model/ChannelListItem;->last_message_ts:Ljava/lang/String;

    .line 131
    iput-object p7, p0, Lco/kr/festfive/model/ChannelListItem;->channel_url:Ljava/lang/String;

    .line 132
    iput-object p8, p0, Lco/kr/festfive/model/ChannelListItem;->memberList:Ljava/util/List;

    .line 133
    iput-boolean p9, p0, Lco/kr/festfive/model/ChannelListItem;->is_channel:Z

    .line 134
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "channelId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "cover_img_url"    # Ljava/lang/String;
    .param p5, "last_message"    # Ljava/lang/String;
    .param p6, "last_message_ts"    # Ljava/lang/String;
    .param p7, "channel_url"    # Ljava/lang/String;
    .param p8, "is_channel"    # Z

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-wide p1, p0, Lco/kr/festfive/model/ChannelListItem;->channelId:J

    .line 138
    iput-object p3, p0, Lco/kr/festfive/model/ChannelListItem;->name:Ljava/lang/String;

    .line 139
    iput-object p4, p0, Lco/kr/festfive/model/ChannelListItem;->cover_img_url:Ljava/lang/String;

    .line 140
    iput-object p5, p0, Lco/kr/festfive/model/ChannelListItem;->last_message:Ljava/lang/String;

    .line 141
    iput-object p6, p0, Lco/kr/festfive/model/ChannelListItem;->last_message_ts:Ljava/lang/String;

    .line 142
    iput-object p7, p0, Lco/kr/festfive/model/ChannelListItem;->channel_url:Ljava/lang/String;

    .line 143
    iput-boolean p8, p0, Lco/kr/festfive/model/ChannelListItem;->is_channel:Z

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "channel_url"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ori_name"    # Ljava/lang/String;
    .param p4, "cover_img_url"    # Ljava/lang/String;
    .param p5, "is_channel"    # Z
    .param p6, "is_manager_user"    # Z
    .param p7, "last_message"    # Ljava/lang/String;
    .param p8, "last_message_ts"    # Ljava/lang/String;
    .param p9, "created_at"    # Ljava/lang/String;
    .param p10, "id"    # Ljava/lang/String;
    .param p11, "unread_count"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lco/kr/festfive/model/ChannelListItem;->channel_url:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lco/kr/festfive/model/ChannelListItem;->name:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lco/kr/festfive/model/ChannelListItem;->ori_name:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lco/kr/festfive/model/ChannelListItem;->cover_img_url:Ljava/lang/String;

    .line 72
    iput-boolean p5, p0, Lco/kr/festfive/model/ChannelListItem;->is_channel:Z

    .line 73
    iput-boolean p6, p0, Lco/kr/festfive/model/ChannelListItem;->is_manager_user:Z

    .line 74
    iput-object p7, p0, Lco/kr/festfive/model/ChannelListItem;->last_message:Ljava/lang/String;

    .line 75
    iput-object p8, p0, Lco/kr/festfive/model/ChannelListItem;->last_message_ts:Ljava/lang/String;

    .line 76
    iput-object p9, p0, Lco/kr/festfive/model/ChannelListItem;->created_at:Ljava/lang/String;

    .line 77
    iput-object p10, p0, Lco/kr/festfive/model/ChannelListItem;->id:Ljava/lang/String;

    .line 78
    iput p11, p0, Lco/kr/festfive/model/ChannelListItem;->unread_count:I

    .line 79
    return-void
.end method


# virtual methods
.method public getChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lco/kr/festfive/model/ChannelListItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lco/kr/festfive/model/ChannelListItem;->channel_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCorverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lco/kr/festfive/model/ChannelListItem;->cover_img_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lco/kr/festfive/model/ChannelListItem;->cover_img_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lco/kr/festfive/model/ChannelListItem;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lco/kr/festfive/model/ChannelListItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lco/kr/festfive/model/ChannelListItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsChannel()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lco/kr/festfive/model/ChannelListItem;->is_channel:Z

    return v0
.end method

.method public getIsManagerUser()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lco/kr/festfive/model/ChannelListItem;->is_manager_user:Z

    return v0
.end method

.method public getLastMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lco/kr/festfive/model/ChannelListItem;->last_message:Ljava/lang/String;

    return-object v0
.end method

.method public getLastMessageTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lco/kr/festfive/model/ChannelListItem;->last_message_ts:Ljava/lang/String;

    return-object v0
.end method

.method public getLastMessageTs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lco/kr/festfive/model/ChannelListItem;->last_message_ts:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lco/kr/festfive/model/ChannelListItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lco/kr/festfive/model/ChannelListItem;->office_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lco/kr/festfive/model/ChannelListItem;->ori_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUnread_count()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lco/kr/festfive/model/ChannelListItem;->unread_count:I

    return v0
.end method

.method public getUserCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lco/kr/festfive/model/ChannelListItem;->user_company:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lco/kr/festfive/model/ChannelListItem;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lco/kr/festfive/model/ChannelListItem;->user_position:Ljava/lang/String;

    return-object v0
.end method
