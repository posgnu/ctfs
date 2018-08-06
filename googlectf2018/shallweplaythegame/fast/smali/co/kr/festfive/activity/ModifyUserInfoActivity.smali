.class public Lco/kr/festfive/activity/ModifyUserInfoActivity;
.super Landroid/app/Activity;
.source "ModifyUserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backButtonImage:Landroid/widget/TextView;

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

.field private mRoomId:[[Ljava/lang/String;

.field private mRoomName:[[Ljava/lang/String;

.field private modifyButtonText:Landroid/widget/TextView;

.field private monthSpinner:Landroid/widget/Spinner;

.field private nameText:Landroid/widget/TextView;

.field private newPwdConfirmEdittext:Landroid/widget/EditText;

.field private newPwdEdittext:Landroid/widget/EditText;

.field private numberText:Landroid/widget/TextView;

.field private officeEdittext:Landroid/widget/EditText;

.field private officeId:[Ljava/lang/String;

.field private officeName:[Ljava/lang/String;

.field private officeSpinner:Landroid/widget/Spinner;

.field private oldPwdEdittext:Landroid/widget/EditText;

.field private profileImage:Landroid/widget/ImageView;

.field private profilePath:Ljava/lang/String;

.field private roomNameSpinner:Landroid/widget/Spinner;

.field roomNameSpinnerAdapter:Lco/kr/festfive/adapter/SpinnerAdapter;

.field private serverImage:Ljava/lang/String;

.field private yearSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->profilePath:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->serverImage:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/activity/ModifyUserInfoActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyUserInfoActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->officeId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lco/kr/festfive/activity/ModifyUserInfoActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyUserInfoActivity;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->officeId:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lco/kr/festfive/activity/ModifyUserInfoActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyUserInfoActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->officeName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lco/kr/festfive/activity/ModifyUserInfoActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyUserInfoActivity;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->officeName:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lco/kr/festfive/activity/ModifyUserInfoActivity;)[[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyUserInfoActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->mRoomId:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lco/kr/festfive/activity/ModifyUserInfoActivity;[[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyUserInfoActivity;
    .param p1, "x1"    # [[Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->mRoomId:[[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lco/kr/festfive/activity/ModifyUserInfoActivity;)[[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyUserInfoActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->mRoomName:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lco/kr/festfive/activity/ModifyUserInfoActivity;[[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyUserInfoActivity;
    .param p1, "x1"    # [[Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->mRoomName:[[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyUserInfoActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object v0
.end method

.method static synthetic access$500(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyUserInfoActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->officeSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$600(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyUserInfoActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->roomNameSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$700(Lco/kr/festfive/activity/ModifyUserInfoActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyUserInfoActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$802(Lco/kr/festfive/activity/ModifyUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyUserInfoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->serverImage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lco/kr/festfive/activity/ModifyUserInfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/ModifyUserInfoActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->setEditToServer()V

    return-void
.end method

.method private checkDegree(Ljava/lang/String;)I
    .locals 8
    .param p1, "fileUri"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 857
    const/4 v0, 0x0

    .line 859
    .local v0, "degree":I
    const/4 v2, 0x0

    .line 861
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v3, "exif":Landroid/media/ExifInterface;
    move-object v2, v3

    .line 867
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 868
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 869
    .local v4, "orientation1":I
    if-eq v4, v7, :cond_0

    .line 872
    packed-switch v4, :pswitch_data_0

    .line 890
    .end local v4    # "orientation1":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 862
    :catch_0
    move-exception v1

    .line 863
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "cks"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 874
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "orientation1":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 875
    goto :goto_1

    .line 878
    :pswitch_2
    const/16 v0, 0xb4

    .line 879
    goto :goto_1

    .line 881
    :pswitch_3
    const/16 v0, 0x10e

    .line 882
    goto :goto_1

    .line 884
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_1

    .line 872
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
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 808
    iget-object v11, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->numberText:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 813
    .local v6, "number":Ljava/lang/String;
    iget-object v11, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->nameText:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 815
    .local v7, "userName":Ljava/lang/String;
    iget-object v11, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    .line 816
    .local v8, "year":I
    iget-object v11, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    .line 817
    .local v5, "month":I
    iget-object v11, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->daySpinner:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 821
    .local v1, "day":I
    iget-object v11, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->emailEdittext:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 822
    .local v2, "email":Ljava/lang/String;
    iget-object v11, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->officeEdittext:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "company":Ljava/lang/String;
    iget-object v11, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->jobEdittext:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 824
    .local v4, "job":Ljava/lang/String;
    iget-object v11, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->introduceEdittext:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 826
    .local v3, "introduce":Ljava/lang/String;
    const-string v11, ""

    if-eq v6, v11, :cond_0

    const-string v11, ""

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 827
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e00cb

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    move v9, v10

    .line 853
    :cond_1
    :goto_0
    return v9

    .line 832
    :cond_2
    const-string v11, ""

    if-eq v7, v11, :cond_3

    const-string v11, ""

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 833
    :cond_3
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e00d2

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    move v9, v10

    .line 834
    goto :goto_0

    .line 835
    :cond_4
    const-string v11, ""

    if-eq v2, v11, :cond_5

    const-string v11, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 836
    :cond_5
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e00d4

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    move v9, v10

    .line 837
    goto :goto_0

    .line 838
    :cond_6
    const-string v11, ""

    if-eq v0, v11, :cond_7

    const-string v11, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 839
    :cond_7
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e00d5

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    move v9, v10

    .line 840
    goto :goto_0

    .line 841
    :cond_8
    const-string v11, ""

    if-eq v4, v11, :cond_9

    const-string v11, ""

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 842
    :cond_9
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e00d6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    move v9, v10

    .line 843
    goto :goto_0

    .line 844
    :cond_a
    const-string v11, ""

    if-eq v3, v11, :cond_b

    const-string v11, ""

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 845
    :cond_b
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e00d7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    move v9, v10

    .line 846
    goto/16 :goto_0

    .line 847
    :cond_c
    if-eqz v8, :cond_d

    if-eqz v5, :cond_d

    if-nez v1, :cond_1

    :cond_d
    if-nez v8, :cond_e

    if-nez v5, :cond_e

    if-eqz v1, :cond_1

    .line 849
    :cond_e
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e00d3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    move v9, v10

    .line 850
    goto/16 :goto_0
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "contentURI"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 894
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 895
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 896
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 900
    :goto_0
    return-object v0

    .line 898
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 899
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 900
    .local v7, "idx":I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectRegistToServer()V
    .locals 7

    .prologue
    .line 255
    const-string v5, ""

    const-string v6, "loading..."

    invoke-static {p0, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 256
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v3

    .line 258
    .local v3, "service":Lco/kr/festfive/service/FestInterface;
    const-string v4, "test"

    .line 260
    .local v4, "userId":Ljava/lang/String;
    const-string v2, "111111"

    .line 261
    .local v2, "registrationId":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lco/kr/festfive/service/FestInterface;->getSelectRegist(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 263
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v5, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;

    invoke-direct {v5, p0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity$1;-><init>(Lco/kr/festfive/activity/ModifyUserInfoActivity;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v5}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 494
    return-void
.end method

.method private initControls()V
    .locals 26

    .prologue
    .line 121
    const v22, 0x7f080021

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->backButtonImage:Landroid/widget/TextView;

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->backButtonImage:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v22, 0x7f080041

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v22, 0x7f080199

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->profileImage:Landroid/widget/ImageView;

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->profileImage:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    move-object/from16 v22, v0

    const-string v23, "user_profile_thumb_url"

    const-string v24, ""

    invoke-virtual/range {v22 .. v24}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "aaa":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    move-object/from16 v22, v0

    const-string v23, "user_profile_url"

    const-string v24, ""

    invoke-virtual/range {v22 .. v24}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, "bbb":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    move-object/from16 v22, v0

    const-string v23, "user_profile_thumb_url"

    const-string v24, ""

    invoke-virtual/range {v22 .. v24}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "https://s3-ap-northeast-1.amazonaws.com/fast-five/profile/"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_0

    const-string v22, "https://s3-ap-northeast-1.amazonaws.com/fast-five/profile/"

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    move-object/from16 v23, v0

    const-string v24, "user_profile_thumb_url"

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 137
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->profileImage:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setVisibility(I)V

    .line 139
    const-string v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->serverImage:Ljava/lang/String;

    .line 152
    :goto_0
    const v22, 0x7f08016f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->numberText:Landroid/widget/TextView;

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->numberText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    move-object/from16 v23, v0

    const-string v24, "user_id"

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const v22, 0x7f08017d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->oldPwdEdittext:Landroid/widget/EditText;

    .line 155
    const v22, 0x7f08015e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->newPwdEdittext:Landroid/widget/EditText;

    .line 156
    const v22, 0x7f08015d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->newPwdConfirmEdittext:Landroid/widget/EditText;

    .line 159
    const v22, 0x7f080158

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->nameText:Landroid/widget/TextView;

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->nameText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    move-object/from16 v23, v0

    const-string v24, "user_name"

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const v22, 0x7f080092

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->emailEdittext:Landroid/widget/EditText;

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->emailEdittext:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    move-object/from16 v23, v0

    const-string v24, "user_email"

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const v22, 0x7f080171

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->officeEdittext:Landroid/widget/EditText;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->officeEdittext:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    move-object/from16 v23, v0

    const-string v24, "user_company"

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const v22, 0x7f080110

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->jobEdittext:Landroid/widget/EditText;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->jobEdittext:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    move-object/from16 v23, v0

    const-string v24, "user_position"

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const v22, 0x7f0800dc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->introduceEdittext:Landroid/widget/EditText;

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->introduceEdittext:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    move-object/from16 v23, v0

    const-string v24, "user_introduce"

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    const v22, 0x7f080252

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->yearSpinner:Landroid/widget/Spinner;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->yearSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0e0082

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020003

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 173
    .local v19, "year":[Ljava/lang/String;
    new-instance v20, Lco/kr/festfive/adapter/SpinnerAdapter;

    const v22, 0x1090008

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lco/kr/festfive/adapter/SpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 174
    .local v20, "yearSpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    const v22, 0x7f0a0055

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/adapter/SpinnerAdapter;->setDropDownViewResource(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->yearSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 177
    const v22, 0x7f080151

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->monthSpinner:Landroid/widget/Spinner;

    .line 178
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020001

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 179
    .local v15, "month":[Ljava/lang/String;
    new-instance v16, Lco/kr/festfive/adapter/SpinnerAdapter;

    const v22, 0x1090008

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v15}, Lco/kr/festfive/adapter/SpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 180
    .local v16, "monthSpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    const v22, 0x7f0a0055

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/adapter/SpinnerAdapter;->setDropDownViewResource(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->monthSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 183
    const v22, 0x7f08006a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->daySpinner:Landroid/widget/Spinner;

    .line 184
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/high16 v23, 0x7f020000

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 185
    .local v10, "day":[Ljava/lang/String;
    new-instance v11, Lco/kr/festfive/adapter/SpinnerAdapter;

    const v22, 0x1090008

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v11, v0, v1, v10}, Lco/kr/festfive/adapter/SpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 186
    .local v11, "daySpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    const v22, 0x7f0a0055

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lco/kr/festfive/adapter/SpinnerAdapter;->setDropDownViewResource(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->daySpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    move-object/from16 v22, v0

    const-string v23, "user_birth"

    const-string v24, ""

    invoke-virtual/range {v22 .. v24}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 190
    .local v9, "birth":Ljava/lang/String;
    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 191
    const/16 v22, 0x0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 192
    .local v21, "yearStr":Ljava/lang/String;
    const/16 v22, 0x4

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 193
    .local v17, "monthStr":Ljava/lang/String;
    const/16 v22, 0x6

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 196
    .local v12, "dayStr":Ljava/lang/String;
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_2

    .line 197
    aget-object v22, v19, v13

    const/16 v23, 0x0

    aget-object v24, v19, v13

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x2

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    aget-object v22, v19, v13

    const/16 v23, 0x0

    aget-object v24, v19, v13

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x2

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 198
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->yearSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 203
    :cond_2
    const/4 v13, 0x1

    :goto_2
    array-length v0, v15

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_4

    .line 204
    aget-object v22, v15, v13

    const/16 v23, 0x0

    aget-object v24, v15, v13

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x2

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    aget-object v22, v15, v13

    const/16 v23, 0x0

    aget-object v24, v15, v13

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x2

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 205
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->monthSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 210
    :cond_4
    const/4 v13, 0x1

    :goto_3
    array-length v0, v15

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_6

    .line 211
    aget-object v22, v10, v13

    const/16 v23, 0x0

    aget-object v24, v10, v13

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x2

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    aget-object v22, v10, v13

    const/16 v23, 0x0

    aget-object v24, v10, v13

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x2

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    if-ne v12, v0, :cond_a

    .line 212
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->daySpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 217
    .end local v12    # "dayStr":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v17    # "monthStr":Ljava/lang/String;
    .end local v21    # "yearStr":Ljava/lang/String;
    :cond_6
    const v22, 0x7f080178

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->officeSpinner:Landroid/widget/Spinner;

    .line 219
    const v22, 0x7f0801b9

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->roomNameSpinner:Landroid/widget/Spinner;

    .line 221
    const v22, 0x7f08014f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->modifyButtonText:Landroid/widget/TextView;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->modifyButtonText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    return-void

    .line 141
    .end local v9    # "birth":Ljava/lang/String;
    .end local v10    # "day":[Ljava/lang/String;
    .end local v11    # "daySpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    .end local v15    # "month":[Ljava/lang/String;
    .end local v16    # "monthSpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    .end local v19    # "year":[Ljava/lang/String;
    .end local v20    # "yearSpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->profileImage:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setVisibility(I)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    move-object/from16 v22, v0

    const-string v23, "user_profile_thumb_url"

    const-string v24, ""

    invoke-virtual/range {v22 .. v24}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 144
    .local v14, "imgUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    move-object/from16 v22, v0

    const-string v23, "user_profile_url"

    const-string v24, ""

    invoke-virtual/range {v22 .. v24}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 145
    .local v18, "url":Ljava/lang/String;
    const-string v4, "https://s3-ap-northeast-1.amazonaws.com/fast-five/profile/"

    .line 146
    .local v4, "a":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 147
    .local v5, "aa":I
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v7

    .line 148
    .local v7, "bb":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->serverImage:Ljava/lang/String;

    .line 149
    const-string v22, "cks4451"

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->serverImage:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    move-object/from16 v23, v0

    const-string v24, "user_profile_thumb_url"

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v22

    sget-object v23, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual/range {v22 .. v23}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_0

    .line 196
    .end local v4    # "a":Ljava/lang/String;
    .end local v5    # "aa":I
    .end local v7    # "bb":I
    .end local v14    # "imgUrl":Ljava/lang/String;
    .end local v18    # "url":Ljava/lang/String;
    .restart local v9    # "birth":Ljava/lang/String;
    .restart local v10    # "day":[Ljava/lang/String;
    .restart local v11    # "daySpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    .restart local v12    # "dayStr":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v15    # "month":[Ljava/lang/String;
    .restart local v16    # "monthSpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    .restart local v17    # "monthStr":Ljava/lang/String;
    .restart local v19    # "year":[Ljava/lang/String;
    .restart local v20    # "yearSpinnerAdapter":Lco/kr/festfive/adapter/SpinnerAdapter;
    .restart local v21    # "yearStr":Ljava/lang/String;
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 203
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 210
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3
.end method

.method private setEditToServer()V
    .locals 22

    .prologue
    .line 498
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->dialog:Landroid/app/ProgressDialog;

    if-nez v8, :cond_0

    .line 499
    const-string v8, ""

    const-string v20, "loading..."

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v8, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->dialog:Landroid/app/ProgressDialog;

    .line 502
    :cond_0
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v3

    .line 504
    .local v3, "service":Lco/kr/festfive/service/FestInterface;
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->numberText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 505
    .local v4, "userId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->oldPwdEdittext:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 506
    .local v5, "oldPwd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->newPwdEdittext:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 510
    .local v6, "newPwd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->nameText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 512
    .local v7, "userName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 513
    .local v19, "year":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    if-eqz v8, :cond_1

    .line 514
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 516
    :cond_1
    const/16 v18, 0x0

    .line 517
    .local v18, "month":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    if-eqz v8, :cond_2

    .line 518
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 520
    :cond_2
    const/16 v17, 0x0

    .line 521
    .local v17, "day":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->daySpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    if-eqz v8, :cond_3

    .line 522
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->daySpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 525
    :cond_3
    const/4 v9, 0x0

    .line 526
    .local v9, "birthday":Ljava/lang/String;
    if-eqz v19, :cond_4

    if-eqz v18, :cond_4

    if-eqz v17, :cond_4

    .line 527
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 530
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->officeId:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->officeSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v20

    aget-object v10, v8, v20

    .line 531
    .local v10, "office":Ljava/lang/String;
    const-string v11, ""

    .line 532
    .local v11, "room":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->mRoomId:[[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->officeSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v20

    aget-object v8, v8, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->roomNameSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v20

    aget-object v11, v8, v20

    .line 555
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->emailEdittext:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 556
    .local v12, "email":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->officeEdittext:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 557
    .local v13, "company":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->jobEdittext:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 558
    .local v14, "job":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->introduceEdittext:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 560
    .local v15, "introduce":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v8, :cond_5

    .line 561
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v8

    invoke-virtual {v8}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 565
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->serverImage:Ljava/lang/String;

    invoke-interface/range {v3 .. v15}, Lco/kr/festfive/service/FestInterface;->setEdit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v16

    .line 567
    .local v16, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v8, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;-><init>(Lco/kr/festfive/activity/ModifyUserInfoActivity;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 752
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 23
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 907
    const/16 v2, 0x64

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 908
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 910
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 911
    .local v3, "selectedImage":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v2

    .line 913
    .local v4, "filePathColumn":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 914
    .local v16, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 916
    const/4 v2, 0x0

    aget-object v2, v4, v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 917
    .local v15, "columnIndex":I
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 918
    .local v20, "filePath":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 920
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 921
    .local v10, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->checkDegree(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 923
    const/4 v5, 0x0

    .line 926
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 931
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

    .line 933
    .local v13, "bitmap1":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 936
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

    .line 941
    .local v22, "targetPath":Ljava/lang/String;
    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 943
    .local v17, "drawable1":Landroid/graphics/drawable/Drawable;
    const-string v21, ""

    .line 947
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

    .line 948
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 950
    .local v19, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v14, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 953
    .local v14, "bos":Ljava/io/BufferedOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v13, v2, v6, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 955
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 956
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 963
    .end local v14    # "bos":Ljava/io/BufferedOutputStream;
    .end local v19    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/kr/festfive/activity/ModifyUserInfoActivity;->profilePath:Ljava/lang/String;

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setVisibility(I)V

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v2, v3}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setImageURI(Landroid/net/Uri;)V

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->circleProfileImage:Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->profileImage:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 979
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

    .line 927
    .restart local v3    # "selectedImage":Landroid/net/Uri;
    .restart local v4    # "filePathColumn":[Ljava/lang/String;
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "matrix":Landroid/graphics/Matrix;
    .restart local v15    # "columnIndex":I
    .restart local v16    # "cursor":Landroid/database/Cursor;
    .restart local v20    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 928
    .local v18, "e":Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 958
    .end local v18    # "e":Ljava/io/IOException;
    .restart local v12    # "ExternalStorageDirectoryPath":Ljava/lang/String;
    .restart local v13    # "bitmap1":Landroid/graphics/Bitmap;
    .restart local v17    # "drawable1":Landroid/graphics/drawable/Drawable;
    .restart local v21    # "filePath1":Ljava/lang/String;
    .restart local v22    # "targetPath":Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 959
    .restart local v18    # "e":Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 973
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
    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080021

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080023

    if-ne v1, v2, :cond_2

    .line 235
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->finish()V

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 236
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08014f

    if-ne v1, v2, :cond_4

    .line 237
    invoke-direct {p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->checkEmptyField()Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    iget-object v1, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->profilePath:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->profilePath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 239
    invoke-virtual {p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->uploadProfile()V

    goto :goto_0

    .line 241
    :cond_3
    invoke-direct {p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->setEditToServer()V

    goto :goto_0

    .line 246
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080199

    if-eq v1, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080041

    if-ne v1, v2, :cond_1

    .line 247
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 248
    .local v0, "galleryIntent":Landroid/content/Intent;
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->setContentView(I)V

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 108
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v0, :cond_1

    .line 112
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 115
    :cond_1
    invoke-direct {p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->initControls()V

    .line 117
    invoke-direct {p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getSelectRegistToServer()V

    .line 118
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 756
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 759
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 228
    return-void
.end method

.method public uploadProfile()V
    .locals 10

    .prologue
    .line 763
    const-string v8, ""

    const-string v9, "loading..."

    invoke-static {p0, v8, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v8

    iput-object v8, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->dialog:Landroid/app/ProgressDialog;

    .line 765
    const-string v2, "description"

    .line 766
    .local v2, "descriptionString":Ljava/lang/String;
    const-string v8, "multipart/form-data"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    .line 768
    .local v1, "description":Lcom/squareup/okhttp/RequestBody;
    const/4 v3, 0x0

    .line 770
    .local v3, "file":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v8, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity;->profilePath:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 772
    .restart local v3    # "file":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 773
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 776
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    const-string v4, "test.jpg"

    .line 777
    .local v4, "filename":Ljava/lang/String;
    const-string v8, "image/*"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v6

    .line 778
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

    .line 779
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v7

    .line 780
    .local v7, "service":Lco/kr/festfive/service/FestInterface;
    invoke-interface {v7, v5}, Lco/kr/festfive/service/FestInterface;->uploadProfile(Ljava/util/Map;)Lretrofit/Call;

    move-result-object v0

    .line 781
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v8, Lco/kr/festfive/activity/ModifyUserInfoActivity$3;

    invoke-direct {v8, p0}, Lco/kr/festfive/activity/ModifyUserInfoActivity$3;-><init>(Lco/kr/festfive/activity/ModifyUserInfoActivity;)V

    invoke-interface {v0, v8}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 805
    .end local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;>;"
    .end local v6    # "photo":Lcom/squareup/okhttp/RequestBody;
    .end local v7    # "service":Lco/kr/festfive/service/FestInterface;
    :cond_0
    return-void
.end method
