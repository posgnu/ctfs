.class public Lco/kr/festfive/activity/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "mainActivity"

.field public static logoutFlag:Z


# instance fields
.field private PeopleLinear:Landroid/widget/LinearLayout;

.field private communityButtonLinear:Landroid/widget/LinearLayout;

.field private communityImage:Landroid/widget/ImageView;

.field private feedButtonLinear:Landroid/widget/LinearLayout;

.field private feedImage:Landroid/widget/ImageView;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private is_push:Z

.field private menuTab:Landroid/widget/LinearLayout;

.field private messageButtonLinear:Landroid/widget/LinearLayout;

.field private messageImage:Landroid/widget/ImageView;

.field private moreButtonLinear:Landroid/widget/LinearLayout;

.field private moreImage:Landroid/widget/ImageView;

.field private news_feed_id:Ljava/lang/String;

.field private peopleImage:Landroid/widget/ImageView;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lco/kr/festfive/activity/MainActivity;->logoutFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/kr/festfive/activity/MainActivity;->is_push:Z

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/MainActivity;->type:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lco/kr/festfive/activity/MainActivity;->news_feed_id:Ljava/lang/String;

    .line 56
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/MainActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/MainActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lco/kr/festfive/activity/MainActivity;->getUnreadCount()V

    return-void
.end method

.method private getFragment(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 348
    .local v0, "newFragment":Landroid/support/v4/app/Fragment;
    packed-switch p1, :pswitch_data_0

    .line 374
    :goto_0
    return-object v0

    .line 351
    :pswitch_0
    new-instance v0, Lco/kr/festfive/fragment/NewsFeedFragment;

    .end local v0    # "newFragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lco/kr/festfive/fragment/NewsFeedFragment;-><init>()V

    .restart local v0    # "newFragment":Landroid/support/v4/app/Fragment;
    move-object v1, v0

    .line 352
    check-cast v1, Lco/kr/festfive/fragment/NewsFeedFragment;

    iget-object v2, p0, Lco/kr/festfive/activity/MainActivity;->menuTab:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lco/kr/festfive/fragment/NewsFeedFragment;->setMenuTab(Landroid/widget/LinearLayout;)V

    move-object v1, v0

    .line 353
    check-cast v1, Lco/kr/festfive/fragment/NewsFeedFragment;

    iget-object v2, p0, Lco/kr/festfive/activity/MainActivity;->news_feed_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lco/kr/festfive/fragment/NewsFeedFragment;->setPushNewsFeedId(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :pswitch_1
    new-instance v0, Lco/kr/festfive/fragment/MessageFragment;

    .end local v0    # "newFragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lco/kr/festfive/fragment/MessageFragment;-><init>()V

    .line 358
    .restart local v0    # "newFragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 360
    :pswitch_2
    new-instance v0, Lco/kr/festfive/fragment/CommunityFragment;

    .end local v0    # "newFragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lco/kr/festfive/fragment/CommunityFragment;-><init>()V

    .line 361
    .restart local v0    # "newFragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 365
    :pswitch_3
    const/4 v1, 0x1

    invoke-static {v1}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->newInstance(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 366
    goto :goto_0

    .line 368
    :pswitch_4
    new-instance v0, Lco/kr/festfive/fragment/MoreFragment;

    .end local v0    # "newFragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lco/kr/festfive/fragment/MoreFragment;-><init>()V

    .line 369
    .restart local v0    # "newFragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getUnreadCount()V
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Lcom/sendbird/android/SendBird;->queryMessagingUnreadCount()Lcom/sendbird/android/MessagingUnreadCountQuery;

    move-result-object v0

    .line 214
    .local v0, "messagingUnreadCountQuery":Lcom/sendbird/android/MessagingUnreadCountQuery;
    new-instance v1, Lco/kr/festfive/activity/MainActivity$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/MainActivity$2;-><init>(Lco/kr/festfive/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/MessagingUnreadCountQuery;->get(Lcom/sendbird/android/MessagingUnreadCountQuery$MessagingUnreadCountQueryResult;)V

    .line 242
    return-void
.end method


# virtual methods
.method public fragmentReplace(I)V
    .locals 3
    .param p1, "fragmentIndex"    # I

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "newFragment":Landroid/support/v4/app/Fragment;
    invoke-direct {p0, p1}, Lco/kr/festfive/activity/MainActivity;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 338
    invoke-virtual {p0}, Lco/kr/festfive/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 339
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0800b1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 342
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 343
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f07010e

    const v6, 0x7f07010c

    const v5, 0x7f07010a

    const v4, 0x7f050027

    const/16 v3, 0x15

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0800a2

    if-ne v1, v2, :cond_2

    .line 260
    const-string v1, "mainActivity"

    const-string v2, "1\ubc88 type \ud638\ucd9c"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    .line 262
    invoke-static {p0, v4}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 264
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/MainActivity;->fragmentReplace(I)V

    .line 265
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->feedImage:Landroid/widget/ImageView;

    const v2, 0x7f07010b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 266
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->messageImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 267
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->communityImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 268
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->peopleImage:Landroid/widget/ImageView;

    const v2, 0x7f070110

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 269
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->moreImage:Landroid/widget/ImageView;

    const v2, 0x7f070112

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 331
    :cond_1
    :goto_0
    return-void

    .line 270
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080147

    if-ne v1, v2, :cond_4

    .line 271
    const-string v1, "mainActivity"

    const-string v2, "2\ubc88 type \ud638\ucd9c"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_3

    .line 273
    const v1, 0x7f050028

    invoke-static {p0, v1}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 276
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/MainActivity;->fragmentReplace(I)V

    .line 281
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->feedImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 282
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->messageImage:Landroid/widget/ImageView;

    const v2, 0x7f07010d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 283
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->communityImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 284
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->peopleImage:Landroid/widget/ImageView;

    const v2, 0x7f070110

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 285
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->moreImage:Landroid/widget/ImageView;

    const v2, 0x7f070112

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 286
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08004d

    if-ne v1, v2, :cond_6

    .line 287
    const-string v1, "mainActivity"

    const-string v2, "3\ubc88 type \ud638\ucd9c"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_5

    .line 289
    invoke-static {p0, v4}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 291
    :cond_5
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/MainActivity;->fragmentReplace(I)V

    .line 292
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->feedImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 293
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->messageImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 294
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->communityImage:Landroid/widget/ImageView;

    const v2, 0x7f07010f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 295
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->peopleImage:Landroid/widget/ImageView;

    const v2, 0x7f070110

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 296
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->moreImage:Landroid/widget/ImageView;

    const v2, 0x7f070112

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 297
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080187

    if-ne v1, v2, :cond_8

    .line 298
    const-string v1, "mainActivity"

    const-string v2, "4\ubc88 type \ud638\ucd9c"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_7

    .line 300
    invoke-static {p0, v4}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 302
    :cond_7
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/MainActivity;->fragmentReplace(I)V

    .line 303
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->feedImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 304
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->messageImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 305
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->communityImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 306
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->peopleImage:Landroid/widget/ImageView;

    const v2, 0x7f070111

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 307
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->moreImage:Landroid/widget/ImageView;

    const v2, 0x7f070112

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 308
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080152

    if-ne v1, v2, :cond_1

    .line 309
    const-string v1, "mainActivity"

    const-string v2, "5\ubc88 type \ud638\ucd9c"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_9

    .line 311
    invoke-static {p0, v4}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 313
    :cond_9
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v1, :cond_a

    .line 314
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/activity/MainActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 316
    :cond_a
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v2, "user_level"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "userLevel":Ljava/lang/String;
    const-string v1, "F"

    if-eq v0, v1, :cond_b

    const-string v1, "F"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 323
    :cond_b
    :goto_1
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->feedImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 324
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->messageImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 325
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->communityImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 326
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->peopleImage:Landroid/widget/ImageView;

    const v2, 0x7f070110

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 327
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity;->moreImage:Landroid/widget/ImageView;

    const v2, 0x7f070113

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 321
    :cond_c
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/MainActivity;->fragmentReplace(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v6, 0x7f0a0023

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/MainActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lco/kr/festfive/activity/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lco/kr/festfive/FestManager;

    invoke-virtual {v6}, Lco/kr/festfive/FestManager;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 70
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 71
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 77
    const-string v6, "is_push"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lco/kr/festfive/activity/MainActivity;->is_push:Z

    .line 78
    const-string v6, "type"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lco/kr/festfive/activity/MainActivity;->type:Ljava/lang/String;

    .line 79
    const-string v6, "news_feed_id"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lco/kr/festfive/activity/MainActivity;->news_feed_id:Ljava/lang/String;

    .line 80
    const-string v6, "mainActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is_push : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lco/kr/festfive/activity/MainActivity;->is_push:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v6, "mainActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lco/kr/festfive/activity/MainActivity;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v6, "mainActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "news_feed_id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lco/kr/festfive/activity/MainActivity;->news_feed_id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lco/kr/festfive/gcm/RegistrationIntentService;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lco/kr/festfive/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    const v6, 0x7f0800a2

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lco/kr/festfive/activity/MainActivity;->feedButtonLinear:Landroid/widget/LinearLayout;

    .line 90
    iget-object v6, p0, Lco/kr/festfive/activity/MainActivity;->feedButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v6, 0x7f080147

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lco/kr/festfive/activity/MainActivity;->messageButtonLinear:Landroid/widget/LinearLayout;

    .line 92
    iget-object v6, p0, Lco/kr/festfive/activity/MainActivity;->messageButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v6, 0x7f08004d

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lco/kr/festfive/activity/MainActivity;->communityButtonLinear:Landroid/widget/LinearLayout;

    .line 94
    iget-object v6, p0, Lco/kr/festfive/activity/MainActivity;->communityButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v6, 0x7f080187

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lco/kr/festfive/activity/MainActivity;->PeopleLinear:Landroid/widget/LinearLayout;

    .line 96
    iget-object v6, p0, Lco/kr/festfive/activity/MainActivity;->PeopleLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v6, 0x7f080152

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lco/kr/festfive/activity/MainActivity;->moreButtonLinear:Landroid/widget/LinearLayout;

    .line 98
    iget-object v6, p0, Lco/kr/festfive/activity/MainActivity;->moreButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v6, 0x7f080028

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lco/kr/festfive/activity/MainActivity;->menuTab:Landroid/widget/LinearLayout;

    .line 100
    const v6, 0x7f0800a3

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lco/kr/festfive/activity/MainActivity;->feedImage:Landroid/widget/ImageView;

    .line 101
    const v6, 0x7f080148

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lco/kr/festfive/activity/MainActivity;->messageImage:Landroid/widget/ImageView;

    .line 102
    const v6, 0x7f08004e

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lco/kr/festfive/activity/MainActivity;->communityImage:Landroid/widget/ImageView;

    .line 103
    const v6, 0x7f080188

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lco/kr/festfive/activity/MainActivity;->peopleImage:Landroid/widget/ImageView;

    .line 104
    const v6, 0x7f080154

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lco/kr/festfive/activity/MainActivity;->moreImage:Landroid/widget/ImageView;

    .line 106
    iget-object v6, p0, Lco/kr/festfive/activity/MainActivity;->feedImage:Landroid/widget/ImageView;

    const v7, 0x7f07010a

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 107
    iget-object v6, p0, Lco/kr/festfive/activity/MainActivity;->messageImage:Landroid/widget/ImageView;

    const v7, 0x7f07010c

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 108
    iget-object v6, p0, Lco/kr/festfive/activity/MainActivity;->communityImage:Landroid/widget/ImageView;

    const v7, 0x7f07010e

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 109
    iget-object v6, p0, Lco/kr/festfive/activity/MainActivity;->peopleImage:Landroid/widget/ImageView;

    const v7, 0x7f070110

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 110
    iget-object v6, p0, Lco/kr/festfive/activity/MainActivity;->moreImage:Landroid/widget/ImageView;

    const v7, 0x7f070112

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 127
    iget-object v6, p0, Lco/kr/festfive/activity/MainActivity;->feedImage:Landroid/widget/ImageView;

    const v7, 0x7f07010b

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 128
    iget-boolean v6, p0, Lco/kr/festfive/activity/MainActivity;->is_push:Z

    if-ne v6, v10, :cond_6

    .line 129
    const-string v6, "1"

    iget-object v7, p0, Lco/kr/festfive/activity/MainActivity;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    invoke-virtual {p0, v9}, Lco/kr/festfive/activity/MainActivity;->fragmentReplace(I)V

    .line 144
    :goto_0
    const-string v6, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    invoke-static {p0, v6}, Lcom/sendbird/android/SendBird;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v6

    invoke-virtual {v6}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v6

    const-string v7, "user_id"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "userId":Ljava/lang/String;
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v6

    invoke-virtual {v6}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v6

    const-string v7, "user_name"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lco/kr/festfive/activity/MainActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v7, "user_profile_thumb_url"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "thumb":Ljava/lang/String;
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v6

    invoke-virtual {v6}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v6

    const-string v7, "registration_id"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "gcmToken":Ljava/lang/String;
    const-string v6, "cks4451"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/thumb="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/gcmToken="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {v5}, Lcom/sendbird/android/SendBird$LoginOption;->build(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sendbird/android/SendBird$LoginOption;->setUserName(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sendbird/android/SendBird$LoginOption;->setImageUrl(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sendbird/android/SendBird$LoginOption;->setGCMRegToken(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;

    move-result-object v6

    invoke-static {v6}, Lcom/sendbird/android/SendBird;->login(Lcom/sendbird/android/SendBird$LoginOption;)V

    .line 153
    const-string v6, ""

    invoke-static {v6}, Lcom/sendbird/android/SendBird;->join(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/sendbird/android/SendBird;->connect()V

    .line 155
    return-void

    .line 131
    .end local v1    # "gcmToken":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "thumb":Ljava/lang/String;
    .end local v5    # "userId":Ljava/lang/String;
    :cond_2
    const-string v6, "2"

    iget-object v7, p0, Lco/kr/festfive/activity/MainActivity;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 132
    invoke-virtual {p0, v9}, Lco/kr/festfive/activity/MainActivity;->fragmentReplace(I)V

    goto/16 :goto_0

    .line 133
    :cond_3
    const-string v6, "3"

    iget-object v7, p0, Lco/kr/festfive/activity/MainActivity;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 134
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/MainActivity;->fragmentReplace(I)V

    goto/16 :goto_0

    .line 135
    :cond_4
    const-string v6, "4"

    iget-object v7, p0, Lco/kr/festfive/activity/MainActivity;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 136
    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/MainActivity;->fragmentReplace(I)V

    goto/16 :goto_0

    .line 138
    :cond_5
    invoke-virtual {p0, v9}, Lco/kr/festfive/activity/MainActivity;->fragmentReplace(I)V

    goto/16 :goto_0

    .line 141
    :cond_6
    invoke-virtual {p0, v9}, Lco/kr/festfive/activity/MainActivity;->fragmentReplace(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 253
    invoke-static {}, Lcom/sendbird/android/SendBird;->disconnect()V

    .line 255
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 379
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 380
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 384
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 386
    sget-boolean v1, Lco/kr/festfive/activity/MainActivity;->logoutFlag:Z

    if-eqz v1, :cond_0

    .line 387
    sget-boolean v1, Lco/kr/festfive/activity/MainActivity;->logoutFlag:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lco/kr/festfive/activity/MainActivity;->logoutFlag:Z

    .line 388
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/kr/festfive/activity/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 390
    invoke-virtual {p0}, Lco/kr/festfive/activity/MainActivity;->finish()V

    .line 393
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 387
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 161
    invoke-direct {p0}, Lco/kr/festfive/activity/MainActivity;->getUnreadCount()V

    .line 163
    new-instance v0, Lco/kr/festfive/activity/MainActivity$1;

    invoke-direct {v0, p0}, Lco/kr/festfive/activity/MainActivity$1;-><init>(Lco/kr/festfive/activity/MainActivity;)V

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->registerNotificationHandler(Lcom/sendbird/android/SendBirdNotificationHandler;)V

    .line 208
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 246
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 247
    return-void
.end method
