.class final Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters$18;
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
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-virtual {p0, p1}, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters$18;->read(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;)Ljava/math/BigDecimal;
    .locals 3
    .param p1, "in"    # Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;->peek()Lcom/sendbird/android/shadow/com/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonToken;->NULL:Lcom/sendbird/android/shadow/com/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_0

    .line 433
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;->nextNull()V

    .line 434
    const/4 v1, 0x0

    .line 437
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/sendbird/android/shadow/com/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    .line 430
    check-cast p2, Ljava/math/BigDecimal;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters$18;->write(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;Ljava/math/BigDecimal;)V

    return-void
.end method

.method public write(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "out"    # Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-virtual {p1, p2}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;

    .line 445
    return-void
.end method