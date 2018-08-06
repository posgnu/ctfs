.class public Lco/kr/festfive/model/TermListItem;
.super Ljava/lang/Object;
.source "TermListItem.java"


# instance fields
.field contentText:Ljava/lang/String;

.field titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lco/kr/festfive/model/TermListItem;->titleText:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lco/kr/festfive/model/TermListItem;->contentText:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lco/kr/festfive/model/TermListItem;->contentText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lco/kr/festfive/model/TermListItem;->titleText:Ljava/lang/String;

    return-object v0
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentText"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lco/kr/festfive/model/TermListItem;->contentText:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleText"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lco/kr/festfive/model/TermListItem;->titleText:Ljava/lang/String;

    .line 31
    return-void
.end method
