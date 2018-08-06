.class public final Lcom/sendbird/android/shadow/okio/Okio;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/sendbird/android/shadow/okio/Okio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sendbird/android/shadow/okio/Okio;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static appendingSink(Ljava/io/File;)Lcom/sendbird/android/shadow/okio/Sink;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 186
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lcom/sendbird/android/shadow/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/sendbird/android/shadow/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static buffer(Lcom/sendbird/android/shadow/okio/Sink;)Lcom/sendbird/android/shadow/okio/BufferedSink;
    .locals 2
    .param p0, "sink"    # Lcom/sendbird/android/shadow/okio/Sink;

    .prologue
    .line 60
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    new-instance v0, Lcom/sendbird/android/shadow/okio/RealBufferedSink;

    invoke-direct {v0, p0}, Lcom/sendbird/android/shadow/okio/RealBufferedSink;-><init>(Lcom/sendbird/android/shadow/okio/Sink;)V

    return-object v0
.end method

.method public static buffer(Lcom/sendbird/android/shadow/okio/Source;)Lcom/sendbird/android/shadow/okio/BufferedSource;
    .locals 2
    .param p0, "source"    # Lcom/sendbird/android/shadow/okio/Source;

    .prologue
    .line 50
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    new-instance v0, Lcom/sendbird/android/shadow/okio/RealBufferedSource;

    invoke-direct {v0, p0}, Lcom/sendbird/android/shadow/okio/RealBufferedSource;-><init>(Lcom/sendbird/android/shadow/okio/Source;)V

    return-object v0
.end method

.method static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/AssertionError;

    .prologue
    .line 242
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sink(Ljava/io/File;)Lcom/sendbird/android/shadow/okio/Sink;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 180
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/sendbird/android/shadow/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/sendbird/android/shadow/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static sink(Ljava/io/OutputStream;)Lcom/sendbird/android/shadow/okio/Sink;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 66
    new-instance v0, Lcom/sendbird/android/shadow/okio/Timeout;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lcom/sendbird/android/shadow/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/sendbird/android/shadow/okio/Timeout;)Lcom/sendbird/android/shadow/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method private static sink(Ljava/io/OutputStream;Lcom/sendbird/android/shadow/okio/Timeout;)Lcom/sendbird/android/shadow/okio/Sink;
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "timeout"    # Lcom/sendbird/android/shadow/okio/Timeout;

    .prologue
    .line 70
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    new-instance v0, Lcom/sendbird/android/shadow/okio/Okio$1;

    invoke-direct {v0, p1, p0}, Lcom/sendbird/android/shadow/okio/Okio$1;-><init>(Lcom/sendbird/android/shadow/okio/Timeout;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static sink(Ljava/net/Socket;)Lcom/sendbird/android/shadow/okio/Sink;
    .locals 4
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "socket == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/sendbird/android/shadow/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/sendbird/android/shadow/okio/AsyncTimeout;

    move-result-object v1

    .line 119
    .local v1, "timeout":Lcom/sendbird/android/shadow/okio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sendbird/android/shadow/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/sendbird/android/shadow/okio/Timeout;)Lcom/sendbird/android/shadow/okio/Sink;

    move-result-object v0

    .line 120
    .local v0, "sink":Lcom/sendbird/android/shadow/okio/Sink;
    invoke-virtual {v1, v0}, Lcom/sendbird/android/shadow/okio/AsyncTimeout;->sink(Lcom/sendbird/android/shadow/okio/Sink;)Lcom/sendbird/android/shadow/okio/Sink;

    move-result-object v2

    return-object v2
.end method

.method public static varargs sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/sendbird/android/shadow/okio/Sink;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 193
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/shadow/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/sendbird/android/shadow/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static source(Ljava/io/File;)Lcom/sendbird/android/shadow/okio/Source;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 167
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/sendbird/android/shadow/okio/Okio;->source(Ljava/io/InputStream;)Lcom/sendbird/android/shadow/okio/Source;

    move-result-object v0

    return-object v0
.end method

.method public static source(Ljava/io/InputStream;)Lcom/sendbird/android/shadow/okio/Source;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 125
    new-instance v0, Lcom/sendbird/android/shadow/okio/Timeout;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lcom/sendbird/android/shadow/okio/Okio;->source(Ljava/io/InputStream;Lcom/sendbird/android/shadow/okio/Timeout;)Lcom/sendbird/android/shadow/okio/Source;

    move-result-object v0

    return-object v0
.end method

.method private static source(Ljava/io/InputStream;Lcom/sendbird/android/shadow/okio/Timeout;)Lcom/sendbird/android/shadow/okio/Source;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "timeout"    # Lcom/sendbird/android/shadow/okio/Timeout;

    .prologue
    .line 129
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    new-instance v0, Lcom/sendbird/android/shadow/okio/Okio$2;

    invoke-direct {v0, p1, p0}, Lcom/sendbird/android/shadow/okio/Okio$2;-><init>(Lcom/sendbird/android/shadow/okio/Timeout;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static source(Ljava/net/Socket;)Lcom/sendbird/android/shadow/okio/Source;
    .locals 4
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "socket == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_0
    invoke-static {p0}, Lcom/sendbird/android/shadow/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/sendbird/android/shadow/okio/AsyncTimeout;

    move-result-object v1

    .line 205
    .local v1, "timeout":Lcom/sendbird/android/shadow/okio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sendbird/android/shadow/okio/Okio;->source(Ljava/io/InputStream;Lcom/sendbird/android/shadow/okio/Timeout;)Lcom/sendbird/android/shadow/okio/Source;

    move-result-object v0

    .line 206
    .local v0, "source":Lcom/sendbird/android/shadow/okio/Source;
    invoke-virtual {v1, v0}, Lcom/sendbird/android/shadow/okio/AsyncTimeout;->source(Lcom/sendbird/android/shadow/okio/Source;)Lcom/sendbird/android/shadow/okio/Source;

    move-result-object v2

    return-object v2
.end method

.method public static varargs source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/sendbird/android/shadow/okio/Source;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 174
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/shadow/okio/Okio;->source(Ljava/io/InputStream;)Lcom/sendbird/android/shadow/okio/Source;

    move-result-object v0

    return-object v0
.end method

.method private static timeout(Ljava/net/Socket;)Lcom/sendbird/android/shadow/okio/AsyncTimeout;
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 210
    new-instance v0, Lcom/sendbird/android/shadow/okio/Okio$3;

    invoke-direct {v0, p0}, Lcom/sendbird/android/shadow/okio/Okio$3;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
