.class public final Lcom/sendbird/android/shadow/okio/Options;
.super Ljava/util/AbstractList;
.source "Options.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/sendbird/android/shadow/okio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final byteStrings:[Lcom/sendbird/android/shadow/okio/ByteString;


# direct methods
.method private constructor <init>([Lcom/sendbird/android/shadow/okio/ByteString;)V
    .locals 0
    .param p1, "byteStrings"    # [Lcom/sendbird/android/shadow/okio/ByteString;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sendbird/android/shadow/okio/Options;->byteStrings:[Lcom/sendbird/android/shadow/okio/ByteString;

    .line 27
    return-void
.end method

.method public static varargs of([Lcom/sendbird/android/shadow/okio/ByteString;)Lcom/sendbird/android/shadow/okio/Options;
    .locals 2
    .param p0, "byteStrings"    # [Lcom/sendbird/android/shadow/okio/ByteString;

    .prologue
    .line 30
    new-instance v1, Lcom/sendbird/android/shadow/okio/Options;

    invoke-virtual {p0}, [Lcom/sendbird/android/shadow/okio/ByteString;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sendbird/android/shadow/okio/ByteString;

    invoke-direct {v1, v0}, Lcom/sendbird/android/shadow/okio/Options;-><init>([Lcom/sendbird/android/shadow/okio/ByteString;)V

    return-object v1
.end method


# virtual methods
.method public get(I)Lcom/sendbird/android/shadow/okio/ByteString;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sendbird/android/shadow/okio/Options;->byteStrings:[Lcom/sendbird/android/shadow/okio/ByteString;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/sendbird/android/shadow/okio/Options;->get(I)Lcom/sendbird/android/shadow/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sendbird/android/shadow/okio/Options;->byteStrings:[Lcom/sendbird/android/shadow/okio/ByteString;

    array-length v0, v0

    return v0
.end method
