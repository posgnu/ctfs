.class public Lco/kr/festfive/activity/RegisterActivity;
.super Landroid/app/Activity;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backButtonImage:Landroid/widget/ImageView;

.field private backButtonText:Landroid/widget/TextView;

.field private circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private daySpinner:Landroid/widget/Spinner;

.field private dialog:Landroid/app/ProgressDialog;

.field private emailEdittext:Landroid/widget/EditText;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private introduceEdittext:Landroid/widget/EditText;

.field private jobEdittext:Landroid/widget/EditText;

.field private monthSpinner:Landroid/widget/Spinner;

.field private nameEdittext:Landroid/widget/EditText;

.field private numberEdittext:Landroid/widget/EditText;

.field private officeEdittext:Landroid/widget/EditText;

.field private officeId:[Ljava/lang/String;

.field private officeName:[Ljava/lang/String;

.field private officeSpinner:Landroid/widget/Spinner;

.field private profileImage:Landroid/widget/ImageView;

.field private profilePath:Ljava/lang/String;

.field private pwdConfirmEdittext:Landroid/widget/EditText;

.field private pwdEdittext:Landroid/widget/EditText;

.field private registButtonText:Landroid/widget/TextView;

.field private roomId:[[Ljava/lang/String;

.field private roomName:[[Ljava/lang/String;

.field private roomNameSpinner:Landroid/widget/Spinner;

.field roomNameSpinnerAdapter:Lco/kr/festfive/adapter/SpinnerAdapter;

.field private serverImage:Ljava/lang/String;

.field private yearSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/RegisterActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/RegisterActivity;->profilePath:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/RegisterActivity;->serverImage:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lco/kr/festfive/activity/RegisterActivity;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/activity/RegisterActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/RegisterActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lco/kr/festfive/activity/RegisterActivity;->officeId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lco/kr/festfive/activity/RegisterActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/RegisterActivity;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lco/kr/festfive/activity/RegisterActivity;->officeId:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lco/kr/festfive/activity/RegisterActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/RegisterActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lco/kr/festfive/activity/RegisterActivity;->officeName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lco/kr/festfive/activity/RegisterActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/RegisterActivity;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lco/kr/festfive/activity/RegisterActivity;->officeName:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lco/kr/festfive/activity/RegisterActivity;)[[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/RegisterActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lco/kr/festfive/activity/RegisterActivity;->roomId:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lco/kr/festfive/activity/RegisterActivity;[[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/RegisterActivity;
    .param p1, "x1"    # [[Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lco/kr/festfive/activity/RegisterActivity;->roomId:[[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lco/kr/festfive/activity/RegisterActivity;)[[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/RegisterActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lco/kr/festfive/activity/RegisterActivity;->roomName:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lco/kr/festfive/activity/RegisterActivity;[[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/RegisterActivity;
    .param p1, "x1"    # [[Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lco/kr/festfive/activity/RegisterActivity;->roomName:[[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lco/kr/festfive/activity/RegisterActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/RegisterActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lco/kr/festfive/activity/RegisterActivity;->officeSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$500(Lco/kr/festfive/activity/RegisterActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/RegisterActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lco/kr/festfive/activity/RegisterActivity;->roomNameSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$602(Lco/kr/festfive/activity/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/RegisterActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lco/kr/festfive/activity/RegisterActivity;->serverImage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lco/kr/festfive/activity/RegisterActivity;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/RegisterActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lco/kr/festfive/activity/RegisterActivity;->setRegistToServer()V

    return-void
.end method

.method private checkDegree(Ljava/lang/String;)I
    .locals 8
    .param p1, "fileUri"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 454
    const/4 v0, 0x0

    .line 456
    .local v0, "degree":I
    const/4 v2, 0x0

    .line 458
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v3, "exif":Landroid/media/ExifInterface;
    move-object v2, v3

    .line 464
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 465
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 466
    .local v4, "orientation1":I
    if-eq v4, v7, :cond_0

    .line 469
    packed-switch v4, :pswitch_data_0

    .line 487
    .end local v4    # "orientation1":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 459
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "cks"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 471
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "orientation1":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 472
    goto :goto_1

    .line 475
    :pswitch_2
    const/16 v0, 0xb4

    .line 476
    goto :goto_1

    .line 478
    :pswitch_3
    const/16 v0, 0x10e

    .line 479
    goto :goto_1

    .line 481
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_1

    .line 469
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private checkEmptyField()Z
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 412
    iget-object v12, p0, Lco/kr/festfive/activity/RegisterActivity;->numberEdittext:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 413
    .local v6, "number":Ljava/lang/String;
    iget-object v12, p0, Lco/kr/festfive/activity/RegisterActivity;->pwdEdittext:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 414
    .local v7, "pwd":Ljava/lang/String;
    iget-object v12, p0, Lco/kr/festfive/activity/RegisterActivity;->nameEdittext:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 416
    .local v8, "userName":Ljava/lang/String;
    iget-object v12, p0, Lco/kr/festfive/activity/RegisterActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v12}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    .line 417
    .local v9, "year":I
    iget-object v12, p0, Lco/kr/festfive/activity/RegisterActivity;->monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v12}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    .line 418
    .local v5, "month":I
    iget-object v12, p0, Lco/kr/festfive/activity/RegisterActivity;->daySpinner:Landroid/widget/Spinner;

    invoke-virtual {v12}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 422
    .local v1, "day":I
    iget-object v12, p0, Lco/kr/festfive/activity/RegisterActivity;->emailEdittext:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "email":Ljava/lang/String;
    iget-object v12, p0, Lco/kr/festfive/activity/RegisterActivity;->officeEdittext:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "company":Ljava/lang/String;
    iget-object v12, p0, Lco/kr/festfive/activity/RegisterActivity;->jobEdittext:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, "job":Ljava/lang/String;
    iget-object v12, p0, Lco/kr/festfive/activity/RegisterActivity;->introduceEdittext:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "introduce":Ljava/lang/String;
    const-string v12, ""

    if-eq v6, v12, :cond_0

    const-string v12, ""

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 428
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e00cb

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    move v10, v11

    .line 450
    :cond_1
    :goto_0
    return v10

    .line 430
    :cond_2
    const-string v12, ""

    if-eq v7, v12, :cond_3

    const-string v12, ""

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 431
    :cond_3
    invoke-virtual {p0}, Lco/kr/festfive/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e00d0

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    move v10, v11

    .line 432
    goto :goto_0

    .line 433
    :cond_4
    const-string v12, ""

    if-eq v8, v12, :cond_5

    const-string v12, ""

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 434
    :cond_5
    invoke-virtual {p0}, Lco/kr/festfive/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e00d2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    move v10, v11

    .line 435
    goto :goto_0

    .line 436
    :cond_6
    const-string v12, ""

    if-eq v2, v12, :cond_7

    const-string v12, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 437
    :cond_7
    invoke-virtual {p0}, Lco/kr/festfive/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e00d4

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    move v10, v11

    .line 438
    goto :goto_0

    .line 439
    :cond_8
    const-string v12, ""

    if-eq v0, v12, :cond_9

    const-string v12, ""

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 440
    :cond_9
    invoke-virtual {p0}, Lco/kr/festfive/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e00d5

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    move v10, v11

    .line 441
    goto :goto_0

    .line 442
    :cond_a
    const-string v12, ""

    if-eq v4, v12, :cond_b

    const-string v12, ""

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 443
    :cond_b
    invoke-virtual {p0}, Lco/kr/festfive/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e00d6

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    move v10, v11

    .line 444
    goto/16 :goto_0

    .line 445
    :cond_c
    const-string v12, ""

    if-eq v3, v12, :cond_d

    const-string v12, ""

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 446
    :cond_d
    invoke-virtual {p0}, Lco/kr/festfive/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e00d7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    move v10, v11

    .line 447
    goto/16 :goto_0
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "contentURI"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 491
    invoke-virtual {p0}, Lco/kr/festfive/activity/RegisterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 492
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 493
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 497
    :goto_0
    return-object v0

    .line 495
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 496
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 497
    .local v7, "idx":I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectRegistToServer()V
    .locals 7

    .prologue
    .line 180
    const-string v5, ""

    const-string v6, "loading..."

    invoke-static {p0, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 181
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v3

    .line 183
    .local v3, "service":Lco/kr/festfive/service/FestInterface;
    const-string v4, "test"

    .line 185
    .local v4, "userId":Ljava/lang/String;
    const-string v2, "111111"

    .line 186
    .local v2, "registrationId":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lco/kr/festfive/service/FestInterface;->getSelectRegist(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 188
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v5, Lco/kr/festfive/activity/RegisterActivity$1;

    invoke-direct {v5, p0, v1}, Lco/kr/festfive/activity/RegisterActivity$1;-><init>(Lco/kr/festfive/activity/RegisterActivity;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v5}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 301
    return-void
.end method

.method private initControls()V
    .locals 11

    .prologue
    const v10, 0x7f0a0055

    const v9, 0x1090008

    .line 104
    const v6, 0x7f080021

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->backButtonImage:Landroid/widget/ImageView;

    .line 105
    iget-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->backButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v6, 0x7f080023

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->backButtonText:Landroid/widget/TextView;

    .line 108
    iget-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->backButtonText:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v6, 0x7f080041

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/mikhaellopez/circularimageview/CircularImageView;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 111
    iget-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v6, p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v6, 0x7f080199

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->profileImage:Landroid/widget/ImageView;

    .line 114
    iget-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->profileImage:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v6, 0x7f08016d

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->numberEdittext:Landroid/widget/EditText;

    .line 117
    const v6, 0x7f0801a1

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->pwdEdittext:Landroid/widget/EditText;

    .line 118
    const v6, 0x7f0801a0

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->pwdConfirmEdittext:Landroid/widget/EditText;

    .line 119
    const v6, 0x7f080157

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->nameEdittext:Landroid/widget/EditText;

    .line 120
    const v6, 0x7f080092

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->emailEdittext:Landroid/widget/EditText;

    .line 121
    const v6, 0x7f080171

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->officeEdittext:Landroid/widget/EditText;

    .line 122
    const v6, 0x7f080110

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->jobEdittext:Landroid/widget/EditText;

    .line 123
    const v6, 0x7f0800dc

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->introduceEdittext:Landroid/widget/EditText;

    .line 125
    const v6, 0x7f080252

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->yearSpinner:Landroid/widget/Spinner;

    .line 126
    iget-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lco/kr/festfive/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0082

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0}, Lco/kr/festfive/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "year":[Ljava/lang/String;
    new-instance v5, Lco/kr/festfive/adapter/SpinnerAdapter;

    invoke-direct {v5, p0, v9, v4}, Lco/kr/festfive/adapter/SpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 129
    .local v5, "yearSpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    invoke-virtual {v5, v10}, Lco/kr/festfive/adapter/SpinnerAdapter;->setDropDownViewResource(I)V

    .line 130
    iget-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 132
    const v6, 0x7f080151

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->monthSpinner:Landroid/widget/Spinner;

    .line 133
    invoke-virtual {p0}, Lco/kr/festfive/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "month":[Ljava/lang/String;
    new-instance v3, Lco/kr/festfive/adapter/SpinnerAdapter;

    invoke-direct {v3, p0, v9, v2}, Lco/kr/festfive/adapter/SpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 135
    .local v3, "monthSpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    invoke-virtual {v3, v10}, Lco/kr/festfive/adapter/SpinnerAdapter;->setDropDownViewResource(I)V

    .line 136
    iget-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 138
    const v6, 0x7f08006a

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->daySpinner:Landroid/widget/Spinner;

    .line 139
    invoke-virtual {p0}, Lco/kr/festfive/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f020000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "day":[Ljava/lang/String;
    new-instance v1, Lco/kr/festfive/adapter/SpinnerAdapter;

    invoke-direct {v1, p0, v9, v0}, Lco/kr/festfive/adapter/SpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 141
    .local v1, "daySpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    invoke-virtual {v1, v10}, Lco/kr/festfive/adapter/SpinnerAdapter;->setDropDownViewResource(I)V

    .line 142
    iget-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->daySpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 144
    const v6, 0x7f080178

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->officeSpinner:Landroid/widget/Spinner;

    .line 146
    const v6, 0x7f0801b9

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->roomNameSpinner:Landroid/widget/Spinner;

    .line 148
    const v6, 0x7f0801a7

    invoke-virtual {p0, v6}, Lco/kr/festfive/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->registButtonText:Landroid/widget/TextView;

    .line 149
    iget-object v6, p0, Lco/kr/festfive/activity/RegisterActivity;->registButtonText:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-void
.end method

.method private setRegistToServer()V
    .locals 22

    .prologue
    .line 304
    const-string v6, ""

    const-string v15, "loading..."

    move-object/from16 v0, p0

    invoke-static {v0, v6, v15}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v18

    .line 305
    .local v18, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 307
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/kr/festfive/activity/RegisterActivity;->numberEdittext:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "userId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/kr/festfive/activity/RegisterActivity;->pwdEdittext:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "pwd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/kr/festfive/activity/RegisterActivity;->nameEdittext:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 311
    .local v5, "userName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/kr/festfive/activity/RegisterActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 312
    .local v20, "year":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/kr/festfive/activity/RegisterActivity;->monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 313
    .local v19, "month":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/kr/festfive/activity/RegisterActivity;->daySpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 314
    .local v17, "day":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v15, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v15, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 316
    .local v7, "birthday":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/kr/festfive/activity/RegisterActivity;->officeId:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/kr/festfive/activity/RegisterActivity;->officeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v15}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v15

    aget-object v8, v6, v15

    .line 317
    .local v8, "office":Ljava/lang/String;
    const-string v9, ""

    .line 318
    .local v9, "room":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/kr/festfive/activity/RegisterActivity;->roomId:[[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/kr/festfive/activity/RegisterActivity;->officeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v15}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v15

    aget-object v6, v6, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/kr/festfive/activity/RegisterActivity;->roomNameSpinner:Landroid/widget/Spinner;

    invoke-virtual {v15}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v15

    aget-object v9, v6, v15

    .line 320
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/kr/festfive/activity/RegisterActivity;->emailEdittext:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 321
    .local v10, "email":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/kr/festfive/activity/RegisterActivity;->officeEdittext:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 322
    .local v11, "company":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/kr/festfive/activity/RegisterActivity;->jobEdittext:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 323
    .local v12, "job":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/kr/festfive/activity/RegisterActivity;->introduceEdittext:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 325
    .local v13, "introduce":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/kr/festfive/activity/RegisterActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v6, :cond_0

    .line 326
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v6

    invoke-virtual {v6}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lco/kr/festfive/activity/RegisterActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 328
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/kr/festfive/activity/RegisterActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v15, "registration_id"

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v6, v15, v0}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 330
    .local v14, "deviceId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/kr/festfive/activity/RegisterActivity;->serverImage:Ljava/lang/String;

    const-string v15, "A"

    invoke-interface/range {v2 .. v15}, Lco/kr/festfive/service/FestInterface;->setRegist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v16

    .line 332
    .local v16, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v6, Lco/kr/festfive/activity/RegisterActivity$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Lco/kr/festfive/activity/RegisterActivity$2;-><init>(Lco/kr/festfive/activity/RegisterActivity;Landroid/app/ProgressDialog;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 365
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 23
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 504
    const/16 v2, 0x64

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 505
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 507
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 508
    .local v3, "selectedImage":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v2

    .line 510
    .local v4, "filePathColumn":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/RegisterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 511
    .local v16, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 513
    const/4 v2, 0x0

    aget-object v2, v4, v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 514
    .local v15, "columnIndex":I
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 515
    .local v20, "filePath":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 517
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 518
    .local v10, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lco/kr/festfive/activity/RegisterActivity;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lco/kr/festfive/activity/RegisterActivity;->checkDegree(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 520
    const/4 v5, 0x0

    .line 523
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/RegisterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 528
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 530
    .local v13, "bitmap1":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 533
    .local v12, "ExternalStorageDirectoryPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/DCIM/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 538
    .local v22, "targetPath":Ljava/lang/String;
    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 540
    .local v17, "drawable1":Landroid/graphics/drawable/Drawable;
    const-string v21, ""

    .line 544
    .local v21, "filePath1":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "tmp1.jpg"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 545
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 547
    .local v19, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v14, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 550
    .local v14, "bos":Ljava/io/BufferedOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v13, v2, v6, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 552
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 553
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 560
    .end local v14    # "bos":Ljava/io/BufferedOutputStream;
    .end local v19    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/RegisterActivity;->profilePath:Ljava/lang/String;

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/RegisterActivity;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setVisibility(I)V

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/RegisterActivity;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/RegisterActivity;->profileImage:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    .end local v3    # "selectedImage":Landroid/net/Uri;
    .end local v4    # "filePathColumn":[Ljava/lang/String;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    .end local v12    # "ExternalStorageDirectoryPath":Ljava/lang/String;
    .end local v13    # "bitmap1":Landroid/graphics/Bitmap;
    .end local v15    # "columnIndex":I
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v17    # "drawable1":Landroid/graphics/drawable/Drawable;
    .end local v20    # "filePath":Ljava/lang/String;
    .end local v21    # "filePath1":Ljava/lang/String;
    .end local v22    # "targetPath":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 524
    .restart local v3    # "selectedImage":Landroid/net/Uri;
    .restart local v4    # "filePathColumn":[Ljava/lang/String;
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "matrix":Landroid/graphics/Matrix;
    .restart local v15    # "columnIndex":I
    .restart local v16    # "cursor":Landroid/database/Cursor;
    .restart local v20    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 525
    .local v18, "e":Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 555
    .end local v18    # "e":Ljava/io/IOException;
    .restart local v12    # "ExternalStorageDirectoryPath":Ljava/lang/String;
    .restart local v13    # "bitmap1":Landroid/graphics/Bitmap;
    .restart local v17    # "drawable1":Landroid/graphics/drawable/Drawable;
    .restart local v21    # "filePath1":Ljava/lang/String;
    .restart local v22    # "targetPath":Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 556
    .restart local v18    # "e":Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 569
    .end local v3    # "selectedImage":Landroid/net/Uri;
    .end local v4    # "filePathColumn":[Ljava/lang/String;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    .end local v12    # "ExternalStorageDirectoryPath":Ljava/lang/String;
    .end local v13    # "bitmap1":Landroid/graphics/Bitmap;
    .end local v15    # "columnIndex":I
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v17    # "drawable1":Landroid/graphics/drawable/Drawable;
    .end local v18    # "e":Ljava/io/IOException;
    .end local v20    # "filePath":Ljava/lang/String;
    .end local v21    # "filePath1":Ljava/lang/String;
    .end local v22    # "targetPath":Ljava/lang/String;
    :cond_1
    if-nez p2, :cond_0

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080021

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080023

    if-ne v1, v2, :cond_2

    .line 162
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/RegisterActivity;->finish()V

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0801a7

    if-ne v1, v2, :cond_4

    .line 164
    invoke-direct {p0}, Lco/kr/festfive/activity/RegisterActivity;->checkEmptyField()Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    iget-object v1, p0, Lco/kr/festfive/activity/RegisterActivity;->profilePath:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lco/kr/festfive/activity/RegisterActivity;->profilePath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 166
    invoke-virtual {p0}, Lco/kr/festfive/activity/RegisterActivity;->uploadProfile()V

    goto :goto_0

    .line 168
    :cond_3
    invoke-direct {p0}, Lco/kr/festfive/activity/RegisterActivity;->setRegistToServer()V

    goto :goto_0

    .line 171
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080199

    if-ne v1, v2, :cond_1

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    .local v0, "galleryIntent":Landroid/content/Intent;
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lco/kr/festfive/activity/RegisterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/RegisterActivity;->setContentView(I)V

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 94
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 97
    :cond_0
    invoke-direct {p0}, Lco/kr/festfive/activity/RegisterActivity;->initControls()V

    .line 99
    invoke-direct {p0}, Lco/kr/festfive/activity/RegisterActivity;->getSelectRegistToServer()V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 155
    return-void
.end method

.method public uploadProfile()V
    .locals 10

    .prologue
    .line 368
    const-string v8, ""

    const-string v9, "uploading..."

    invoke-static {p0, v8, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v8

    iput-object v8, p0, Lco/kr/festfive/activity/RegisterActivity;->dialog:Landroid/app/ProgressDialog;

    .line 369
    const-string v2, "description"

    .line 370
    .local v2, "descriptionString":Ljava/lang/String;
    const-string v8, "multipart/form-data"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    .line 372
    .local v1, "description":Lcom/squareup/okhttp/RequestBody;
    const/4 v3, 0x0

    .line 374
    .local v3, "file":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v8, p0, Lco/kr/festfive/activity/RegisterActivity;->profilePath:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    .restart local v3    # "file":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 377
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 380
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    const-string v4, "test.jpg"

    .line 381
    .local v4, "filename":Ljava/lang/String;
    const-string v8, "image/*"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    .line 382
    .local v6, "photo":Lcom/squareup/okhttp/RequestBody;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "image\"; filename=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v7

    .line 384
    .local v7, "service":Lco/kr/festfive/service/FestInterface;
    invoke-interface {v7, v5}, Lco/kr/festfive/service/FestInterface;->uploadProfile(Ljava/util/Map;)Lretrofit/Call;

    move-result-object v0

    .line 385
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v8, Lco/kr/festfive/activity/RegisterActivity$3;

    invoke-direct {v8, p0}, Lco/kr/festfive/activity/RegisterActivity$3;-><init>(Lco/kr/festfive/activity/RegisterActivity;)V

    invoke-interface {v0, v8}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 409
    .end local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    .end local v6    # "photo":Lcom/squareup/okhttp/RequestBody;
    .end local v7    # "service":Lco/kr/festfive/service/FestInterface;
    :cond_0
    return-void
.end method
