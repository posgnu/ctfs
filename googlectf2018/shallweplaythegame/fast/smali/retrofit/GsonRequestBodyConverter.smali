.class final Lretrofit/GsonRequestBodyConverter;
.super Ljava/lang/Object;
.source "GsonRequestBodyConverter.java"

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
        "<TT;",
        "Lcom/squareup/okhttp/RequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "application/json; charset=UTF-8"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lretrofit/GsonRequestBodyConverter;->MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    .line 30
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lretrofit/GsonRequestBodyConverter;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 35
    .local p0, "this":Lretrofit/GsonRequestBodyConverter;, "Lretrofit/GsonRequestBodyConverter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lretrofit/GsonRequestBodyConverter;->gson:Lcom/google/gson/Gson;

    .line 37
    iput-object p2, p0, Lretrofit/GsonRequestBodyConverter;->type:Ljava/lang/reflect/Type;

    .line 38
    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Lcom/squareup/okhttp/RequestBody;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/squareup/okhttp/RequestBody;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lretrofit/GsonRequestBodyConverter;, "Lretrofit/GsonRequestBodyConverter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 42
    .local v0, "buffer":Lokio/Buffer;
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Lokio/Buffer;->outputStream()Ljava/io/OutputStream;

    move-result-object v3

    sget-object v4, Lretrofit/GsonRequestBodyConverter;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 44
    .local v2, "writer":Ljava/io/Writer;
    :try_start_0
    iget-object v3, p0, Lretrofit/GsonRequestBodyConverter;->gson:Lcom/google/gson/Gson;

    iget-object v4, p0, Lretrofit/GsonRequestBodyConverter;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v3, p1, v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 45
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    sget-object v3, Lretrofit/GsonRequestBodyConverter;->MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Lokio/ByteString;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v3

    return-object v3

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lretrofit/GsonRequestBodyConverter;, "Lretrofit/GsonRequestBodyConverter<TT;>;"
    invoke-virtual {p0, p1}, Lretrofit/GsonRequestBodyConverter;->convert(Ljava/lang/Object;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    return-object v0
.end method
