.class final Lretrofit/RequestBuilderAction$QueryMap;
.super Lretrofit/RequestBuilderAction;
.source "RequestBuilderAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestBuilderAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QueryMap"
.end annotation


# instance fields
.field private final encoded:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "encoded"    # Z

    .prologue
    .line 117
    invoke-direct {p0}, Lretrofit/RequestBuilderAction;-><init>()V

    .line 118
    iput-boolean p1, p0, Lretrofit/RequestBuilderAction$QueryMap;->encoded:Z

    .line 119
    return-void
.end method


# virtual methods
.method perform(Lretrofit/RequestBuilder;Ljava/lang/Object;)V
    .locals 8
    .param p1, "builder"    # Lretrofit/RequestBuilder;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 122
    if-nez p2, :cond_1

    .line 135
    :cond_0
    return-void

    :cond_1
    move-object v3, p2

    .line 124
    check-cast v3, Ljava/util/Map;

    .line 125
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 127
    .local v1, "entryKey":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 128
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Query map contained null key."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 130
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 131
    .local v2, "entryValue":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 132
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lretrofit/RequestBuilderAction$QueryMap;->encoded:Z

    invoke-virtual {p1, v5, v6, v7}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
