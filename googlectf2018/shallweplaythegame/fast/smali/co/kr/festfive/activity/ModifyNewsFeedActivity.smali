.class public Lco/kr/festfive/activity/ModifyNewsFeedActivity;
.super Landroid/app/Activity;
.source "ModifyNewsFeedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private category:Ljava/lang/String;

.field private categoryIndex:I

.field private categoryItem:[Ljava/lang/String;

.field private categorySpinner:Landroid/widget/LinearLayout;

.field private categorySpinnerItem:[Ljava/lang/String;

.field private categoryText:Landroid/widget/TextView;

.field private closeButtonImage:Landroid/widget/TextView;

.field private closeImage1:Landroid/widget/ImageView;

.field private closeImage2:Landroid/widget/ImageView;

.field private closeImage3:Landroid/widget/ImageView;

.field private closeImage4:Landroid/widget/ImageView;

.field private closeImage5:Landroid/widget/ImageView;

.field private content:Ljava/lang/String;

.field private contentEdittext:Landroid/widget/EditText;

.field private currentCount:I

.field private dialog:Landroid/app/ProgressDialog;

.field private feedId:Ljava/lang/String;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private hashTagEdittitle:Landroid/widget/EditText;

.field private hashtag:Ljava/lang/String;

.field private imageurl1:Ljava/lang/String;

.field private imageurl2:Ljava/lang/String;

.field private imageurl3:Ljava/lang/String;

.field private imageurl4:Ljava/lang/String;

.field private imageurl5:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private linkEdittext:Landroid/widget/EditText;

.field private linkTitleEdittext:Landroid/widget/EditText;

.field private link_title:Ljava/lang/String;

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

.field private serverImage1:Ljava/lang/String;

.field private serverImage2:Ljava/lang/String;

.field private serverImage3:Ljava/lang/String;

.field private serverImage4:Ljava/lang/String;

.field private serverImage5:Ljava/lang/String;

.field private titleText:Landroid/widget/TextView;

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    .line 63
    iput v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    .line 65
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->dialog:Landroid/app/ProgressDialog;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->feedId:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->content:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl1:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl2:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl3:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl4:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl5:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->link:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->link_title:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->hashtag:Ljava/lang/String;

    .line 82
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "NEWS"

    aput-object v1, v0, v2

    const-string v1, "HR"

    aput-object v1, v0, v3

    const-string v1, "HELP"

    aput-object v1, v0, v4

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->categoryItem:[Ljava/lang/String;

    .line 83
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\ub274\uc2a4\ud53c\ub4dc"

    aput-object v1, v0, v2

    const-string v1, "\uad6c\uc778\uad6c\uc9c1"

    aput-object v1, v0, v3

    const-string v1, "\ubd88\ud3b8\uc2e0\uace0 (Help)"

    aput-object v1, v0, v4

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->categorySpinnerItem:[Ljava/lang/String;

    return-void
.end method

.method private DialogSelectOption([Ljava/lang/String;)V
    .locals 2
    .param p1, "items"    # [Ljava/lang/String;

    .prologue
    .line 292
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const-string v1, "\uce74\ud14c\uace0\ub9ac \uc120\ud0dd"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 294
    new-instance v1, Lco/kr/festfive/activity/ModifyNewsFeedActivity$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity$2;-><init>(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 303
    new-instance v1, Lco/kr/festfive/activity/ModifyNewsFeedActivity$3;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity$3;-><init>(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 312
    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->mCkOnlyMyOffice:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1002(Lco/kr/festfive/activity/ModifyNewsFeedActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyNewsFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage4:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lco/kr/festfive/activity/ModifyNewsFeedActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyNewsFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->category:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lco/kr/festfive/activity/ModifyNewsFeedActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyNewsFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage5:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->categoryItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->categorySpinnerItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->categoryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lco/kr/festfive/activity/ModifyNewsFeedActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyNewsFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$708(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)I
    .locals 2
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    .prologue
    .line 46
    iget v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    return v0
.end method

.method static synthetic access$802(Lco/kr/festfive/activity/ModifyNewsFeedActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyNewsFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lco/kr/festfive/activity/ModifyNewsFeedActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyNewsFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage3:Ljava/lang/String;

    return-object p1
.end method

.method private checkEmpty()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 322
    iget v1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->contentEdittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->contentEdittext:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    :cond_0
    const-string v1, "\uae00\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 325
    const/4 v0, 0x1

    .line 327
    :cond_1
    return v0
.end method

.method private setNewsFeedEditToServer()V
    .locals 15

    .prologue
    .line 569
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v0

    .line 571
    .local v0, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v2, :cond_0

    .line 572
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v2

    iput-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 574
    :cond_0
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, "userId":Ljava/lang/String;
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage1:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 577
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage1:Ljava/lang/String;

    .line 579
    :cond_1
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage2:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 580
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage2:Ljava/lang/String;

    .line 582
    :cond_2
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage3:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 583
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage3:Ljava/lang/String;

    .line 585
    :cond_3
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage4:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 586
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage4:Ljava/lang/String;

    .line 588
    :cond_4
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage5:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 589
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage5:Ljava/lang/String;

    .line 592
    :cond_5
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->contentEdittext:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "content":Ljava/lang/String;
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->linkEdittext:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 594
    .local v11, "link":Ljava/lang/String;
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->linkTitleEdittext:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 595
    .local v10, "linktitle":Ljava/lang/String;
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->hashTagEdittitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 597
    .local v12, "hashTag":Ljava/lang/String;
    if-nez v11, :cond_6

    const-string v11, ""

    .line 598
    :cond_6
    if-nez v10, :cond_7

    const-string v10, ""

    .line 599
    :cond_7
    if-nez v12, :cond_8

    const-string v12, ""

    .line 603
    :cond_8
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->feedId:Ljava/lang/String;

    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->mCkOnlyMyOffice:Landroid/widget/CheckBox;

    .line 605
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage1:Ljava/lang/String;

    iget-object v6, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage2:Ljava/lang/String;

    iget-object v7, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage3:Ljava/lang/String;

    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage4:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage5:Ljava/lang/String;

    iget-object v13, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->category:Ljava/lang/String;

    .line 603
    invoke-interface/range {v0 .. v13}, Lco/kr/festfive/service/FestInterface;->getNewsFeedEdit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v14

    .line 609
    .local v14, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v2, Lco/kr/festfive/activity/ModifyNewsFeedActivity$4;

    invoke-direct {v2, p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity$4;-><init>(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)V

    invoke-interface {v14, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 641
    return-void
.end method


# virtual methods
.method public findCategoryIndex([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "categoryList"    # [Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 889
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 890
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 889
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 894
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 509
    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xca

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcd

    if-ne p1, v0, :cond_1

    .line 511
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 513
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 514
    .local v1, "selectedImage":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    .line 516
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 517
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 519
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 520
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 521
    .local v8, "filePath":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 523
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_2

    .line 524
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 525
    iput-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    .line 526
    iget v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    .line 527
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage1:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 565
    .end local v1    # "selectedImage":Landroid/net/Uri;
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v6    # "columnIndex":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "filePath":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 530
    .restart local v1    # "selectedImage":Landroid/net/Uri;
    .restart local v2    # "filePathColumn":[Ljava/lang/String;
    .restart local v6    # "columnIndex":I
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "filePath":Ljava/lang/String;
    :cond_2
    const/16 v0, 0xca

    if-ne p1, v0, :cond_3

    .line 531
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 532
    iput-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    .line 533
    iget v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    .line 534
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage2:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 537
    :cond_3
    const/16 v0, 0xcb

    if-ne p1, v0, :cond_4

    .line 538
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 539
    iput-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    .line 540
    iget v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    .line 541
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage3:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 544
    :cond_4
    const/16 v0, 0xcc

    if-ne p1, v0, :cond_5

    .line 545
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 546
    iput-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    .line 547
    iget v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    .line 548
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage4:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 551
    :cond_5
    const/16 v0, 0xcd

    if-ne p1, v0, :cond_1

    .line 552
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 553
    iput-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    .line 554
    iget v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    .line 555
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage5:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 559
    .end local v1    # "selectedImage":Landroid/net/Uri;
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v6    # "columnIndex":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "filePath":Ljava/lang/String;
    :cond_6
    if-nez p2, :cond_1

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 334
    .local v1, "vid":I
    sparse-switch v1, :sswitch_data_0

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 336
    :sswitch_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->finish()V

    goto :goto_0

    .line 340
    :sswitch_1
    invoke-direct {p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->checkEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->uploadNewsFeedImage()V

    goto :goto_0

    .line 347
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 348
    .local v0, "galleryIntent":Landroid/content/Intent;
    const/16 v2, 0xc9

    invoke-virtual {p0, v0, v2}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 354
    .end local v0    # "galleryIntent":Landroid/content/Intent;
    :sswitch_3
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 358
    .restart local v0    # "galleryIntent":Landroid/content/Intent;
    const/16 v2, 0xca

    invoke-virtual {p0, v0, v2}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 364
    .end local v0    # "galleryIntent":Landroid/content/Intent;
    :sswitch_4
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 371
    .restart local v0    # "galleryIntent":Landroid/content/Intent;
    const/16 v2, 0xcb

    invoke-virtual {p0, v0, v2}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 377
    .end local v0    # "galleryIntent":Landroid/content/Intent;
    :sswitch_5
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 383
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 387
    .restart local v0    # "galleryIntent":Landroid/content/Intent;
    const/16 v2, 0xcc

    invoke-virtual {p0, v0, v2}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 393
    .end local v0    # "galleryIntent":Landroid/content/Intent;
    :sswitch_6
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 396
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 399
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 406
    .restart local v0    # "galleryIntent":Landroid/content/Intent;
    const/16 v2, 0xcd

    invoke-virtual {p0, v0, v2}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 412
    .end local v0    # "galleryIntent":Landroid/content/Intent;
    :sswitch_7
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage1:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v2, v2, v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    .line 429
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage1:Ljava/lang/String;

    .line 430
    iget v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    goto/16 :goto_0

    .line 436
    :sswitch_8
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage2:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage2:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v2, v2, v7

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    .line 450
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage2:Ljava/lang/String;

    .line 451
    iget v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    goto/16 :goto_0

    .line 457
    :sswitch_9
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage3:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage3:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    .line 468
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage3:Ljava/lang/String;

    .line 469
    iget v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    goto/16 :goto_0

    .line 475
    :sswitch_a
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage4:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage4:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 482
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    .line 483
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage4:Ljava/lang/String;

    .line 484
    iget v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    goto/16 :goto_0

    .line 490
    :sswitch_b
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage5:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 491
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage5:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    .line 494
    const-string v2, ""

    iput-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage5:Ljava/lang/String;

    .line 495
    iget v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    goto/16 :goto_0

    .line 499
    :sswitch_c
    iget-object v2, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->categorySpinnerItem:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->DialogSelectOption([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 334
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
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v4, 0x7f0a003c

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->setContentView(I)V

    .line 92
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 93
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 99
    const-string v4, "feedId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->feedId:Ljava/lang/String;

    .line 100
    const-string v4, "content"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->content:Ljava/lang/String;

    .line 101
    const-string v4, "image1"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl1:Ljava/lang/String;

    .line 102
    const-string v4, "image2"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl2:Ljava/lang/String;

    .line 103
    const-string v4, "image3"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl3:Ljava/lang/String;

    .line 104
    const-string v4, "image4"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl4:Ljava/lang/String;

    .line 105
    const-string v4, "image5"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl5:Ljava/lang/String;

    .line 106
    const-string v4, "link"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->link:Ljava/lang/String;

    .line 107
    const-string v4, "link_title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->link_title:Ljava/lang/String;

    .line 108
    const-string v4, "hashtag"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->hashtag:Ljava/lang/String;

    .line 109
    const-string v4, "category"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->category:Ljava/lang/String;

    .line 110
    const-string v4, "ModifyNewsFeedActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "category : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->category:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 114
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v4, :cond_1

    .line 115
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v4

    invoke-virtual {v4}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 118
    :cond_1
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "userId":Ljava/lang/String;
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->feedId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lco/kr/festfive/service/FestInterface;->getNewsFeedDetail(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    .line 121
    .local v1, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v4, Lco/kr/festfive/activity/ModifyNewsFeedActivity$1;

    invoke-direct {v4, p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity$1;-><init>(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)V

    invoke-interface {v1, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 147
    .end local v1    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    .end local v2    # "service":Lco/kr/festfive/service/FestInterface;
    .end local v3    # "userId":Ljava/lang/String;
    :cond_2
    const v4, 0x7f080035

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->categorySpinner:Landroid/widget/LinearLayout;

    .line 148
    const v4, 0x7f080036

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->categoryText:Landroid/widget/TextView;

    .line 149
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->categorySpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->categoryItem:[Ljava/lang/String;

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->category:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findCategoryIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->categoryIndex:I

    .line 152
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->categoryText:Landroid/widget/TextView;

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->categorySpinnerItem:[Ljava/lang/String;

    iget v6, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->categoryIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const v4, 0x7f080042

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->mCkOnlyMyOffice:Landroid/widget/CheckBox;

    .line 155
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl1:Ljava/lang/String;

    invoke-static {v4}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 156
    iget v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    .line 159
    :cond_3
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl2:Ljava/lang/String;

    invoke-static {v4}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 160
    iget v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    .line 163
    :cond_4
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl3:Ljava/lang/String;

    invoke-static {v4}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 164
    iget v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    .line 167
    :cond_5
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl4:Ljava/lang/String;

    invoke-static {v4}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 168
    iget v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    .line 171
    :cond_6
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl5:Ljava/lang/String;

    invoke-static {v4}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 172
    iget v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    .line 175
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imageurl1 => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lco/kr/festfive/utils/Utils;->Log(Ljava/lang/String;)V

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imageurl2 => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lco/kr/festfive/utils/Utils;->Log(Ljava/lang/String;)V

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imageurl3 => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl3:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lco/kr/festfive/utils/Utils;->Log(Ljava/lang/String;)V

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imageurl4 => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl4:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lco/kr/festfive/utils/Utils;->Log(Ljava/lang/String;)V

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imageurl5 => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl5:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lco/kr/festfive/utils/Utils;->Log(Ljava/lang/String;)V

    .line 181
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl1:Ljava/lang/String;

    const-string v5, "https://s3-ap-northeast-1.amazonaws.com/fast-five/news_feed/"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage1:Ljava/lang/String;

    .line 182
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl2:Ljava/lang/String;

    const-string v5, "https://s3-ap-northeast-1.amazonaws.com/fast-five/news_feed/"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage2:Ljava/lang/String;

    .line 183
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl3:Ljava/lang/String;

    const-string v5, "https://s3-ap-northeast-1.amazonaws.com/fast-five/news_feed/"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage3:Ljava/lang/String;

    .line 184
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl4:Ljava/lang/String;

    const-string v5, "https://s3-ap-northeast-1.amazonaws.com/fast-five/news_feed/"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage4:Ljava/lang/String;

    .line 185
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl5:Ljava/lang/String;

    const-string v5, "https://s3-ap-northeast-1.amazonaws.com/fast-five/news_feed/"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage5:Ljava/lang/String;

    .line 187
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage1:Ljava/lang/String;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    .line 188
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage2:Ljava/lang/String;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    .line 189
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage3:Ljava/lang/String;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    .line 190
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage4:Ljava/lang/String;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    .line 191
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage5:Ljava/lang/String;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    .line 193
    const v4, 0x7f080047

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage1:Landroid/widget/ImageView;

    .line 194
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage1:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const v4, 0x7f080048

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage2:Landroid/widget/ImageView;

    .line 196
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage2:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v4, 0x7f080049

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage3:Landroid/widget/ImageView;

    .line 198
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage3:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v4, 0x7f08004a

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage4:Landroid/widget/ImageView;

    .line 200
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage4:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v4, 0x7f08004b

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage5:Landroid/widget/ImageView;

    .line 202
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage5:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v4, 0x7f080046

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeButtonImage:Landroid/widget/TextView;

    .line 205
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeButtonImage:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v4, 0x7f08017c

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->okButtonImage:Landroid/widget/TextView;

    .line 208
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->okButtonImage:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v4, 0x7f08020d

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->titleText:Landroid/widget/TextView;

    .line 211
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->titleText:Landroid/widget/TextView;

    const-string v5, "\uae00 \uc218\uc815"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    const v4, 0x7f08018b

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage1:Landroid/widget/ImageView;

    .line 214
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage1:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v4, 0x7f08018c

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage2:Landroid/widget/ImageView;

    .line 216
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage2:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v4, 0x7f08018d

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage3:Landroid/widget/ImageView;

    .line 218
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage3:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v4, 0x7f08018e

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage4:Landroid/widget/ImageView;

    .line 220
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage4:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v4, 0x7f08018f

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage5:Landroid/widget/ImageView;

    .line 222
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage5:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const/4 v4, 0x5

    new-array v4, v4, [Landroid/widget/ImageView;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    .line 225
    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const v4, 0x7f080193

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    aput-object v4, v5, v7

    .line 226
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v4, v4, v7

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const v4, 0x7f080194

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    aput-object v4, v5, v9

    .line 228
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v4, v4, v9

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const v4, 0x7f080195

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    aput-object v4, v5, v10

    .line 230
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v4, v4, v10

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const v4, 0x7f080196

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    aput-object v4, v5, v11

    .line 232
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v4, v4, v11

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v6, 0x4

    const v4, 0x7f080197

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    aput-object v4, v5, v6

    .line 234
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl1:Ljava/lang/String;

    invoke-static {v4}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 238
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage1:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    :goto_0
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl2:Ljava/lang/String;

    invoke-static {v4}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 247
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage2:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    :goto_1
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl3:Ljava/lang/String;

    invoke-static {v4}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 256
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage3:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    :goto_2
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl4:Ljava/lang/String;

    invoke-static {v4}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 265
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage4:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    :goto_3
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl5:Ljava/lang/String;

    invoke-static {v4}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 274
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage5:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    :goto_4
    const v4, 0x7f080054

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->contentEdittext:Landroid/widget/EditText;

    .line 282
    const v4, 0x7f080122

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->linkEdittext:Landroid/widget/EditText;

    .line 283
    const v4, 0x7f080123

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->linkTitleEdittext:Landroid/widget/EditText;

    .line 284
    const v4, 0x7f0800b2

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->hashTagEdittitle:Landroid/widget/EditText;

    .line 286
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->contentEdittext:Landroid/widget/EditText;

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->content:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->linkEdittext:Landroid/widget/EditText;

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->link:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->linkTitleEdittext:Landroid/widget/EditText;

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->link_title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->hashTagEdittitle:Landroid/widget/EditText;

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->hashtag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 290
    return-void

    .line 240
    :cond_8
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage1:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v4, v4, v7

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v4, v4, v9

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage1:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_0

    .line 249
    :cond_9
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage2:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v4, v4, v9

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v4, v4, v10

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage2:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_1

    .line 258
    :cond_a
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage3:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v4, v4, v10

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v4, v4, v11

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl3:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage3:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_2

    .line 267
    :cond_b
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage4:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    aget-object v4, v4, v11

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl4:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage4:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_3

    .line 276
    :cond_c
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->closeImage5:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    iget-object v4, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->plusImage:[Landroid/widget/ImageView;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->imageurl5:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->photoImage5:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_4
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 318
    return-void
.end method

.method public uploadNewsFeedImage()V
    .locals 10

    .prologue
    .line 644
    const-string v8, ""

    const-string v9, "uploading..."

    invoke-static {p0, v8, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v8

    iput-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->dialog:Landroid/app/ProgressDialog;

    .line 646
    const-string v2, "description"

    .line 647
    .local v2, "descriptionString":Ljava/lang/String;
    const-string v8, "multipart/form-data"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    .line 649
    .local v1, "description":Lcom/squareup/okhttp/RequestBody;
    const/4 v3, 0x0

    .line 651
    .local v3, "file":Ljava/io/File;
    iget v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->totalCount:I

    iget v9, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    if-gt v8, v9, :cond_1

    .line 652
    invoke-direct {p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->setNewsFeedEditToServer()V

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    if-nez v8, :cond_5

    .line 655
    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    invoke-static {v8}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 656
    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage1:Ljava/lang/String;

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage1:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 657
    :cond_2
    iget v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    .line 658
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->uploadNewsFeedImage()V

    goto :goto_0

    .line 660
    :cond_3
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage1:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 662
    .restart local v3    # "file":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 663
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 666
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    const-string v4, "test1.jpg"

    .line 667
    .local v4, "filename":Ljava/lang/String;
    const-string v8, "image/*"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    .line 668
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

    .line 669
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v7

    .line 670
    .local v7, "service":Lco/kr/festfive/service/FestInterface;
    invoke-interface {v7, v5}, Lco/kr/festfive/service/FestInterface;->uploadNewsFeed(Ljava/util/Map;)Lretrofit/Call;

    move-result-object v0

    .line 671
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v8, Lco/kr/festfive/activity/ModifyNewsFeedActivity$5;

    invoke-direct {v8, p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity$5;-><init>(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)V

    invoke-interface {v0, v8}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    goto :goto_0

    .line 698
    .end local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    .end local v6    # "photo":Lcom/squareup/okhttp/RequestBody;
    .end local v7    # "service":Lco/kr/festfive/service/FestInterface;
    :cond_4
    const-string v8, ""

    iput-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage1:Ljava/lang/String;

    goto :goto_0

    .line 700
    :cond_5
    iget v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 701
    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    invoke-static {v8}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 702
    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage2:Ljava/lang/String;

    if-eq v8, v9, :cond_6

    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage2:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 703
    :cond_6
    iget v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    .line 704
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->uploadNewsFeedImage()V

    goto/16 :goto_0

    .line 706
    :cond_7
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage2:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 708
    .restart local v3    # "file":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 709
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 712
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    const-string v4, "test2.jpg"

    .line 713
    .restart local v4    # "filename":Ljava/lang/String;
    const-string v8, "image/*"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    .line 714
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

    .line 715
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v7

    .line 716
    .restart local v7    # "service":Lco/kr/festfive/service/FestInterface;
    invoke-interface {v7, v5}, Lco/kr/festfive/service/FestInterface;->uploadNewsFeed(Ljava/util/Map;)Lretrofit/Call;

    move-result-object v0

    .line 717
    .restart local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v8, Lco/kr/festfive/activity/ModifyNewsFeedActivity$6;

    invoke-direct {v8, p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity$6;-><init>(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)V

    invoke-interface {v0, v8}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    goto/16 :goto_0

    .line 744
    .end local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    .end local v6    # "photo":Lcom/squareup/okhttp/RequestBody;
    .end local v7    # "service":Lco/kr/festfive/service/FestInterface;
    :cond_8
    const-string v8, ""

    iput-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage2:Ljava/lang/String;

    goto/16 :goto_0

    .line 746
    :cond_9
    iget v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_d

    .line 747
    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    invoke-static {v8}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 748
    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage3:Ljava/lang/String;

    if-eq v8, v9, :cond_a

    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage3:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 749
    :cond_a
    iget v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    .line 750
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->uploadNewsFeedImage()V

    goto/16 :goto_0

    .line 752
    :cond_b
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage3:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 754
    .restart local v3    # "file":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 755
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 758
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    const-string v4, "test3.jpg"

    .line 759
    .restart local v4    # "filename":Ljava/lang/String;
    const-string v8, "image/*"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    .line 760
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

    .line 761
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v7

    .line 762
    .restart local v7    # "service":Lco/kr/festfive/service/FestInterface;
    invoke-interface {v7, v5}, Lco/kr/festfive/service/FestInterface;->uploadNewsFeed(Ljava/util/Map;)Lretrofit/Call;

    move-result-object v0

    .line 763
    .restart local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v8, Lco/kr/festfive/activity/ModifyNewsFeedActivity$7;

    invoke-direct {v8, p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity$7;-><init>(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)V

    invoke-interface {v0, v8}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    goto/16 :goto_0

    .line 790
    .end local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    .end local v6    # "photo":Lcom/squareup/okhttp/RequestBody;
    .end local v7    # "service":Lco/kr/festfive/service/FestInterface;
    :cond_c
    const-string v8, ""

    iput-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage3:Ljava/lang/String;

    goto/16 :goto_0

    .line 792
    :cond_d
    iget v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_11

    .line 793
    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    invoke-static {v8}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 794
    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage4:Ljava/lang/String;

    if-eq v8, v9, :cond_e

    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage4:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 795
    :cond_e
    iget v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    .line 796
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->uploadNewsFeedImage()V

    goto/16 :goto_0

    .line 798
    :cond_f
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage4:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 800
    .restart local v3    # "file":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 801
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 804
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    const-string v4, "test4.jpg"

    .line 805
    .restart local v4    # "filename":Ljava/lang/String;
    const-string v8, "image/*"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    .line 806
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

    .line 807
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v7

    .line 808
    .restart local v7    # "service":Lco/kr/festfive/service/FestInterface;
    invoke-interface {v7, v5}, Lco/kr/festfive/service/FestInterface;->uploadNewsFeed(Ljava/util/Map;)Lretrofit/Call;

    move-result-object v0

    .line 809
    .restart local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v8, Lco/kr/festfive/activity/ModifyNewsFeedActivity$8;

    invoke-direct {v8, p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity$8;-><init>(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)V

    invoke-interface {v0, v8}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    goto/16 :goto_0

    .line 836
    .end local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    .end local v6    # "photo":Lcom/squareup/okhttp/RequestBody;
    .end local v7    # "service":Lco/kr/festfive/service/FestInterface;
    :cond_10
    const-string v8, ""

    iput-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage4:Ljava/lang/String;

    goto/16 :goto_0

    .line 838
    :cond_11
    iget v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 839
    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    invoke-static {v8}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_14

    .line 840
    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage5:Ljava/lang/String;

    if-eq v8, v9, :cond_12

    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage5:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 841
    :cond_12
    iget v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->currentCount:I

    .line 842
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->uploadNewsFeedImage()V

    goto/16 :goto_0

    .line 844
    :cond_13
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->newsFeedImage5:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 846
    .restart local v3    # "file":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 847
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 850
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    const-string v4, "test5.jpg"

    .line 851
    .restart local v4    # "filename":Ljava/lang/String;
    const-string v8, "image/*"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    .line 852
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

    .line 853
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v7

    .line 854
    .restart local v7    # "service":Lco/kr/festfive/service/FestInterface;
    invoke-interface {v7, v5}, Lco/kr/festfive/service/FestInterface;->uploadNewsFeed(Ljava/util/Map;)Lretrofit/Call;

    move-result-object v0

    .line 855
    .restart local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v8, Lco/kr/festfive/activity/ModifyNewsFeedActivity$9;

    invoke-direct {v8, p0}, Lco/kr/festfive/activity/ModifyNewsFeedActivity$9;-><init>(Lco/kr/festfive/activity/ModifyNewsFeedActivity;)V

    invoke-interface {v0, v8}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    goto/16 :goto_0

    .line 882
    .end local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    .end local v6    # "photo":Lcom/squareup/okhttp/RequestBody;
    .end local v7    # "service":Lco/kr/festfive/service/FestInterface;
    :cond_14
    const-string v8, ""

    iput-object v8, p0, Lco/kr/festfive/activity/ModifyNewsFeedActivity;->serverImage5:Ljava/lang/String;

    goto/16 :goto_0
.end method
