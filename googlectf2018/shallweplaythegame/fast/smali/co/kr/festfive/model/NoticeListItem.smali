.class public Lco/kr/festfive/model/NoticeListItem;
.super Ljava/lang/Object;
.source "NoticeListItem.java"


# instance fields
.field private contents:Ljava/lang/String;

.field private create_date:Ljava/lang/String;

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

.field private like_count:Ljava/lang/String;

.field private news_feed_id:Ljava/lang/String;

.field private office_name:Ljava/lang/String;

.field private reply_count:Ljava/lang/String;

.field private user_company:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_name:Ljava/lang/String;

.field private user_position:Ljava/lang/String;

.field private user_profile_thumb_url:Ljava/lang/String;

.field private user_profile_url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "news_feed_id"    # Ljava/lang/String;
    .param p2, "user_id"    # Ljava/lang/String;
    .param p3, "contents"    # Ljava/lang/String;
    .param p4, "image1"    # Ljava/lang/String;
    .param p5, "image2"    # Ljava/lang/String;
    .param p6, "image3"    # Ljava/lang/String;
    .param p7, "image4"    # Ljava/lang/String;
    .param p8, "image5"    # Ljava/lang/String;
    .param p9, "like_count"    # Ljava/lang/String;
    .param p10, "reply_count"    # Ljava/lang/String;
    .param p11, "create_date"    # Ljava/lang/String;
    .param p12, "image1_url"    # Ljava/lang/String;
    .param p13, "image2_url"    # Ljava/lang/String;
    .param p14, "image3_url"    # Ljava/lang/String;
    .param p15, "image4_url"    # Ljava/lang/String;
    .param p16, "image5_url"    # Ljava/lang/String;
    .param p17, "user_name"    # Ljava/lang/String;
    .param p18, "user_company"    # Ljava/lang/String;
    .param p19, "user_position"    # Ljava/lang/String;
    .param p20, "office_name"    # Ljava/lang/String;
    .param p21, "user_profile_thumb_url"    # Ljava/lang/String;
    .param p22, "user_profile_url"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lco/kr/festfive/model/NoticeListItem;->news_feed_id:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lco/kr/festfive/model/NoticeListItem;->user_id:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lco/kr/festfive/model/NoticeListItem;->contents:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lco/kr/festfive/model/NoticeListItem;->image1:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lco/kr/festfive/model/NoticeListItem;->image2:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Lco/kr/festfive/model/NoticeListItem;->image3:Ljava/lang/String;

    .line 62
    iput-object p7, p0, Lco/kr/festfive/model/NoticeListItem;->image4:Ljava/lang/String;

    .line 63
    iput-object p8, p0, Lco/kr/festfive/model/NoticeListItem;->image5:Ljava/lang/String;

    .line 64
    iput-object p9, p0, Lco/kr/festfive/model/NoticeListItem;->like_count:Ljava/lang/String;

    .line 65
    iput-object p10, p0, Lco/kr/festfive/model/NoticeListItem;->reply_count:Ljava/lang/String;

    .line 66
    iput-object p11, p0, Lco/kr/festfive/model/NoticeListItem;->create_date:Ljava/lang/String;

    .line 67
    iput-object p12, p0, Lco/kr/festfive/model/NoticeListItem;->image1_url:Ljava/lang/String;

    .line 68
    iput-object p13, p0, Lco/kr/festfive/model/NoticeListItem;->image2_url:Ljava/lang/String;

    .line 69
    iput-object p14, p0, Lco/kr/festfive/model/NoticeListItem;->image3_url:Ljava/lang/String;

    .line 70
    move-object/from16 v0, p15

    iput-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->image4_url:Ljava/lang/String;

    .line 71
    move-object/from16 v0, p16

    iput-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->image5_url:Ljava/lang/String;

    .line 72
    move-object/from16 v0, p17

    iput-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->user_name:Ljava/lang/String;

    .line 73
    move-object/from16 v0, p18

    iput-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->user_company:Ljava/lang/String;

    .line 74
    move-object/from16 v0, p19

    iput-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->user_position:Ljava/lang/String;

    .line 75
    move-object/from16 v0, p20

    iput-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->office_name:Ljava/lang/String;

    .line 76
    move-object/from16 v0, p21

    iput-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->user_profile_thumb_url:Ljava/lang/String;

    .line 77
    move-object/from16 v0, p22

    iput-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->user_profile_url:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->create_date:Ljava/lang/String;

    return-object v0
.end method

.method public getImage1Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->image1_url:Ljava/lang/String;

    return-object v0
.end method

.method public getImage2Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->image2_url:Ljava/lang/String;

    return-object v0
.end method

.method public getImage3Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->image3_url:Ljava/lang/String;

    return-object v0
.end method

.method public getImage4Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->image4_url:Ljava/lang/String;

    return-object v0
.end method

.method public getImage5Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->image5_url:Ljava/lang/String;

    return-object v0
.end method

.method public getLikeCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->like_count:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsFeedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->news_feed_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->office_name:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->reply_count:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->user_company:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->user_position:Ljava/lang/String;

    return-object v0
.end method

.method public getUserProfileThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListItem;->user_profile_thumb_url:Ljava/lang/String;

    return-object v0
.end method

.method public setLikeCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "like_count"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lco/kr/festfive/model/NoticeListItem;->like_count:Ljava/lang/String;

    .line 98
    return-void
.end method
