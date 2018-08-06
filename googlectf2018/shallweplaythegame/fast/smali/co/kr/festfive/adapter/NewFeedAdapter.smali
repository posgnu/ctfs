.class public Lco/kr/festfive/adapter/NewFeedAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NewFeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;,
        Lco/kr/festfive/adapter/NewFeedAdapter$OnDetailListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lco/kr/festfive/model/NewFeedListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private MAXTAG:I

.field private activity:Landroid/app/Activity;

.field private addItemListener:Lco/kr/festfive/listener/AddItemListener;

.field private count:I

.field private day_now:Ljava/lang/String;

.field private deleteListener:Lco/kr/festfive/listener/DeleteListener;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field final handler:Landroid/os/Handler;

.field private holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

.field private hour_now:I

.field private index_photo:I

.field private itemActionListener:Lco/kr/festfive/listener/ItemActionListener;

.field private min_now:I

.field private month_now:Ljava/lang/String;

.field private onDetailListener:Lco/kr/festfive/adapter/NewFeedAdapter$OnDetailListener;

.field private pagePerItem:I

.field private popupView:Landroid/view/View;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private position_photo:I

.field private viewPagerAdapter:Lco/kr/festfive/adapter/ViewPagerAdapter;

.field private year_now:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lco/kr/festfive/listener/DeleteListener;Lco/kr/festfive/listener/ItemActionListener;Lco/kr/festfive/listener/AddItemListener;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "deleteListener"    # Lco/kr/festfive/listener/DeleteListener;
    .param p3, "iaListener"    # Lco/kr/festfive/listener/ItemActionListener;
    .param p4, "aiListener"    # Lco/kr/festfive/listener/AddItemListener;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 68
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 75
    const/4 v0, 0x2

    iput v0, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->MAXTAG:I

    .line 81
    const/16 v0, 0x1e

    iput v0, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->pagePerItem:I

    .line 98
    iput v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->count:I

    .line 791
    new-instance v0, Lco/kr/festfive/adapter/NewFeedAdapter$16;

    invoke-direct {v0, p0}, Lco/kr/festfive/adapter/NewFeedAdapter$16;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;)V

    iput-object v0, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->handler:Landroid/os/Handler;

    .line 89
    iput-object p1, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->activity:Landroid/app/Activity;

    .line 90
    iput-object p2, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->deleteListener:Lco/kr/festfive/listener/DeleteListener;

    .line 91
    iput-object p3, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->itemActionListener:Lco/kr/festfive/listener/ItemActionListener;

    .line 92
    iput-object p4, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->addItemListener:Lco/kr/festfive/listener/AddItemListener;

    .line 94
    invoke-direct {p0}, Lco/kr/festfive/adapter/NewFeedAdapter;->getTodayStr()Ljava/lang/String;

    .line 95
    return-void
.end method

.method static synthetic access$1602(Lco/kr/festfive/adapter/NewFeedAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/NewFeedAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->index_photo:I

    return p1
.end method

.method static synthetic access$2200(Lco/kr/festfive/adapter/NewFeedAdapter;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/NewFeedAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lco/kr/festfive/adapter/NewFeedAdapter;->setNewsFeedSignToServer(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2300(Lco/kr/festfive/adapter/NewFeedAdapter;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/NewFeedAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lco/kr/festfive/adapter/NewFeedAdapter;->setNewsFeedFix(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2400(Lco/kr/festfive/adapter/NewFeedAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/NewFeedAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2500(Lco/kr/festfive/adapter/NewFeedAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/NewFeedAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->setNewsFeedDeleteToServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lco/kr/festfive/adapter/NewFeedAdapter;)Lco/kr/festfive/listener/DeleteListener;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/NewFeedAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->deleteListener:Lco/kr/festfive/listener/DeleteListener;

    return-object v0
.end method

.method static synthetic access$2700(Lco/kr/festfive/adapter/NewFeedAdapter;)Lco/kr/festfive/adapter/NewFeedAdapter$OnDetailListener;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/NewFeedAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->onDetailListener:Lco/kr/festfive/adapter/NewFeedAdapter$OnDetailListener;

    return-object v0
.end method

.method static synthetic access$2800(Lco/kr/festfive/adapter/NewFeedAdapter;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/NewFeedAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2900(Lco/kr/festfive/adapter/NewFeedAdapter;ILandroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/NewFeedAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lco/kr/festfive/adapter/NewFeedAdapter;->setNewsFeedLikeDeleteToServer(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$3000(Lco/kr/festfive/adapter/NewFeedAdapter;ILandroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/NewFeedAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lco/kr/festfive/adapter/NewFeedAdapter;->setNewsFeedLikeAddToServer(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$3100(Lco/kr/festfive/adapter/NewFeedAdapter;)Lco/kr/festfive/listener/ItemActionListener;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/NewFeedAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->itemActionListener:Lco/kr/festfive/listener/ItemActionListener;

    return-object v0
.end method

.method private getDateStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0xc

    .line 552
    if-nez p1, :cond_1

    const-string p1, ""

    .line 594
    .end local p1    # "date":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 553
    .restart local p1    # "date":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v11, :cond_0

    .line 555
    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 556
    .local v7, "year":Ljava/lang/String;
    const/4 v8, 0x5

    const/4 v9, 0x7

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 557
    .local v5, "month":Ljava/lang/String;
    const/16 v8, 0x8

    const/16 v9, 0xa

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "day":Ljava/lang/String;
    const/16 v8, 0xb

    const/16 v9, 0xd

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, "hour":Ljava/lang/String;
    const/16 v8, 0xe

    invoke-virtual {p1, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 561
    .local v4, "min":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 562
    .local v1, "h":I
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 564
    .local v3, "m":I
    iget-object v8, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->year_now:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 565
    iget-object v8, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->month_now:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 566
    iget-object v8, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->day_now:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 567
    iget v8, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->hour_now:I

    if-ne v8, v1, :cond_2

    .line 568
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->min_now:I

    sub-int/2addr v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\ubd84 \uc804"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 570
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->hour_now:I

    sub-int/2addr v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\uc2dc\uac04 \uc804"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 576
    :cond_3
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 577
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\ub144 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\uc6d4 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\uc77c "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    if-le v1, v10, :cond_4

    .line 582
    const-string v8, "\uc624\ud6c4 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    add-int/lit8 v8, v1, -0xc

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 592
    :goto_1
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 594
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 584
    :cond_4
    if-ne v1, v10, :cond_5

    .line 585
    const-string v8, "\uc624\ud6c4 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 588
    :cond_5
    const-string v8, "\uc624\uc804 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 589
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private getTodayStr()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 523
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 524
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 525
    .local v4, "year":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 526
    .local v2, "month":I
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 527
    .local v1, "day":I
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->hour_now:I

    .line 528
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->min_now:I

    .line 529
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->year_now:Ljava/lang/String;

    .line 530
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->month_now:Ljava/lang/String;

    .line 531
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->day_now:Ljava/lang/String;

    .line 533
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 534
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 536
    if-ge v2, v6, :cond_0

    .line 537
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 542
    :goto_0
    if-ge v1, v6, :cond_1

    .line 543
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 548
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 539
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 545
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private setNewsFeedDeleteToServer(Ljava/lang/String;)V
    .locals 6
    .param p1, "feedId"    # Ljava/lang/String;

    .prologue
    .line 687
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 688
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 689
    .local v2, "userId":Ljava/lang/String;
    invoke-interface {v1, v2, p1}, Lco/kr/festfive/service/FestInterface;->setNewsFeedDelete(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 691
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/adapter/NewFeedAdapter$13;

    invoke-direct {v3, p0}, Lco/kr/festfive/adapter/NewFeedAdapter$13;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 715
    return-void
.end method

.method private setNewsFeedFix(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "feedId"    # Ljava/lang/String;
    .param p2, "fix"    # Z

    .prologue
    .line 755
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 756
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "userId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 759
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    if-eqz p2, :cond_0

    .line 760
    invoke-interface {v1, v2, p1}, Lco/kr/festfive/service/FestInterface;->newsFeedFix(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 765
    :goto_0
    new-instance v3, Lco/kr/festfive/adapter/NewFeedAdapter$15;

    invoke-direct {v3, p0}, Lco/kr/festfive/adapter/NewFeedAdapter$15;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 789
    return-void

    .line 762
    :cond_0
    invoke-interface {v1, v2, p1}, Lco/kr/festfive/service/FestInterface;->newsFeedUnfix(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    goto :goto_0
.end method

.method private setNewsFeedLikeAddToServer(ILandroid/view/View;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 627
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 628
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, "userId":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lco/kr/festfive/service/FestInterface;->setNewsFeedLikeAdd(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 631
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/adapter/NewFeedAdapter$11;

    invoke-direct {v3, p0, p1}, Lco/kr/festfive/adapter/NewFeedAdapter$11;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;I)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 654
    return-void
.end method

.method private setNewsFeedLikeDeleteToServer(ILandroid/view/View;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 657
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 658
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, "userId":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v3}, Lco/kr/festfive/model/NewFeedListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lco/kr/festfive/service/FestInterface;->setNewsFeedLikeDelete(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 661
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/adapter/NewFeedAdapter$12;

    invoke-direct {v3, p0, p1}, Lco/kr/festfive/adapter/NewFeedAdapter$12;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;I)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 684
    return-void
.end method

.method private setNewsFeedSignToServer(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "feedId"    # Ljava/lang/String;
    .param p2, "sign"    # Z

    .prologue
    .line 718
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 719
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 720
    .local v2, "userId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 722
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    if-eqz p2, :cond_0

    .line 723
    invoke-interface {v1, v2, p1}, Lco/kr/festfive/service/FestInterface;->setNewsFeedSign(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 728
    :goto_0
    new-instance v3, Lco/kr/festfive/adapter/NewFeedAdapter$14;

    invoke-direct {v3, p0}, Lco/kr/festfive/adapter/NewFeedAdapter$14;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 752
    return-void

    .line 725
    :cond_0
    invoke-interface {v1, v2, p1}, Lco/kr/festfive/service/FestInterface;->setNewsFeedSignCancel(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    goto :goto_0
.end method

.method private updateList()V
    .locals 0

    .prologue
    .line 799
    return-void
.end method


# virtual methods
.method public closePopup()V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 805
    :cond_0
    return-void
.end method

.method public contentResize(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .param p1, "tmp"    # Ljava/lang/String;
    .param p2, "textMaxCount"    # I
    .param p3, "maxLine"    # I

    .prologue
    const/4 v7, 0x0

    .line 839
    const-string v5, "\n"

    const-string v6, "<br/>"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 840
    const/4 v3, 0x0

    .line 841
    .local v3, "isResize":Z
    const-string v4, ""

    .line 842
    .local v4, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 843
    const-string v5, "<br/>"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 844
    .local v2, "index":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 845
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 866
    .end local v2    # "index":I
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "<br/>"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    const-string v6, "<br/>"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 867
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "<br/>"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 868
    const-string v5, "<br/>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 848
    .restart local v2    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 849
    const-string v5, "<br/>"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 850
    .local v0, "brSize":I
    if-eq v1, p3, :cond_2

    .line 851
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v6, v2, v0

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 856
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int v6, v2, v0

    sub-int/2addr v5, v6

    if-lez v5, :cond_0

    .line 857
    add-int v5, v2, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 862
    goto :goto_0

    .line 853
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 878
    .end local v0    # "brSize":I
    .end local v2    # "index":I
    :cond_3
    const-string v5, "<br/>"

    const-string v6, "\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 880
    if-nez v3, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, p2, :cond_4

    .line 881
    invoke-virtual {v4, v7, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 882
    const-string v5, ">"

    const-string v6, "&gt"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 883
    const-string v5, "<"

    const-string v6, "<span>&lt</span>"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 884
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<font color=#a7a9ab size = \"30\"> <small>\ub354\ubcf4\uae30</small> </font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 885
    const/4 v3, 0x1

    .line 888
    :cond_4
    if-nez v3, :cond_5

    if-ne v1, p3, :cond_5

    .line 889
    const-string v5, ">"

    const-string v6, "&gt"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 890
    const-string v5, "<"

    const-string v6, "<span>&lt</span>"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 891
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<font color=#a7a9ab size => <small>\ub354\ubcf4\uae30</small> </font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 895
    :cond_5
    const-string v5, "\n"

    const-string v6, "<br/>"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 897
    return-object v4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 102
    if-nez p2, :cond_5

    .line 103
    const-string v20, "NewsFeedAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " viewHolder () \uba87\ubc88 \ubd88\ub9ac\ub098\uc694? : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->count:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lco/kr/festfive/adapter/NewFeedAdapter;->count:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v20, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/adapter/NewFeedAdapter;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    const v21, 0x7f0a0074

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f080199

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$002(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f080158

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$102(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f08014d

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$202(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f080176

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$302(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f080050

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$402(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f080069

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$502(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f08005e

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$602(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f08011f

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$702(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f0801b0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$802(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f08012c

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$902(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f08011e

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1002(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f080132

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1102(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f08011d

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1202(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f080182

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1302(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ViewPager;

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f080100

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1402(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1502(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;[Landroid/widget/ImageView;)[Landroid/widget/ImageView;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1500(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)[Landroid/widget/ImageView;

    move-result-object v21

    const/16 v22, 0x0

    const v20, 0x7f080104

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    aput-object v20, v21, v22

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1500(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)[Landroid/widget/ImageView;

    move-result-object v21

    const/16 v22, 0x1

    const v20, 0x7f080105

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    aput-object v20, v21, v22

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1500(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)[Landroid/widget/ImageView;

    move-result-object v21

    const/16 v22, 0x2

    const v20, 0x7f080106

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    aput-object v20, v21, v22

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1500(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)[Landroid/widget/ImageView;

    move-result-object v21

    const/16 v22, 0x3

    const v20, 0x7f080107

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    aput-object v20, v21, v22

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1500(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)[Landroid/widget/ImageView;

    move-result-object v21

    const/16 v22, 0x4

    const v20, 0x7f080108

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    aput-object v20, v21, v22

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1300(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/support/v4/view/ViewPager;

    move-result-object v20

    new-instance v21, Lco/kr/festfive/adapter/NewFeedAdapter$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$1;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;)V

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f08012a

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1702(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1802(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;[Landroid/widget/TextView;)[Landroid/widget/TextView;

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1800(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)[Landroid/widget/TextView;

    move-result-object v21

    const/16 v22, 0x0

    const v20, 0x7f080219

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    aput-object v20, v21, v22

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1800(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)[Landroid/widget/TextView;

    move-result-object v21

    const/16 v22, 0x1

    const v20, 0x7f08021a

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    aput-object v20, v21, v22

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1800(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)[Landroid/widget/TextView;

    move-result-object v21

    const/16 v22, 0x2

    const v20, 0x7f08021b

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    aput-object v20, v21, v22

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1800(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)[Landroid/widget/TextView;

    move-result-object v21

    const/16 v22, 0x3

    const v20, 0x7f08021c

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    aput-object v20, v21, v22

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1800(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)[Landroid/widget/TextView;

    move-result-object v21

    const/16 v22, 0x4

    const v20, 0x7f08021d

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    aput-object v20, v21, v22

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f080134

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1902(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f08021e

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$2002(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    const v20, 0x7f08021f

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$2102(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 170
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1300(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/support/v4/view/ViewPager;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/view/ViewPager;->setTag(Ljava/lang/Object;)V

    .line 172
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v4, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getImage1Url()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 175
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getImage1Url()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getImage2Url()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 179
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getImage2Url()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getImage3Url()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 183
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getImage3Url()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getImage4Url()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 187
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getImage4Url()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getImage5Url()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 191
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getImage5Url()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_4
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ge v7, v0, :cond_6

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1500(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)[Landroid/widget/ImageView;

    move-result-object v20

    aget-object v20, v20, v7

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 167
    .end local v4    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    goto/16 :goto_0

    .line 199
    .restart local v4    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "i":I
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_a

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1300(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/support/v4/view/ViewPager;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 207
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    move-object/from16 v20, v0

    if-nez v20, :cond_7

    .line 208
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/adapter/NewFeedAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 211
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    move-object/from16 v20, v0

    const-string v21, "user_id"

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 212
    .local v18, "userId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    move-object/from16 v20, v0

    const-string v21, "user_level"

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 214
    .local v19, "userLevel":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getUserId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1400(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    const v21, 0x7f0700c7

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1400(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    :goto_3
    const-string v20, "M"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_8

    const-string v20, "M"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 229
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$200(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lco/kr/festfive/model/NewFeedListItem;

    .line 232
    .local v9, "item":Lco/kr/festfive/model/NewFeedListItem;
    invoke-virtual {v9}, Lco/kr/festfive/model/NewFeedListItem;->isSigned()Z

    move-result v20

    if-nez v20, :cond_d

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$200(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    const v21, 0x7f0700ab

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$200(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$200(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    new-instance v21, Lco/kr/festfive/adapter/NewFeedAdapter$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$2;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    .end local v9    # "item":Lco/kr/festfive/model/NewFeedListItem;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v21

    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getUserProfileThumbUrl()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v20

    sget-object v21, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$000(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$000(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$000(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    new-instance v21, Lco/kr/festfive/adapter/NewFeedAdapter$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$4;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$100(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getUserName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$100(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$100(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v20

    new-instance v21, Lco/kr/festfive/adapter/NewFeedAdapter$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$5;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$300(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$400(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getUserPosition()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ", "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getUserCompany()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getCreateDate()Ljava/lang/String;

    move-result-object v5

    .line 380
    .local v5, "date":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$500(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v20

    invoke-static {v5}, Lco/kr/festfive/utils/Utils;->toDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lco/kr/festfive/utils/Utils;->getDateStr(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getContents()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0xc8

    const/16 v22, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lco/kr/festfive/adapter/NewFeedAdapter;->contentResize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v13

    .line 387
    .local v13, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$600(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v20

    invoke-static {v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$600(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v20

    new-instance v21, Lco/kr/festfive/adapter/NewFeedAdapter$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lco/kr/festfive/adapter/NewFeedAdapter$6;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;I)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$700(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getLikeCount()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$800(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v21

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e00be

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getReplyCount()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$600(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    .line 402
    .local v10, "layout":Landroid/text/Layout;
    if-eqz v10, :cond_9

    .line 403
    invoke-virtual {v10}, Landroid/text/Layout;->getLineCount()I

    move-result v12

    .line 404
    .local v12, "lines":I
    if-lez v12, :cond_9

    .line 405
    add-int/lit8 v20, v12, -0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v6

    .line 406
    .local v6, "ellipsisCount":I
    if-lez v6, :cond_9

    .line 411
    .end local v6    # "ellipsisCount":I
    .end local v12    # "lines":I
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getIsLike()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Y"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1200(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    const v21, 0x7f0700ad

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1000(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v20

    sget-object v21, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1000(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v20

    const/16 v21, 0xd8

    const/16 v22, 0x5a

    const/16 v23, 0x4a

    invoke-static/range {v21 .. v23}, Landroid/graphics/Color;->rgb(III)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$900(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$900(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v20

    new-instance v21, Lco/kr/festfive/adapter/NewFeedAdapter$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$7;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1100(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v20

    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1100(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v20

    new-instance v21, Lco/kr/festfive/adapter/NewFeedAdapter$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$8;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    const/4 v7, 0x0

    :goto_7
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ge v7, v0, :cond_11

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1800(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)[Landroid/widget/TextView;

    move-result-object v20

    aget-object v20, v20, v7

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 202
    .end local v5    # "date":Ljava/lang/String;
    .end local v10    # "layout":Landroid/text/Layout;
    .end local v13    # "str":Ljava/lang/String;
    .end local v18    # "userId":Ljava/lang/String;
    .end local v19    # "userLevel":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1300(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/support/v4/view/ViewPager;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 203
    new-instance v21, Lco/kr/festfive/adapter/ViewPagerAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->deleteListener:Lco/kr/festfive/listener/DeleteListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v4, v2, v3}, Lco/kr/festfive/adapter/ViewPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lco/kr/festfive/model/NewFeedListItem;Lco/kr/festfive/listener/DeleteListener;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/adapter/NewFeedAdapter;->viewPagerAdapter:Lco/kr/festfive/adapter/ViewPagerAdapter;

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1300(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/support/v4/view/ViewPager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->viewPagerAdapter:Lco/kr/festfive/adapter/ViewPagerAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto/16 :goto_2

    .line 218
    .restart local v18    # "userId":Ljava/lang/String;
    .restart local v19    # "userLevel":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getUserLevel()Ljava/lang/String;

    move-result-object v20

    const-string v21, "M"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1400(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    const v21, 0x7f0700c6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1400(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 222
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1400(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1400(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 235
    .restart local v9    # "item":Lco/kr/festfive/model/NewFeedListItem;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$200(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    const v21, 0x7f0700aa

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 311
    .end local v9    # "item":Lco/kr/festfive/model/NewFeedListItem;
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getUserId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$200(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$200(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$200(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    new-instance v21, Lco/kr/festfive/adapter/NewFeedAdapter$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$3;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 349
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$200(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 417
    .restart local v5    # "date":Ljava/lang/String;
    .restart local v10    # "layout":Landroid/text/Layout;
    .restart local v13    # "str":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1200(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    const v21, 0x7f0700ae

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1000(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v20

    sget-object v21, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1000(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v20

    const/16 v21, 0x40

    const/16 v22, 0x40

    const/16 v23, 0x41

    invoke-static/range {v21 .. v23}, Landroid/graphics/Color;->rgb(III)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 462
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getTag()Ljava/lang/String;

    move-result-object v15

    .line 463
    .local v15, "tags":Ljava/lang/String;
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 465
    .local v14, "tag":[Ljava/lang/String;
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_14

    array-length v0, v14

    move/from16 v20, v0

    if-lez v20, :cond_14

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1700(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    const/4 v8, 0x0

    .line 468
    .local v8, "idx":I
    const/4 v11, 0x0

    .line 469
    .local v11, "length":I
    array-length v0, v14

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->MAXTAG:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v11, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->MAXTAG:I

    .line 471
    :goto_8
    const/4 v7, 0x0

    :goto_9
    if-ge v7, v11, :cond_15

    .line 472
    aget-object v20, v14, v7

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 471
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 470
    :cond_12
    array-length v11, v14

    goto :goto_8

    .line 473
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1800(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)[Landroid/widget/TextView;

    move-result-object v20

    aget-object v20, v20, v8

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "#"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v14, v7

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1800(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)[Landroid/widget/TextView;

    move-result-object v20

    aget-object v20, v20, v8

    aget-object v21, v14, v7

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1800(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)[Landroid/widget/TextView;

    move-result-object v20

    aget-object v20, v20, v8

    new-instance v21, Lco/kr/festfive/adapter/NewFeedAdapter$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$9;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 486
    .end local v8    # "idx":I
    .end local v11    # "length":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1700(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 489
    :cond_15
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getUrl()Ljava/lang/String;

    move-result-object v16

    .line 490
    .local v16, "url":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_17

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1900(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/adapter/NewFeedAdapter;->getCount()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->pagePerItem:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/adapter/NewFeedAdapter;->getCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x5

    move/from16 v0, p1

    move/from16 v1, v20

    if-le v0, v1, :cond_16

    .line 516
    const-string v20, "newFeedAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "holder.vp.getTag() : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " first "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->addItemListener:Lco/kr/festfive/listener/AddItemListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lco/kr/festfive/listener/AddItemListener;->addItem()V

    .line 519
    :cond_16
    return-object p2

    .line 493
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1900(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$2000(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getUrl()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getUrl_title()Ljava/lang/String;

    move-result-object v17

    .line 496
    .local v17, "url_title":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 497
    const-string v17, "URL"

    .line 499
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$2100(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1900(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v21

    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual/range {v20 .. v20}, Lco/kr/festfive/model/NewFeedListItem;->getUrl()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/adapter/NewFeedAdapter;->holder:Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;->access$1900(Lco/kr/festfive/adapter/NewFeedAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v20

    new-instance v21, Lco/kr/festfive/adapter/NewFeedAdapter$10;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/adapter/NewFeedAdapter$10;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_b
.end method

.method public makeTextViewResizable(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 2
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "maxLine"    # I
    .param p3, "expandText"    # Ljava/lang/String;

    .prologue
    .line 809
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 810
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 812
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 813
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lco/kr/festfive/adapter/NewFeedAdapter$17;

    invoke-direct {v1, p0, p1, p2, p3}, Lco/kr/festfive/adapter/NewFeedAdapter$17;-><init>(Lco/kr/festfive/adapter/NewFeedAdapter;Landroid/widget/TextView;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 833
    return-void
.end method

.method public setOnDetailListener(Lco/kr/festfive/adapter/NewFeedAdapter$OnDetailListener;)V
    .locals 0
    .param p1, "onDetailListener"    # Lco/kr/festfive/adapter/NewFeedAdapter$OnDetailListener;

    .prologue
    .line 63
    iput-object p1, p0, Lco/kr/festfive/adapter/NewFeedAdapter;->onDetailListener:Lco/kr/festfive/adapter/NewFeedAdapter$OnDetailListener;

    .line 64
    return-void
.end method
