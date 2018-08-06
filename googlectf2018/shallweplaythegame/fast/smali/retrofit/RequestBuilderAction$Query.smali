.class final Lretrofit/RequestBuilderAction$Query;
.super Lretrofit/RequestBuilderAction;
.source "RequestBuilderAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestBuilderAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Query"
.end annotation


# instance fields
.field private final encoded:Z

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "encoded"    # Z

    .prologue
    .line 87
    invoke-direct {p0}, Lretrofit/RequestBuilderAction;-><init>()V

    .line 88
    const-string v0, "name == null"

    invoke-static {p1, v0}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lretrofit/RequestBuilderAction$Query;->name:Ljava/lang/String;

    .line 89
    iput-boolean p2, p0, Lretrofit/RequestBuilderAction$Query;->encoded:Z

    .line 90
    return-void
.end method


# virtual methods
.method perform(Lretrofit/RequestBuilder;Ljava/lang/Object;)V
    .locals 8
    .param p1, "builder"    # Lretrofit/RequestBuilder;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 93
    if-nez p2, :cond_1

    .line 111
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 95
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v4, p2, Ljava/lang/Iterable;

    if-eqz v4, :cond_3

    .line 96
    check-cast p2, Ljava/lang/Iterable;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 97
    .local v2, "iterableValue":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 98
    iget-object v5, p0, Lretrofit/RequestBuilderAction$Query;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lretrofit/RequestBuilderAction$Query;->encoded:Z

    invoke-virtual {p1, v5, v6, v7}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 101
    .end local v2    # "iterableValue":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 102
    const/4 v3, 0x0

    .local v3, "x":I
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .local v0, "arrayLength":I
    :goto_2
    if-ge v3, v0, :cond_0

    .line 103
    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, "arrayValue":Ljava/lang/Object;
    if-eqz v1, :cond_4

    .line 105
    iget-object v4, p0, Lretrofit/RequestBuilderAction$Query;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lretrofit/RequestBuilderAction$Query;->encoded:Z

    invoke-virtual {p1, v4, v5, v6}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 109
    .end local v0    # "arrayLength":I
    .end local v1    # "arrayValue":Ljava/lang/Object;
    .end local v3    # "x":I
    :cond_5
    iget-object v4, p0, Lretrofit/RequestBuilderAction$Query;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lretrofit/RequestBuilderAction$Query;->encoded:Z

    invoke-virtual {p1, v4, v5, v6}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
