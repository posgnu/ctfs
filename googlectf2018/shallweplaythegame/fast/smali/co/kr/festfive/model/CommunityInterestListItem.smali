.class public Lco/kr/festfive/model/CommunityInterestListItem;
.super Ljava/lang/Object;
.source "CommunityInterestListItem.java"


# instance fields
.field private community_date:Ljava/lang/String;

.field private community_id:Ljava/lang/String;

.field private community_image_url:Ljava/lang/String;

.field private community_time:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "community_id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "community_date"    # Ljava/lang/String;
    .param p4, "community_time"    # Ljava/lang/String;
    .param p5, "summary"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "community_image_url"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lco/kr/festfive/model/CommunityInterestListItem;->community_id:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lco/kr/festfive/model/CommunityInterestListItem;->title:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lco/kr/festfive/model/CommunityInterestListItem;->community_date:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lco/kr/festfive/model/CommunityInterestListItem;->community_time:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lco/kr/festfive/model/CommunityInterestListItem;->summary:Ljava/lang/String;

    .line 22
    iput-object p6, p0, Lco/kr/festfive/model/CommunityInterestListItem;->description:Ljava/lang/String;

    .line 23
    iput-object p7, p0, Lco/kr/festfive/model/CommunityInterestListItem;->community_image_url:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getCommunityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lco/kr/festfive/model/CommunityInterestListItem;->community_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCommunityImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lco/kr/festfive/model/CommunityInterestListItem;->community_image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lco/kr/festfive/model/CommunityInterestListItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lco/kr/festfive/model/CommunityInterestListItem;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lco/kr/festfive/model/CommunityInterestListItem;->title:Ljava/lang/String;

    return-object v0
.end method
