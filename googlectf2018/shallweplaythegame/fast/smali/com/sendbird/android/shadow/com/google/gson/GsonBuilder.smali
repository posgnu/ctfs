.class public final Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcom/sendbird/android/shadow/com/google/gson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/sendbird/android/shadow/com/google/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private lenient:Z

.field private longSerializationPolicy:Lcom/sendbird/android/shadow/com/google/gson/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;->DEFAULT:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    iput-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->excluder:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    .line 79
    sget-object v0, Lcom/sendbird/android/shadow/com/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/sendbird/android/shadow/com/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/sendbird/android/shadow/com/google/gson/LongSerializationPolicy;

    .line 80
    sget-object v0, Lcom/sendbird/android/shadow/com/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/sendbird/android/shadow/com/google/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/sendbird/android/shadow/com/google/gson/FieldNamingStrategy;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 86
    iput-boolean v1, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->serializeNulls:Z

    .line 88
    iput v2, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->dateStyle:I

    .line 89
    iput v2, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->timeStyle:I

    .line 90
    iput-boolean v1, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 91
    iput-boolean v1, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 93
    iput-boolean v1, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 94
    iput-boolean v1, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 95
    iput-boolean v1, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->lenient:Z

    .line 104
    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .locals 4
    .param p1, "datePattern"    # Ljava/lang/String;
    .param p2, "dateStyle"    # I
    .param p3, "timeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;>;"
    const/4 v3, 0x2

    .line 577
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 578
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/DefaultDateTypeAdapter;

    invoke-direct {v0, p1}, Lcom/sendbird/android/shadow/com/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/String;)V

    .line 585
    .local v0, "dateTypeAdapter":Lcom/sendbird/android/shadow/com/google/gson/DefaultDateTypeAdapter;
    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->newFactory(Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->newFactory(Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->newFactory(Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    .end local v0    # "dateTypeAdapter":Lcom/sendbird/android/shadow/com/google/gson/DefaultDateTypeAdapter;
    :cond_0
    return-void

    .line 579
    :cond_1
    if-eq p2, v3, :cond_0

    if-eq p3, v3, :cond_0

    .line 580
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/DefaultDateTypeAdapter;

    invoke-direct {v0, p2, p3}, Lcom/sendbird/android/shadow/com/google/gson/DefaultDateTypeAdapter;-><init>(II)V

    .restart local v0    # "dateTypeAdapter":Lcom/sendbird/android/shadow/com/google/gson/DefaultDateTypeAdapter;
    goto :goto_0
.end method


# virtual methods
.method public addDeserializationExclusionStrategy(Lcom/sendbird/android/shadow/com/google/gson/ExclusionStrategy;)Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 3
    .param p1, "strategy"    # Lcom/sendbird/android/shadow/com/google/gson/ExclusionStrategy;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->excluder:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/sendbird/android/shadow/com/google/gson/ExclusionStrategy;ZZ)Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->excluder:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    .line 350
    return-object p0
.end method

.method public addSerializationExclusionStrategy(Lcom/sendbird/android/shadow/com/google/gson/ExclusionStrategy;)Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 3
    .param p1, "strategy"    # Lcom/sendbird/android/shadow/com/google/gson/ExclusionStrategy;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->excluder:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/sendbird/android/shadow/com/google/gson/ExclusionStrategy;ZZ)Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->excluder:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    .line 333
    return-object p0
.end method

.method public create()Lcom/sendbird/android/shadow/com/google/gson/Gson;
    .locals 13

    .prologue
    .line 562
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v12, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;>;"
    iget-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 564
    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 565
    iget-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 566
    iget-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v1, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->dateStyle:I

    iget v2, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->timeStyle:I

    invoke-direct {p0, v0, v1, v2, v12}, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    .line 568
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    iget-object v1, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->excluder:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    iget-object v2, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/sendbird/android/shadow/com/google/gson/FieldNamingStrategy;

    iget-object v3, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->serializeNulls:Z

    iget-boolean v5, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    iget-boolean v6, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v7, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v8, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->prettyPrinting:Z

    iget-boolean v9, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->lenient:Z

    iget-boolean v10, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v11, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/sendbird/android/shadow/com/google/gson/LongSerializationPolicy;

    invoke-direct/range {v0 .. v12}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>(Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;Lcom/sendbird/android/shadow/com/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/sendbird/android/shadow/com/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-object v0
.end method

.method public disableHtmlEscaping()Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 386
    return-object p0
.end method

.method public disableInnerClassSerialization()Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->excluder:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;->disableInnerClassSerialization()Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->excluder:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    .line 260
    return-object p0
.end method

.method public enableComplexMapKeySerialization()Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 249
    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 1
    .param p1, "modifiers"    # [I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->excluder:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    invoke-virtual {v0, p1}, Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;->withModifiers([I)Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->excluder:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    .line 131
    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->excluder:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->excluder:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    .line 156
    return-object p0
.end method

.method public generateNonExecutableJson()Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 145
    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "typeAdapter"    # Ljava/lang/Object;

    .prologue
    .line 471
    instance-of v1, p2, Lcom/sendbird/android/shadow/com/google/gson/JsonSerializer;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializer;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/sendbird/android/shadow/com/google/gson/InstanceCreator;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    if-eqz v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/sendbird/android/shadow/com/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 475
    instance-of v1, p2, Lcom/sendbird/android/shadow/com/google/gson/InstanceCreator;

    if-eqz v1, :cond_1

    .line 476
    iget-object v2, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Lcom/sendbird/android/shadow/com/google/gson/InstanceCreator;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_1
    instance-of v1, p2, Lcom/sendbird/android/shadow/com/google/gson/JsonSerializer;

    if-nez v1, :cond_2

    instance-of v1, p2, Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializer;

    if-eqz v1, :cond_3

    .line 479
    :cond_2
    invoke-static {p1}, Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;

    move-result-object v0

    .line 480
    .local v0, "typeToken":Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;, "Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken<*>;"
    iget-object v1, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    .end local v0    # "typeToken":Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;, "Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken<*>;"
    :cond_3
    instance-of v1, p2, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    if-eqz v1, :cond_4

    .line 483
    iget-object v1, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {p1}, Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;

    move-result-object v2

    check-cast p2, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    .end local p2    # "typeAdapter":Ljava/lang/Object;
    invoke-static {v2, p2}, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters;->newFactory(Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_4
    return-object p0

    .line 471
    .restart local p2    # "typeAdapter":Ljava/lang/Object;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerTypeAdapterFactory(Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;)Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 1
    .param p1, "factory"    # Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    return-object p0
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 3
    .param p2, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "baseType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 517
    instance-of v0, p2, Lcom/sendbird/android/shadow/com/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sendbird/android/shadow/com/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 520
    instance-of v0, p2, Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializer;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/sendbird/android/shadow/com/google/gson/JsonSerializer;

    if-eqz v0, :cond_2

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/sendbird/android/shadow/com/google/gson/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 524
    :cond_2
    instance-of v0, p2, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    if-eqz v0, :cond_3

    .line 525
    iget-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->factories:Ljava/util/List;

    check-cast p2, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    .end local p2    # "typeAdapter":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_3
    return-object p0

    .restart local p2    # "typeAdapter":Ljava/lang/Object;
    :cond_4
    move v0, v1

    .line 517
    goto :goto_0
.end method

.method public serializeNulls()Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->serializeNulls:Z

    .line 168
    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 552
    return-object p0
.end method

.method public setDateFormat(I)Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 426
    iput p1, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->dateStyle:I

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 428
    return-object p0
.end method

.method public setDateFormat(II)Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 1
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I

    .prologue
    .line 447
    iput p1, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->dateStyle:I

    .line 448
    iput p2, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->timeStyle:I

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 450
    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 408
    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcom/sendbird/android/shadow/com/google/gson/ExclusionStrategy;)Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 6
    .param p1, "strategies"    # [Lcom/sendbird/android/shadow/com/google/gson/ExclusionStrategy;

    .prologue
    const/4 v5, 0x1

    .line 313
    move-object v0, p1

    .local v0, "arr$":[Lcom/sendbird/android/shadow/com/google/gson/ExclusionStrategy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 314
    .local v3, "strategy":Lcom/sendbird/android/shadow/com/google/gson/ExclusionStrategy;
    iget-object v4, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->excluder:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    invoke-virtual {v4, v3, v5, v5}, Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/sendbird/android/shadow/com/google/gson/ExclusionStrategy;ZZ)Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    move-result-object v4

    iput-object v4, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->excluder:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    .end local v3    # "strategy":Lcom/sendbird/android/shadow/com/google/gson/ExclusionStrategy;
    :cond_0
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/sendbird/android/shadow/com/google/gson/FieldNamingPolicy;)Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 0
    .param p1, "namingConvention"    # Lcom/sendbird/android/shadow/com/google/gson/FieldNamingPolicy;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/sendbird/android/shadow/com/google/gson/FieldNamingStrategy;

    .line 286
    return-object p0
.end method

.method public setFieldNamingStrategy(Lcom/sendbird/android/shadow/com/google/gson/FieldNamingStrategy;)Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 0
    .param p1, "fieldNamingStrategy"    # Lcom/sendbird/android/shadow/com/google/gson/FieldNamingStrategy;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/sendbird/android/shadow/com/google/gson/FieldNamingStrategy;

    .line 299
    return-object p0
.end method

.method public setLenient()Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->lenient:Z

    .line 374
    return-object p0
.end method

.method public setLongSerializationPolicy(Lcom/sendbird/android/shadow/com/google/gson/LongSerializationPolicy;)Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 0
    .param p1, "serializationPolicy"    # Lcom/sendbird/android/shadow/com/google/gson/LongSerializationPolicy;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/sendbird/android/shadow/com/google/gson/LongSerializationPolicy;

    .line 273
    return-object p0
.end method

.method public setPrettyPrinting()Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 361
    return-object p0
.end method

.method public setVersion(D)Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;
    .locals 1
    .param p1, "ignoreVersionsAfter"    # D

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->excluder:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;->withVersion(D)Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/GsonBuilder;->excluder:Lcom/sendbird/android/shadow/com/google/gson/internal/Excluder;

    .line 115
    return-object p0
.end method
