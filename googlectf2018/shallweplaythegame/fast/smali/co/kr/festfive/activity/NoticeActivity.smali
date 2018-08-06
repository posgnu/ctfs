.class public Lco/kr/festfive/activity/NoticeActivity;
.super Landroid/app/Activity;
.source "NoticeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/NoticeListMainItem;",
            ">;"
        }
    .end annotation
.end field

.field private backButtonLinear:Landroid/widget/TextView;

.field private expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private noticeExAdapter:Lco/kr/festfive/adapter/NoticeExAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/NoticeActivity;->arrayList:Ljava/util/ArrayList;

    .line 42
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/NoticeActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/activity/NoticeActivity;)Lco/kr/festfive/model/AnimatedExpandableListView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/NoticeActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lco/kr/festfive/activity/NoticeActivity;->expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/activity/NoticeActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/NoticeActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lco/kr/festfive/activity/NoticeActivity;->arrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lco/kr/festfive/activity/NoticeActivity;)Lco/kr/festfive/adapter/NoticeExAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/NoticeActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lco/kr/festfive/activity/NoticeActivity;->noticeExAdapter:Lco/kr/festfive/adapter/NoticeExAdapter;

    return-object v0
.end method

.method private getNoticeFromServer()V
    .locals 8

    .prologue
    .line 91
    const-string v5, ""

    const-string v6, "loading..."

    invoke-static {p0, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 93
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v3

    .line 95
    .local v3, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v5, p0, Lco/kr/festfive/activity/NoticeActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v5, :cond_0

    .line 96
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v5

    invoke-virtual {v5}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v5

    iput-object v5, p0, Lco/kr/festfive/activity/NoticeActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 99
    :cond_0
    iget-object v5, p0, Lco/kr/festfive/activity/NoticeActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v6, "user_id"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "userId":Ljava/lang/String;
    iget-object v5, p0, Lco/kr/festfive/activity/NoticeActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v6, "office_id"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "officeId":Ljava/lang/String;
    const-string v5, "==Log=="

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "office id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-interface {v3, v4, v2}, Lco/kr/festfive/service/FestInterface;->getNotice(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 105
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v5, Lco/kr/festfive/activity/NoticeActivity$2;

    invoke-direct {v5, p0, v1}, Lco/kr/festfive/activity/NoticeActivity$2;-><init>(Lco/kr/festfive/activity/NoticeActivity;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v5}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 160
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080022

    if-ne v0, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lco/kr/festfive/activity/NoticeActivity;->finish()V

    .line 173
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/NoticeActivity;->setContentView(I)V

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 51
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 55
    :cond_0
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/activity/NoticeActivity;->backButtonLinear:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lco/kr/festfive/activity/NoticeActivity;->backButtonLinear:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/AnimatedExpandableListView;

    iput-object v0, p0, Lco/kr/festfive/activity/NoticeActivity;->expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

    .line 60
    iget-object v0, p0, Lco/kr/festfive/activity/NoticeActivity;->expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

    new-instance v1, Lco/kr/festfive/activity/NoticeActivity$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/NoticeActivity$1;-><init>(Lco/kr/festfive/activity/NoticeActivity;)V

    invoke-virtual {v0, v1}, Lco/kr/festfive/model/AnimatedExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 83
    new-instance v0, Lco/kr/festfive/adapter/NoticeExAdapter;

    invoke-direct {v0, p0}, Lco/kr/festfive/adapter/NoticeExAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/kr/festfive/activity/NoticeActivity;->noticeExAdapter:Lco/kr/festfive/adapter/NoticeExAdapter;

    .line 84
    invoke-direct {p0}, Lco/kr/festfive/activity/NoticeActivity;->getNoticeFromServer()V

    .line 86
    iget-object v0, p0, Lco/kr/festfive/activity/NoticeActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 166
    return-void
.end method
