.class Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;
.super Landroid/os/AsyncTask;
.source "SendBirdChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/activity/SendBirdChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UrlDownloadAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$LRUCache;,
        Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static cache:Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$LRUCache;


# instance fields
.field private final handler:Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 1915
    new-instance v0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$LRUCache;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$LRUCache;-><init>(I)V

    sput-object v0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->cache:Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$LRUCache;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "handler"    # Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;

    .prologue
    .line 2141
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2142
    iput-object p2, p0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->handler:Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;

    .line 2143
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->url:Ljava/lang/String;

    .line 2144
    return-void
.end method

.method public static display(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v4, 0x0

    .line 2063
    const/4 v1, 0x0

    .line 2065
    .local v1, "task":Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;

    if-eqz v2, :cond_0

    .line 2067
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;

    move-object v1, v0

    .line 2068
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2071
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2074
    :cond_0
    new-instance v1, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;

    .end local v1    # "task":Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;
    new-instance v2, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$3;

    invoke-direct {v2, p1}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$3;-><init>(Landroid/widget/ImageView;)V

    invoke-direct {v1, p0, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;-><init>(Ljava/lang/String;Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;)V

    .line 2132
    .restart local v1    # "task":Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 2133
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2138
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2139
    return-void

    .line 2135
    :cond_1
    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 2069
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static display(Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "circle"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1979
    const/4 v1, 0x0

    .line 1981
    .local v1, "task":Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;

    if-eqz v2, :cond_0

    .line 1983
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;

    move-object v1, v0

    .line 1984
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1988
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1991
    :cond_0
    new-instance v1, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;

    .end local v1    # "task":Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;
    new-instance v2, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$2;

    invoke-direct {v2, p1, p2}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$2;-><init>(Landroid/widget/ImageView;Z)V

    invoke-direct {v1, p0, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;-><init>(Ljava/lang/String;Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;)V

    .line 2053
    .restart local v1    # "task":Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 2054
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2059
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2060
    return-void

    .line 2056
    :cond_1
    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 1985
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static download(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "downloadFile"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1920
    new-instance v0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$1;

    invoke-direct {v1, p2, p1}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$1;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-direct {v0, p0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;-><init>(Ljava/lang/String;Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;)V

    .line 1971
    .local v0, "task":Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 1972
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1976
    :goto_0
    return-void

    .line 1974
    :cond_0
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1914
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 10
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 2160
    const/4 v3, 0x0

    .line 2162
    .local v3, "outFile":Ljava/io/File;
    :try_start_0
    sget-object v7, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->cache:Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$LRUCache;

    iget-object v8, p0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$LRUCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/io/File;

    sget-object v8, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->cache:Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$LRUCache;

    iget-object v9, p0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$LRUCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2163
    new-instance v4, Ljava/io/File;

    sget-object v7, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->cache:Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$LRUCache;

    iget-object v8, p0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$LRUCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "outFile":Ljava/io/File;
    .local v4, "outFile":Ljava/io/File;
    move-object v3, v4

    .line 2193
    .end local v4    # "outFile":Ljava/io/File;
    .restart local v3    # "outFile":Ljava/io/File;
    :goto_0
    iget-object v7, p0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->handler:Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;

    if-eqz v7, :cond_0

    .line 2194
    iget-object v7, p0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->handler:Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;

    invoke-interface {v7, v3}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;->doInBackground(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v3

    .line 2197
    .end local v3    # "outFile":Ljava/io/File;
    :cond_0
    return-object v3

    .line 2165
    .restart local v3    # "outFile":Ljava/io/File;
    :cond_1
    :try_start_1
    const-string v7, "sendbird-download"

    const-string v8, ".tmp"

    invoke-static {v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 2166
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2168
    .local v5, "outputStream":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/net/URL;

    iget-object v8, p0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->url:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2169
    .local v2, "input":Ljava/io/InputStream;
    const v7, 0x19000

    new-array v0, v7, [B

    .line 2170
    .local v0, "buf":[B
    const/4 v6, 0x0

    .line 2171
    .local v6, "read":I
    :goto_1
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v2, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_3

    .line 2172
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2182
    .end local v0    # "buf":[B
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .end local v6    # "read":I
    :catch_0
    move-exception v1

    .line 2183
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2185
    if-eqz v3, :cond_2

    .line 2186
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2189
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 2175
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "read":I
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 2176
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 2177
    sget-object v7, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->cache:Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$LRUCache;

    iget-object v8, p0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$LRUCache;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 2201
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->handler:Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;

    if-eqz v0, :cond_0

    .line 2202
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->handler:Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;

    invoke-interface {v0, p1, p0}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;->onPostExecute(Ljava/lang/Object;Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;)V

    .line 2204
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 2154
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->handler:Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;

    if-eqz v0, :cond_0

    .line 2155
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->handler:Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;

    invoke-interface {v0}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask$UrlDownloadAsyncTaskHandler;->onPreExecute()V

    .line 2157
    :cond_0
    return-void
.end method
