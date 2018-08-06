.class final Lretrofit/GsonResponseBodyConverter;
.super Ljava/lang/Object;
.source "GsonResponseBodyConverter.java"

# interfaces
.implements Lretrofit/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit/Converter",
        "<",
        "Lcom/squareup/okhttp/ResponseBody;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 28
    .local p0, "this":Lretrofit/GsonResponseBodyConverter;, "Lretrofit/GsonResponseBodyConverter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lretrofit/GsonResponseBodyConverter;->gson:Lcom/google/gson/Gson;

    .line 30
    iput-object p2, p0, Lretrofit/GsonResponseBodyConverter;->type:Ljava/lang/reflect/Type;

    .line 31
    return-void
.end method


# virtual methods
.method public convert(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Lcom/squareup/okhttp/ResponseBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/ResponseBody;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lretrofit/GsonResponseBodyConverter;, "Lretrofit/GsonResponseBodyConverter<TT;>;"
    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v0

    .line 36
    .local v0, "reader":Ljava/io/Reader;
    :try_start_0
    iget-object v1, p0, Lretrofit/GsonResponseBodyConverter;->gson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lretrofit/GsonResponseBodyConverter;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 38
    invoke-static {v0}, Lretrofit/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lretrofit/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lretrofit/GsonResponseBodyConverter;, "Lretrofit/GsonResponseBodyConverter<TT;>;"
    check-cast p1, Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {p0, p1}, Lretrofit/GsonResponseBodyConverter;->convert(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
