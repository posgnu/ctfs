.class public Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;
.super Landroid/support/v4/app/Fragment;
.source "SendBirdChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/activity/SendBirdChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendBirdChatFragment"
.end annotation


# static fields
.field private static final REQUEST_PICK_IMAGE:I = 0x64


# instance fields
.field private mAdapter:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

.field private mBtnChannel:Landroid/widget/ImageButton;

.field private mBtnSend:Landroid/widget/Button;

.field private mBtnUpload:Landroid/widget/TextView;

.field private mEtxtMessage:Landroid/widget/EditText;

.field private mListView:Landroid/widget/ListView;

.field private mProgressBtnUpload:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 508
    return-void
.end method

.method static synthetic access$200(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    .prologue
    .line 475
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    .prologue
    .line 475
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mEtxtMessage:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    .prologue
    .line 475
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->send()V

    return-void
.end method

.method static synthetic access$600(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    .prologue
    .line 475
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mBtnSend:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    .prologue
    .line 475
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mAdapter:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->showUploadProgress(Z)V

    return-void
.end method

.method private checkDegree(Ljava/lang/String;)I
    .locals 8
    .param p1, "fileUri"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 668
    const/4 v0, 0x0

    .line 670
    .local v0, "degree":I
    const/4 v2, 0x0

    .line 672
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v3, "exif":Landroid/media/ExifInterface;
    move-object v2, v3

    .line 678
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 679
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 680
    .local v4, "orientation1":I
    if-eq v4, v7, :cond_0

    .line 683
    packed-switch v4, :pswitch_data_0

    .line 701
    .end local v4    # "orientation1":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 673
    :catch_0
    move-exception v1

    .line 674
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "cks"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 685
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "orientation1":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 686
    goto :goto_1

    .line 689
    :pswitch_2
    const/16 v0, 0xb4

    .line 690
    goto :goto_1

    .line 692
    :pswitch_3
    const/16 v0, 0x10e

    .line 693
    goto :goto_1

    .line 695
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_1

    .line 683
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

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p1, "contentURI"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    .line 739
    const/4 v7, 0x0

    .line 740
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 743
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 745
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 746
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 747
    .local v6, "column_index":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 749
    .local v8, "path":Ljava/lang/String;
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 750
    .local v9, "value":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v8, :cond_0

    const-string v8, ""

    .line 752
    :cond_0
    const-string v0, "path"

    invoke-virtual {v9, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    if-eqz v7, :cond_1

    .line 758
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 760
    .end local v6    # "column_index":I
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "value":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-object v8

    .line 757
    :cond_2
    if-eqz v7, :cond_1

    .line 758
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 757
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 758
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private initUIComponents(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 521
    const v0, 0x7f080124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mListView:Landroid/widget/ListView;

    .line 522
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->turnOffListViewDecoration(Landroid/widget/ListView;)V

    .line 523
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mAdapter:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 526
    const v0, 0x7f080030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mBtnSend:Landroid/widget/Button;

    .line 527
    const v0, 0x7f080032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mBtnUpload:Landroid/widget/TextView;

    .line 528
    const v0, 0x7f08019c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mProgressBtnUpload:Landroid/widget/ProgressBar;

    .line 529
    const v0, 0x7f08009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mEtxtMessage:Landroid/widget/EditText;

    .line 531
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mBtnSend:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 532
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mBtnSend:Landroid/widget/Button;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$1;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mBtnUpload:Landroid/widget/TextView;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$2;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mEtxtMessage:Landroid/widget/EditText;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$3;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$3;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 572
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mEtxtMessage:Landroid/widget/EditText;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 573
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mEtxtMessage:Landroid/widget/EditText;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$4;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$4;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 589
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$5;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$5;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 596
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 624
    return-void
.end method

.method private send()V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mEtxtMessage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->send(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mEtxtMessage:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 662
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 663
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdChatActivity$Helper;->hideKeyboard(Landroid/app/Activity;)V

    .line 665
    :cond_0
    return-void
.end method

.method private showUploadProgress(Z)V
    .locals 3
    .param p1, "tf"    # Z

    .prologue
    const/4 v2, 0x0

    .line 627
    if-eqz p1, :cond_0

    .line 628
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mBtnUpload:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 629
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mBtnUpload:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mProgressBtnUpload:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 636
    :goto_0
    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mBtnUpload:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 633
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mBtnUpload:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mProgressBtnUpload:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private turnOffListViewDecoration(Landroid/widget/ListView;)V
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v2, 0x0

    .line 639
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 640
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 641
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 642
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 643
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setHorizontalScrollBarEnabled(Z)V

    .line 644
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 645
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0xffffff

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 646
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 647
    return-void
.end method

.method private upload(Landroid/net/Uri;)V
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 765
    const-string v15, ""

    .line 766
    .local v15, "filePath1":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 767
    .local v9, "ExternalStorageDirectoryPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 769
    .local v20, "targetPath":Ljava/lang/String;
    const-string v3, "cks4451"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "image.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 774
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 776
    .local v14, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v11, Ljava/io/BufferedOutputStream;

    invoke-direct {v11, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 778
    .local v11, "bos":Ljava/io/BufferedOutputStream;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 779
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-direct/range {p0 .. p1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->checkDegree(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 781
    const/4 v2, 0x0

    .line 784
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 789
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 791
    .local v10, "bitmap1":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v10, v3, v4, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 793
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    .line 794
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 800
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "bitmap1":Landroid/graphics/Bitmap;
    .end local v11    # "bos":Ljava/io/BufferedOutputStream;
    .end local v14    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_1
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 801
    .local v13, "f":Ljava/io/File;
    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v21

    .line 804
    .local v21, "uri1":Landroid/net/Uri;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lco/kr/festfive/activity/SendBirdChatActivity$Helper;->getFileInfo(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/Hashtable;

    move-result-object v16

    .line 805
    .local v16, "info":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "path"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 806
    .local v18, "path":Ljava/lang/String;
    const-string v3, "mime"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 807
    .local v17, "mime":Ljava/lang/String;
    const-string v3, "size"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 809
    .local v19, "size":I
    if-nez v18, :cond_0

    .line 810
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Uploading file must be located in local storage."

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 832
    .end local v16    # "info":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17    # "mime":Ljava/lang/String;
    .end local v18    # "path":Ljava/lang/String;
    .end local v19    # "size":I
    :goto_2
    return-void

    .line 785
    .end local v13    # "f":Ljava/io/File;
    .end local v21    # "uri1":Landroid/net/Uri;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    .restart local v11    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v14    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v12

    .line 786
    .local v12, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 796
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v11    # "bos":Ljava/io/BufferedOutputStream;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v14    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v12

    .line 797
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 812
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v13    # "f":Ljava/io/File;
    .restart local v16    # "info":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v17    # "mime":Ljava/lang/String;
    .restart local v18    # "path":Ljava/lang/String;
    .restart local v19    # "size":I
    .restart local v21    # "uri1":Landroid/net/Uri;
    :cond_0
    const/4 v3, 0x1

    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->showUploadProgress(Z)V

    .line 813
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, ""

    new-instance v5, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$7;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)V

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v3, v0, v1, v4, v5}, Lcom/sendbird/android/SendBird;->uploadFile(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Lcom/sendbird/android/SendBirdFileUploadEventHandler;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 828
    .end local v16    # "info":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17    # "mime":Ljava/lang/String;
    .end local v18    # "path":Ljava/lang/String;
    .end local v19    # "size":I
    :catch_2
    move-exception v12

    .line 829
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 830
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Fail to upload the file."

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 650
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 651
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 652
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->upload(Landroid/net/Uri;)V

    .line 656
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 514
    const v1, 0x7f0a0090

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 515
    .local v0, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->initUIComponents(Landroid/view/View;)V

    .line 516
    return-object v0
.end method

.method public setSendBirdChatAdapter(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    .prologue
    .line 836
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mAdapter:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    .line 837
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 840
    :cond_0
    return-void
.end method
