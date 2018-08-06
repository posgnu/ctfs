.class final Lco/kr/festfive/activity/SendBirdChannelListActivity$UrlDownloadAsyncTask$2;
.super Ljava/lang/Object;
.source "SendBirdChannelListActivity.java"

# interfaces
.implements Lco/kr/festfive/activity/SendBirdChannelListActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdChannelListActivity$UrlDownloadAsyncTask;->display(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$UrlDownloadAsyncTask$2;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground(Ljava/io/File;)Ljava/lang/Object;
    .locals 18
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 544
    if-nez p1, :cond_0

    .line 545
    const/4 v3, 0x0

    .line 582
    :goto_0
    return-object v3

    .line 548
    :cond_0
    const/4 v3, 0x0

    .line 550
    .local v3, "bm":Landroid/graphics/Bitmap;
    const/16 v9, 0x100

    .line 551
    .local v9, "targetHeight":I
    const/16 v10, 0x100

    .line 553
    .local v10, "targetWidth":I
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 554
    .local v2, "bin":Ljava/io/BufferedInputStream;
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->available()I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 556
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 557
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    iput-boolean v11, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 558
    const/4 v11, 0x0

    invoke-static {v2, v11, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 560
    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sub-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sub-int/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-lt v11, v12, :cond_2

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 562
    .local v8, "scaleByHeight":Ljava/lang/Boolean;
    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v12, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v11, v12

    const/high16 v12, 0x10000

    if-lt v11, v12, :cond_1

    .line 563
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3

    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v11, v9

    int-to-double v6, v11

    .line 566
    .local v6, "sampleSize":D
    :goto_2
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v11, v12

    iput v11, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 570
    .end local v6    # "sampleSize":D
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 576
    :goto_3
    const/4 v11, 0x0

    :try_start_2
    iput-boolean v11, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 577
    const/4 v11, 0x0

    invoke-static {v2, v11, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 560
    .end local v8    # "scaleByHeight":Ljava/lang/Boolean;
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 563
    .restart local v8    # "scaleByHeight":Ljava/lang/Boolean;
    :cond_3
    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v11, v10

    int-to-double v6, v11

    goto :goto_2

    .line 571
    :catch_0
    move-exception v4

    .line 572
    .local v4, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/BufferedInputStream;

    .end local v2    # "bin":Ljava/io/BufferedInputStream;
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v2    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 578
    .end local v2    # "bin":Ljava/io/BufferedInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "scaleByHeight":Ljava/lang/Boolean;
    :catch_1
    move-exception v4

    .line 579
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onPostExecute(Ljava/lang/Object;Lco/kr/festfive/activity/SendBirdChannelListActivity$UrlDownloadAsyncTask;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "task"    # Lco/kr/festfive/activity/SendBirdChannelListActivity$UrlDownloadAsyncTask;

    .prologue
    .line 587
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$UrlDownloadAsyncTask$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 588
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$UrlDownloadAsyncTask$2;->val$imageView:Landroid/widget/ImageView;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 590
    :cond_0
    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$UrlDownloadAsyncTask$2;->val$imageView:Landroid/widget/ImageView;

    const v1, 0x7f0700b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 540
    return-void
.end method
