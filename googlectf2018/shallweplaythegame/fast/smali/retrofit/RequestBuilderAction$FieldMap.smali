.class final Lretrofit/RequestBuilderAction$FieldMap;
.super Lretrofit/RequestBuilderAction;
.source "RequestBuilderAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestBuilderAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FieldMap"
.end annotation


# instance fields
.field private final encoded:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "encoded"    # Z

    .prologue
    .line 172
    invoke-direct {p0}, Lretrofit/RequestBuilderAction;-><init>()V

    .line 173
    iput-boolean p1, p0, Lretrofit/RequestBuilderAction$FieldMap;->encoded:Z

    .line 174
    return-void
.end method


# virtual methods
.method perform(Lretrofit/RequestBuilder;Ljava/lang/Object;)V
    .locals 8
    .param p1, "builder"    # Lretrofit/RequestBuilder;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 177
    if-nez p2, :cond_1

    .line 190
    :cond_0
    return-void

    :cond_1
    move-object v3, p2

    .line 179
    check-cast v3, Ljava/util/Map;

    .line 180
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

    .line 181
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 182
    .local v1, "entryKey":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 183
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Field map contained null key."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 186
    .local v2, "entryValue":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 187
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lretrofit/RequestBuilderAction$FieldMap;->encoded:Z

    invoke-virtual {p1, v5, v6, v7}, Lretrofit/RequestBuilder;->addFormField(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
