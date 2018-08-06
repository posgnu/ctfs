.class Lco/kr/festfive/fragment/PeopleFragment$TabItem;
.super Ljava/lang/Object;
.source "PeopleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/fragment/PeopleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabItem"
.end annotation


# instance fields
.field private tabTitle:Ljava/lang/String;

.field private tag:Ljava/lang/Object;

.field final synthetic this$0:Lco/kr/festfive/fragment/PeopleFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/PeopleFragment;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2, "_tabTitle"    # Ljava/lang/String;
    .param p3, "_tag"    # Ljava/lang/Object;

    .prologue
    .line 233
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment$TabItem;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p2, p0, Lco/kr/festfive/fragment/PeopleFragment$TabItem;->tabTitle:Ljava/lang/String;

    .line 235
    iput-object p3, p0, Lco/kr/festfive/fragment/PeopleFragment$TabItem;->tag:Ljava/lang/Object;

    .line 236
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 258
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment$TabItem;->tabTitle:Ljava/lang/String;

    check-cast p1, Lco/kr/festfive/fragment/PeopleFragment$TabItem;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lco/kr/festfive/fragment/PeopleFragment$TabItem;->tabTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment$TabItem;->tabTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment$TabItem;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public setTabTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabTitle"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment$TabItem;->tabTitle:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 251
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment$TabItem;->tag:Ljava/lang/Object;

    .line 252
    return-void
.end method
