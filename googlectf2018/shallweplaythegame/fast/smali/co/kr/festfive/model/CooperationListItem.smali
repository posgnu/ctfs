.class public Lco/kr/festfive/model/CooperationListItem;
.super Ljava/lang/Object;
.source "CooperationListItem.java"


# instance fields
.field private contents:Ljava/lang/String;

.field private create_date:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private homepage:Ljava/lang/String;

.field private image_url:Ljava/lang/String;

.field private office_id:Ljava/lang/String;

.field private officener_id:Ljava/lang/String;

.field private officener_type:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "officener_id"    # Ljava/lang/String;
    .param p2, "office_id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "contents"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;
    .param p6, "phone"    # Ljava/lang/String;
    .param p7, "officener_type"    # Ljava/lang/String;
    .param p8, "create_date"    # Ljava/lang/String;
    .param p9, "homepage"    # Ljava/lang/String;
    .param p10, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lco/kr/festfive/model/CooperationListItem;->officener_id:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lco/kr/festfive/model/CooperationListItem;->office_id:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lco/kr/festfive/model/CooperationListItem;->title:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lco/kr/festfive/model/CooperationListItem;->contents:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lco/kr/festfive/model/CooperationListItem;->email:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lco/kr/festfive/model/CooperationListItem;->phone:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lco/kr/festfive/model/CooperationListItem;->officener_type:Ljava/lang/String;

    .line 37
    iput-object p8, p0, Lco/kr/festfive/model/CooperationListItem;->create_date:Ljava/lang/String;

    .line 38
    iput-object p9, p0, Lco/kr/festfive/model/CooperationListItem;->homepage:Ljava/lang/String;

    .line 39
    iput-object p10, p0, Lco/kr/festfive/model/CooperationListItem;->image_url:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lco/kr/festfive/model/CooperationListItem;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public getCreate_date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lco/kr/festfive/model/CooperationListItem;->create_date:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lco/kr/festfive/model/CooperationListItem;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getHomepage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lco/kr/festfive/model/CooperationListItem;->homepage:Ljava/lang/String;

    return-object v0
.end method

.method public getImage_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lco/kr/festfive/model/CooperationListItem;->image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficenerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lco/kr/festfive/model/CooperationListItem;->officener_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficenerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lco/kr/festfive/model/CooperationListItem;->officener_type:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lco/kr/festfive/model/CooperationListItem;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lco/kr/festfive/model/CooperationListItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCreate_date(Ljava/lang/String;)V
    .locals 0
    .param p1, "create_date"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lco/kr/festfive/model/CooperationListItem;->create_date:Ljava/lang/String;

    .line 80
    return-void
.end method
