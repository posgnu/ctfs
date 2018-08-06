.class public interface abstract Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializer;
.super Ljava/lang/Object;
.source "JsonDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract deserialize(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sendbird/android/shadow/com/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/sendbird/android/shadow/com/google/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sendbird/android/shadow/com/google/gson/JsonParseException;
        }
    .end annotation
.end method
