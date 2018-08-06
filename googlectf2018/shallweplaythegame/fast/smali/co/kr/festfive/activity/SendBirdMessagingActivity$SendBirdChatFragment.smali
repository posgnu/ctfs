.class public Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;
.super Landroid/support/v4/app/Fragment;
.source "SendBirdMessagingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendBirdChatFragment"
.end annotation


# static fields
.field private static final REQUEST_PICK_IMAGE:I = 0x64


# instance fields
.field private mAdapter:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

.field private mBtnSend:Landroid/widget/Button;

.field private mBtnUpload:Landroid/widget/TextView;

.field private mEtxtMessage:Landroid/widget/EditText;

.field private mListView:Landroid/widget/ListView;

.field private mProgressBtnUpload:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    .prologue
    .line 641
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mBtnSend:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    .prologue
    .line 641
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mAdapter:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 641
    invoke-direct {p0, p1, p2, p3}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->uploadFile(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->showUploadProgress(Z)V

    return-void
.end method

.method static synthetic access$600(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    .prologue
    .line 641
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    .prologue
    .line 641
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mEtxtMessage:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    .prologue
    .line 641
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->send()V

    return-void
.end method

.method private checkDegree(Ljava/lang/String;)I
    .locals 8
    .param p1, "fileUri"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 859
    const/4 v0, 0x0

    .line 861
    .local v0, "degree":I
    const/4 v2, 0x0

    .line 863
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v3, "exif":Landroid/media/ExifInterface;
    move-object v2, v3

    .line 869
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 870
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 871
    .local v4, "orientation1":I
    if-eq v4, v7, :cond_0

    .line 874
    packed-switch v4, :pswitch_data_0

    .line 892
    .end local v4    # "orientation1":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 864
    :catch_0
    move-exception v1

    .line 865
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "cks"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 876
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "orientation1":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 877
    goto :goto_1

    .line 880
    :pswitch_2
    const/16 v0, 0xb4

    .line 881
    goto :goto_1

    .line 883
    :pswitch_3
    const/16 v0, 0x10e

    .line 884
    goto :goto_1

    .line 886
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_1

    .line 874
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

    .line 930
    const/4 v7, 0x0

    .line 931
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 934
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 936
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 937
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 938
    .local v6, "column_index":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 940
    .local v8, "path":Ljava/lang/String;
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 941
    .local v9, "value":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v8, :cond_0

    const-string v8, ""

    .line 943
    :cond_0
    const-string v0, "path"

    invoke-virtual {v9, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    if-eqz v7, :cond_1

    .line 949
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 951
    .end local v6    # "column_index":I
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "value":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-object v8

    .line 948
    :cond_2
    if-eqz v7, :cond_1

    .line 949
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 948
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 949
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private initUIComponents(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 661
    const v0, 0x7f080124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mListView:Landroid/widget/ListView;

    .line 662
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->turnOffListViewDecoration(Landroid/widget/ListView;)V

    .line 663
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mAdapter:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 665
    const v0, 0x7f080030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mBtnSend:Landroid/widget/Button;

    .line 666
    const v0, 0x7f080032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mBtnUpload:Landroid/widget/TextView;

    .line 667
    const v0, 0x7f08019c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mProgressBtnUpload:Landroid/widget/ProgressBar;

    .line 668
    const v0, 0x7f08009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mEtxtMessage:Landroid/widget/EditText;

    .line 670
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mBtnSend:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 671
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mBtnSend:Landroid/widget/Button;

    new-instance v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$1;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mBtnUpload:Landroid/widget/TextView;

    new-instance v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$2;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mEtxtMessage:Landroid/widget/EditText;

    new-instance v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$3;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$3;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 703
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mEtxtMessage:Landroid/widget/EditText;

    new-instance v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$4;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$4;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 729
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mEtxtMessage:Landroid/widget/EditText;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 730
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mEtxtMessage:Landroid/widget/EditText;

    new-instance v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$5;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$5;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 752
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$6;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$6;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 759
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 815
    return-void
.end method

.method private send()V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mEtxtMessage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->send(Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mEtxtMessage:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 853
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 854
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$Helper;->hideKeyboard(Landroid/app/Activity;)V

    .line 856
    :cond_0
    return-void
.end method

.method private showUploadProgress(Z)V
    .locals 3
    .param p1, "tf"    # Z

    .prologue
    const/4 v2, 0x0

    .line 818
    if-eqz p1, :cond_0

    .line 819
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mBtnUpload:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 820
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mBtnUpload:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mProgressBtnUpload:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 827
    :goto_0
    return-void

    .line 823
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mBtnUpload:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 824
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mBtnUpload:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 825
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mProgressBtnUpload:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private turnOffListViewDecoration(Landroid/widget/ListView;)V
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v2, 0x0

    .line 830
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 831
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 832
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 833
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 834
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setHorizontalScrollBarEnabled(Z)V

    .line 835
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 836
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0xffffff

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 837
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 838
    return-void
.end method

.method private upload(Landroid/net/Uri;)V
    .locals 26
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 956
    const-string v17, ""

    .line 957
    .local v17, "filePath1":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 958
    .local v11, "ExternalStorageDirectoryPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 963
    .local v22, "targetPath":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "image.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 964
    new-instance v16, Ljava/io/FileOutputStream;

    invoke-direct/range {v16 .. v17}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 966
    .local v16, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v13, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 968
    .local v13, "bos":Ljava/io/BufferedOutputStream;
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 969
    .local v9, "matrix":Landroid/graphics/Matrix;
    invoke-direct/range {p0 .. p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->checkDegree(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 971
    const/4 v4, 0x0

    .line 974
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 979
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 981
    .local v12, "bitmap1":Landroid/graphics/Bitmap;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v12, v5, v6, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 983
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V

    .line 984
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 990
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v12    # "bitmap1":Landroid/graphics/Bitmap;
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_1
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 991
    .local v15, "f":Ljava/io/File;
    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v23

    .line 994
    .local v23, "uri1":Landroid/net/Uri;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$Helper;->getFileInfo(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/Hashtable;

    move-result-object v18

    .line 995
    .local v18, "info":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "path"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 996
    .local v20, "path":Ljava/lang/String;
    const-string v5, "mime"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 997
    .local v19, "mime":Ljava/lang/String;
    const-string v5, "size"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 999
    .local v21, "size":I
    if-nez v20, :cond_0

    .line 1000
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "Uploading file must be located in local storage."

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1037
    .end local v18    # "info":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "mime":Ljava/lang/String;
    .end local v20    # "path":Ljava/lang/String;
    .end local v21    # "size":I
    :goto_2
    return-void

    .line 975
    .end local v15    # "f":Ljava/io/File;
    .end local v23    # "uri1":Landroid/net/Uri;
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v14

    .line 976
    .local v14, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 986
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .end local v14    # "e":Ljava/io/IOException;
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v14

    .line 987
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1002
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v15    # "f":Ljava/io/File;
    .restart local v18    # "info":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19    # "mime":Ljava/lang/String;
    .restart local v20    # "path":Ljava/lang/String;
    .restart local v21    # "size":I
    .restart local v23    # "uri1":Landroid/net/Uri;
    :cond_0
    :try_start_5
    invoke-static {}, Lcom/sendbird/android/SendBird;->getConnectionState()Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    move-result-object v5

    sget-object v6, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->OPEN:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    if-ne v5, v6, :cond_1

    .line 1003
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->uploadFile(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 1033
    .end local v18    # "info":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "mime":Ljava/lang/String;
    .end local v20    # "path":Ljava/lang/String;
    .end local v21    # "size":I
    :catch_2
    move-exception v14

    .line 1034
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 1035
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "Fail to upload the file."

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1005
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v18    # "info":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19    # "mime":Ljava/lang/String;
    .restart local v20    # "path":Ljava/lang/String;
    .restart local v21    # "size":I
    :cond_1
    :try_start_6
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    invoke-direct {v6, v0, v1, v2, v3}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$8;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/16 v24, 0x3e8

    move-wide/from16 v0, v24

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2
.end method

.method private uploadFile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "size"    # I

    .prologue
    .line 1040
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->showUploadProgress(Z)V

    .line 1041
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    new-instance v2, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$9;

    invoke-direct {v2, p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$9;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)V

    invoke-static {v0, p2, p3, v1, v2}, Lcom/sendbird/android/SendBird;->uploadFile(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Lcom/sendbird/android/SendBirdFileUploadEventHandler;)V

    .line 1054
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 841
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 842
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 843
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->upload(Landroid/net/Uri;)V

    .line 847
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 654
    const v1, 0x7f0a0090

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 655
    .local v0, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->initUIComponents(Landroid/view/View;)V

    .line 656
    return-object v0
.end method

.method public setSendBirdMessagingAdapter(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    .prologue
    .line 1058
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mAdapter:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    .line 1059
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1062
    :cond_0
    return-void
.end method
