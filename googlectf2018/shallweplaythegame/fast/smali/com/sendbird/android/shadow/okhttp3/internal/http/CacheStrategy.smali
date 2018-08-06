.class public final Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final cacheResponse:Lcom/sendbird/android/shadow/okhttp3/Response;

.field public final networkRequest:Lcom/sendbird/android/shadow/okhttp3/Request;


# direct methods
.method private constructor <init>(Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/Response;)V
    .locals 0
    .param p1, "networkRequest"    # Lcom/sendbird/android/shadow/okhttp3/Request;
    .param p2, "cacheResponse"    # Lcom/sendbird/android/shadow/okhttp3/Response;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;->networkRequest:Lcom/sendbird/android/shadow/okhttp3/Request;

    .line 54
    iput-object p2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;->cacheResponse:Lcom/sendbird/android/shadow/okhttp3/Response;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/Response;Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sendbird/android/shadow/okhttp3/Request;
    .param p2, "x1"    # Lcom/sendbird/android/shadow/okhttp3/Response;
    .param p3, "x2"    # Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$1;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;-><init>(Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/Response;)V

    return-void
.end method

.method public static isCacheable(Lcom/sendbird/android/shadow/okhttp3/Response;Lcom/sendbird/android/shadow/okhttp3/Request;)Z
    .locals 3
    .param p0, "response"    # Lcom/sendbird/android/shadow/okhttp3/Response;
    .param p1, "request"    # Lcom/sendbird/android/shadow/okhttp3/Request;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/okhttp3/Response;->code()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 81
    :sswitch_0
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lcom/sendbird/android/shadow/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/okhttp3/Response;->cacheControl()Lcom/sendbird/android/shadow/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/okhttp3/Response;->cacheControl()Lcom/sendbird/android/shadow/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->isPublic()Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/okhttp3/Response;->cacheControl()Lcom/sendbird/android/shadow/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/okhttp3/Response;->cacheControl()Lcom/sendbird/android/shadow/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->noStore()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/Request;->cacheControl()Lcom/sendbird/android/shadow/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->noStore()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 61
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
