.class final Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask$1;
.super Ljava/lang/Object;
.source "SendBirdMessagingActivity.java"

# interfaces
.implements Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask;->download(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$downloadFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 2490
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask$1;->val$downloadFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground(Ljava/io/File;)Ljava/lang/Object;
    .locals 11
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 2498
    if-nez p1, :cond_0

    .line 2529
    :goto_0
    return-object v8

    .line 2503
    :cond_0
    const/4 v3, 0x0

    .line 2504
    .local v3, "in":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 2507
    .local v5, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    iget-object v9, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask$1;->val$downloadFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 2508
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 2509
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 2512
    :cond_1
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2513
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask$1;->val$downloadFile:Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2515
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .local v6, "out":Ljava/io/BufferedOutputStream;
    const v9, 0x19000

    :try_start_2
    new-array v0, v9, [B

    .line 2517
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    .line 2518
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v7}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2525
    .end local v0    # "buffer":[B
    .end local v7    # "read":I
    :catch_0
    move-exception v2

    move-object v5, v6

    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .line 2526
    .end local v1    # "dir":Ljava/io/File;
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2520
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "read":I
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 2521
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2522
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 2524
    iget-object v8, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask$1;->val$downloadFile:Ljava/io/File;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2525
    .end local v0    # "buffer":[B
    .end local v1    # "dir":Ljava/io/File;
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .end local v7    # "read":I
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v2

    goto :goto_2

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    goto :goto_2
.end method

.method public onPostExecute(Ljava/lang/Object;Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "task"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask;

    .prologue
    .line 2534
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 2535
    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask;->access$2100(Ljava/io/File;)V

    .line 2536
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask$1;->val$context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ub2e4\uc6b4\ub85c\ub4dc \uc644\ub8cc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Ljava/io/File;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2540
    :goto_0
    return-void

    .line 2538
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask$1;->val$context:Landroid/content/Context;

    const-string v1, "\ub2e4\uc6b4\ub85c\ub4dc \uc2e4\ud328"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPreExecute()V
    .locals 3

    .prologue
    .line 2493
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask$1;->val$context:Landroid/content/Context;

    const-string v1, "\ub2e4\uc6b4\ub85c\ub4dc \uc2dc\uc791"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2494
    return-void
.end method