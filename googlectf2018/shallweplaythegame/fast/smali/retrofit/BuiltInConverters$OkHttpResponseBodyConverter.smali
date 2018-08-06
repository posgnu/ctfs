.class final Lretrofit/BuiltInConverters$OkHttpResponseBodyConverter;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Lretrofit/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/BuiltInConverters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OkHttpResponseBodyConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Converter",
        "<",
        "Lcom/squareup/okhttp/ResponseBody;",
        "Lcom/squareup/okhttp/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field private final isStreaming:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "isStreaming"    # Z

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean p1, p0, Lretrofit/BuiltInConverters$OkHttpResponseBodyConverter;->isStreaming:Z

    .line 65
    return-void
.end method


# virtual methods
.method public convert(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/ResponseBody;
    .locals 1
    .param p1, "value"    # Lcom/squareup/okhttp/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-boolean v0, p0, Lretrofit/BuiltInConverters$OkHttpResponseBodyConverter;->isStreaming:Z

    if-eqz v0, :cond_0

    .line 76
    .end local p1    # "value":Lcom/squareup/okhttp/ResponseBody;
    :goto_0
    return-object p1

    .line 74
    .restart local p1    # "value":Lcom/squareup/okhttp/ResponseBody;
    :cond_0
    :try_start_0
    invoke-static {p1}, Lretrofit/Utils;->readBodyToBytesIfNecessary(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/ResponseBody;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 76
    invoke-static {p1}, Lretrofit/Utils;->closeQuietly(Ljava/io/Closeable;)V

    move-object p1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lretrofit/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    check-cast p1, Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {p0, p1}, Lretrofit/BuiltInConverters$OkHttpResponseBodyConverter;->convert(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    return-object v0
.end method
