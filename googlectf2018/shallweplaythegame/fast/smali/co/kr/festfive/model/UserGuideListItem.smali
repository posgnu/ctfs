.class public Lco/kr/festfive/model/UserGuideListItem;
.super Ljava/lang/Object;
.source "UserGuideListItem.java"


# instance fields
.field private contents:Ljava/lang/String;

.field private create_date:Ljava/lang/String;

.field private image_url:Ljava/lang/String;

.field private office_id:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private user_guide_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "user_guide_id"    # Ljava/lang/String;
    .param p2, "office_id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "contents"    # Ljava/lang/String;
    .param p5, "create_date"    # Ljava/lang/String;
    .param p6, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lco/kr/festfive/model/UserGuideListItem;->user_guide_id:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lco/kr/festfive/model/UserGuideListItem;->office_id:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lco/kr/festfive/model/UserGuideListItem;->title:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lco/kr/festfive/model/UserGuideListItem;->contents:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lco/kr/festfive/model/UserGuideListItem;->create_date:Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lco/kr/festfive/model/UserGuideListItem;->image_url:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lco/kr/festfive/model/UserGuideListItem;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public getImage_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lco/kr/festfive/model/UserGuideListItem;->image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lco/kr/festfive/model/UserGuideListItem;->office_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lco/kr/festfive/model/UserGuideListItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUserGuideId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lco/kr/festfive/model/UserGuideListItem;->user_guide_id:Ljava/lang/String;

    return-object v0
.end method
