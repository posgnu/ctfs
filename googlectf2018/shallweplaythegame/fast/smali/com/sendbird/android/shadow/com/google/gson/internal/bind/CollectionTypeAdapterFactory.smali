.class public final Lcom/sendbird/android/shadow/com/google/gson/internal/bind/CollectionTypeAdapterFactory;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/shadow/com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;)V
    .locals 0
    .param p1, "constructorConstructor"    # Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;

    .line 41
    return-void
.end method


# virtual methods
.method public create(Lcom/sendbird/android/shadow/com/google/gson/Gson;Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;
    .locals 7
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
    .line 45
    .local p2, "typeToken":Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;, "Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 47
    .local v5, "type":Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v3

    .line 48
    .local v3, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 49
    const/4 v4, 0x0

    .line 58
    :goto_0
    return-object v4

    .line 52
    :cond_0
    invoke-static {v5, v3}, Lcom/sendbird/android/shadow/com/google/gson/internal/$Gson$Types;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 53
    .local v1, "elementType":Ljava/lang/reflect/Type;
    invoke-static {v1}, Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->getAdapter(Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    move-result-object v2

    .line 54
    .local v2, "elementTypeAdapter":Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;, "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter<*>;"
    iget-object v6, p0, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v6, p2}, Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;->get(Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;)Lcom/sendbird/android/shadow/com/google/gson/internal/ObjectConstructor;

    move-result-object v0

    .line 57
    .local v0, "constructor":Lcom/sendbird/android/shadow/com/google/gson/internal/ObjectConstructor;, "Lcom/sendbird/android/shadow/com/google/gson/internal/ObjectConstructor<TT;>;"
    new-instance v4, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;

    invoke-direct {v4, p1, v1, v2, v0}, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;-><init>(Lcom/sendbird/android/shadow/com/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;Lcom/sendbird/android/shadow/com/google/gson/internal/ObjectConstructor;)V

    .line 58
    .local v4, "result":Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;, "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter<TT;>;"
    goto :goto_0
.end method
