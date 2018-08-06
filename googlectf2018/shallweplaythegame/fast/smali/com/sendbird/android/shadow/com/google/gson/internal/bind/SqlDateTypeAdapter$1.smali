.class final Lcom/sendbird/android/shadow/com/google/gson/internal/bind/SqlDateTypeAdapter$1;
.super Ljava/lang/Object;
.source "SqlDateTypeAdapter.java"

# interfaces
.implements Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/com/google/gson/internal/bind/SqlDateTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/sendbird/android/shadow/com/google/gson/Gson;Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;
    .locals 2
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
    .line 42
    .local p2, "typeToken":Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;, "Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Date;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/SqlDateTypeAdapter;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/SqlDateTypeAdapter;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
