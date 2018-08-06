.class public Lco/kr/festfive/activity/WriteNewsFeedActivity;
.super Landroid/app/Activity;
.source "WriteNewsFeedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private MAXTAG:I

.field private category:Ljava/lang/String;

.field private categoryIndex:I

.field private categoryItem:[Ljava/lang/String;

.field private categorySpinner:Landroid/widget/LinearLayout;

.field private categorySpinnerItem:[Ljava/lang/String;

.field private categoryText:Landroid/widget/TextView;

.field private closeButtonText:Landroid/widget/TextView;

.field private closeImage1:Landroid/widget/ImageView;

.field private closeImage2:Landroid/widget/ImageView;

.field private closeImage3:Landroid/widget/ImageView;

.field private closeImage4:Landroid/widget/ImageView;

.field private closeImage5:Landroid/widget/ImageView;

.field private contentEdittext:Landroid/widget/EditText;

.field private currentCount:I

.field private dialog:Landroid/app/ProgressDialog;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private hashTagEdittitle:Landroid/widget/EditText;

.field private linkEdittext:Landroid/widget/EditText;

.field private linkTitleEdittext:Landroid/widget/EditText;

.field private mCkOnlyMyOffice:Landroid/widget/CheckBox;

.field private newsFeedImage1:Ljava/lang/String;

.field private newsFeedImage2:Ljava/lang/String;

.field private newsFeedImage3:Ljava/lang/String;

.field private newsFeedImage4:Ljava/lang/String;

.field private newsFeedImage5:Ljava/lang/String;

.field private okButtonImage:Landroid/widget/TextView;

.field private photoImage1:Landroid/widget/ImageView;

.field private photoImage2:Landroid/widget/ImageView;

.field private photoImage3:Landroid/widget/ImageView;

.field private photoImage4:Landroid/widget/ImageView;

.field private photoImage5:Landroid/widget/ImageView;

.field private plusImage:[Landroid/widget/ImageView;

.field private plusImage1:Landroid/widget/ImageView;

.field private plusImage2:Landroid/widget/ImageView;

.field private plusImage3:Landroid/widget/ImageView;

.field private plusImage4:Landroid/widget/ImageView;

.field private plusImage5:Landroid/widget/ImageView;

.field private plusImageIndex:I

.field private serverImage1:Ljava/lang/String;

.field private serverImage2:Ljava/lang/String;

.field private serverImage3:Ljava/lang/String;

.field private serverImage4:Ljava/lang/String;

.field private serverImage5:Ljava/lang/String;

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    iput v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    .line 72
    iput v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->currentCount:I

    .line 74
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 76
    iput v4, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->MAXTAG:I

    .line 77
    iput-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->dialog:Landroid/app/ProgressDialog;

    .line 79
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "NEWS"

    aput-object v1, v0, v2

    const-string v1, "HR"

    aput-object v1, v0, v5

    const-string v1, "HELP"

    aput-object v1, v0, v4

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->categoryItem:[Ljava/lang/String;

    .line 80
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\ub274\uc2a4\ud53c\ub4dc"

    aput-object v1, v0, v2

    const-string v1, "\uad6c\uc778\uad6c\uc9c1"

    aput-object v1, v0, v5

    const-string v1, "\ubd88\ud3b8\uc2e0\uace0 (Help)"

    aput-object v1, v0, v4

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->categorySpinnerItem:[Ljava/lang/String;

    .line 83
    iput-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->category:Ljava/lang/String;

    .line 84
    iput-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->categorySpinner:Landroid/widget/LinearLayout;

    .line 85
    iput-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->categoryText:Landroid/widget/TextView;

    .line 87
    iput v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImageIndex:I

    return-void
.end method

.method private DialogSelectOption([Ljava/lang/String;)V
    .locals 2
    .param p1, "items"    # [Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const-string v1, "\uce74\ud14c\uace0\ub9ac \uc120\ud0dd"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 171
    new-instance v1, Lco/kr/festfive/activity/WriteNewsFeedActivity$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/WriteNewsFeedActivity$1;-><init>(Lco/kr/festfive/activity/WriteNewsFeedActivity;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 180
    new-instance v1, Lco/kr/festfive/activity/WriteNewsFeedActivity$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/WriteNewsFeedActivity$2;-><init>(Lco/kr/festfive/activity/WriteNewsFeedActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 189
    return-void
.end method

.method static synthetic access$002(Lco/kr/festfive/activity/WriteNewsFeedActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteNewsFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->category:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lco/kr/festfive/activity/WriteNewsFeedActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteNewsFeedActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->categoryItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lco/kr/festfive/activity/WriteNewsFeedActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteNewsFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage5:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lco/kr/festfive/activity/WriteNewsFeedActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteNewsFeedActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->categorySpinnerItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lco/kr/festfive/activity/WriteNewsFeedActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteNewsFeedActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->categoryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lco/kr/festfive/activity/WriteNewsFeedActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteNewsFeedActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lco/kr/festfive/activity/WriteNewsFeedActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteNewsFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$608(Lco/kr/festfive/activity/WriteNewsFeedActivity;)I
    .locals 2
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteNewsFeedActivity;

    .prologue
    .line 55
    iget v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->currentCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->currentCount:I

    return v0
.end method

.method static synthetic access$702(Lco/kr/festfive/activity/WriteNewsFeedActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteNewsFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lco/kr/festfive/activity/WriteNewsFeedActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteNewsFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage3:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lco/kr/festfive/activity/WriteNewsFeedActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteNewsFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage4:Ljava/lang/String;

    return-object p1
.end method

.method private checkDegree(Ljava/lang/String;)I
    .locals 8
    .param p1, "fileUri"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 369
    const/4 v0, 0x0

    .line 371
    .local v0, "degree":I
    const/4 v2, 0x0

    .line 373
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v3, "exif":Landroid/media/ExifInterface;
    move-object v2, v3

    .line 379
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 380
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 381
    .local v4, "orientation1":I
    if-eq v4, v7, :cond_0

    .line 384
    packed-switch v4, :pswitch_data_0

    .line 402
    .end local v4    # "orientation1":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "cks"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 386
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "orientation1":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 387
    goto :goto_1

    .line 390
    :pswitch_2
    const/16 v0, 0xb4

    .line 391
    goto :goto_1

    .line 393
    :pswitch_3
    const/16 v0, 0x10e

    .line 394
    goto :goto_1

    .line 396
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_1

    .line 384
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

.method private checkEmpty()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 197
    iget v1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->contentEdittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->contentEdittext:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    :cond_0
    const-string v1, "\uae00\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    const/4 v0, 0x1

    .line 202
    :cond_1
    return v0
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "contentURI"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 407
    invoke-virtual {p0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 408
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 409
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 413
    :goto_0
    return-object v0

    .line 411
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 412
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 413
    .local v7, "idx":I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setNewsFeedAddToServer()V
    .locals 15

    .prologue
    .line 651
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v0

    .line 653
    .local v0, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v3, :cond_0

    .line 654
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    iput-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 656
    :cond_0
    iget-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "userId":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage1:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 659
    const-string v3, ""

    iput-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage1:Ljava/lang/String;

    .line 662
    :cond_1
    iget-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage2:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 663
    const-string v3, ""

    iput-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage2:Ljava/lang/String;

    .line 666
    :cond_2
    iget-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage3:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 667
    const-string v3, ""

    iput-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage3:Ljava/lang/String;

    .line 670
    :cond_3
    iget-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage4:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 671
    const-string v3, ""

    iput-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage4:Ljava/lang/String;

    .line 674
    :cond_4
    iget-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage5:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 675
    const-string v3, ""

    iput-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage5:Ljava/lang/String;

    .line 678
    :cond_5
    iget-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->contentEdittext:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 679
    .local v2, "content":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->linkEdittext:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 680
    .local v10, "link":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->linkTitleEdittext:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 681
    .local v9, "linktitle":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->hashTagEdittitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 682
    .local v11, "hashTag":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v11, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 683
    .local v14, "split":[Ljava/lang/String;
    array-length v3, v14

    iget v4, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->MAXTAG:I

    if-le v3, v4, :cond_6

    .line 684
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v14, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v14, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 687
    :cond_6
    if-nez v10, :cond_7

    const-string v10, ""

    .line 688
    :cond_7
    if-nez v9, :cond_8

    const-string v9, ""

    .line 689
    :cond_8
    if-nez v11, :cond_9

    const-string v11, ""

    .line 691
    :cond_9
    iget-object v3, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->mCkOnlyMyOffice:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage1:Ljava/lang/String;

    iget-object v5, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage2:Ljava/lang/String;

    iget-object v6, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage3:Ljava/lang/String;

    iget-object v7, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage4:Ljava/lang/String;

    iget-object v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->serverImage5:Ljava/lang/String;

    iget-object v12, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->category:Ljava/lang/String;

    invoke-interface/range {v0 .. v12}, Lco/kr/festfive/service/FestInterface;->getNewsFeedAdd(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v13

    .line 695
    .local v13, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/activity/WriteNewsFeedActivity$3;

    invoke-direct {v3, p0}, Lco/kr/festfive/activity/WriteNewsFeedActivity$3;-><init>(Lco/kr/festfive/activity/WriteNewsFeedActivity;)V

    invoke-interface {v13, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 727
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 23
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 451
    const/16 v2, 0xc9

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xca

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xcb

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xcc

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xcd

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 454
    :cond_0
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 457
    .local v3, "selectedImage":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v2

    .line 459
    .local v4, "filePathColumn":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 460
    .local v16, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 462
    const/4 v2, 0x0

    aget-object v2, v4, v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 463
    .local v15, "columnIndex":I
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 464
    .local v20, "filePath":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 466
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 467
    .local v10, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->checkDegree(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 469
    const/4 v5, 0x0

    .line 472
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 477
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

    .line 497
    .local v13, "bitmap1":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 500
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

    .line 505
    .local v22, "targetPath":Ljava/lang/String;
    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 507
    .local v17, "drawable1":Landroid/graphics/drawable/Drawable;
    const/16 v2, 0xc9

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 508
    const-string v21, ""

    .line 512
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

    .line 513
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 515
    .local v19, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v14, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 518
    .local v14, "bos":Ljava/io/BufferedOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v13, v2, v6, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 520
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 521
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 527
    .end local v14    # "bos":Ljava/io/BufferedOutputStream;
    .end local v19    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage1:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage1:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v6, 0x1

    aget-object v2, v2, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 534
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    .line 535
    move-object/from16 v0, p0

    iget v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    .line 647
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
    :cond_1
    :goto_2
    return-void

    .line 473
    .restart local v3    # "selectedImage":Landroid/net/Uri;
    .restart local v4    # "filePathColumn":[Ljava/lang/String;
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "matrix":Landroid/graphics/Matrix;
    .restart local v15    # "columnIndex":I
    .restart local v16    # "cursor":Landroid/database/Cursor;
    .restart local v20    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 474
    .local v18, "e":Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 523
    .end local v18    # "e":Ljava/io/IOException;
    .restart local v12    # "ExternalStorageDirectoryPath":Ljava/lang/String;
    .restart local v13    # "bitmap1":Landroid/graphics/Bitmap;
    .restart local v17    # "drawable1":Landroid/graphics/drawable/Drawable;
    .restart local v21    # "filePath1":Ljava/lang/String;
    .restart local v22    # "targetPath":Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 524
    .restart local v18    # "e":Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 536
    .end local v18    # "e":Ljava/io/IOException;
    .end local v21    # "filePath1":Ljava/lang/String;
    :cond_2
    const/16 v2, 0xca

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 537
    const-string v21, ""

    .line 541
    .restart local v21    # "filePath1":Ljava/lang/String;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "tmp2.jpg"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 542
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 544
    .restart local v19    # "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v14, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 547
    .restart local v14    # "bos":Ljava/io/BufferedOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v13, v2, v6, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 549
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 550
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 556
    .end local v14    # "bos":Ljava/io/BufferedOutputStream;
    .end local v19    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage2:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage2:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v6, 0x1

    aget-object v2, v2, v6

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v6, 0x2

    aget-object v2, v2, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 560
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    .line 561
    move-object/from16 v0, p0

    iget v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    goto :goto_2

    .line 552
    :catch_2
    move-exception v18

    .line 553
    .restart local v18    # "e":Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 562
    .end local v18    # "e":Ljava/io/IOException;
    .end local v21    # "filePath1":Ljava/lang/String;
    :cond_3
    const/16 v2, 0xcb

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 563
    const-string v21, ""

    .line 567
    .restart local v21    # "filePath1":Ljava/lang/String;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "tmp3.jpg"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 568
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 570
    .restart local v19    # "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v14, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 573
    .restart local v14    # "bos":Ljava/io/BufferedOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v13, v2, v6, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 575
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 576
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 582
    .end local v14    # "bos":Ljava/io/BufferedOutputStream;
    .end local v19    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage3:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage3:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v6, 0x2

    aget-object v2, v2, v6

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v6, 0x3

    aget-object v2, v2, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    .line 587
    move-object/from16 v0, p0

    iget v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    goto/16 :goto_2

    .line 578
    :catch_3
    move-exception v18

    .line 579
    .restart local v18    # "e":Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 588
    .end local v18    # "e":Ljava/io/IOException;
    .end local v21    # "filePath1":Ljava/lang/String;
    :cond_4
    const/16 v2, 0xcc

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 589
    const-string v21, ""

    .line 593
    .restart local v21    # "filePath1":Ljava/lang/String;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "tmp4.jpg"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 594
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 596
    .restart local v19    # "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v14, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 599
    .restart local v14    # "bos":Ljava/io/BufferedOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v13, v2, v6, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 601
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 602
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 608
    .end local v14    # "bos":Ljava/io/BufferedOutputStream;
    .end local v19    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage4:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage4:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v6, 0x3

    aget-object v2, v2, v6

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v6, 0x4

    aget-object v2, v2, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 612
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    .line 613
    move-object/from16 v0, p0

    iget v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    goto/16 :goto_2

    .line 604
    :catch_4
    move-exception v18

    .line 605
    .restart local v18    # "e":Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 614
    .end local v18    # "e":Ljava/io/IOException;
    .end local v21    # "filePath1":Ljava/lang/String;
    :cond_5
    const/16 v2, 0xcd

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 615
    const-string v21, ""

    .line 619
    .restart local v21    # "filePath1":Ljava/lang/String;
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "tmp5.jpg"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 620
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 622
    .restart local v19    # "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v14, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 625
    .restart local v14    # "bos":Ljava/io/BufferedOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v13, v2, v6, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 627
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 628
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 634
    .end local v14    # "bos":Ljava/io/BufferedOutputStream;
    .end local v19    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage5:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage5:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v6, 0x4

    aget-object v2, v2, v6

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 637
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    .line 638
    move-object/from16 v0, p0

    iget v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    goto/16 :goto_2

    .line 630
    :catch_5
    move-exception v18

    .line 631
    .restart local v18    # "e":Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 641
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
    :cond_6
    if-nez p2, :cond_1

    goto/16 :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 210
    .local v1, "vid":I
    sparse-switch v1, :sswitch_data_0

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 212
    :sswitch_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->finish()V

    goto :goto_0

    .line 216
    :sswitch_1
    invoke-direct {p0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->checkEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    invoke-virtual {p0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->uploadNewsFeedImage()V

    goto :goto_0

    .line 222
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 223
    .local v0, "galleryIntent":Landroid/content/Intent;
    const/16 v2, 0xc9

    invoke-virtual {p0, v0, v2}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 229
    .end local v0    # "galleryIntent":Landroid/content/Intent;
    :sswitch_3
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    .restart local v0    # "galleryIntent":Landroid/content/Intent;
    const/16 v2, 0xca

    invoke-virtual {p0, v0, v2}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 238
    .end local v0    # "galleryIntent":Landroid/content/Intent;
    :sswitch_4
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 241
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 245
    .restart local v0    # "galleryIntent":Landroid/content/Intent;
    const/16 v2, 0xcb

    invoke-virtual {p0, v0, v2}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 250
    .end local v0    # "galleryIntent":Landroid/content/Intent;
    :sswitch_5
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 253
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 256
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 260
    .restart local v0    # "galleryIntent":Landroid/content/Intent;
    const/16 v2, 0xcc

    invoke-virtual {p0, v0, v2}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 265
    .end local v0    # "galleryIntent":Landroid/content/Intent;
    :sswitch_6
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 268
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 271
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 274
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 278
    .restart local v0    # "galleryIntent":Landroid/content/Intent;
    const/16 v2, 0xcd

    invoke-virtual {p0, v0, v2}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 283
    .end local v0    # "galleryIntent":Landroid/content/Intent;
    :sswitch_7
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_0

    .line 286
    :cond_1
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_0

    .line 289
    :cond_2
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_0

    .line 292
    :cond_3
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_0

    .line 295
    :cond_4
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage1:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage1:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    .line 300
    iget v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    goto/16 :goto_0

    .line 305
    :sswitch_8
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_0

    .line 308
    :cond_5
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_0

    .line 311
    :cond_6
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_0

    .line 314
    :cond_7
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage2:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage2:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v2, v2, v8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    .line 319
    iget v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    goto/16 :goto_0

    .line 324
    :sswitch_9
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_0

    .line 327
    :cond_8
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_0

    .line 330
    :cond_9
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage3:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage3:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    .line 335
    iget v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    goto/16 :goto_0

    .line 340
    :sswitch_a
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_0

    .line 343
    :cond_a
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage4:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage4:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v2, v2, v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    .line 348
    iget v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    goto/16 :goto_0

    .line 353
    :sswitch_b
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage5:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage5:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v2, v2, v5

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    .line 357
    iget v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    goto/16 :goto_0

    .line 361
    :sswitch_c
    iget-object v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->categorySpinnerItem:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->DialogSelectOption([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080035 -> :sswitch_c
        0x7f080046 -> :sswitch_0
        0x7f080047 -> :sswitch_7
        0x7f080048 -> :sswitch_8
        0x7f080049 -> :sswitch_9
        0x7f08004a -> :sswitch_a
        0x7f08004b -> :sswitch_b
        0x7f08017c -> :sswitch_1
        0x7f080193 -> :sswitch_2
        0x7f080194 -> :sswitch_3
        0x7f080195 -> :sswitch_4
        0x7f080196 -> :sswitch_5
        0x7f080197 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->setContentView(I)V

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 95
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->categoryIndex:I

    .line 98
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->categoryItem:[Ljava/lang/String;

    iget v1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->categoryIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->category:Ljava/lang/String;

    .line 99
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeButtonText:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f08017c

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->okButtonImage:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->okButtonImage:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v0, 0x7f08018b

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage1:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v0, 0x7f08018c

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage2:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f08018d

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage3:Landroid/widget/ImageView;

    .line 110
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage3:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v0, 0x7f08018e

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage4:Landroid/widget/ImageView;

    .line 112
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage4:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x7f08018f

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage5:Landroid/widget/ImageView;

    .line 114
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->photoImage5:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage1:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f080048

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage2:Landroid/widget/ImageView;

    .line 119
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage3:Landroid/widget/ImageView;

    .line 121
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage3:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage4:Landroid/widget/ImageView;

    .line 123
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage4:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage5:Landroid/widget/ImageView;

    .line 125
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->closeImage5:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    .line 128
    iget-object v1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const v0, 0x7f080193

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 129
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const v0, 0x7f080194

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 131
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const v0, 0x7f080195

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    .line 133
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const v0, 0x7f080196

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v5

    .line 135
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const v0, 0x7f080197

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v6

    .line 137
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->mCkOnlyMyOffice:Landroid/widget/CheckBox;

    .line 141
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->contentEdittext:Landroid/widget/EditText;

    .line 142
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->contentEdittext:Landroid/widget/EditText;

    const-string v1, "\uae00\uc744 \uc791\uc131\ud574\uc8fc\uc138\uc694."

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 143
    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->linkEdittext:Landroid/widget/EditText;

    .line 144
    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->linkTitleEdittext:Landroid/widget/EditText;

    .line 145
    const v0, 0x7f0800b2

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->hashTagEdittitle:Landroid/widget/EditText;

    .line 146
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->categorySpinner:Landroid/widget/LinearLayout;

    .line 147
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->categorySpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->categoryText:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->categoryText:Landroid/widget/TextView;

    iget-object v1, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->categorySpinnerItem:[Ljava/lang/String;

    iget v2, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->categoryIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 194
    return-void
.end method

.method public uploadNewsFeedImage()V
    .locals 10

    .prologue
    .line 730
    const-string v8, ""

    const-string v9, "uploading..."

    invoke-static {p0, v8, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v8

    iput-object v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->dialog:Landroid/app/ProgressDialog;

    .line 732
    const-string v2, "description"

    .line 733
    .local v2, "descriptionString":Ljava/lang/String;
    const-string v8, "multipart/form-data"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    .line 735
    .local v1, "description":Lcom/squareup/okhttp/RequestBody;
    const/4 v3, 0x0

    .line 737
    .local v3, "file":Ljava/io/File;
    iget v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->totalCount:I

    iget v9, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->currentCount:I

    if-gt v8, v9, :cond_1

    .line 738
    invoke-direct {p0}, Lco/kr/festfive/activity/WriteNewsFeedActivity;->setNewsFeedAddToServer()V

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    iget v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->currentCount:I

    if-nez v8, :cond_2

    .line 741
    iget-object v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    const-string v9, ""

    if-eq v8, v9, :cond_0

    .line 743
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    .restart local v3    # "file":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 746
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 749
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    const-string v4, "test1.jpg"

    .line 750
    .local v4, "filename":Ljava/lang/String;
    const-string v8, "image*//*"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    .line 751
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

    .line 752
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v7

    .line 753
    .local v7, "service":Lco/kr/festfive/service/FestInterface;
    invoke-interface {v7, v5}, Lco/kr/festfive/service/FestInterface;->uploadNewsFeed(Ljava/util/Map;)Lretrofit/Call;

    move-result-object v0

    .line 754
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v8, Lco/kr/festfive/activity/WriteNewsFeedActivity$4;

    invoke-direct {v8, p0}, Lco/kr/festfive/activity/WriteNewsFeedActivity$4;-><init>(Lco/kr/festfive/activity/WriteNewsFeedActivity;)V

    invoke-interface {v0, v8}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    goto :goto_0

    .line 783
    .end local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    .end local v6    # "photo":Lcom/squareup/okhttp/RequestBody;
    .end local v7    # "service":Lco/kr/festfive/service/FestInterface;
    :cond_2
    iget v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->currentCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 784
    iget-object v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    const-string v9, ""

    if-eq v8, v9, :cond_0

    .line 786
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 788
    .restart local v3    # "file":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 789
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 792
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    const-string v4, "test2.jpg"

    .line 793
    .restart local v4    # "filename":Ljava/lang/String;
    const-string v8, "image*//*"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    .line 794
    .restart local v6    # "photo":Lcom/squareup/okhttp/RequestBody;
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

    .line 795
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v7

    .line 796
    .restart local v7    # "service":Lco/kr/festfive/service/FestInterface;
    invoke-interface {v7, v5}, Lco/kr/festfive/service/FestInterface;->uploadNewsFeed(Ljava/util/Map;)Lretrofit/Call;

    move-result-object v0

    .line 797
    .restart local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v8, Lco/kr/festfive/activity/WriteNewsFeedActivity$5;

    invoke-direct {v8, p0}, Lco/kr/festfive/activity/WriteNewsFeedActivity$5;-><init>(Lco/kr/festfive/activity/WriteNewsFeedActivity;)V

    invoke-interface {v0, v8}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    goto/16 :goto_0

    .line 823
    .end local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    .end local v6    # "photo":Lcom/squareup/okhttp/RequestBody;
    .end local v7    # "service":Lco/kr/festfive/service/FestInterface;
    :cond_3
    iget v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->currentCount:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 824
    iget-object v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    const-string v9, ""

    if-eq v8, v9, :cond_0

    .line 826
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 828
    .restart local v3    # "file":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 829
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 832
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    const-string v4, "test3.jpg"

    .line 833
    .restart local v4    # "filename":Ljava/lang/String;
    const-string v8, "image*//*"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    .line 834
    .restart local v6    # "photo":Lcom/squareup/okhttp/RequestBody;
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

    .line 835
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v7

    .line 836
    .restart local v7    # "service":Lco/kr/festfive/service/FestInterface;
    invoke-interface {v7, v5}, Lco/kr/festfive/service/FestInterface;->uploadNewsFeed(Ljava/util/Map;)Lretrofit/Call;

    move-result-object v0

    .line 837
    .restart local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v8, Lco/kr/festfive/activity/WriteNewsFeedActivity$6;

    invoke-direct {v8, p0}, Lco/kr/festfive/activity/WriteNewsFeedActivity$6;-><init>(Lco/kr/festfive/activity/WriteNewsFeedActivity;)V

    invoke-interface {v0, v8}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    goto/16 :goto_0

    .line 863
    .end local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    .end local v6    # "photo":Lcom/squareup/okhttp/RequestBody;
    .end local v7    # "service":Lco/kr/festfive/service/FestInterface;
    :cond_4
    iget v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->currentCount:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 864
    iget-object v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    const-string v9, ""

    if-eq v8, v9, :cond_0

    .line 866
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 868
    .restart local v3    # "file":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 869
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 872
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    const-string v4, "test4.jpg"

    .line 873
    .restart local v4    # "filename":Ljava/lang/String;
    const-string v8, "image*//*"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    .line 874
    .restart local v6    # "photo":Lcom/squareup/okhttp/RequestBody;
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

    .line 875
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v7

    .line 876
    .restart local v7    # "service":Lco/kr/festfive/service/FestInterface;
    invoke-interface {v7, v5}, Lco/kr/festfive/service/FestInterface;->uploadNewsFeed(Ljava/util/Map;)Lretrofit/Call;

    move-result-object v0

    .line 877
    .restart local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v8, Lco/kr/festfive/activity/WriteNewsFeedActivity$7;

    invoke-direct {v8, p0}, Lco/kr/festfive/activity/WriteNewsFeedActivity$7;-><init>(Lco/kr/festfive/activity/WriteNewsFeedActivity;)V

    invoke-interface {v0, v8}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    goto/16 :goto_0

    .line 903
    .end local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    .end local v6    # "photo":Lcom/squareup/okhttp/RequestBody;
    .end local v7    # "service":Lco/kr/festfive/service/FestInterface;
    :cond_5
    iget v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->currentCount:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 904
    iget-object v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    const-string v9, ""

    if-eq v8, v9, :cond_0

    .line 906
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v8, p0, Lco/kr/festfive/activity/WriteNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 908
    .restart local v3    # "file":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 909
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 912
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    const-string v4, "test5.jpg"

    .line 913
    .restart local v4    # "filename":Ljava/lang/String;
    const-string v8, "image*//*"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    .line 914
    .restart local v6    # "photo":Lcom/squareup/okhttp/RequestBody;
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

    .line 915
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v7

    .line 916
    .restart local v7    # "service":Lco/kr/festfive/service/FestInterface;
    invoke-interface {v7, v5}, Lco/kr/festfive/service/FestInterface;->uploadNewsFeed(Ljava/util/Map;)Lretrofit/Call;

    move-result-object v0

    .line 917
    .restart local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v8, Lco/kr/festfive/activity/WriteNewsFeedActivity$8;

    invoke-direct {v8, p0}, Lco/kr/festfive/activity/WriteNewsFeedActivity$8;-><init>(Lco/kr/festfive/activity/WriteNewsFeedActivity;)V

    invoke-interface {v0, v8}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    goto/16 :goto_0
.end method
