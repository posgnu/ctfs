.class public Lco/kr/festfive/fragment/MoreFragment;
.super Landroid/support/v4/app/Fragment;
.source "MoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private QRCODEREQUEST_CODE:I

.field private companyText:Landroid/widget/TextView;

.field private cooperNewImage:Landroid/widget/ImageView;

.field private cooperateButtonLinear:Landroid/widget/LinearLayout;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private interestButtonLinear:Landroid/widget/LinearLayout;

.field private interestNewImage:Landroid/widget/ImageView;

.field private meetingNewImage:Landroid/widget/ImageView;

.field private modifyProfileRelative:Landroid/widget/RelativeLayout;

.field private myScheduleButtonLinear:Landroid/widget/LinearLayout;

.field private nameText:Landroid/widget/TextView;

.field private noticeButtonLinear:Landroid/widget/LinearLayout;

.field private noticeNewImage:Landroid/widget/ImageView;

.field private officeText:Landroid/widget/TextView;

.field private priceLinear:Landroid/widget/LinearLayout;

.field private profileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private qrcodeReader:Landroid/widget/ImageView;

.field private reservMeetingRoomButtonLinear:Landroid/widget/LinearLayout;

.field private reservVisitorButtonLinear:Landroid/widget/LinearLayout;

.field private rootView:Landroid/view/View;

.field private scheduleNewImage:Landroid/widget/ImageView;

.field private settingButtonLinear:Landroid/widget/LinearLayout;

.field private settingNewImage:Landroid/widget/ImageView;

.field private userDayText:Landroid/widget/TextView;

.field private userDepositText:Landroid/widget/TextView;

.field private userGuideButtonLinear:Landroid/widget/LinearLayout;

.field private userGuideNewImage:Landroid/widget/ImageView;

.field private userListItem:Lco/kr/festfive/model/UserListItem;

.field private userPriceText:Landroid/widget/TextView;

.field private visitorNewImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 61
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 63
    const/16 v0, 0x3ed

    iput v0, p0, Lco/kr/festfive/fragment/MoreFragment;->QRCODEREQUEST_CODE:I

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/MoreFragment;)I
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MoreFragment;

    .prologue
    .line 51
    iget v0, p0, Lco/kr/festfive/fragment/MoreFragment;->QRCODEREQUEST_CODE:I

    return v0
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MoreFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lco/kr/festfive/fragment/MoreFragment;->priceLinear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MoreFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lco/kr/festfive/fragment/MoreFragment;->userPriceText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MoreFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lco/kr/festfive/fragment/MoreFragment;->userDayText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MoreFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lco/kr/festfive/fragment/MoreFragment;->userDepositText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MoreFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lco/kr/festfive/fragment/MoreFragment;->noticeNewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MoreFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lco/kr/festfive/fragment/MoreFragment;->scheduleNewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MoreFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lco/kr/festfive/fragment/MoreFragment;->interestNewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MoreFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lco/kr/festfive/fragment/MoreFragment;->cooperNewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lco/kr/festfive/fragment/MoreFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MoreFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lco/kr/festfive/fragment/MoreFragment;->userGuideNewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getNewBadgeToServer()V
    .locals 6

    .prologue
    .line 229
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 230
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "userId":Ljava/lang/String;
    invoke-interface {v1, v2}, Lco/kr/festfive/service/FestInterface;->getNewBadge(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 234
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/fragment/MoreFragment$3;

    invoke-direct {v3, p0}, Lco/kr/festfive/fragment/MoreFragment$3;-><init>(Lco/kr/festfive/fragment/MoreFragment;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 283
    return-void
.end method

.method private getUserPriceToServer()V
    .locals 6

    .prologue
    .line 181
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 183
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "userId":Ljava/lang/String;
    invoke-interface {v1, v2}, Lco/kr/festfive/service/FestInterface;->getUserPrice(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 187
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/fragment/MoreFragment$2;

    invoke-direct {v3, p0}, Lco/kr/festfive/fragment/MoreFragment$2;-><init>(Lco/kr/festfive/fragment/MoreFragment;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 225
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    .line 439
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 440
    const/16 v5, 0x3e9

    if-ne p1, v5, :cond_0

    .line 441
    if-ne p2, v8, :cond_0

    .line 442
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 446
    :cond_0
    iget v5, p0, Lco/kr/festfive/fragment/MoreFragment;->QRCODEREQUEST_CODE:I

    if-ne p1, v5, :cond_1

    .line 447
    if-ne p2, v8, :cond_1

    .line 448
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, "str":Ljava/lang/String;
    const-string v5, "namsang"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 453
    .local v4, "url":Ljava/net/URL;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 455
    .local v3, "u":Landroid/net/Uri;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 456
    invoke-virtual {p0, v1}, Lco/kr/festfive/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "u":Landroid/net/Uri;
    .end local v4    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    return-void

    .line 458
    .restart local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "\uc798\ubabb\ub41c \uc8fc\uc18c\uc785\ub2c8\ub2e4."

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f080150

    if-ne v4, v5, :cond_1

    .line 296
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lco/kr/festfive/fragment/MyDetailUserActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f080168

    if-ne v4, v5, :cond_3

    .line 300
    iget-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v4, :cond_2

    .line 301
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v4

    invoke-virtual {v4}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 304
    :cond_2
    iget-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_level"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "userLevel":Ljava/lang/String;
    const-string v4, "F"

    if-eq v3, v4, :cond_0

    const-string v4, "F"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 313
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lco/kr/festfive/activity/NoticeActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 316
    .end local v3    # "userLevel":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0801fa

    if-ne v4, v5, :cond_5

    .line 317
    iget-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v4, :cond_4

    .line 318
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v4

    invoke-virtual {v4}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 321
    :cond_4
    iget-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_level"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 322
    .restart local v3    # "userLevel":Ljava/lang/String;
    const-string v4, "F"

    if-eq v3, v4, :cond_0

    const-string v4, "F"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 330
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MoreFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lco/kr/festfive/activity/TermsActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 336
    .end local v3    # "userLevel":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0801b3

    if-ne v4, v5, :cond_7

    .line 337
    iget-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v4, :cond_6

    .line 338
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v4

    invoke-virtual {v4}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 341
    :cond_6
    iget-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_level"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 342
    .restart local v3    # "userLevel":Ljava/lang/String;
    const-string v4, "F"

    if-eq v3, v4, :cond_0

    const-string v4, "F"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 350
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lco/kr/festfive/activity/ReservationMeetingRoomActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v4, "type"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 355
    .end local v3    # "userLevel":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f080156

    if-ne v4, v5, :cond_8

    .line 361
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lco/kr/festfive/activity/MyScheduleActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 365
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0800d9

    if-ne v4, v5, :cond_a

    .line 366
    iget-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v4, :cond_9

    .line 367
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v4

    invoke-virtual {v4}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 370
    :cond_9
    iget-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_level"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    .restart local v3    # "userLevel":Ljava/lang/String;
    const-string v4, "F"

    if-eq v3, v4, :cond_0

    const-string v4, "F"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 379
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lco/kr/festfive/activity/InterestActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 382
    .end local v3    # "userLevel":Ljava/lang/String;
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f080061

    if-ne v4, v5, :cond_c

    .line 383
    iget-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v4, :cond_b

    .line 384
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v4

    invoke-virtual {v4}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 387
    :cond_b
    iget-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_level"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 388
    .restart local v3    # "userLevel":Ljava/lang/String;
    const-string v4, "F"

    if-eq v3, v4, :cond_0

    const-string v4, "F"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 395
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lco/kr/festfive/activity/CooperationActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 400
    .end local v3    # "userLevel":Ljava/lang/String;
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f080248

    if-ne v4, v5, :cond_e

    .line 401
    iget-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v4, :cond_d

    .line 402
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v4

    invoke-virtual {v4}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 405
    :cond_d
    iget-object v4, p0, Lco/kr/festfive/fragment/MoreFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_level"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 406
    .restart local v3    # "userLevel":Ljava/lang/String;
    const-string v4, "F"

    if-eq v3, v4, :cond_0

    const-string v4, "F"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 415
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lco/kr/festfive/activity/UserGuideActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 419
    .end local v3    # "userLevel":Ljava/lang/String;
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0801d8

    if-ne v4, v5, :cond_f

    .line 425
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lco/kr/festfive/activity/SettingActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 429
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f080101

    if-ne v4, v5, :cond_0

    .line 430
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v1, "intent2":Landroid/content/Intent;
    const-string v4, "https://m.facebook.com/ftfive"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 432
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0, v1}, Lco/kr/festfive/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    const v1, 0x7f0a0060

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    .line 85
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/FestManager;->getUserListItem()Lco/kr/festfive/model/UserListItem;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->userListItem:Lco/kr/festfive/model/UserListItem;

    .line 87
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f080150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->modifyProfileRelative:Landroid/widget/RelativeLayout;

    .line 88
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->modifyProfileRelative:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->userListItem:Lco/kr/festfive/model/UserListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/UserListItem;->getUserProfileThumb_url()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f080199

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mikhaellopez/circularimageview/CircularImageView;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->profileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 95
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/MoreFragment;->profileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 99
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f080158

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->nameText:Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->nameText:Landroid/widget/TextView;

    iget-object v2, p0, Lco/kr/festfive/fragment/MoreFragment;->userListItem:Lco/kr/festfive/model/UserListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/UserListItem;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f080179

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->officeText:Landroid/widget/TextView;

    .line 103
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->officeText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lco/kr/festfive/fragment/MoreFragment;->userListItem:Lco/kr/festfive/model/UserListItem;

    invoke-virtual {v3}, Lco/kr/festfive/model/UserListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/fragment/MoreFragment;->userListItem:Lco/kr/festfive/model/UserListItem;

    invoke-virtual {v3}, Lco/kr/festfive/model/UserListItem;->getOfficeRoomName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f080050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->companyText:Landroid/widget/TextView;

    .line 106
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->companyText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lco/kr/festfive/fragment/MoreFragment;->userListItem:Lco/kr/festfive/model/UserListItem;

    invoke-virtual {v3}, Lco/kr/festfive/model/UserListItem;->getUserPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/fragment/MoreFragment;->userListItem:Lco/kr/festfive/model/UserListItem;

    invoke-virtual {v3}, Lco/kr/festfive/model/UserListItem;->getUserCompany()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f080168

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->noticeButtonLinear:Landroid/widget/LinearLayout;

    .line 109
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->noticeButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0801fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->reservMeetingRoomButtonLinear:Landroid/widget/LinearLayout;

    .line 111
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->reservMeetingRoomButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0801b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->reservVisitorButtonLinear:Landroid/widget/LinearLayout;

    .line 113
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->reservVisitorButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f080156

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->myScheduleButtonLinear:Landroid/widget/LinearLayout;

    .line 115
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->myScheduleButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0800d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->interestButtonLinear:Landroid/widget/LinearLayout;

    .line 117
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->interestButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f080061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->cooperateButtonLinear:Landroid/widget/LinearLayout;

    .line 119
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->cooperateButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f080248

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->userGuideButtonLinear:Landroid/widget/LinearLayout;

    .line 121
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->userGuideButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0801d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->settingButtonLinear:Landroid/widget/LinearLayout;

    .line 123
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->settingButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0801a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->qrcodeReader:Landroid/widget/ImageView;

    .line 126
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->qrcodeReader:Landroid/widget/ImageView;

    new-instance v2, Lco/kr/festfive/fragment/MoreFragment$1;

    invoke-direct {v2, p0}, Lco/kr/festfive/fragment/MoreFragment$1;-><init>(Lco/kr/festfive/fragment/MoreFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f080198

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->priceLinear:Landroid/widget/LinearLayout;

    .line 137
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f080249

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->userPriceText:Landroid/widget/TextView;

    .line 138
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f080246

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->userDayText:Landroid/widget/TextView;

    .line 139
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f080247

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->userDepositText:Landroid/widget/TextView;

    .line 145
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f08016a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->noticeNewImage:Landroid/widget/ImageView;

    .line 146
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f080140

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->meetingNewImage:Landroid/widget/ImageView;

    .line 147
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f08024c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->visitorNewImage:Landroid/widget/ImageView;

    .line 148
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0801bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->scheduleNewImage:Landroid/widget/ImageView;

    .line 149
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0800db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->interestNewImage:Landroid/widget/ImageView;

    .line 150
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->cooperNewImage:Landroid/widget/ImageView;

    .line 151
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f08024a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->userGuideNewImage:Landroid/widget/ImageView;

    .line 152
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0801d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->settingNewImage:Landroid/widget/ImageView;

    .line 154
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    const v2, 0x7f080101

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-direct {p0}, Lco/kr/festfive/fragment/MoreFragment;->getUserPriceToServer()V

    .line 158
    iget-object v1, p0, Lco/kr/festfive/fragment/MoreFragment;->rootView:Landroid/view/View;

    return-object v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 176
    invoke-direct {p0}, Lco/kr/festfive/fragment/MoreFragment;->getNewBadgeToServer()V

    .line 177
    return-void
.end method
