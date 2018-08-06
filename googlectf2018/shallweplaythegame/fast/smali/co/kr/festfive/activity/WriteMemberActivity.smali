.class public Lco/kr/festfive/activity/WriteMemberActivity;
.super Landroid/app/Activity;
.source "WriteMemberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;,
        Lco/kr/festfive/activity/WriteMemberActivity$OnGetBaseDataCompleteListener;
    }
.end annotation


# instance fields
.field private companyId:Ljava/lang/String;

.field private containerll:Landroid/widget/LinearLayout;

.field private dialog:Landroid/app/ProgressDialog;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private horizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mEdtAbout1Line:Landroid/widget/EditText;

.field private mEdtAboutDetail:Landroid/widget/EditText;

.field private mEdtBranch:Landroid/widget/Spinner;

.field private mEdtCompanyName:Landroid/widget/EditText;

.field private mEdtHomepage:Landroid/widget/EditText;

.field private mEdtOneWord:Landroid/widget/EditText;

.field private mEdtPhoneNum:Landroid/widget/EditText;

.field private mEdtRepName:Landroid/widget/EditText;

.field private mEdtRoomName:Landroid/widget/Spinner;

.field private mIvLogo:Landroid/widget/ImageView;

.field private mIvPhoto:Landroid/widget/ImageView;

.field private mLogoPath:Ljava/lang/String;

.field private mPhotoPath:Ljava/lang/String;

.field private mProfile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadIndex:I

.field private mUserId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private offices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lco/kr/festfive/vo/OfficeVo;",
            ">;"
        }
    .end annotation
.end field

.field private serverImage1:Ljava/lang/String;

.field private serverImage2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mUserId:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mProfile:Ljava/util/ArrayList;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->dialog:Landroid/app/ProgressDialog;

    .line 92
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/activity/WriteMemberActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteMemberActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->companyId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/activity/WriteMemberActivity;Lcom/google/gson/JsonObject;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteMemberActivity;
    .param p1, "x1"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lco/kr/festfive/activity/WriteMemberActivity;->drawCompanyDetail(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method static synthetic access$1008(Lco/kr/festfive/activity/WriteMemberActivity;)I
    .locals 2
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteMemberActivity;

    .prologue
    .line 68
    iget v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mUploadIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mUploadIndex:I

    return v0
.end method

.method static synthetic access$1102(Lco/kr/festfive/activity/WriteMemberActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteMemberActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->serverImage2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lco/kr/festfive/activity/WriteMemberActivity;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteMemberActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lco/kr/festfive/activity/WriteMemberActivity;->registBranchListener()V

    return-void
.end method

.method static synthetic access$300(Lco/kr/festfive/activity/WriteMemberActivity;Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteMemberActivity;
    .param p1, "x1"    # Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lco/kr/festfive/activity/WriteMemberActivity;->getOriginData(Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;)V

    return-void
.end method

.method static synthetic access$400(Lco/kr/festfive/activity/WriteMemberActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteMemberActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtBranch:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$500(Lco/kr/festfive/activity/WriteMemberActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteMemberActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lco/kr/festfive/activity/WriteMemberActivity;->refreshRoom(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lco/kr/festfive/activity/WriteMemberActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteMemberActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->offices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lco/kr/festfive/activity/WriteMemberActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteMemberActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 68
    iput-object p1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->offices:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lco/kr/festfive/activity/WriteMemberActivity;)Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteMemberActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object v0
.end method

.method static synthetic access$800(Lco/kr/festfive/activity/WriteMemberActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteMemberActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$902(Lco/kr/festfive/activity/WriteMemberActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/WriteMemberActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->serverImage1:Ljava/lang/String;

    return-object p1
.end method

.method private checkDegree(Ljava/lang/String;)I
    .locals 8
    .param p1, "fileUri"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 536
    const/4 v0, 0x0

    .line 538
    .local v0, "degree":I
    const/4 v2, 0x0

    .line 540
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v3, "exif":Landroid/media/ExifInterface;
    move-object v2, v3

    .line 546
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 547
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 548
    .local v4, "orientation1":I
    if-eq v4, v7, :cond_0

    .line 551
    packed-switch v4, :pswitch_data_0

    .line 569
    .end local v4    # "orientation1":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 541
    :catch_0
    move-exception v1

    .line 542
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "cks"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 553
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "orientation1":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 554
    goto :goto_1

    .line 557
    :pswitch_2
    const/16 v0, 0xb4

    .line 558
    goto :goto_1

    .line 560
    :pswitch_3
    const/16 v0, 0x10e

    .line 561
    goto :goto_1

    .line 563
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_1

    .line 551
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

.method private drawCompanyDetail(Lcom/google/gson/JsonObject;)V
    .locals 12
    .param p1, "data"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 688
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtCompanyName:Landroid/widget/EditText;

    const-string v9, "company_name"

    invoke-virtual {p1, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtAbout1Line:Landroid/widget/EditText;

    const-string v9, "company_summary"

    invoke-virtual {p1, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtAboutDetail:Landroid/widget/EditText;

    const-string v9, "company_description"

    invoke-virtual {p1, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtOneWord:Landroid/widget/EditText;

    const-string v9, "company_talk"

    invoke-virtual {p1, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtRepName:Landroid/widget/EditText;

    const-string v9, "company_ceo"

    invoke-virtual {p1, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 694
    const/4 v5, 0x0

    .line 695
    .local v5, "originOffice":Lco/kr/festfive/vo/OfficeVo;
    const-string v8, "office_name"

    invoke-virtual {p1, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 696
    .local v4, "officeName":Ljava/lang/String;
    const-string v8, "company_room_name"

    invoke-virtual {p1, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 697
    .local v6, "roomName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->offices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 698
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->offices:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco/kr/festfive/vo/OfficeVo;

    invoke-virtual {v8}, Lco/kr/festfive/vo/OfficeVo;->getOfficeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 699
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->offices:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "originOffice":Lco/kr/festfive/vo/OfficeVo;
    check-cast v5, Lco/kr/festfive/vo/OfficeVo;

    .line 700
    .restart local v5    # "originOffice":Lco/kr/festfive/vo/OfficeVo;
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtBranch:Landroid/widget/Spinner;

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 697
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 704
    :cond_1
    invoke-direct {p0, v4}, Lco/kr/festfive/activity/WriteMemberActivity;->refreshRoom(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v5}, Lco/kr/festfive/vo/OfficeVo;->getRooms()Ljava/util/List;

    move-result-object v7

    .line 707
    .local v7, "rooms":Ljava/util/List;, "Ljava/util/List<Lco/kr/festfive/vo/RoomVo;>;"
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 708
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco/kr/festfive/vo/RoomVo;

    invoke-virtual {v8}, Lco/kr/festfive/vo/RoomVo;->getRoomName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 709
    const-string v8, "HAMA"

    const-string v9, "select room"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtRoomName:Landroid/widget/Spinner;

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 707
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 714
    :cond_3
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtHomepage:Landroid/widget/EditText;

    const-string v9, "company_homepage"

    invoke-virtual {p1, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtPhoneNum:Landroid/widget/EditText;

    const-string v9, "company_tel"

    invoke-virtual {p1, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 717
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v8

    const-string v9, "logo_url"

    invoke-virtual {p1, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v8

    sget-object v9, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v8

    iget-object v9, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mIvLogo:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 718
    const v8, 0x7f080102

    invoke-virtual {p0, v8}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 719
    const-string v8, "logo_url"

    invoke-virtual {p1, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->serverImage1:Ljava/lang/String;

    .line 721
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v8

    const-string v9, "image_url"

    invoke-virtual {p1, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v8

    sget-object v9, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v8

    iget-object v9, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mIvPhoto:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 722
    const v8, 0x7f08010e

    invoke-virtual {p0, v8}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 723
    const-string v8, "image_url"

    invoke-virtual {p1, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->serverImage2:Ljava/lang/String;

    .line 725
    const-string v8, "members"

    invoke-virtual {p1, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 726
    .local v3, "members":Lcom/google/gson/JsonArray;
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 727
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mUserId:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    const-string v10, "user_id"

    invoke-virtual {v9, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mProfile:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    const-string v10, "user_profile_thumb_url"

    invoke-virtual {v9, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 731
    :cond_4
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mProfile:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 732
    const v8, 0x7f08012e

    invoke-virtual {p0, v8}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 734
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->containerll:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 735
    const/4 v1, 0x0

    :goto_3
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mProfile:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_6

    .line 736
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0a0070

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 737
    .local v0, "childView":Landroid/view/View;
    const v8, 0x7f08013a

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 739
    .local v2, "memberLogIv":Lcom/mikhaellopez/circularimageview/CircularImageView;
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v9

    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mProfile:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v8

    sget-object v9, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 741
    new-instance v8, Lco/kr/festfive/activity/WriteMemberActivity$8;

    invoke-direct {v8, p0}, Lco/kr/festfive/activity/WriteMemberActivity$8;-><init>(Lco/kr/festfive/activity/WriteMemberActivity;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mUserId:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 763
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->containerll:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 735
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 766
    .end local v0    # "childView":Landroid/view/View;
    .end local v2    # "memberLogIv":Lcom/mikhaellopez/circularimageview/CircularImageView;
    :cond_5
    const v8, 0x7f08012e

    invoke-virtual {p0, v8}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 767
    const v8, 0x7f080133

    invoke-virtual {p0, v8}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 769
    :cond_6
    return-void
.end method

.method private getBaseData(Lco/kr/festfive/activity/WriteMemberActivity$OnGetBaseDataCompleteListener;)V
    .locals 3
    .param p1, "listener"    # Lco/kr/festfive/activity/WriteMemberActivity$OnGetBaseDataCompleteListener;

    .prologue
    .line 252
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 253
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lco/kr/festfive/service/FestInterface;->getSelectRegist(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 255
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v2, Lco/kr/festfive/activity/WriteMemberActivity$4;

    invoke-direct {v2, p0, p1}, Lco/kr/festfive/activity/WriteMemberActivity$4;-><init>(Lco/kr/festfive/activity/WriteMemberActivity;Lco/kr/festfive/activity/WriteMemberActivity$OnGetBaseDataCompleteListener;)V

    invoke-interface {v0, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 311
    return-void
.end method

.method private getOriginData(Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;)V
    .locals 7
    .param p1, "listener"    # Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;

    .prologue
    .line 214
    const v4, 0x7f08002f

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 215
    .local v1, "registButton":Landroid/widget/Button;
    const-string v4, "\uc218\uc815\ud558\uae30"

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v4, p0, Lco/kr/festfive/activity/WriteMemberActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "userId":Ljava/lang/String;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 219
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v4, p0, Lco/kr/festfive/activity/WriteMemberActivity;->companyId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lco/kr/festfive/service/FestInterface;->getCompanyDetail(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 221
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v4, Lco/kr/festfive/activity/WriteMemberActivity$3;

    invoke-direct {v4, p0, p1}, Lco/kr/festfive/activity/WriteMemberActivity$3;-><init>(Lco/kr/festfive/activity/WriteMemberActivity;Lco/kr/festfive/activity/WriteMemberActivity$OnGetOriginDataCompleteListener;)V

    invoke-interface {v0, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 249
    return-void
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "contentURI"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 573
    invoke-virtual {p0}, Lco/kr/festfive/activity/WriteMemberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 574
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 575
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 579
    :goto_0
    return-object v0

    .line 577
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 578
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 579
    .local v7, "idx":I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hideEditText()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtCompanyName:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lco/kr/festfive/utils/Utils;->HideSoftKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 525
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtAbout1Line:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lco/kr/festfive/utils/Utils;->HideSoftKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 526
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtAboutDetail:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lco/kr/festfive/utils/Utils;->HideSoftKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 527
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtOneWord:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lco/kr/festfive/utils/Utils;->HideSoftKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 528
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtRepName:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lco/kr/festfive/utils/Utils;->HideSoftKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 531
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtHomepage:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lco/kr/festfive/utils/Utils;->HideSoftKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 532
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtPhoneNum:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lco/kr/festfive/utils/Utils;->HideSoftKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 533
    return-void
.end method

.method private refreshRoom(Ljava/lang/String;)V
    .locals 7
    .param p1, "officeName"    # Ljava/lang/String;

    .prologue
    .line 189
    const/4 v4, 0x0

    .line 190
    .local v4, "rooms":Ljava/util/List;, "Ljava/util/List<Lco/kr/festfive/vo/RoomVo;>;"
    iget-object v5, p0, Lco/kr/festfive/activity/WriteMemberActivity;->offices:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 191
    iget-object v5, p0, Lco/kr/festfive/activity/WriteMemberActivity;->offices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/vo/OfficeVo;

    .line 192
    .local v1, "office":Lco/kr/festfive/vo/OfficeVo;
    invoke-virtual {v1}, Lco/kr/festfive/vo/OfficeVo;->getOfficeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 193
    invoke-virtual {v1}, Lco/kr/festfive/vo/OfficeVo;->getRooms()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 198
    .end local v1    # "office":Lco/kr/festfive/vo/OfficeVo;
    :cond_1
    if-eqz v4, :cond_3

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v3, "roomNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/vo/RoomVo;

    .line 201
    .local v2, "room":Lco/kr/festfive/vo/RoomVo;
    invoke-virtual {v2}, Lco/kr/festfive/vo/RoomVo;->getRoomName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    .end local v2    # "room":Lco/kr/festfive/vo/RoomVo;
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v0, p0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 207
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 208
    const-string v5, "HAMA"

    const-string v6, "set room adapter"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v5, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtRoomName:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 211
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v3    # "roomNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method private registBranchListener()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtBranch:Landroid/widget/Spinner;

    new-instance v1, Lco/kr/festfive/activity/WriteMemberActivity$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/WriteMemberActivity$2;-><init>(Lco/kr/festfive/activity/WriteMemberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 186
    return-void
.end method

.method private register()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f0e0093

    .line 467
    invoke-direct {p0}, Lco/kr/festfive/activity/WriteMemberActivity;->hideEditText()V

    .line 469
    iget-object v9, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtCompanyName:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, "companyName":Ljava/lang/String;
    iget-object v9, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtAbout1Line:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "about1Line":Ljava/lang/String;
    iget-object v9, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtAboutDetail:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "aboutDetail":Ljava/lang/String;
    iget-object v9, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtOneWord:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 473
    .local v5, "oneWord":Ljava/lang/String;
    iget-object v9, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtRepName:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 475
    .local v7, "repName":Ljava/lang/String;
    iget-object v9, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtBranch:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "branch":Ljava/lang/String;
    iget-object v9, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtRoomName:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 477
    .local v8, "roomName":Ljava/lang/String;
    iget-object v9, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtHomepage:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "homepage":Ljava/lang/String;
    iget-object v9, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 480
    .local v6, "phoneNum":Ljava/lang/String;
    invoke-static {v3}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 481
    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/WriteMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0e00a0

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/WriteMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v9, v10, v11}, Lco/kr/festfive/utils/Utils;->Alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 521
    :goto_0
    return-void

    .line 485
    :cond_0
    invoke-static {v0}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 486
    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/WriteMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0e009b

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/WriteMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v9, v10, v11}, Lco/kr/festfive/utils/Utils;->Alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 490
    :cond_1
    invoke-static {v1}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 491
    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/WriteMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0e009c

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/WriteMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v9, v10, v11}, Lco/kr/festfive/utils/Utils;->Alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 495
    :cond_2
    invoke-static {v5}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 496
    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/WriteMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0e00a1

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/WriteMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v9, v10, v11}, Lco/kr/festfive/utils/Utils;->Alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 500
    :cond_3
    invoke-static {v7}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 501
    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/WriteMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0e00a2

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/WriteMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v9, v10, v11}, Lco/kr/festfive/utils/Utils;->Alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 505
    :cond_4
    invoke-static {v2}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 506
    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/WriteMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0e009d

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/WriteMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v9, v10, v11}, Lco/kr/festfive/utils/Utils;->Alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 510
    :cond_5
    invoke-static {v8}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 511
    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/WriteMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0e00a3

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/WriteMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v9, v10, v11}, Lco/kr/festfive/utils/Utils;->Alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 515
    :cond_6
    iget-object v9, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mLogoPath:Ljava/lang/String;

    invoke-static {v9}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lco/kr/festfive/activity/WriteMemberActivity;->serverImage1:Ljava/lang/String;

    invoke-static {v9}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 516
    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/WriteMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0e009f

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/WriteMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v9, v10, v11}, Lco/kr/festfive/utils/Utils;->Alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 520
    :cond_7
    invoke-virtual {p0}, Lco/kr/festfive/activity/WriteMemberActivity;->uploadProfileImage()V

    goto/16 :goto_0
.end method

.method private setMemberAddToServer()V
    .locals 36

    .prologue
    .line 772
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 774
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v5, :cond_0

    .line 775
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v5

    invoke-virtual {v5}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 777
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v6, "user_id"

    const-string v14, ""

    invoke-virtual {v5, v6, v14}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 778
    .local v2, "userId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v6, "office_id"

    const-string v14, ""

    invoke-virtual {v5, v6, v14}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 780
    .local v3, "officeId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->serverImage1:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 781
    const-string v5, ""

    move-object/from16 v0, p0

    iput-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->serverImage1:Ljava/lang/String;

    .line 784
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->serverImage2:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 785
    const-string v5, ""

    move-object/from16 v0, p0

    iput-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->serverImage2:Ljava/lang/String;

    .line 788
    :cond_2
    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    .line 789
    .local v34, "members":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->companyId:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 790
    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 792
    :cond_3
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mUserId:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v33

    if-ge v0, v5, :cond_4

    .line 793
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mUserId:Ljava/util/ArrayList;

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 792
    add-int/lit8 v33, v33, 0x1

    goto :goto_0

    .line 796
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtCompanyName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 797
    .local v4, "companyName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtAbout1Line:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 798
    .local v7, "about1Line":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtAboutDetail:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 799
    .local v8, "aboutDetail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtOneWord:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 800
    .local v9, "oneWord":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtRepName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 801
    .local v10, "repName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtBranch:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 802
    .local v15, "branch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtRoomName:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 803
    .local v11, "roomName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtHomepage:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 804
    .local v12, "homepage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 806
    .local v13, "phoneNum":Ljava/lang/String;
    const/16 v33, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->offices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v33

    if-ge v0, v5, :cond_6

    .line 807
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->offices:Ljava/util/List;

    move/from16 v0, v33

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/kr/festfive/vo/OfficeVo;

    invoke-virtual {v5}, Lco/kr/festfive/vo/OfficeVo;->getOfficeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 808
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->offices:Ljava/util/List;

    move/from16 v0, v33

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lco/kr/festfive/vo/OfficeVo;

    .line 809
    .local v35, "office":Lco/kr/festfive/vo/OfficeVo;
    invoke-virtual/range {v35 .. v35}, Lco/kr/festfive/vo/OfficeVo;->getOfficeId()Ljava/lang/String;

    move-result-object v3

    .line 806
    .end local v35    # "office":Lco/kr/festfive/vo/OfficeVo;
    :cond_5
    add-int/lit8 v33, v33, 0x1

    goto :goto_1

    .line 813
    :cond_6
    const/16 v32, 0x0

    .line 814
    .local v32, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->companyId:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 815
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/kr/festfive/activity/WriteMemberActivity;->serverImage1:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lco/kr/festfive/activity/WriteMemberActivity;->serverImage2:Ljava/lang/String;

    .line 828
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 815
    invoke-interface/range {v1 .. v15}, Lco/kr/festfive/service/FestInterface;->getCompanyAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v32

    .line 849
    :goto_2
    if-nez v32, :cond_8

    .line 891
    :goto_3
    return-void

    .line 831
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity;->companyId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity;->serverImage1:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/WriteMemberActivity;->serverImage2:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 845
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v31, v15

    .line 831
    invoke-interface/range {v16 .. v31}, Lco/kr/festfive/service/FestInterface;->getCompanyModify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v32

    goto :goto_2

    .line 853
    :cond_8
    new-instance v5, Lco/kr/festfive/activity/WriteMemberActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lco/kr/festfive/activity/WriteMemberActivity$9;-><init>(Lco/kr/festfive/activity/WriteMemberActivity;)V

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    goto :goto_3
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 26
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 315
    const/16 v2, 0x3ec

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 316
    const/16 v2, 0x3ec

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 317
    const-string v2, "user_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mUserId:Ljava/util/ArrayList;

    .line 318
    const-string v2, "profile"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mProfile:Ljava/util/ArrayList;

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mProfile:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 321
    const v2, 0x7f08012e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteMemberActivity;->containerll:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 325
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mProfile:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_1

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteMemberActivity;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0a0070

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 327
    .local v15, "childView":Landroid/view/View;
    const v2, 0x7f08013a

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 329
    .local v24, "memberLogIv":Lcom/mikhaellopez/circularimageview/CircularImageView;
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mProfile:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 331
    new-instance v2, Lco/kr/festfive/activity/WriteMemberActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lco/kr/festfive/activity/WriteMemberActivity$5;-><init>(Lco/kr/festfive/activity/WriteMemberActivity;)V

    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mUserId:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteMemberActivity;->containerll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 325
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 355
    .end local v15    # "childView":Landroid/view/View;
    .end local v23    # "i":I
    .end local v24    # "memberLogIv":Lcom/mikhaellopez/circularimageview/CircularImageView;
    :cond_0
    const v2, 0x7f08012e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 356
    const v2, 0x7f080133

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 426
    :cond_1
    :goto_1
    return-void

    .line 359
    :cond_2
    const/16 v2, 0xc9

    move/from16 v0, p1

    if-eq v0, v2, :cond_3

    const/16 v2, 0xca

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 360
    :cond_3
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 363
    .local v3, "selectedImage":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v2

    .line 365
    .local v4, "filePathColumn":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/WriteMemberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 366
    .local v17, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 368
    const/4 v2, 0x0

    aget-object v2, v4, v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 369
    .local v16, "columnIndex":I
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 370
    .local v21, "filePath":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 372
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 373
    .local v10, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lco/kr/festfive/activity/WriteMemberActivity;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lco/kr/festfive/activity/WriteMemberActivity;->checkDegree(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 375
    const/4 v5, 0x0

    .line 378
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/WriteMemberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 383
    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 384
    .local v13, "bitmap1":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 385
    .local v12, "ExternalStorageDirectoryPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/DCIM/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 386
    .local v25, "targetPath":Ljava/lang/String;
    new-instance v18, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 388
    .local v18, "drawable1":Landroid/graphics/drawable/Drawable;
    const/16 v2, 0xc9

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 389
    const-string v22, ""

    .line 391
    .local v22, "filePath1":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "tmp1.jpg"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 392
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 393
    .local v20, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v14, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 394
    .local v14, "bos":Ljava/io/BufferedOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v13, v2, v6, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 396
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 397
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 402
    .end local v14    # "bos":Ljava/io/BufferedOutputStream;
    .end local v20    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mIvLogo:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    const v2, 0x7f080102

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 404
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/WriteMemberActivity;->mLogoPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 379
    .end local v12    # "ExternalStorageDirectoryPath":Ljava/lang/String;
    .end local v13    # "bitmap1":Landroid/graphics/Bitmap;
    .end local v18    # "drawable1":Landroid/graphics/drawable/Drawable;
    .end local v22    # "filePath1":Ljava/lang/String;
    .end local v25    # "targetPath":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 380
    .local v19, "e":Ljava/io/IOException;
    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 398
    .end local v19    # "e":Ljava/io/IOException;
    .restart local v12    # "ExternalStorageDirectoryPath":Ljava/lang/String;
    .restart local v13    # "bitmap1":Landroid/graphics/Bitmap;
    .restart local v18    # "drawable1":Landroid/graphics/drawable/Drawable;
    .restart local v22    # "filePath1":Ljava/lang/String;
    .restart local v25    # "targetPath":Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 399
    .restart local v19    # "e":Ljava/io/IOException;
    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 405
    .end local v19    # "e":Ljava/io/IOException;
    .end local v22    # "filePath1":Ljava/lang/String;
    :cond_4
    const/16 v2, 0xca

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 406
    const-string v22, ""

    .line 408
    .restart local v22    # "filePath1":Ljava/lang/String;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "tmp2.jpg"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 409
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 410
    .restart local v20    # "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v14, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 411
    .restart local v14    # "bos":Ljava/io/BufferedOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v13, v2, v6, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 413
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 414
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 420
    .end local v14    # "bos":Ljava/io/BufferedOutputStream;
    .end local v20    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/WriteMemberActivity;->mIvPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    const v2, 0x7f08010e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 422
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/WriteMemberActivity;->mPhotoPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 416
    :catch_2
    move-exception v19

    .line 417
    .restart local v19    # "e":Ljava/io/IOException;
    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 430
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 432
    .local v2, "vid":I
    sparse-switch v2, :sswitch_data_0

    .line 464
    :goto_0
    return-void

    .line 434
    :sswitch_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/WriteMemberActivity;->finish()V

    goto :goto_0

    .line 438
    :sswitch_1
    invoke-direct {p0}, Lco/kr/festfive/activity/WriteMemberActivity;->register()V

    goto :goto_0

    .line 442
    :sswitch_2
    invoke-direct {p0}, Lco/kr/festfive/activity/WriteMemberActivity;->register()V

    goto :goto_0

    .line 446
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lco/kr/festfive/activity/MembersListActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "user_id"

    iget-object v4, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mUserId:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 448
    const-string v3, "profile"

    iget-object v4, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mProfile:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 449
    const/16 v3, 0x3ec

    invoke-virtual {p0, v1, v3}, Lco/kr/festfive/activity/WriteMemberActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 453
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 454
    .local v0, "galleryIntent":Landroid/content/Intent;
    const/16 v3, 0xc9

    invoke-virtual {p0, v0, v3}, Lco/kr/festfive/activity/WriteMemberActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 459
    .end local v0    # "galleryIntent":Landroid/content/Intent;
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 460
    .restart local v0    # "galleryIntent":Landroid/content/Intent;
    const/16 v3, 0xca

    invoke-virtual {p0, v0, v3}, Lco/kr/festfive/activity/WriteMemberActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 432
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08002f -> :sswitch_2
        0x7f080046 -> :sswitch_0
        0x7f08010b -> :sswitch_4
        0x7f08010d -> :sswitch_5
        0x7f080133 -> :sswitch_3
        0x7f08017c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v1, 0x7f0a003b

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lco/kr/festfive/activity/WriteMemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "companyId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->companyId:Ljava/lang/String;

    .line 102
    const-string v1, ""

    iget-object v2, p0, Lco/kr/festfive/activity/WriteMemberActivity;->companyId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->companyId:Ljava/lang/String;

    .line 106
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/WriteMemberActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mContext:Landroid/content/Context;

    .line 107
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->inflater:Landroid/view/LayoutInflater;

    .line 109
    const v1, 0x7f080143

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 110
    const v1, 0x7f080144

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->containerll:Landroid/widget/LinearLayout;

    .line 112
    const v1, 0x7f080083

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtCompanyName:Landroid/widget/EditText;

    .line 113
    const v1, 0x7f080080

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtAbout1Line:Landroid/widget/EditText;

    .line 114
    const v1, 0x7f080081

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtAboutDetail:Landroid/widget/EditText;

    .line 115
    const v1, 0x7f080085

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtOneWord:Landroid/widget/EditText;

    .line 116
    const v1, 0x7f080087

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtRepName:Landroid/widget/EditText;

    .line 118
    const v1, 0x7f080084

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtHomepage:Landroid/widget/EditText;

    .line 119
    const v1, 0x7f080086

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtPhoneNum:Landroid/widget/EditText;

    .line 121
    const v1, 0x7f080082

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtBranch:Landroid/widget/Spinner;

    .line 122
    const v1, 0x7f080088

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mEdtRoomName:Landroid/widget/Spinner;

    .line 124
    const v1, 0x7f08010b

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mIvLogo:Landroid/widget/ImageView;

    .line 125
    iget-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mIvLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v1, 0x7f08010d

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mIvPhoto:Landroid/widget/ImageView;

    .line 127
    iget-object v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mIvPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v1, 0x7f080046

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v1, 0x7f08017c

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v1, 0x7f080133

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v1, 0x7f08002f

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const/4 v1, 0x0

    iput v1, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mUploadIndex:I

    .line 137
    const-string v1, ""

    const-string v2, "loading..."

    invoke-static {p0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 138
    .local v0, "dialog":Landroid/app/ProgressDialog;
    new-instance v1, Lco/kr/festfive/activity/WriteMemberActivity$1;

    invoke-direct {v1, p0, v0}, Lco/kr/festfive/activity/WriteMemberActivity$1;-><init>(Lco/kr/festfive/activity/WriteMemberActivity;Landroid/app/ProgressDialog;)V

    invoke-direct {p0, v1}, Lco/kr/festfive/activity/WriteMemberActivity;->getBaseData(Lco/kr/festfive/activity/WriteMemberActivity$OnGetBaseDataCompleteListener;)V

    .line 171
    return-void
.end method

.method public uploadProfileImage()V
    .locals 10

    .prologue
    .line 584
    const-string v8, ""

    const-string v9, "uploading..."

    invoke-static {p0, v8, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v8

    iput-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->dialog:Landroid/app/ProgressDialog;

    .line 586
    const-string v2, "description"

    .line 587
    .local v2, "descriptionString":Ljava/lang/String;
    const-string v8, "multipart/form-data"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    .line 589
    .local v1, "description":Lcom/squareup/okhttp/RequestBody;
    const/4 v3, 0x0

    .line 591
    .local v3, "file":Ljava/io/File;
    iget v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mUploadIndex:I

    if-nez v8, :cond_2

    .line 592
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->serverImage1:Ljava/lang/String;

    invoke-static {v8}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mLogoPath:Ljava/lang/String;

    invoke-static {v8}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 593
    iget v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mUploadIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mUploadIndex:I

    .line 594
    invoke-virtual {p0}, Lco/kr/festfive/activity/WriteMemberActivity;->uploadProfileImage()V

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mLogoPath:Ljava/lang/String;

    invoke-static {v8}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 599
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mLogoPath:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    .restart local v3    # "file":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 602
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 603
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    const-string v4, "test1.jpg"

    .line 604
    .local v4, "filename":Ljava/lang/String;
    const-string v8, "image*//*"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    .line 605
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

    .line 606
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v7

    .line 607
    .local v7, "service":Lco/kr/festfive/service/FestInterface;
    invoke-interface {v7, v5}, Lco/kr/festfive/service/FestInterface;->uploadOffice(Ljava/util/Map;)Lretrofit/Call;

    move-result-object v0

    .line 608
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v8, Lco/kr/festfive/activity/WriteMemberActivity$6;

    invoke-direct {v8, p0}, Lco/kr/festfive/activity/WriteMemberActivity$6;-><init>(Lco/kr/festfive/activity/WriteMemberActivity;)V

    invoke-interface {v0, v8}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    goto :goto_0

    .line 637
    .end local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    .end local v6    # "photo":Lcom/squareup/okhttp/RequestBody;
    .end local v7    # "service":Lco/kr/festfive/service/FestInterface;
    :cond_2
    iget v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mUploadIndex:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 638
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->serverImage2:Ljava/lang/String;

    invoke-static {v8}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mPhotoPath:Ljava/lang/String;

    invoke-static {v8}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 639
    iget v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mUploadIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mUploadIndex:I

    .line 640
    invoke-virtual {p0}, Lco/kr/festfive/activity/WriteMemberActivity;->uploadProfileImage()V

    goto :goto_0

    .line 644
    :cond_3
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mPhotoPath:Ljava/lang/String;

    invoke-static {v8}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 645
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mPhotoPath:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    .restart local v3    # "file":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 648
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 649
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    const-string v4, "test2.jpg"

    .line 650
    .restart local v4    # "filename":Ljava/lang/String;
    const-string v8, "image*//*"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    .line 651
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

    .line 652
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v7

    .line 653
    .restart local v7    # "service":Lco/kr/festfive/service/FestInterface;
    invoke-interface {v7, v5}, Lco/kr/festfive/service/FestInterface;->uploadOffice(Ljava/util/Map;)Lretrofit/Call;

    move-result-object v0

    .line 654
    .restart local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v8, Lco/kr/festfive/activity/WriteMemberActivity$7;

    invoke-direct {v8, p0}, Lco/kr/festfive/activity/WriteMemberActivity$7;-><init>(Lco/kr/festfive/activity/WriteMemberActivity;)V

    invoke-interface {v0, v8}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    goto/16 :goto_0

    .line 680
    .end local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    .end local v6    # "photo":Lcom/squareup/okhttp/RequestBody;
    .end local v7    # "service":Lco/kr/festfive/service/FestInterface;
    :cond_4
    invoke-direct {p0}, Lco/kr/festfive/activity/WriteMemberActivity;->setMemberAddToServer()V

    goto/16 :goto_0

    .line 682
    :cond_5
    iget v8, p0, Lco/kr/festfive/activity/WriteMemberActivity;->mUploadIndex:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 683
    invoke-direct {p0}, Lco/kr/festfive/activity/WriteMemberActivity;->setMemberAddToServer()V

    goto/16 :goto_0
.end method
