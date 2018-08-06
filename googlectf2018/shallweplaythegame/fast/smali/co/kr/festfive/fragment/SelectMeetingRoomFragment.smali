.class public Lco/kr/festfive/fragment/SelectMeetingRoomFragment;
.super Landroid/support/v4/app/Fragment;
.source "SelectMeetingRoomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lco/kr/festfive/listener/DeleteListener;


# instance fields
.field private backButtonImage:Landroid/widget/TextView;

.field private dateButtonRelative:Landroid/widget/RelativeLayout;

.field private dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private dateText:Landroid/widget/TextView;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private listView:Landroid/widget/ListView;

.field private officeId:Ljava/lang/String;

.field private officeName:Ljava/lang/String;

.field private officeTitleText:Landroid/widget/TextView;

.field private reservButtonText:Landroid/widget/TextView;

.field private rootView:Landroid/view/View;

.field private selectMeetingRoomAdapter:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

.field strCurDay:Ljava/lang/String;

.field strCurMonth:Ljava/lang/String;

.field strCurYear:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->officeId:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->officeName:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->strCurYear:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->strCurMonth:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->strCurDay:Ljava/lang/String;

    .line 72
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 225
    new-instance v0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$2;

    invoke-direct {v0, p0}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$2;-><init>(Lco/kr/festfive/fragment/SelectMeetingRoomFragment;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/SelectMeetingRoomFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/SelectMeetingRoomFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->getRoomReserveListToServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/SelectMeetingRoomFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->dateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/SelectMeetingRoomFragment;)Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->selectMeetingRoomAdapter:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lco/kr/festfive/fragment/SelectMeetingRoomFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getRoomReserveListToServer(Ljava/lang/String;)V
    .locals 9
    .param p1, "currentDate"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-virtual {p0}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, ""

    const-string v8, "loading..."

    invoke-static {v6, v7, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v4

    .line 238
    .local v4, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v5

    .line 240
    .local v5, "service":Lco/kr/festfive/service/FestInterface;
    const-string v6, "\ub144"

    const-string v7, "-"

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "date":Ljava/lang/String;
    const-string v6, "\uc6d4"

    const-string v7, "-"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "date1":Ljava/lang/String;
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "date2":Ljava/lang/String;
    iget-object v6, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->selectMeetingRoomAdapter:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    if-eqz v6, :cond_0

    .line 245
    iget-object v6, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->selectMeetingRoomAdapter:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-virtual {v6}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->clear()V

    .line 246
    iget-object v6, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->selectMeetingRoomAdapter:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-virtual {v6}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->notifyDataSetChanged()V

    .line 251
    :cond_0
    iget-object v6, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->officeId:Ljava/lang/String;

    invoke-interface {v5, v6, v3}, Lco/kr/festfive/service/FestInterface;->getRoomReserveList(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 253
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v6, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$3;

    invoke-direct {v6, p0, v4}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$3;-><init>(Lco/kr/festfive/fragment/SelectMeetingRoomFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v6}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 316
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "officeId"    # Ljava/lang/String;
    .param p1, "officeName"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;

    invoke-direct {v0}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;-><init>()V

    .line 120
    .local v0, "selectMeetingRoomFragment":Lco/kr/festfive/fragment/SelectMeetingRoomFragment;
    iput-object p0, v0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->officeId:Ljava/lang/String;

    .line 121
    iput-object p1, v0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->officeName:Ljava/lang/String;

    .line 123
    return-object v0
.end method

.method private setRoomReserveToServer()V
    .locals 13

    .prologue
    .line 127
    invoke-virtual {p0}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v11, ""

    const-string v12, "loading..."

    invoke-static {v2, v11, v12}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v10

    .line 128
    .local v10, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v0

    .line 130
    .local v0, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v2, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->selectMeetingRoomAdapter:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-virtual {v2}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->getStartTime()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "startTime":Ljava/lang/String;
    iget-object v2, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->selectMeetingRoomAdapter:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-virtual {v2}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->getEndTime()Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "endTime":Ljava/lang/String;
    iget-object v2, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->selectMeetingRoomAdapter:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-virtual {v2}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->getRoomId()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "roomId":Ljava/lang/String;
    iget-object v2, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->dateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "\ub144"

    const-string v12, "-"

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "date":Ljava/lang/String;
    const-string v2, "\uc6d4"

    const-string v11, "-"

    invoke-virtual {v8, v2, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "date1":Ljava/lang/String;
    const-string v2, " "

    const-string v11, ""

    invoke-virtual {v9, v2, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "date2":Ljava/lang/String;
    const-string v2, "\uc77c"

    const-string v11, ""

    invoke-virtual {v4, v2, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 139
    iget-object v2, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v2, :cond_0

    .line 140
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v2

    iput-object v2, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 142
    :cond_0
    iget-object v2, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v11, "user_id"

    const-string v12, ""

    invoke-virtual {v2, v11, v12}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "userId":Ljava/lang/String;
    iget-object v2, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->officeId:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Lco/kr/festfive/service/FestInterface;->setRoomReserve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v7

    .line 146
    .local v7, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v2, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;

    invoke-direct {v2, p0, v10}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment$1;-><init>(Lco/kr/festfive/fragment/SelectMeetingRoomFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v7, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 212
    return-void
.end method


# virtual methods
.method public delete(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 321
    return-void
.end method

.method public detail(Lco/kr/festfive/model/NewFeedListItem;)V
    .locals 0
    .param p1, "newFeedListItem"    # Lco/kr/festfive/model/NewFeedListItem;

    .prologue
    .line 326
    return-void
.end method

.method public detail(Lco/kr/festfive/model/NoticeListItem;)V
    .locals 0
    .param p1, "noticeListItem"    # Lco/kr/festfive/model/NoticeListItem;

    .prologue
    .line 331
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080021

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080023

    if-ne v0, v1, :cond_2

    .line 217
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 223
    :cond_1
    :goto_0
    return-void

    .line 218
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801b2

    if-ne v0, v1, :cond_3

    .line 219
    invoke-direct {p0}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->setRoomReserveToServer()V

    goto :goto_0

    .line 220
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080068

    if-ne v0, v1, :cond_1

    .line 221
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v3, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->strCurYear:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->strCurMonth:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->strCurDay:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 77
    const v5, 0x7f0a006a

    const/4 v8, 0x0

    invoke-virtual {p1, v5, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->rootView:Landroid/view/View;

    .line 79
    iget-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->rootView:Landroid/view/View;

    const v8, 0x7f080023

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->backButtonImage:Landroid/widget/TextView;

    .line 80
    iget-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->backButtonImage:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->rootView:Landroid/view/View;

    const v8, 0x7f0801b2

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->reservButtonText:Landroid/widget/TextView;

    .line 83
    iget-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->reservButtonText:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->rootView:Landroid/view/View;

    const v8, 0x7f08017a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->officeTitleText:Landroid/widget/TextView;

    .line 86
    iget-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->officeTitleText:Landroid/widget/TextView;

    iget-object v8, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->officeName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->rootView:Landroid/view/View;

    const v8, 0x7f080068

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->dateButtonRelative:Landroid/widget/RelativeLayout;

    .line 89
    iget-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->dateButtonRelative:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->rootView:Landroid/view/View;

    const v8, 0x7f080069

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->dateText:Landroid/widget/TextView;

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 95
    .local v6, "now":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 97
    .local v4, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, "CurYearFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "MM"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, "CurMonthFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "dd"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "CurDayFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->strCurYear:Ljava/lang/String;

    .line 102
    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->strCurMonth:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->strCurDay:Ljava/lang/String;

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->strCurYear:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->strCurMonth:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->strCurDay:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "currentDate":Ljava/lang/String;
    invoke-direct {p0, v3}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->getRoomReserveListToServer(Ljava/lang/String;)V

    .line 107
    iget-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->dateText:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->strCurYear:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\ub144 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->strCurMonth:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\uc6d4 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->strCurDay:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\uc77c"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    new-instance v5, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v5, v8, p0}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;-><init>(Landroid/content/Context;Lco/kr/festfive/listener/DeleteListener;)V

    iput-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->selectMeetingRoomAdapter:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    .line 112
    iget-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->rootView:Landroid/view/View;

    const v8, 0x102000a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->listView:Landroid/widget/ListView;

    .line 114
    iget-object v5, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->rootView:Landroid/view/View;

    return-object v5
.end method

.method public userDetail(Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 337
    iget-object v2, p0, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v3, "user_id"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "myUserId":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/kr/festfive/fragment/MyDetailUserActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->startActivity(Landroid/content/Intent;)V

    .line 348
    :goto_0
    return-void

    .line 344
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/kr/festfive/activity/UserDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "targetUserId"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
