.class final Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters$21;
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
        "Ljava/lang/StringBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 486
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
    .line 486
    invoke-virtual {p0, p1}, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters$21;->read(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "in"    # Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;->peek()Lcom/sendbird/android/shadow/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonToken;->NULL:Lcom/sendbird/android/shadow/com/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 490
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;->nextNull()V

    .line 491
    const/4 v0, 0x0

    .line 493
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_0
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
    .line 486
    check-cast p2, Ljava/lang/StringBuffer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters$21;->write(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public write(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "out"    # Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;

    .line 498
    return-void

    .line 497
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method