.class final Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters$13;
.super Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 2
    .param p1, "in"    # Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;->peek()Lcom/sendbird/android/shadow/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonToken;->NULL:Lcom/sendbird/android/shadow/com/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 340
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;->nextNull()V

    .line 341
    const/4 v0, 0x0

    .line 343
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters$13;->read(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 0
    .param p1, "out"    # Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p1, p2}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;

    .line 348
    return-void
.end method

.method public bridge synthetic write(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters$13;->write(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method