.class final Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters$31;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters;->newFactory(Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;)V
    .locals 0

    .prologue
    .line 844
    iput-object p1, p0, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters$31;->val$type:Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;

    iput-object p2, p0, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/sendbird/android/shadow/com/google/gson/Gson;Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;)Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;
    .locals 1
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
    .line 847
    .local p2, "typeToken":Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;, "Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters$31;->val$type:Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;

    invoke-virtual {p2, v0}, Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lcom/sendbird/android/shadow/com/google/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
