.class public Lco/kr/festfive/model/NoticeListMainItem;
.super Ljava/lang/Object;
.source "NoticeListMainItem.java"


# instance fields
.field private contents:Ljava/lang/String;

.field private createDt:Ljava/lang/String;

.field private flag:Z

.field private imageUrl:Ljava/lang/String;

.field private noticeId:Ljava/lang/String;

.field private officeId:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "noticeId"    # Ljava/lang/String;
    .param p2, "officeId"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "contents"    # Ljava/lang/String;
    .param p5, "createDt"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lco/kr/festfive/model/NoticeListMainItem;->noticeId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lco/kr/festfive/model/NoticeListMainItem;->officeId:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lco/kr/festfive/model/NoticeListMainItem;->title:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lco/kr/festfive/model/NoticeListMainItem;->contents:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lco/kr/festfive/model/NoticeListMainItem;->createDt:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/kr/festfive/model/NoticeListMainItem;->flag:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "noticeId"    # Ljava/lang/String;
    .param p2, "officeId"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "contents"    # Ljava/lang/String;
    .param p6, "createDt"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lco/kr/festfive/model/NoticeListMainItem;->noticeId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lco/kr/festfive/model/NoticeListMainItem;->officeId:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lco/kr/festfive/model/NoticeListMainItem;->imageUrl:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lco/kr/festfive/model/NoticeListMainItem;->title:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lco/kr/festfive/model/NoticeListMainItem;->contents:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lco/kr/festfive/model/NoticeListMainItem;->createDt:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/kr/festfive/model/NoticeListMainItem;->flag:Z

    .line 29
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListMainItem;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListMainItem;->createDt:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListMainItem;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListMainItem;->noticeId:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListMainItem;->officeId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lco/kr/festfive/model/NoticeListMainItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isFlag()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lco/kr/festfive/model/NoticeListMainItem;->flag:Z

    return v0
.end method

.method public setFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lco/kr/festfive/model/NoticeListMainItem;->flag:Z

    .line 65
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lco/kr/festfive/model/NoticeListMainItem;->imageUrl:Ljava/lang/String;

    .line 37
    return-void
.end method
