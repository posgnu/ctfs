.class public Lco/kr/festfive/fragment/VisitorReservationFragment;
.super Landroid/support/v4/app/Fragment;
.source "VisitorReservationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backButtonImage:Landroid/widget/TextView;

.field private dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private dateText:Landroid/widget/TextView;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field hour:I

.field minute:I

.field private nameEdittext:Landroid/widget/EditText;

.field private numberEdittext:Landroid/widget/EditText;

.field private officeId:Ljava/lang/String;

.field private officeName:Ljava/lang/String;

.field private reservButtonText:Landroid/widget/TextView;

.field private rootView:Landroid/view/View;

.field strCurAmPm:Ljava/lang/String;

.field strCurDay:Ljava/lang/String;

.field strCurMonth:Ljava/lang/String;

.field strCurTime:Ljava/lang/String;

.field strCurYear:Ljava/lang/String;

.field private timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private timeText:Landroid/widget/TextView;

.field private titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->officeId:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->officeName:Ljava/lang/String;

    .line 53
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurYear:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurMonth:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurDay:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurTime:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurAmPm:Ljava/lang/String;

    .line 60
    iput v1, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->hour:I

    .line 61
    iput v1, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->minute:I

    .line 147
    new-instance v0, Lco/kr/festfive/fragment/VisitorReservationFragment$1;

    invoke-direct {v0, p0}, Lco/kr/festfive/fragment/VisitorReservationFragment$1;-><init>(Lco/kr/festfive/fragment/VisitorReservationFragment;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 158
    new-instance v0, Lco/kr/festfive/fragment/VisitorReservationFragment$2;

    invoke-direct {v0, p0}, Lco/kr/festfive/fragment/VisitorReservationFragment$2;-><init>(Lco/kr/festfive/fragment/VisitorReservationFragment;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/VisitorReservationFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/VisitorReservationFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->dateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/VisitorReservationFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/VisitorReservationFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->timeText:Landroid/widget/TextView;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "officeId"    # Ljava/lang/String;
    .param p1, "officeName"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Lco/kr/festfive/fragment/VisitorReservationFragment;

    invoke-direct {v0}, Lco/kr/festfive/fragment/VisitorReservationFragment;-><init>()V

    .line 66
    .local v0, "visitorReservationFragment":Lco/kr/festfive/fragment/VisitorReservationFragment;
    iput-object p0, v0, Lco/kr/festfive/fragment/VisitorReservationFragment;->officeId:Ljava/lang/String;

    .line 67
    iput-object p1, v0, Lco/kr/festfive/fragment/VisitorReservationFragment;->officeName:Ljava/lang/String;

    .line 69
    return-object v0
.end method

.method private setVisitorReservToServer()V
    .locals 11

    .prologue
    .line 189
    invoke-virtual {p0}, Lco/kr/festfive/fragment/VisitorReservationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v9, ""

    const-string v10, "loading..."

    invoke-static {v2, v9, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v8

    .line 190
    .local v8, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v0

    .line 192
    .local v0, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v2, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v9, "user_id"

    const-string v10, ""

    invoke-virtual {v2, v9, v10}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "userId":Ljava/lang/String;
    iget-object v2, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->dateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "date":Ljava/lang/String;
    const-string v2, "\ub144"

    const-string v9, "-"

    invoke-virtual {v3, v2, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 197
    const-string v2, "\uc6d4"

    const-string v9, "-"

    invoke-virtual {v3, v2, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 198
    const-string v2, "\uc77c"

    const-string v9, ""

    invoke-virtual {v3, v2, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 199
    const-string v2, " "

    const-string v9, ""

    invoke-virtual {v3, v2, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 201
    iget-object v2, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->timeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "time":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 204
    iget-object v2, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->nameEdittext:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, "name":Ljava/lang/String;
    iget-object v2, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->numberEdittext:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "number":Ljava/lang/String;
    iget-object v2, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->officeId:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Lco/kr/festfive/service/FestInterface;->setVisitorReserve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v7

    .line 209
    .local v7, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v2, Lco/kr/festfive/fragment/VisitorReservationFragment$3;

    invoke-direct {v2, p0, v8}, Lco/kr/festfive/fragment/VisitorReservationFragment$3;-><init>(Lco/kr/festfive/fragment/VisitorReservationFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v7, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 242
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080021

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080023

    if-ne v0, v1, :cond_2

    .line 137
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/fragment/VisitorReservationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 138
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080069

    if-ne v0, v1, :cond_3

    .line 139
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/VisitorReservationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v3, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurYear:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurMonth:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurDay:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_0

    .line 140
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080209

    if-ne v0, v1, :cond_4

    .line 141
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/VisitorReservationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->hour:I

    iget v4, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->minute:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801b2

    if-ne v0, v1, :cond_1

    .line 143
    invoke-direct {p0}, Lco/kr/festfive/fragment/VisitorReservationFragment;->setVisitorReservToServer()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    const v7, 0x7f0a006d

    const/4 v10, 0x0

    invoke-virtual {p1, v7, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->rootView:Landroid/view/View;

    .line 77
    iget-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->rootView:Landroid/view/View;

    const v10, 0x7f080023

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->backButtonImage:Landroid/widget/TextView;

    .line 78
    iget-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->backButtonImage:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->rootView:Landroid/view/View;

    const v10, 0x7f0801b2

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->reservButtonText:Landroid/widget/TextView;

    .line 83
    iget-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->reservButtonText:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->rootView:Landroid/view/View;

    const v10, 0x7f08020d

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->titleText:Landroid/widget/TextView;

    .line 86
    iget-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->titleText:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\ubc29\ubb38 \uc7a5\uc18c : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->officeName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->rootView:Landroid/view/View;

    const v10, 0x7f080069

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->dateText:Landroid/widget/TextView;

    .line 88
    iget-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->dateText:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->rootView:Landroid/view/View;

    const v10, 0x7f080209

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->timeText:Landroid/widget/TextView;

    .line 91
    iget-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->timeText:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 95
    .local v8, "now":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 97
    .local v6, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 98
    .local v3, "CurYearFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v7, "MM"

    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, "CurMonthFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "dd"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "CurDayFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "hh:mm"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, "CurTimeFormat":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    .line 104
    .local v4, "calendar":Ljava/util/GregorianCalendar;
    const/16 v7, 0xb

    invoke-virtual {v4, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    iput v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->hour:I

    .line 105
    const/16 v7, 0xc

    invoke-virtual {v4, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    iput v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->minute:I

    .line 108
    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurYear:Ljava/lang/String;

    .line 109
    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurMonth:Ljava/lang/String;

    .line 110
    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurDay:Ljava/lang/String;

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurYear:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "-"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurMonth:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "-"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurDay:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "currentDate":Ljava/lang/String;
    iget-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->dateText:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurYear:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\ub144 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurMonth:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\uc6d4 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurDay:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\uc77c"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurTime:Ljava/lang/String;

    .line 118
    iget v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->hour:I

    const/16 v10, 0xc

    if-ge v7, v10, :cond_0

    .line 119
    const-string v7, "\uc624\uc804"

    iput-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurAmPm:Ljava/lang/String;

    .line 123
    :goto_0
    iget-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->timeText:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurAmPm:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurTime:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->rootView:Landroid/view/View;

    const v10, 0x7f080157

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->nameEdittext:Landroid/widget/EditText;

    .line 126
    iget-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->rootView:Landroid/view/View;

    const v10, 0x7f08016d

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->numberEdittext:Landroid/widget/EditText;

    .line 128
    iget-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->rootView:Landroid/view/View;

    return-object v7

    .line 121
    :cond_0
    const-string v7, "\uc624\ud6c4"

    iput-object v7, p0, Lco/kr/festfive/fragment/VisitorReservationFragment;->strCurAmPm:Ljava/lang/String;

    goto :goto_0
.end method
