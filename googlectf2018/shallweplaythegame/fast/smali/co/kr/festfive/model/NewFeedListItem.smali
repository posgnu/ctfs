.class public Lco/kr/festfive/model/NewFeedListItem;
.super Ljava/lang/Object;
.source "NewFeedListItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private category:Ljava/lang/String;

.field private contents:Ljava/lang/String;

.field private create_date:Ljava/lang/String;

.field private fixed:Z

.field private image1:Ljava/lang/String;

.field private image1_url:Ljava/lang/String;

.field private image2:Ljava/lang/String;

.field private image2_url:Ljava/lang/String;

.field private image3:Ljava/lang/String;

.field private image3_url:Ljava/lang/String;

.field private image4:Ljava/lang/String;

.field private image4_url:Ljava/lang/String;

.field private image5:Ljava/lang/String;

.field private image5_url:Ljava/lang/String;

.field private is_like:Ljava/lang/String;

.field private like_count:Ljava/lang/String;

.field private news_feed_id:Ljava/lang/String;

.field private office_name:Ljava/lang/String;

.field private reply_count:Ljava/lang/String;

.field private signed:Z

.field private tag:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private url_title:Ljava/lang/String;

.field private user_company:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_level:Ljava/lang/String;

.field private user_name:Ljava/lang/String;

.field private user_position:Ljava/lang/String;

.field private user_profile_thumb_url:Ljava/lang/String;

.field private user_profile_url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "news_feed_id"    # Ljava/lang/String;
    .param p2, "isFixed"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "contents"    # Ljava/lang/String;
    .param p5, "image1"    # Ljava/lang/String;
    .param p6, "image2"    # Ljava/lang/String;
    .param p7, "image3"    # Ljava/lang/String;
    .param p8, "image4"    # Ljava/lang/String;
    .param p9, "image5"    # Ljava/lang/String;
    .param p10, "like_count"    # Ljava/lang/String;
    .param p11, "reply_count"    # Ljava/lang/String;
    .param p12, "create_date"    # Ljava/lang/String;
    .param p13, "image1_url"    # Ljava/lang/String;
    .param p14, "image2_url"    # Ljava/lang/String;
    .param p15, "image3_url"    # Ljava/lang/String;
    .param p16, "image4_url"    # Ljava/lang/String;
    .param p17, "image5_url"    # Ljava/lang/String;
    .param p18, "user_name"    # Ljava/lang/String;
    .param p19, "user_company"    # Ljava/lang/String;
    .param p20, "user_position"    # Ljava/lang/String;
    .param p21, "office_name"    # Ljava/lang/String;
    .param p22, "user_profile_thumb_url"    # Ljava/lang/String;
    .param p23, "user_profile_url"    # Ljava/lang/String;
    .param p24, "is_like"    # Ljava/lang/String;
    .param p25, "user_level"    # Ljava/lang/String;
    .param p26, "tag"    # Ljava/lang/String;
    .param p27, "url"    # Ljava/lang/String;
    .param p28, "url_title"    # Ljava/lang/String;
    .param p29, "signed"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lco/kr/festfive/model/NewFeedListItem;->news_feed_id:Ljava/lang/String;

    .line 77
    const-string v1, "Y"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lco/kr/festfive/model/NewFeedListItem;->fixed:Z

    .line 78
    iput-object p3, p0, Lco/kr/festfive/model/NewFeedListItem;->user_id:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lco/kr/festfive/model/NewFeedListItem;->contents:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lco/kr/festfive/model/NewFeedListItem;->image1:Ljava/lang/String;

    .line 81
    iput-object p6, p0, Lco/kr/festfive/model/NewFeedListItem;->image2:Ljava/lang/String;

    .line 82
    iput-object p7, p0, Lco/kr/festfive/model/NewFeedListItem;->image3:Ljava/lang/String;

    .line 83
    iput-object p8, p0, Lco/kr/festfive/model/NewFeedListItem;->image4:Ljava/lang/String;

    .line 84
    iput-object p9, p0, Lco/kr/festfive/model/NewFeedListItem;->image5:Ljava/lang/String;

    .line 85
    iput-object p10, p0, Lco/kr/festfive/model/NewFeedListItem;->like_count:Ljava/lang/String;

    .line 86
    iput-object p11, p0, Lco/kr/festfive/model/NewFeedListItem;->reply_count:Ljava/lang/String;

    .line 87
    iput-object p12, p0, Lco/kr/festfive/model/NewFeedListItem;->create_date:Ljava/lang/String;

    .line 88
    iput-object p13, p0, Lco/kr/festfive/model/NewFeedListItem;->image1_url:Ljava/lang/String;

    .line 89
    move-object/from16 v0, p14

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->image2_url:Ljava/lang/String;

    .line 90
    move-object/from16 v0, p15

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->image3_url:Ljava/lang/String;

    .line 91
    move-object/from16 v0, p16

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->image4_url:Ljava/lang/String;

    .line 92
    move-object/from16 v0, p17

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->image5_url:Ljava/lang/String;

    .line 93
    move-object/from16 v0, p18

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_name:Ljava/lang/String;

    .line 94
    move-object/from16 v0, p19

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_company:Ljava/lang/String;

    .line 95
    move-object/from16 v0, p20

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_position:Ljava/lang/String;

    .line 96
    move-object/from16 v0, p21

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->office_name:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p22

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_profile_thumb_url:Ljava/lang/String;

    .line 98
    move-object/from16 v0, p23

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_profile_url:Ljava/lang/String;

    .line 99
    move-object/from16 v0, p24

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->is_like:Ljava/lang/String;

    .line 100
    move-object/from16 v0, p25

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_level:Ljava/lang/String;

    .line 101
    move-object/from16 v0, p26

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->tag:Ljava/lang/String;

    .line 102
    move-object/from16 v0, p27

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->url:Ljava/lang/String;

    .line 103
    move-object/from16 v0, p28

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->url_title:Ljava/lang/String;

    .line 104
    const-string v1, "Y"

    move-object/from16 v0, p29

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lco/kr/festfive/model/NewFeedListItem;->signed:Z

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "news_feed_id"    # Ljava/lang/String;
    .param p2, "isFixed"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "contents"    # Ljava/lang/String;
    .param p5, "image1"    # Ljava/lang/String;
    .param p6, "image2"    # Ljava/lang/String;
    .param p7, "image3"    # Ljava/lang/String;
    .param p8, "image4"    # Ljava/lang/String;
    .param p9, "image5"    # Ljava/lang/String;
    .param p10, "like_count"    # Ljava/lang/String;
    .param p11, "reply_count"    # Ljava/lang/String;
    .param p12, "create_date"    # Ljava/lang/String;
    .param p13, "image1_url"    # Ljava/lang/String;
    .param p14, "image2_url"    # Ljava/lang/String;
    .param p15, "image3_url"    # Ljava/lang/String;
    .param p16, "image4_url"    # Ljava/lang/String;
    .param p17, "image5_url"    # Ljava/lang/String;
    .param p18, "user_name"    # Ljava/lang/String;
    .param p19, "user_company"    # Ljava/lang/String;
    .param p20, "user_position"    # Ljava/lang/String;
    .param p21, "office_name"    # Ljava/lang/String;
    .param p22, "user_profile_thumb_url"    # Ljava/lang/String;
    .param p23, "user_profile_url"    # Ljava/lang/String;
    .param p24, "is_like"    # Ljava/lang/String;
    .param p25, "user_level"    # Ljava/lang/String;
    .param p26, "tag"    # Ljava/lang/String;
    .param p27, "url"    # Ljava/lang/String;
    .param p28, "url_title"    # Ljava/lang/String;
    .param p29, "signed"    # Ljava/lang/String;
    .param p30, "category"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lco/kr/festfive/model/NewFeedListItem;->news_feed_id:Ljava/lang/String;

    .line 111
    const-string v1, "Y"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lco/kr/festfive/model/NewFeedListItem;->fixed:Z

    .line 112
    iput-object p3, p0, Lco/kr/festfive/model/NewFeedListItem;->user_id:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Lco/kr/festfive/model/NewFeedListItem;->contents:Ljava/lang/String;

    .line 114
    iput-object p5, p0, Lco/kr/festfive/model/NewFeedListItem;->image1:Ljava/lang/String;

    .line 115
    iput-object p6, p0, Lco/kr/festfive/model/NewFeedListItem;->image2:Ljava/lang/String;

    .line 116
    iput-object p7, p0, Lco/kr/festfive/model/NewFeedListItem;->image3:Ljava/lang/String;

    .line 117
    iput-object p8, p0, Lco/kr/festfive/model/NewFeedListItem;->image4:Ljava/lang/String;

    .line 118
    iput-object p9, p0, Lco/kr/festfive/model/NewFeedListItem;->image5:Ljava/lang/String;

    .line 119
    iput-object p10, p0, Lco/kr/festfive/model/NewFeedListItem;->like_count:Ljava/lang/String;

    .line 120
    iput-object p11, p0, Lco/kr/festfive/model/NewFeedListItem;->reply_count:Ljava/lang/String;

    .line 121
    iput-object p12, p0, Lco/kr/festfive/model/NewFeedListItem;->create_date:Ljava/lang/String;

    .line 122
    iput-object p13, p0, Lco/kr/festfive/model/NewFeedListItem;->image1_url:Ljava/lang/String;

    .line 123
    move-object/from16 v0, p14

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->image2_url:Ljava/lang/String;

    .line 124
    move-object/from16 v0, p15

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->image3_url:Ljava/lang/String;

    .line 125
    move-object/from16 v0, p16

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->image4_url:Ljava/lang/String;

    .line 126
    move-object/from16 v0, p17

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->image5_url:Ljava/lang/String;

    .line 127
    move-object/from16 v0, p18

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_name:Ljava/lang/String;

    .line 128
    move-object/from16 v0, p19

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_company:Ljava/lang/String;

    .line 129
    move-object/from16 v0, p20

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_position:Ljava/lang/String;

    .line 130
    move-object/from16 v0, p21

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->office_name:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p22

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_profile_thumb_url:Ljava/lang/String;

    .line 132
    move-object/from16 v0, p23

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_profile_url:Ljava/lang/String;

    .line 133
    move-object/from16 v0, p24

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->is_like:Ljava/lang/String;

    .line 134
    move-object/from16 v0, p25

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_level:Ljava/lang/String;

    .line 135
    move-object/from16 v0, p26

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->tag:Ljava/lang/String;

    .line 136
    move-object/from16 v0, p27

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->url:Ljava/lang/String;

    .line 137
    move-object/from16 v0, p28

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->url_title:Ljava/lang/String;

    .line 138
    const-string v1, "Y"

    move-object/from16 v0, p29

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lco/kr/festfive/model/NewFeedListItem;->signed:Z

    .line 139
    move-object/from16 v0, p30

    iput-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->category:Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method public addLikeCount()V
    .locals 2

    .prologue
    .line 171
    iget-object v1, p0, Lco/kr/festfive/model/NewFeedListItem;->like_count:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 172
    .local v0, "count":I
    add-int/lit8 v0, v0, 0x1

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/model/NewFeedListItem;->like_count:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->create_date:Ljava/lang/String;

    return-object v0
.end method

.method public getImage1Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->image1_url:Ljava/lang/String;

    return-object v0
.end method

.method public getImage2Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->image2_url:Ljava/lang/String;

    return-object v0
.end method

.method public getImage3Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->image3_url:Ljava/lang/String;

    return-object v0
.end method

.method public getImage4Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->image4_url:Ljava/lang/String;

    return-object v0
.end method

.method public getImage5Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->image5_url:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLike()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->is_like:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 232
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->is_like:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLikeCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->like_count:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsFeedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->news_feed_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->office_name:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->reply_count:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl_title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->url_title:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_company:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_level:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_position:Ljava/lang/String;

    return-object v0
.end method

.method public getUserProfileThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lco/kr/festfive/model/NewFeedListItem;->user_profile_thumb_url:Ljava/lang/String;

    return-object v0
.end method

.method public isFixed()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lco/kr/festfive/model/NewFeedListItem;->fixed:Z

    return v0
.end method

.method public isSigned()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lco/kr/festfive/model/NewFeedListItem;->signed:Z

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lco/kr/festfive/model/NewFeedListItem;->category:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setFixed(Z)V
    .locals 0
    .param p1, "fixed"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lco/kr/festfive/model/NewFeedListItem;->fixed:Z

    .line 17
    return-void
.end method

.method public setIsLike(Ljava/lang/String;)V
    .locals 0
    .param p1, "like"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lco/kr/festfive/model/NewFeedListItem;->is_like:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setLikeCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "like_count"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lco/kr/festfive/model/NewFeedListItem;->like_count:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setSigned(Z)V
    .locals 0
    .param p1, "signed"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lco/kr/festfive/model/NewFeedListItem;->signed:Z

    .line 261
    return-void
.end method

.method public subtractLikeCount()V
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lco/kr/festfive/model/NewFeedListItem;->like_count:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 178
    .local v0, "count":I
    add-int/lit8 v0, v0, -0x1

    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/model/NewFeedListItem;->like_count:Ljava/lang/String;

    .line 180
    return-void
.end method
