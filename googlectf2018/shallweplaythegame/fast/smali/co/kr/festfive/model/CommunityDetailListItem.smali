.class public Lco/kr/festfive/model/CommunityDetailListItem;
.super Ljava/lang/Object;
.source "CommunityDetailListItem.java"


# instance fields
.field private community_date:Ljava/lang/String;

.field private community_id:Ljava/lang/String;

.field private community_image_url:Ljava/lang/String;

.field private community_lat:Ljava/lang/String;

.field private community_lon:Ljava/lang/String;

.field private community_time:Ljava/lang/String;

.field private create_date:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private is_join:Ljava/lang/String;

.field private join_count:Ljava/lang/String;

.field private office_address:Ljava/lang/String;

.field private office_id:Ljava/lang/String;

.field private office_name:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_profile_thumb_url:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "community_id"    # Ljava/lang/String;
    .param p2, "office_id"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "community_date"    # Ljava/lang/String;
    .param p6, "community_time"    # Ljava/lang/String;
    .param p7, "image"    # Ljava/lang/String;
    .param p8, "summary"    # Ljava/lang/String;
    .param p9, "description"    # Ljava/lang/String;
    .param p10, "join_count"    # Ljava/lang/String;
    .param p11, "community_lat"    # Ljava/lang/String;
    .param p12, "community_lon"    # Ljava/lang/String;
    .param p13, "create_date"    # Ljava/lang/String;
    .param p14, "community_image_url"    # Ljava/lang/String;
    .param p16, "office_name"    # Ljava/lang/String;
    .param p17, "office_address"    # Ljava/lang/String;
    .param p18, "is_join"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p15, "user_profile_thumb_url":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lco/kr/festfive/model/CommunityDetailListItem;->community_id:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lco/kr/festfive/model/CommunityDetailListItem;->office_id:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lco/kr/festfive/model/CommunityDetailListItem;->user_id:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lco/kr/festfive/model/CommunityDetailListItem;->title:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lco/kr/festfive/model/CommunityDetailListItem;->community_date:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lco/kr/festfive/model/CommunityDetailListItem;->community_time:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lco/kr/festfive/model/CommunityDetailListItem;->image:Ljava/lang/String;

    .line 39
    iput-object p8, p0, Lco/kr/festfive/model/CommunityDetailListItem;->summary:Ljava/lang/String;

    .line 40
    iput-object p9, p0, Lco/kr/festfive/model/CommunityDetailListItem;->description:Ljava/lang/String;

    .line 41
    iput-object p10, p0, Lco/kr/festfive/model/CommunityDetailListItem;->join_count:Ljava/lang/String;

    .line 42
    iput-object p11, p0, Lco/kr/festfive/model/CommunityDetailListItem;->community_lat:Ljava/lang/String;

    .line 43
    iput-object p12, p0, Lco/kr/festfive/model/CommunityDetailListItem;->community_lon:Ljava/lang/String;

    .line 44
    iput-object p13, p0, Lco/kr/festfive/model/CommunityDetailListItem;->create_date:Ljava/lang/String;

    .line 45
    move-object/from16 v0, p15

    iput-object v0, p0, Lco/kr/festfive/model/CommunityDetailListItem;->user_profile_thumb_url:Ljava/util/ArrayList;

    .line 46
    move-object/from16 v0, p16

    iput-object v0, p0, Lco/kr/festfive/model/CommunityDetailListItem;->office_name:Ljava/lang/String;

    .line 47
    move-object/from16 v0, p17

    iput-object v0, p0, Lco/kr/festfive/model/CommunityDetailListItem;->office_address:Ljava/lang/String;

    .line 48
    move-object/from16 v0, p18

    iput-object v0, p0, Lco/kr/festfive/model/CommunityDetailListItem;->is_join:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getCommunityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lco/kr/festfive/model/CommunityDetailListItem;->community_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCommunityImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lco/kr/festfive/model/CommunityDetailListItem;->community_image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lco/kr/festfive/model/CommunityDetailListItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lco/kr/festfive/model/CommunityDetailListItem;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lco/kr/festfive/model/CommunityDetailListItem;->title:Ljava/lang/String;

    return-object v0
.end method
