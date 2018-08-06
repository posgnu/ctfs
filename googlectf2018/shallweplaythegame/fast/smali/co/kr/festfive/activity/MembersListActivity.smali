.class public Lco/kr/festfive/activity/MembersListActivity;
.super Landroid/app/Activity;
.source "MembersListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private listView:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private mEdtSearch:Landroid/widget/EditText;

.field private mProfile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

.field private searchChannelListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/SearchChannelListItem;",
            ">;"
        }
    .end annotation
.end field

.field private searchWord:Ljava/lang/String;

.field private sorting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/SearchChannelListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->sorting:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->mUserId:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->mProfile:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/activity/MembersListActivity;)Lco/kr/festfive/adapter/MemberListAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/MembersListActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lco/kr/festfive/activity/MembersListActivity;Lco/kr/festfive/adapter/MemberListAdapter;)Lco/kr/festfive/adapter/MemberListAdapter;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/MembersListActivity;
    .param p1, "x1"    # Lco/kr/festfive/adapter/MemberListAdapter;

    .prologue
    .line 34
    iput-object p1, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lco/kr/festfive/activity/MembersListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/MembersListActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->mUserId:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lco/kr/festfive/activity/MembersListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/MembersListActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->mProfile:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lco/kr/festfive/activity/MembersListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/MembersListActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lco/kr/festfive/activity/MembersListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/MembersListActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lco/kr/festfive/activity/MembersListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/MembersListActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lco/kr/festfive/activity/MembersListActivity;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/MembersListActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lco/kr/festfive/activity/MembersListActivity;->sorting()V

    return-void
.end method

.method private getSearchUserListToServer(Ljava/lang/String;)V
    .locals 5
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 123
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    if-nez v2, :cond_0

    .line 124
    new-instance v2, Lco/kr/festfive/adapter/MemberListAdapter;

    iget-object v3, p0, Lco/kr/festfive/activity/MembersListActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lco/kr/festfive/adapter/MemberListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    .line 127
    :cond_0
    const-string v2, ""

    invoke-interface {v1, p1, v2}, Lco/kr/festfive/service/FestInterface;->getMemberList(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 128
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v2, Lco/kr/festfive/activity/MembersListActivity$2;

    invoke-direct {v2, p0}, Lco/kr/festfive/activity/MembersListActivity$2;-><init>(Lco/kr/festfive/activity/MembersListActivity;)V

    invoke-interface {v0, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 180
    return-void
.end method

.method private sorting()V
    .locals 12

    .prologue
    .line 183
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    new-instance v3, Lco/kr/festfive/activity/MembersListActivity$3;

    invoke-direct {v3, p0}, Lco/kr/festfive/activity/MembersListActivity$3;-><init>(Lco/kr/festfive/activity/MembersListActivity;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 189
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_5

    .line 190
    if-nez v11, :cond_0

    .line 191
    new-instance v0, Lco/kr/festfive/model/SearchChannelListItem;

    const-string v1, "title"

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    iget-object v5, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    invoke-direct/range {v0 .. v8}, Lco/kr/festfive/model/SearchChannelListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v0, "item":Lco/kr/festfive/model/SearchChannelListItem;
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    invoke-virtual {v2, v0}, Lco/kr/festfive/adapter/MemberListAdapter;->add(Ljava/lang/Object;)V

    .line 194
    new-instance v1, Lco/kr/festfive/model/SearchChannelListItem;

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v3}, Lco/kr/festfive/model/SearchChannelListItem;->getUserName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v4}, Lco/kr/festfive/model/SearchChannelListItem;->getUserCompany()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/SearchChannelListItem;->getUserPosition()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v7}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeRoomName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v8}, Lco/kr/festfive/model/SearchChannelListItem;->getUserProfileThumbUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v9}, Lco/kr/festfive/model/SearchChannelListItem;->getUserLevel()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lco/kr/festfive/model/SearchChannelListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v1, "item2":Lco/kr/festfive/model/SearchChannelListItem;
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lco/kr/festfive/model/SearchChannelListItem;->setChecked(Z)V

    .line 198
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    invoke-virtual {v2, v1}, Lco/kr/festfive/adapter/MemberListAdapter;->add(Ljava/lang/Object;)V

    .line 189
    .end local v1    # "item2":Lco/kr/festfive/model/SearchChannelListItem;
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 200
    .end local v0    # "item":Lco/kr/festfive/model/SearchChannelListItem;
    :cond_0
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    iget-object v3, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    invoke-virtual {v3}, Lco/kr/festfive/adapter/MemberListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    if-eq v2, v3, :cond_1

    const-string v3, "title"

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    iget-object v4, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    invoke-virtual {v4}, Lco/kr/festfive/adapter/MemberListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    :cond_1
    new-instance v0, Lco/kr/festfive/model/SearchChannelListItem;

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    .line 202
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserCompany()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserPosition()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    .line 203
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeRoomName()Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserProfileThumbUrl()Ljava/lang/String;

    move-result-object v9

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserLevel()Ljava/lang/String;

    move-result-object v10

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lco/kr/festfive/model/SearchChannelListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .restart local v0    # "item":Lco/kr/festfive/model/SearchChannelListItem;
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lco/kr/festfive/model/SearchChannelListItem;->setChecked(Z)V

    .line 205
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    invoke-virtual {v2, v0}, Lco/kr/festfive/adapter/MemberListAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 207
    .end local v0    # "item":Lco/kr/festfive/model/SearchChannelListItem;
    :cond_2
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    iget-object v4, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    invoke-virtual {v4}, Lco/kr/festfive/adapter/MemberListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v2

    if-eq v3, v2, :cond_3

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    iget-object v4, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    invoke-virtual {v4}, Lco/kr/festfive/adapter/MemberListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 208
    :cond_3
    new-instance v0, Lco/kr/festfive/model/SearchChannelListItem;

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    .line 209
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserCompany()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserPosition()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeRoomName()Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserProfileThumbUrl()Ljava/lang/String;

    move-result-object v9

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserLevel()Ljava/lang/String;

    move-result-object v10

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lco/kr/festfive/model/SearchChannelListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .restart local v0    # "item":Lco/kr/festfive/model/SearchChannelListItem;
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lco/kr/festfive/model/SearchChannelListItem;->setChecked(Z)V

    .line 212
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    invoke-virtual {v2, v0}, Lco/kr/festfive/adapter/MemberListAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 214
    .end local v0    # "item":Lco/kr/festfive/model/SearchChannelListItem;
    :cond_4
    new-instance v0, Lco/kr/festfive/model/SearchChannelListItem;

    const-string v3, "title"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lco/kr/festfive/model/SearchChannelListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .restart local v0    # "item":Lco/kr/festfive/model/SearchChannelListItem;
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    invoke-virtual {v2, v0}, Lco/kr/festfive/adapter/MemberListAdapter;->add(Ljava/lang/Object;)V

    .line 217
    new-instance v1, Lco/kr/festfive/model/SearchChannelListItem;

    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v3}, Lco/kr/festfive/model/SearchChannelListItem;->getUserName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v4}, Lco/kr/festfive/model/SearchChannelListItem;->getUserCompany()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/SearchChannelListItem;->getUserPosition()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v7}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeRoomName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v8}, Lco/kr/festfive/model/SearchChannelListItem;->getUserProfileThumbUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v9}, Lco/kr/festfive/model/SearchChannelListItem;->getUserLevel()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lco/kr/festfive/model/SearchChannelListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .restart local v1    # "item2":Lco/kr/festfive/model/SearchChannelListItem;
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lco/kr/festfive/model/SearchChannelListItem;->setChecked(Z)V

    .line 221
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    invoke-virtual {v2, v1}, Lco/kr/festfive/adapter/MemberListAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 227
    .end local v0    # "item":Lco/kr/festfive/model/SearchChannelListItem;
    .end local v1    # "item2":Lco/kr/festfive/model/SearchChannelListItem;
    :cond_5
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelAdapter:Lco/kr/festfive/adapter/MemberListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 96
    .local v1, "vid":I
    sparse-switch v1, :sswitch_data_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 98
    :sswitch_0
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lco/kr/festfive/activity/MembersListActivity;->mEdtSearch:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lco/kr/festfive/utils/Utils;->HideSoftKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 99
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->mEdtSearch:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchWord:Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchWord:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 102
    iget-object v2, p0, Lco/kr/festfive/activity/MembersListActivity;->searchWord:Ljava/lang/String;

    invoke-direct {p0, v2}, Lco/kr/festfive/activity/MembersListActivity;->getSearchUserListToServer(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "user_id"

    iget-object v3, p0, Lco/kr/festfive/activity/MembersListActivity;->mUserId:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 109
    const-string v2, "profile"

    iget-object v3, p0, Lco/kr/festfive/activity/MembersListActivity;->mProfile:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 110
    const/16 v2, 0x3ec

    invoke-virtual {p0, v2, v0}, Lco/kr/festfive/activity/MembersListActivity;->setResult(ILandroid/content/Intent;)V

    .line 111
    invoke-virtual {p0}, Lco/kr/festfive/activity/MembersListActivity;->finish()V

    goto :goto_0

    .line 115
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Lco/kr/festfive/activity/MembersListActivity;->finish()V

    goto :goto_0

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x7f080045 -> :sswitch_2
        0x7f08017b -> :sswitch_1
        0x7f0801cd -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/MembersListActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lco/kr/festfive/activity/MembersListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->mUserId:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p0}, Lco/kr/festfive/activity/MembersListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->mProfile:Ljava/util/ArrayList;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->searchWord:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lco/kr/festfive/activity/MembersListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->mContext:Landroid/content/Context;

    .line 55
    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/MembersListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->mEdtSearch:Landroid/widget/EditText;

    .line 56
    const v0, 0x7f0801cd

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/MembersListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f08017b

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/MembersListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/MembersListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/MembersListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->listView:Landroid/widget/ListView;

    .line 61
    iget-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lco/kr/festfive/activity/MembersListActivity$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/MembersListActivity$1;-><init>(Lco/kr/festfive/activity/MembersListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    iget-object v0, p0, Lco/kr/festfive/activity/MembersListActivity;->searchWord:Ljava/lang/String;

    invoke-direct {p0, v0}, Lco/kr/festfive/activity/MembersListActivity;->getSearchUserListToServer(Ljava/lang/String;)V

    .line 90
    return-void
.end method
