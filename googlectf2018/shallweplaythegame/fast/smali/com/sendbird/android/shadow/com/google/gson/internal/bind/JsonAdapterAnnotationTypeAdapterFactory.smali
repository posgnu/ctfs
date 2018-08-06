.class public final Lcom/sendbird/android/shadow/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;


# instance fields
.field private final constructorConstructor:Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;)V
    .locals 0
    .param p1, "constructorConstructor"    # Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;

    .line 38
    return-void
.end method

.method static getTypeAdapter(Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;Lcom/sendbird/android/shadow/com/google/gson/Gson;Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;Lcom/sendbird/android/shadow/com/google/gson/annotations/JsonAdapter;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;
    .locals 6
    .param p0, "constructorConstructor"    # Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;
    .param p1, "gson"    # Lcom/sendbird/android/shadow/com/google/gson/Gson;
    .param p3, "annotation"    # Lcom/sendbird/android/shadow/com/google/gson/annotations/JsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;",
            "Lcom/sendbird/android/shadow/com/google/gson/Gson;",
            "Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/sendbird/android/shadow/com/google/gson/annotations/JsonAdapter;",
            ")",
            "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "fieldType":Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;, "Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken<*>;"
    invoke-interface {p3}, Lcom/sendbird/android/shadow/com/google/gson/annotations/JsonAdapter;->value()Ljava/lang/Class;

    move-result-object v3

    .line 55
    .local v3, "value":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    move-object v1, v3

    .line 57
    .local v1, "typeAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter<*>;>;"
    invoke-static {v1}, Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;->get(Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;)Lcom/sendbird/android/shadow/com/google/gson/internal/ObjectConstructor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sendbird/android/shadow/com/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    .line 68
    .end local v1    # "typeAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter<*>;>;"
    .local v0, "typeAdapter":Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;, "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter<*>;"
    :goto_0
    invoke-virtual {v0}, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;->nullSafe()Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    move-result-object v4

    return-object v4

    .line 58
    .end local v0    # "typeAdapter":Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;, "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter<*>;"
    :cond_0
    const-class v4, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    move-object v2, v3

    .line 60
    .local v2, "typeAdapterFactory":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;>;"
    invoke-static {v2}, Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;->get(Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;)Lcom/sendbird/android/shadow/com/google/gson/internal/ObjectConstructor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sendbird/android/shadow/com/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;

    invoke-interface {v4, p1, p2}, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;->create(Lcom/sendbird/android/shadow/com/google/gson/Gson;Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    move-result-object v0

    .line 63
    .restart local v0    # "typeAdapter":Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;, "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter<*>;"
    goto :goto_0

    .line 64
    .end local v0    # "typeAdapter":Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;, "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter<*>;"
    .end local v2    # "typeAdapterFactory":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;>;"
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public create(Lcom/sendbird/android/shadow/com/google/gson/Gson;Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;
    .locals 3
    .param p1, "gson"    # Lcom/sendbird/android/shadow/com/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sendbird/android/shadow/com/google/gson/Gson;",
            "Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "targetType":Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;, "Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sendbird/android/shadow/com/google/gson/annotations/JsonAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/shadow/com/google/gson/annotations/JsonAdapter;

    .line 44
    .local v0, "annotation":Lcom/sendbird/android/shadow/com/google/gson/annotations/JsonAdapter;
    if-nez v0, :cond_0

    .line 45
    const/4 v1, 0x0

    .line 47
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;

    invoke-static {v1, p1, p2, v0}, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;Lcom/sendbird/android/shadow/com/google/gson/Gson;Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;Lcom/sendbird/android/shadow/com/google/gson/annotations/JsonAdapter;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    move-result-object v1

    goto :goto_0
.end method
