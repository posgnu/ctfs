.class final Lretrofit/RequestBuilderAction$Body;
.super Lretrofit/RequestBuilderAction;
.source "RequestBuilderAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestBuilderAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Body"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit/RequestBuilderAction;"
    }
.end annotation


# instance fields
.field private final converter:Lretrofit/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Converter",
            "<TT;",
            "Lcom/squareup/okhttp/RequestBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Converter",
            "<TT;",
            "Lcom/squareup/okhttp/RequestBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lretrofit/RequestBuilderAction$Body;, "Lretrofit/RequestBuilderAction$Body<TT;>;"
    .local p1, "converter":Lretrofit/Converter;, "Lretrofit/Converter<TT;Lcom/squareup/okhttp/RequestBody;>;"
    invoke-direct {p0}, Lretrofit/RequestBuilderAction;-><init>()V

    .line 264
    iput-object p1, p0, Lretrofit/RequestBuilderAction$Body;->converter:Lretrofit/Converter;

    .line 265
    return-void
.end method


# virtual methods
.method perform(Lretrofit/RequestBuilder;Ljava/lang/Object;)V
    .locals 5
    .param p1, "builder"    # Lretrofit/RequestBuilder;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 268
    .local p0, "this":Lretrofit/RequestBuilderAction$Body;, "Lretrofit/RequestBuilderAction$Body<TT;>;"
    if-nez p2, :cond_0

    .line 269
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Body parameter value must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 274
    :cond_0
    :try_start_0
    iget-object v2, p0, Lretrofit/RequestBuilderAction$Body;->converter:Lretrofit/Converter;

    invoke-interface {v2, p2}, Lretrofit/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/RequestBody;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .local v0, "body":Lcom/squareup/okhttp/RequestBody;
    invoke-virtual {p1, v0}, Lretrofit/RequestBuilder;->setBody(Lcom/squareup/okhttp/RequestBody;)V

    .line 279
    return-void

    .line 275
    .end local v0    # "body":Lcom/squareup/okhttp/RequestBody;
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to RequestBody"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
