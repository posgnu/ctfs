.class final Lcom/sendbird/android/shadow/com/google/gson/Gson$7;
.super Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/shadow/com/google/gson/Gson;->atomicLongArrayAdapter(Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter",
        "<",
        "Ljava/util/concurrent/atomic/AtomicLongArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$longAdapter:Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/sendbird/android/shadow/com/google/gson/Gson$7;->val$longAdapter:Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

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
    .line 358
    invoke-virtual {p0, p1}, Lcom/sendbird/android/shadow/com/google/gson/Gson$7;->read(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLongArray;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLongArray;
    .locals 8
    .param p1, "in"    # Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;->beginArray()V

    .line 369
    :goto_0
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 370
    iget-object v6, p0, Lcom/sendbird/android/shadow/com/google/gson/Gson$7;->val$longAdapter:Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    invoke-virtual {v6, p1}, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;->read(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 371
    .local v4, "value":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    .end local v4    # "value":J
    :cond_0
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonReader;->endArray()V

    .line 374
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 375
    .local v2, "length":I
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    .line 376
    .local v0, "array":Ljava/util/concurrent/atomic/AtomicLongArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 377
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 379
    :cond_1
    return-object v0
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
    .line 358
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sendbird/android/shadow/com/google/gson/Gson$7;->write(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLongArray;)V

    return-void
.end method

.method public write(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLongArray;)V
    .locals 6
    .param p1, "out"    # Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/util/concurrent/atomic/AtomicLongArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;->beginArray()Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;

    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 362
    iget-object v2, p0, Lcom/sendbird/android/shadow/com/google/gson/Gson$7;->val$longAdapter:Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;->write(Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;->endArray()Lcom/sendbird/android/shadow/com/google/gson/stream/JsonWriter;

    .line 365
    return-void
.end method