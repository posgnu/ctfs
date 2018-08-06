.class Lco/kr/festfive/activity/MembersListActivity$3;
.super Ljava/lang/Object;
.source "MembersListActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/MembersListActivity;->sorting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lco/kr/festfive/model/SearchChannelListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/MembersListActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/MembersListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/MembersListActivity;

    .prologue
    .line 183
    iput-object p1, p0, Lco/kr/festfive/activity/MembersListActivity$3;->this$0:Lco/kr/festfive/activity/MembersListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lco/kr/festfive/model/SearchChannelListItem;Lco/kr/festfive/model/SearchChannelListItem;)I
    .locals 2
    .param p1, "obj1"    # Lco/kr/festfive/model/SearchChannelListItem;
    .param p2, "obj2"    # Lco/kr/festfive/model/SearchChannelListItem;

    .prologue
    .line 185
    invoke-virtual {p1}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 183
    check-cast p1, Lco/kr/festfive/model/SearchChannelListItem;

    check-cast p2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {p0, p1, p2}, Lco/kr/festfive/activity/MembersListActivity$3;->compare(Lco/kr/festfive/model/SearchChannelListItem;Lco/kr/festfive/model/SearchChannelListItem;)I

    move-result v0

    return v0
.end method
