.class final Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;
.super Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/sendbird/android/shadow/com/google/gson/Gson;

.field private final serializer:Lcom/sendbird/android/shadow/com/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sendbird/android/shadow/com/google/gson/JsonSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sendbird/android/shadow/com/google/gson/JsonSerializer;Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializer;Lcom/sendbird/android/shadow/com/google/gson/Gson;Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;)V
    .locals 0
    .param p3, "gson"    # Lcom/sendbird/android/shadow/com/google/gson/Gson;
    .param p5, "skipPast"    # Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sendbird/android/shadow/com/google/gson/JsonSerializer",
            "<TT;>;",
            "Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializer",
            "<TT;>;",
            "Lcom/sendbird/android/shadow/com/google/gson/Gson;",
            "Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken",
            "<TT;>;",
            "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;, "Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter<TT;>;"
    .local p1, "serializer":Lcom/sendbird/android/shadow/com/google/gson/JsonSerializer;, "Lcom/sendbird/android/shadow/com/google/gson/JsonSerializer<TT;>;"
    .local p2, "deserializer":Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializer;, "Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializer<TT;>;"
    .local p4, "typeToken":Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;, "Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->serializer:Lcom/sendbird/android/shadow/com/google/gson/JsonSerializer;

    .line 44
    iput-object p2, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->deserializer:Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializer;

    .line 45
    iput-object p3, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->gson:Lcom/sendbird/android/shadow/com/google/gson/Gson;

    .line 46
    iput-object p4, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->typeToken:Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;

    .line 47
    iput-object p5, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->skipPast:Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;

    .line 48
    return-void
.end method

.method private delegate()Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;, "Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->delegate:Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    .line 76
    .local v0, "d":Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;, "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    .end local v0    # "d":Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;, "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "d":Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;, "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter<TT;>;"
    :cond_0
    iget-object v1, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->gson:Lcom/sendbird/android/shadow/com/google/gson/Gson;

    iget-object v2, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->skipPast:Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;

    iget-object v3, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->typeToken:Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->getDelegateAdapter(Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    move-result-object v0

    .end local v0    # "d":Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;, "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter<TT;>;"
    iput-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->delegate:Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    goto :goto_0
.end method

.method public static newFactory(Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;
    .locals 3
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "exactType":Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;, "Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken<*>;"
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;
    .locals 3
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "exactType":Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;, "Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken<*>;"
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 96
    .local v0, "matchRawType":Z
    :goto_0
    new-instance v1, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v1

    .line 95
    .end local v0    # "matchRawType":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;
    .locals 3
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "hierarchyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public read(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;, "Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter<TT;>;"
    iget-object v1, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->deserializer:Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializer;

    if-nez v1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->delegate()Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;->read(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/sendbird/android/shadow/com/google/gson/internal/Streams;->parse(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v0

    .line 55
    .local v0, "value":Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const/4 v1, 0x0

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->deserializer:Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializer;

    iget-object v2, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->typeToken:Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->gson:Lcom/sendbird/android/shadow/com/google/gson/Gson;

    iget-object v3, v3, Lcom/sendbird/android/shadow/com/google/gson/Gson;->deserializationContext:Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializationContext;

    invoke-interface {v1, v0, v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializer;->deserialize(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public write(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4
    .param p1, "out"    # Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;, "Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->serializer:Lcom/sendbird/android/shadow/com/google/gson/JsonSerializer;

    if-nez v1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->delegate()Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;->write(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    if-nez p2, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;->nullValue()Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->serializer:Lcom/sendbird/android/shadow/com/google/gson/JsonSerializer;

    iget-object v2, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->typeToken:Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->gson:Lcom/sendbird/android/shadow/com/google/gson/Gson;

    iget-object v3, v3, Lcom/sendbird/android/shadow/com/google/gson/Gson;->serializationContext:Lcom/sendbird/android/shadow/com/google/gson/JsonSerializationContext;

    invoke-interface {v1, p2, v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/sendbird/android/shadow/com/google/gson/JsonSerializationContext;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v0

    .line 71
    .local v0, "tree":Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    invoke-static {v0, p1}, Lcom/sendbird/android/shadow/com/google/gson/internal/Streams;->write(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;)V

    goto :goto_0
.end method
