.class public Lco/kr/festfive/model/GroupListItem;
.super Ljava/lang/Object;
.source "GroupListItem.java"


# instance fields
.field private companyCeo:Ljava/lang/String;

.field private companyDescription:Ljava/lang/String;

.field private companyHomepage:Ljava/lang/String;

.field private companyId:Ljava/lang/String;

.field private companyImage:Ljava/lang/String;

.field private companyLogo:Ljava/lang/String;

.field private companyName:Ljava/lang/String;

.field private companyRoomNm:Ljava/lang/String;

.field private companySummary:Ljava/lang/String;

.field private companyTalk:Ljava/lang/String;

.field private companyTel:Ljava/lang/String;

.field private createDt:Ljava/lang/String;

.field private logoUrl:Ljava/lang/String;

.field private memberCnt:Ljava/lang/String;

.field private officeId:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "companyId"    # Ljava/lang/String;
    .param p2, "officeId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "companyName"    # Ljava/lang/String;
    .param p5, "companyLogo"    # Ljava/lang/String;
    .param p6, "companyImage"    # Ljava/lang/String;
    .param p7, "companySummary"    # Ljava/lang/String;
    .param p8, "companyDescription"    # Ljava/lang/String;
    .param p9, "companyTalk"    # Ljava/lang/String;
    .param p10, "companyCeo"    # Ljava/lang/String;
    .param p11, "companyRoomNm"    # Ljava/lang/String;
    .param p12, "companyHomepage"    # Ljava/lang/String;
    .param p13, "companyTel"    # Ljava/lang/String;
    .param p14, "memberCnt"    # Ljava/lang/String;
    .param p15, "createDt"    # Ljava/lang/String;
    .param p16, "logoUrl"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lco/kr/festfive/model/GroupListItem;->companyId:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lco/kr/festfive/model/GroupListItem;->officeId:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lco/kr/festfive/model/GroupListItem;->userId:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lco/kr/festfive/model/GroupListItem;->companyName:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lco/kr/festfive/model/GroupListItem;->companyLogo:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lco/kr/festfive/model/GroupListItem;->companyImage:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lco/kr/festfive/model/GroupListItem;->companySummary:Ljava/lang/String;

    .line 46
    iput-object p8, p0, Lco/kr/festfive/model/GroupListItem;->companyDescription:Ljava/lang/String;

    .line 47
    iput-object p9, p0, Lco/kr/festfive/model/GroupListItem;->companyTalk:Ljava/lang/String;

    .line 48
    iput-object p10, p0, Lco/kr/festfive/model/GroupListItem;->companyCeo:Ljava/lang/String;

    .line 49
    iput-object p11, p0, Lco/kr/festfive/model/GroupListItem;->companyRoomNm:Ljava/lang/String;

    .line 50
    iput-object p12, p0, Lco/kr/festfive/model/GroupListItem;->companyHomepage:Ljava/lang/String;

    .line 51
    iput-object p13, p0, Lco/kr/festfive/model/GroupListItem;->companyTel:Ljava/lang/String;

    .line 52
    iput-object p14, p0, Lco/kr/festfive/model/GroupListItem;->memberCnt:Ljava/lang/String;

    .line 53
    move-object/from16 v0, p15

    iput-object v0, p0, Lco/kr/festfive/model/GroupListItem;->createDt:Ljava/lang/String;

    .line 54
    move-object/from16 v0, p16

    iput-object v0, p0, Lco/kr/festfive/model/GroupListItem;->logoUrl:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public getOfficeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lco/kr/festfive/model/GroupListItem;->officeId:Ljava/lang/String;

    return-object v0
.end method

.method public getcompanyCeo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lco/kr/festfive/model/GroupListItem;->companyCeo:Ljava/lang/String;

    return-object v0
.end method

.method public getcompanyDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lco/kr/festfive/model/GroupListItem;->companyDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getcompanyHomepage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lco/kr/festfive/model/GroupListItem;->companyHomepage:Ljava/lang/String;

    return-object v0
.end method

.method public getcompanyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lco/kr/festfive/model/GroupListItem;->companyId:Ljava/lang/String;

    return-object v0
.end method

.method public getcompanyImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lco/kr/festfive/model/GroupListItem;->companyImage:Ljava/lang/String;

    return-object v0
.end method

.method public getcompanyLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lco/kr/festfive/model/GroupListItem;->companyLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getcompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lco/kr/festfive/model/GroupListItem;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getcompanyRoomNm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lco/kr/festfive/model/GroupListItem;->companyRoomNm:Ljava/lang/String;

    return-object v0
.end method

.method public getcompanySummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lco/kr/festfive/model/GroupListItem;->companySummary:Ljava/lang/String;

    return-object v0
.end method

.method public getcompanyTalk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lco/kr/festfive/model/GroupListItem;->companyTalk:Ljava/lang/String;

    return-object v0
.end method

.method public getcompanyTel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lco/kr/festfive/model/GroupListItem;->companyTel:Ljava/lang/String;

    return-object v0
.end method

.method public getcreateDt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lco/kr/festfive/model/GroupListItem;->createDt:Ljava/lang/String;

    return-object v0
.end method

.method public getlogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lco/kr/festfive/model/GroupListItem;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmemberCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lco/kr/festfive/model/GroupListItem;->memberCnt:Ljava/lang/String;

    return-object v0
.end method

.method public getuserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/model/GroupListItem;->userId:Ljava/lang/String;

    return-object v0
.end method
