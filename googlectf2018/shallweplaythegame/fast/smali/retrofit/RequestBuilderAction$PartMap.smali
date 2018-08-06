.class final Lretrofit/RequestBuilderAction$PartMap;
.super Lretrofit/RequestBuilderAction;
.source "RequestBuilderAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestBuilderAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PartMap"
.end annotation


# instance fields
.field private final annotations:[Ljava/lang/annotation/Annotation;

.field private final retrofit:Lretrofit/Retrofit;

.field private final transferEncoding:Ljava/lang/String;


# direct methods
.method constructor <init>(Lretrofit/Retrofit;Ljava/lang/String;[Ljava/lang/annotation/Annotation;)V
    .locals 0
    .param p1, "retrofit"    # Lretrofit/Retrofit;
    .param p2, "transferEncoding"    # Ljava/lang/String;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;

    .prologue
    .line 221
    invoke-direct {p0}, Lretrofit/RequestBuilderAction;-><init>()V

    .line 222
    iput-object p1, p0, Lretrofit/RequestBuilderAction$PartMap;->retrofit:Lretrofit/Retrofit;

    .line 223
    iput-object p2, p0, Lretrofit/RequestBuilderAction$PartMap;->transferEncoding:Ljava/lang/String;

    .line 224
    iput-object p3, p0, Lretrofit/RequestBuilderAction$PartMap;->annotations:[Ljava/lang/annotation/Annotation;

    .line 225
    return-void
.end method


# virtual methods
.method perform(Lretrofit/RequestBuilder;Ljava/lang/Object;)V
    .locals 14
    .param p1, "builder"    # Lretrofit/RequestBuilder;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 228
    if-nez p2, :cond_1

    .line 257
    :cond_0
    return-void

    :cond_1
    move-object/from16 v8, p2

    .line 230
    check-cast v8, Ljava/util/Map;

    .line 231
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 232
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 233
    .local v5, "entryKey":Ljava/lang/Object;
    if-nez v5, :cond_3

    .line 234
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Part map contained null key."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 236
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 237
    .local v6, "entryValue":Ljava/lang/Object;
    if-eqz v6, :cond_2

    .line 241
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Content-Disposition"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "form-data; name=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "Content-Transfer-Encoding"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-object v12, p0, Lretrofit/RequestBuilderAction$PartMap;->transferEncoding:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v10}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v7

    .line 245
    .local v7, "headers":Lcom/squareup/okhttp/Headers;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 247
    .local v4, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v10, p0, Lretrofit/RequestBuilderAction$PartMap;->retrofit:Lretrofit/Retrofit;

    iget-object v11, p0, Lretrofit/RequestBuilderAction$PartMap;->annotations:[Ljava/lang/annotation/Annotation;

    .line 248
    invoke-virtual {v10, v4, v11}, Lretrofit/Retrofit;->requestConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;

    move-result-object v1

    .line 251
    .local v1, "converter":Lretrofit/Converter;, "Lretrofit/Converter<Ljava/lang/Object;Lcom/squareup/okhttp/RequestBody;>;"
    :try_start_0
    invoke-interface {v1, v6}, Lretrofit/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/RequestBody;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .local v0, "body":Lcom/squareup/okhttp/RequestBody;
    invoke-virtual {p1, v7, v0}, Lretrofit/RequestBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)V

    goto :goto_0

    .line 252
    .end local v0    # "body":Lcom/squareup/okhttp/RequestBody;
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to convert "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to RequestBody"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
.end method
