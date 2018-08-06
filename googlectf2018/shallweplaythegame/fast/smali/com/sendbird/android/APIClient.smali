.class Lcom/sendbird/android/APIClient;
.super Ljava/lang/Object;
.source "APIClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/APIClient$APIClientEventHandler;,
        Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;
    }
.end annotation


# static fields
.field private static final API_CHANNEL_JOIN:Ljava/lang/String; = "/v1/channel_join"

.field private static final API_CHANNEL_LEAVE:Ljava/lang/String; = "/v1/channel_leave"

.field private static final API_CHANNEL_LIST:Ljava/lang/String; = "/v1/channel_list"

.field private static final API_CHANNEL_METACOUNTER_DECREASE:Ljava/lang/String; = "/v1/channel_metacounter_decrease"

.field private static final API_CHANNEL_METACOUNTER_DELETE:Ljava/lang/String; = "/v1/channel_metacounter_delete"

.field private static final API_CHANNEL_METACOUNTER_GET:Ljava/lang/String; = "/v1/channel_metacounter_get"

.field private static final API_CHANNEL_METACOUNTER_INCREASE:Ljava/lang/String; = "/v1/channel_metacounter_increase"

.field private static final API_CHANNEL_METACOUNTER_SET:Ljava/lang/String; = "/v1/channel_metacounter_set"

.field private static final API_CHANNEL_METADATA_DELETE:Ljava/lang/String; = "/v1/channel_metadata_delete"

.field private static final API_CHANNEL_METADATA_GET:Ljava/lang/String; = "/v1/channel_metadata_get"

.field private static final API_CHANNEL_METADATA_SET:Ljava/lang/String; = "/v1/channel_metadata_set"

.field private static final API_CHANNEL_MULTI_JOIN:Ljava/lang/String; = "/v1/channel_multi_join"

.field private static final API_CHANNEL_MULTI_LEAVE:Ljava/lang/String; = "/v1/channel_multi_leave"

.field private static final API_CHECK_USER_EXISTENCE:Ljava/lang/String; = "/v1/user_list/exist"

.field private static final API_GUEST_LOGIN:Ljava/lang/String; = "/v1/guest_login"

.field private static final API_LOAD_MORE_MESSAGES:Ljava/lang/String; = "/v1/load_more_messages"

.field private static final API_MARK_AS_READ:Ljava/lang/String; = "/v1/mark_as_read"

.field private static final API_MEMBER_COUNT:Ljava/lang/String; = "/v1/member_count"

.field private static final API_MEMBER_LIST:Ljava/lang/String; = "/v2/member_list"

.field private static final API_MESSAGE_DELETE:Ljava/lang/String; = "/v1/message_delete"

.field private static final API_MESSAGE_LIST:Ljava/lang/String; = "/v1/message_list"

.field private static final API_MESSAGE_LIST_BY_TIMESTAMP:Ljava/lang/String; = "/v1/message_list_by_timestamp"

.field private static final API_MESSAGING_END:Ljava/lang/String; = "/v1/messaging_end"

.field private static final API_MESSAGING_HIDE:Ljava/lang/String; = "/v1/messaging_hide"

.field private static final API_MESSAGING_INFO:Ljava/lang/String; = "/v1/messaging_info"

.field private static final API_MESSAGING_INVITE:Ljava/lang/String; = "/v1/messaging_invite"

.field private static final API_MESSAGING_JOIN:Ljava/lang/String; = "/v1/messaging_join"

.field private static final API_MESSAGING_LIST_v3:Ljava/lang/String; = "/v3/messaging_list"

.field private static final API_MESSAGING_START:Ljava/lang/String; = "/v1/messaging_start"

.field private static final API_MESSAGING_UNREAD_COUNT:Ljava/lang/String; = "/v1/messaging_unread_count"

.field private static final API_ONLINE_MEMBER_COUNT:Ljava/lang/String; = "/v1/online_member_count"

.field private static final API_REGISTER_PUSH_TOKEN:Ljava/lang/String; = "/v1/register_push_token"

.field private static final API_UNREGISTER_PUSH_TOKEN:Ljava/lang/String; = "/v1/unregister_push_token"

.field private static final API_UPLOAD_FILE:Ljava/lang/String; = "/v1/upload_file"

.field private static final API_USER_BLOCK_LIST:Ljava/lang/String; = "/v1/user_block_list"

.field private static final API_USER_LIST:Ljava/lang/String; = "/v1/user_list"

.field private static final CALL_TAG:Ljava/lang/String; = "CALL"

.field private static final CANCELABLE_TAGS:[Ljava/lang/String;

.field public static final MIME_JSON:Lcom/sendbird/android/shadow/okhttp3/MediaType;


# instance fields
.field private final APP_ID:Ljava/lang/String;

.field private okHttpClientPool:[Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

.field private poolIndex:I

.field private sessionKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/v3/messaging_list"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sendbird/android/APIClient;->CANCELABLE_TAGS:[Ljava/lang/String;

    .line 80
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/sendbird/android/APIClient;->MIME_JSON:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    iput-object v1, p0, Lcom/sendbird/android/APIClient;->okHttpClientPool:[Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sendbird/android/APIClient;->okHttpClientPool:[Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/sendbird/android/APIClient;->okHttpClientPool:[Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    new-instance v2, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    invoke-direct {v2}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;-><init>()V

    aput-object v2, v1, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/sendbird/android/APIClient;->APP_ID:Ljava/lang/String;

    .line 94
    const-string v1, ""

    iput-object v1, p0, Lcom/sendbird/android/APIClient;->sessionKey:Ljava/lang/String;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/sendbird/android/APIClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/APIClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sendbird/android/APIClient;->setSessionKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sendbird/android/APIClient;)[Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/APIClient;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sendbird/android/APIClient;->okHttpClientPool:[Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/sendbird/android/APIClient;->CANCELABLE_TAGS:[Ljava/lang/String;

    return-object v0
.end method

.method private defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;-><init>()V

    .line 109
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/sendbird/android/APIClient;->APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "session_key"

    iget-object v2, p0, Lcom/sendbird/android/APIClient;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-object v0
.end method

.method private getOkHttpClient()Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/sendbird/android/APIClient;->poolIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sendbird/android/APIClient;->poolIndex:I

    .line 99
    iget v0, p0, Lcom/sendbird/android/APIClient;->poolIndex:I

    iget-object v1, p0, Lcom/sendbird/android/APIClient;->okHttpClientPool:[Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/sendbird/android/APIClient;->poolIndex:I

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/APIClient;->okHttpClientPool:[Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    iget v1, p0, Lcom/sendbird/android/APIClient;->poolIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private setSessionKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sendbird/android/APIClient;->sessionKey:Ljava/lang/String;

    .line 117
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 2

    .prologue
    .line 603
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sendbird/android/APIClient$5;

    invoke-direct {v1, p0}, Lcom/sendbird/android/APIClient$5;-><init>(Lcom/sendbird/android/APIClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 627
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 628
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .end local v0    # "t":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 629
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public channelJoin(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 2
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 174
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_url"

    invoke-virtual {v0, v1, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "/v1/channel_join"

    invoke-virtual {p0, v1, v0, p2}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 176
    return-void
.end method

.method public channelLeave(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 2
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 192
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_url"

    invoke-virtual {v0, v1, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "/v1/channel_leave"

    invoke-virtual {p0, v1, v0, p2}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 194
    return-void
.end method

.method public channelLeave(Ljava/util/ArrayList;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 4
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "channelUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 199
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    new-instance v2, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;-><init>()V

    .line 200
    .local v2, "jsonChannelUrls":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 201
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_0
    const-string v3, "channel_urls"

    invoke-virtual {v0, v3, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 204
    const-string v3, "/v1/channel_multi_leave"

    invoke-virtual {p0, v3, v0, p2}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 205
    return-void
.end method

.method public channelList(ILjava/lang/String;ILcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 3
    .param p1, "page"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "limit"    # I
    .param p4, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 217
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "page"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 218
    const-string v1, "query"

    invoke-virtual {v0, v1, p2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "limit"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 220
    const-string v1, "/v1/channel_list"

    invoke-virtual {p0, v1, v0, p4}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 221
    return-void
.end method

.method public channelMetaCounterDecrease(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 7
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 473
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v2

    .line 475
    .local v2, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v5, "channel_url"

    invoke-virtual {v2, v5, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    new-instance v3, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;-><init>()V

    .line 478
    .local v3, "formData":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 479
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 480
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v3, v5, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 482
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    const-string v5, "data"

    invoke-virtual {v2, v5, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 484
    const-string v5, "/v1/channel_metacounter_decrease"

    invoke-virtual {p0, v5, v2, p3}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 485
    return-void
.end method

.method public channelMetaCounterDelete(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 5
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 444
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 446
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v4, "channel_url"

    invoke-virtual {v0, v4, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v1, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;-><init>()V

    .line 449
    .local v1, "formKeys":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 450
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 452
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    const-string v4, "keys"

    invoke-virtual {v0, v4, v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 454
    const-string v4, "/v1/channel_metacounter_delete"

    invoke-virtual {p0, v4, v0, p3}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 455
    return-void
.end method

.method public channelMetaCounterGet(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 5
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 430
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 432
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v4, "channel_url"

    invoke-virtual {v0, v4, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance v1, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;-><init>()V

    .line 435
    .local v1, "formKeys":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 436
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 438
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    const-string v4, "keys"

    invoke-virtual {v0, v4, v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 440
    const-string v4, "/v1/channel_metacounter_get"

    invoke-virtual {p0, v4, v0, p3}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 441
    return-void
.end method

.method public channelMetaCounterIncrease(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 7
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 458
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v2

    .line 460
    .local v2, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v5, "channel_url"

    invoke-virtual {v2, v5, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    new-instance v3, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;-><init>()V

    .line 463
    .local v3, "formData":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 464
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 465
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v3, v5, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 467
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    const-string v5, "data"

    invoke-virtual {v2, v5, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 469
    const-string v5, "/v1/channel_metacounter_increase"

    invoke-virtual {p0, v5, v2, p3}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 470
    return-void
.end method

.method public channelMetaCounterSet(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 7
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 415
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v2

    .line 417
    .local v2, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v5, "channel_url"

    invoke-virtual {v2, v5, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance v3, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;-><init>()V

    .line 420
    .local v3, "formData":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 421
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 422
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v3, v5, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 424
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    const-string v5, "data"

    invoke-virtual {v2, v5, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 426
    const-string v5, "/v1/channel_metacounter_set"

    invoke-virtual {p0, v5, v2, p3}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 427
    return-void
.end method

.method public channelMetaDataDelete(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 5
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 401
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 403
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v4, "channel_url"

    invoke-virtual {v0, v4, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v1, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;-><init>()V

    .line 406
    .local v1, "formKeys":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 407
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    const-string v4, "keys"

    invoke-virtual {v0, v4, v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 411
    const-string v4, "/v1/channel_metadata_delete"

    invoke-virtual {p0, v4, v0, p3}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 412
    return-void
.end method

.method public channelMetaDataGet(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 5
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 387
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 389
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v4, "channel_url"

    invoke-virtual {v0, v4, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance v1, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;-><init>()V

    .line 392
    .local v1, "formKeys":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 393
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    const-string v4, "keys"

    invoke-virtual {v0, v4, v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 397
    const-string v4, "/v1/channel_metadata_get"

    invoke-virtual {p0, v4, v0, p3}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 398
    return-void
.end method

.method public channelMetaDataSet(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 7
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 372
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v2

    .line 374
    .local v2, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v5, "channel_url"

    invoke-virtual {v2, v5, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v3, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;-><init>()V

    .line 377
    .local v3, "formData":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 378
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 379
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v5, "data"

    invoke-virtual {v2, v5, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 383
    const-string v5, "/v1/channel_metadata_set"

    invoke-virtual {p0, v5, v2, p3}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 384
    return-void
.end method

.method public channelMultiJoin(Ljava/util/ArrayList;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 4
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "channelUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 181
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    new-instance v2, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;-><init>()V

    .line 182
    .local v2, "jsonChannelUrls":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 183
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    const-string v3, "channel_urls"

    invoke-virtual {v0, v3, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 186
    const-string v3, "/v1/channel_multi_join"

    invoke-virtual {p0, v3, v0, p2}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 187
    return-void
.end method

.method public checkUserExistence(Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 5
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 557
    .local p1, "userIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 559
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    new-instance v3, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;-><init>()V

    .line 560
    .local v3, "userIdsJson":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 561
    .local v2, "userId":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    .end local v2    # "userId":Ljava/lang/String;
    :cond_0
    const-string v4, "user_ids"

    invoke-virtual {v0, v4, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 565
    const-string v4, "/v1/user_list/exist"

    invoke-virtual {p0, v4, v0, p2}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 566
    return-void
.end method

.method protected file(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Ljava/io/File;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "form"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 819
    const-string v3, "application/octet-stream"

    .line 821
    .local v3, "fileMime":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 828
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/sendbird/android/shadow/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/MediaType;

    move-result-object v0

    .line 829
    .local v0, "MIME_FILE":Lcom/sendbird/android/shadow/okhttp3/MediaType;
    sget-boolean v7, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 830
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 831
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Mime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 834
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v5, "partHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/shadow/okhttp3/Headers;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v4, "partBodies":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/shadow/okhttp3/RequestBody;>;"
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Content-Disposition"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "form-data; name=\"meta\""

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/sendbird/android/shadow/okhttp3/Headers;->of([Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Headers;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    sget-object v7, Lcom/sendbird/android/APIClient;->MIME_JSON:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    new-instance v8, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v8}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    invoke-virtual {v8, p2}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sendbird/android/shadow/okhttp3/RequestBody;->create(Lcom/sendbird/android/shadow/okhttp3/MediaType;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Content-Disposition"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "form-data; name=\"file\"; filename=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "Content-Transfer-Encoding"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "binary"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/sendbird/android/shadow/okhttp3/Headers;->of([Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Headers;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    invoke-static {v0, p3}, Lcom/sendbird/android/shadow/okhttp3/RequestBody;->create(Lcom/sendbird/android/shadow/okhttp3/MediaType;Ljava/io/File;)Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    new-instance v1, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;

    invoke-direct {v1, v5, v4}, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 846
    .local v1, "body":Lcom/sendbird/android/shadow/okhttp3/RequestBody;
    new-instance v7, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    invoke-direct {v7}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://API.SENDBIRD.COM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->post(Lcom/sendbird/android/shadow/okhttp3/RequestBody;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v7

    const-string v8, "CALL"

    invoke-virtual {v7, v8}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->build()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v6

    .line 853
    .local v6, "request":Lcom/sendbird/android/shadow/okhttp3/Request;
    sget-boolean v7, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 854
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6}, Lcom/sendbird/android/shadow/okhttp3/Request;->body()Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 857
    :cond_2
    invoke-virtual {p0, v6, p1, p4}, Lcom/sendbird/android/APIClient;->run(Lcom/sendbird/android/shadow/okhttp3/Request;Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 858
    return-void

    .line 822
    .end local v0    # "MIME_FILE":Lcom/sendbird/android/shadow/okhttp3/MediaType;
    .end local v1    # "body":Lcom/sendbird/android/shadow/okhttp3/RequestBody;
    .end local v4    # "partBodies":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/shadow/okhttp3/RequestBody;>;"
    .end local v5    # "partHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/shadow/okhttp3/Headers;>;"
    .end local v6    # "request":Lcom/sendbird/android/shadow/okhttp3/Request;
    :catch_0
    move-exception v2

    .line 823
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v7, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 824
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Fail to guess MIME type."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected get(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 792
    const-string v0, "CALL"

    invoke-virtual {p0, p1, p2, v0}, Lcom/sendbird/android/APIClient;->get(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method protected get(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 795
    new-instance v1, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    invoke-direct {v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://API.S//ENDBIRD.COM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->build()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v0

    .line 800
    .local v0, "request":Lcom/sendbird/android/shadow/okhttp3/Request;
    invoke-virtual {p0, v0, p1, p2}, Lcom/sendbird/android/APIClient;->run(Lcom/sendbird/android/shadow/okhttp3/Request;Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 801
    return-void
.end method

.method public guestLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 3
    .param p1, "guestId"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "accessToken"    # Ljava/lang/String;
    .param p5, "gcmRegToken"    # Ljava/lang/String;
    .param p6, "deviceId"    # Ljava/lang/String;
    .param p7, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 122
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "guest_id"

    invoke-virtual {v0, v1, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "nickname"

    invoke-virtual {v0, v1, p2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "image_url"

    invoke-virtual {v0, v1, p3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p4}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "gcm_reg_token"

    invoke-virtual {v0, v1, p5}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "device_id"

    invoke-virtual {v0, v1, p6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "/v1/guest_login"

    new-instance v2, Lcom/sendbird/android/APIClient$1;

    invoke-direct {v2, p0, p7}, Lcom/sendbird/android/APIClient$1;-><init>(Lcom/sendbird/android/APIClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 141
    return-void
.end method

.method public loadMoreMessages(JJILcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 3
    .param p1, "channelId"    # J
    .param p3, "minMessageId"    # J
    .param p5, "limit"    # I
    .param p6, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 302
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 303
    const-string v1, "msg_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 304
    const-string v1, "limit"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 305
    const-string v1, "/v1/load_more_messages"

    invoke-virtual {p0, v1, v0, p6}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 306
    return-void
.end method

.method public markAllAsRead(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 3
    .param p1, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 159
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "all"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 161
    const-string v1, "/v1/mark_as_read"

    new-instance v2, Lcom/sendbird/android/APIClient$3;

    invoke-direct {v2, p0, p1}, Lcom/sendbird/android/APIClient$3;-><init>(Lcom/sendbird/android/APIClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 169
    return-void
.end method

.method public markAsRead(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 3
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 145
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_url"

    invoke-virtual {v0, v1, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "/v1/mark_as_read"

    new-instance v2, Lcom/sendbird/android/APIClient$2;

    invoke-direct {v2, p0, p2}, Lcom/sendbird/android/APIClient$2;-><init>(Lcom/sendbird/android/APIClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 155
    return-void
.end method

.method public memberCount(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 2
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 489
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_url"

    invoke-virtual {v0, v1, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v1, "/v1/member_count"

    invoke-virtual {p0, v1, v0, p2}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 491
    return-void
.end method

.method public memberList(Ljava/lang/String;ZLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 3
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "onlineOnly"    # Z
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 360
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "online_only"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 361
    const-string v1, "channel_url"

    invoke-virtual {v0, v1, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v1, "/v2/member_list"

    invoke-virtual {p0, v1, v0, p3}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 363
    return-void
.end method

.method public messageDelete(JLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 3
    .param p1, "messageId"    # J
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 552
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "msg_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 553
    const-string v1, "/v1/message_delete"

    invoke-virtual {p0, v1, v0, p3}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 554
    return-void
.end method

.method public messageList(Ljava/lang/String;JIIZLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 4
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "messageTimestamp"    # J
    .param p4, "prevLimit"    # I
    .param p5, "nextLimit"    # I
    .param p6, "include"    # Z
    .param p7, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 528
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_url"

    invoke-virtual {v0, v1, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v1, "message_ts"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 530
    const-string v1, "prev_limit"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 531
    const-string v1, "next_limit"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 532
    const-string v1, "include"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 533
    const-string v1, "/v1/message_list"

    invoke-virtual {p0, v1, v0, p7}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 534
    return-void
.end method

.method public messageListByTimestamp(Ljava/lang/String;JJLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 4
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "messageTimestampStart"    # J
    .param p4, "messageTimestampEnd"    # J
    .param p6, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 538
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_url"

    invoke-virtual {v0, v1, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v1, "start_ts"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 540
    const-string v1, "end_ts"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 541
    const-string v1, "/v1/message_list_by_timestamp"

    invoke-virtual {p0, v1, v0, p6}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 542
    return-void
.end method

.method public messagingEnd(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 2
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 276
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_url"

    invoke-virtual {v0, v1, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v1, "/v1/messaging_end"

    invoke-virtual {p0, v1, v0, p2}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 278
    return-void
.end method

.method public messagingEndAll(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 3
    .param p1, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 282
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "all"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 283
    const-string v1, "/v1/messaging_end"

    invoke-virtual {p0, v1, v0, p1}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 284
    return-void
.end method

.method public messagingHide(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 2
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 289
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_url"

    invoke-virtual {v0, v1, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v1, "/v1/messaging_hide"

    invoke-virtual {p0, v1, v0, p2}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 291
    return-void
.end method

.method public messagingHideAll(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 3
    .param p1, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 295
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "all"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 296
    const-string v1, "/v1/messaging_hide"

    invoke-virtual {p0, v1, v0, p1}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 297
    return-void
.end method

.method public messagingInfo(JLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 3
    .param p1, "channelId"    # J
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 227
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 228
    const-string v1, "/v1/messaging_info"

    invoke-virtual {p0, v1, v0, p3}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 229
    return-void
.end method

.method public messagingInfoMessageOnly(JLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 3
    .param p1, "channelId"    # J
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 234
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 235
    const-string v1, "message_only"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 236
    const-string v1, "/v1/messaging_info"

    invoke-virtual {p0, v1, v0, p3}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 237
    return-void
.end method

.method public messagingInvite(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 5
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 261
    .local p2, "guestIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 263
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v4, "channel_url"

    invoke-virtual {v0, v4, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v3, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;-><init>()V

    .line 266
    .local v3, "ids":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    .local v1, "guestId":Ljava/lang/String;
    new-instance v4, Lcom/sendbird/android/shadow/com/google/gson/JsonPrimitive;

    invoke-direct {v4, v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->add(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    goto :goto_0

    .line 270
    .end local v1    # "guestId":Ljava/lang/String;
    :cond_0
    const-string v4, "guest_ids"

    invoke-virtual {v0, v4, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 271
    const-string v4, "/v1/messaging_invite"

    invoke-virtual {p0, v4, v0, p3}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 272
    return-void
.end method

.method public messagingJoin(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 2
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 255
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_url"

    invoke-virtual {v0, v1, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "/v1/messaging_join"

    invoke-virtual {p0, v1, v0, p2}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 257
    return-void
.end method

.method public messagingListCancel()V
    .locals 2

    .prologue
    .line 326
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sendbird/android/APIClient$4;

    invoke-direct {v1, p0}, Lcom/sendbird/android/APIClient$4;-><init>(Lcom/sendbird/android/APIClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 346
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 347
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v0    # "t":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public messagingList_v3(Ljava/lang/String;IIZLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "limit"    # I
    .param p4, "showEmpty"    # Z
    .param p5, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 316
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "token"

    invoke-virtual {v0, v1, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "page"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 318
    const-string v1, "limit"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 319
    const-string v1, "show_empty"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 320
    const-string v1, "/v3/messaging_list"

    const-string v2, "/v3/messaging_list"

    invoke-virtual {p0, v1, v0, p5, v2}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public messagingStart(Ljava/util/Collection;ZLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 6
    .param p2, "isGroup"    # Z
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "guestIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 243
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    new-instance v3, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;-><init>()V

    .line 244
    .local v3, "ids":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 245
    .local v1, "guestId":Ljava/lang/String;
    new-instance v4, Lcom/sendbird/android/shadow/com/google/gson/JsonPrimitive;

    invoke-direct {v4, v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->add(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    goto :goto_0

    .line 248
    .end local v1    # "guestId":Ljava/lang/String;
    :cond_0
    const-string v4, "guest_ids"

    invoke-virtual {v0, v4, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 249
    const-string v4, "is_group"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 250
    const-string v4, "/v1/messaging_start"

    invoke-virtual {p0, v4, v0, p3}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 251
    return-void
.end method

.method public messagingUnreadCount(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 354
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "/v1/messaging_unread_count"

    invoke-virtual {p0, v1, v0, p1}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 355
    return-void
.end method

.method public onlineMemberCount(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 2
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 367
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_url"

    invoke-virtual {v0, v1, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v1, "/v1/online_member_count"

    invoke-virtual {p0, v1, v0, p2}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 369
    return-void
.end method

.method protected post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "form"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 805
    const-string v0, "CALL"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;)V

    .line 806
    return-void
.end method

.method protected post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "form"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 808
    sget-object v2, Lcom/sendbird/android/APIClient;->MIME_JSON:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    new-instance v3, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v3}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p2}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sendbird/android/shadow/okhttp3/RequestBody;->create(Lcom/sendbird/android/shadow/okhttp3/MediaType;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    move-result-object v0

    .line 809
    .local v0, "body":Lcom/sendbird/android/shadow/okhttp3/RequestBody;
    new-instance v2, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    invoke-direct {v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://API.SENDBIRD.COM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->post(Lcom/sendbird/android/shadow/okhttp3/RequestBody;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->build()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v1

    .line 815
    .local v1, "request":Lcom/sendbird/android/shadow/okhttp3/Request;
    invoke-virtual {p0, v1, p1, p3}, Lcom/sendbird/android/APIClient;->run(Lcom/sendbird/android/shadow/okhttp3/Request;Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 816
    return-void
.end method

.method protected processResponse(Lcom/sendbird/android/shadow/okhttp3/Response;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .locals 8
    .param p1, "response"    # Lcom/sendbird/android/shadow/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sendbird/android/SendBirdException;
        }
    .end annotation

    .prologue
    .line 1049
    const/4 v0, 0x0

    .line 1051
    .local v0, "body":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/Response;->body()Lcom/sendbird/android/shadow/okhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/okhttp3/ResponseBody;->string()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1056
    sget-boolean v5, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1057
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1062
    :cond_0
    :try_start_1
    new-instance v5, Lcom/sendbird/android/shadow/com/google/gson/JsonParser;

    invoke-direct {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonParser;-><init>()V

    invoke-virtual {v5, v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 1067
    .local v3, "json":Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->isJsonObject()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {v5, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {v5, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {v5, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsBoolean()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1072
    const-string v4, ""

    .line 1073
    .local v4, "message":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1074
    .local v1, "code":I
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1075
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 1077
    :cond_1
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "code"

    invoke-virtual {v5, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "code"

    invoke-virtual {v5, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1078
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "code"

    invoke-virtual {v5, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v1

    .line 1081
    :cond_2
    new-instance v5, Lcom/sendbird/android/SendBirdException;

    invoke-direct {v5, v4, v1}, Lcom/sendbird/android/SendBirdException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 1052
    .end local v1    # "code":I
    .end local v3    # "json":Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .end local v4    # "message":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1053
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Lcom/sendbird/android/SendBirdException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2328

    invoke-direct {v5, v6, v7}, Lcom/sendbird/android/SendBirdException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 1063
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 1064
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/sendbird/android/SendBirdException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2332

    invoke-direct {v5, v6, v7}, Lcom/sendbird/android/SendBirdException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 1084
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "json":Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    :cond_3
    return-object v3
.end method

.method public registerPushToken(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 2
    .param p1, "gcmToken"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 569
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 571
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 572
    const-string v1, "gcm_reg_token"

    invoke-virtual {v0, v1, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_0
    const-string v1, "/v1/register_push_token"

    invoke-virtual {p0, v1, v0, p2}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 575
    return-void
.end method

.method protected run(Lcom/sendbird/android/shadow/okhttp3/Request;Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 6
    .param p1, "request"    # Lcom/sendbird/android/shadow/okhttp3/Request;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 724
    sget-boolean v1, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 725
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 728
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getHostUrlLastUpdatedAt()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/sendbird/android/SendBird;->getHostUrlLastUpdatedAt()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 729
    :cond_1
    new-instance v1, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    invoke-direct {v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;-><init>()V

    const-string v2, "Accept"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "User-Agent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Jand/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sendbird/android/SendBird;->VERSION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "SendBird"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sendbird/android/SendBird;->getOSVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sendbird/android/SendBird;->getSDKVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sendbird/android/SendBird;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Connection"

    const-string v3, "keep-alive"

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.sendbird.com/routing/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sendbird/android/SendBird;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "CALL"

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->build()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v0

    .line 738
    .local v0, "routeRequest":Lcom/sendbird/android/shadow/okhttp3/Request;
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->getOkHttpClient()Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->newCall(Lcom/sendbird/android/shadow/okhttp3/Request;)Lcom/sendbird/android/shadow/okhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/sendbird/android/APIClient$7;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/sendbird/android/APIClient$7;-><init>(Lcom/sendbird/android/APIClient;Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;Lcom/sendbird/android/shadow/okhttp3/Request;)V

    invoke-interface {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Call;->enqueue(Lcom/sendbird/android/shadow/okhttp3/Callback;)V

    .line 788
    .end local v0    # "routeRequest":Lcom/sendbird/android/shadow/okhttp3/Request;
    :goto_0
    return-void

    .line 786
    :cond_2
    invoke-static {}, Lcom/sendbird/android/SendBird;->getApiHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p1, p3}, Lcom/sendbird/android/APIClient;->runApiRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method protected runApiRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 5
    .param p1, "hostUrl"    # Ljava/lang/String;
    .param p2, "apiUri"    # Ljava/lang/String;
    .param p3, "request"    # Lcom/sendbird/android/shadow/okhttp3/Request;
    .param p4, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 633
    const/4 v0, 0x0

    .line 635
    .local v0, "regenRequest":Lcom/sendbird/android/shadow/okhttp3/Request;
    invoke-virtual {p3}, Lcom/sendbird/android/shadow/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    if-ne v1, v2, :cond_2

    .line 636
    new-instance v1, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    invoke-direct {v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {p3}, Lcom/sendbird/android/shadow/okhttp3/Request;->headers()Lcom/sendbird/android/shadow/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->headers(Lcom/sendbird/android/shadow/okhttp3/Headers;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Accept"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "User-Agent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Jand/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sendbird/android/SendBird;->VERSION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "SendBird"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sendbird/android/SendBird;->getOSVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sendbird/android/SendBird;->getSDKVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sendbird/android/SendBird;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Connection"

    const-string v3, "keep-alive"

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "CALL"

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->build()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v0

    .line 684
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 685
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->getOkHttpClient()Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->newCall(Lcom/sendbird/android/shadow/okhttp3/Request;)Lcom/sendbird/android/shadow/okhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/sendbird/android/APIClient$6;

    invoke-direct {v2, p0, p4}, Lcom/sendbird/android/APIClient$6;-><init>(Lcom/sendbird/android/APIClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    invoke-interface {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Call;->enqueue(Lcom/sendbird/android/shadow/okhttp3/Callback;)V

    .line 721
    :cond_1
    return-void

    .line 647
    :cond_2
    invoke-virtual {p3}, Lcom/sendbird/android/shadow/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    if-ne v1, v2, :cond_3

    .line 648
    new-instance v1, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    invoke-direct {v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {p3}, Lcom/sendbird/android/shadow/okhttp3/Request;->headers()Lcom/sendbird/android/shadow/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->headers(Lcom/sendbird/android/shadow/okhttp3/Headers;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Accept"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "User-Agent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Jand/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sendbird/android/SendBird;->VERSION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "SendBird"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sendbird/android/SendBird;->getOSVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sendbird/android/SendBird;->getSDKVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sendbird/android/SendBird;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Connection"

    const-string v3, "keep-alive"

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "CALL"

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sendbird/android/shadow/okhttp3/Request;->body()Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->post(Lcom/sendbird/android/shadow/okhttp3/RequestBody;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->build()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v0

    goto/16 :goto_0

    .line 659
    :cond_3
    invoke-virtual {p3}, Lcom/sendbird/android/shadow/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PUT"

    if-ne v1, v2, :cond_4

    .line 660
    new-instance v1, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    invoke-direct {v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {p3}, Lcom/sendbird/android/shadow/okhttp3/Request;->headers()Lcom/sendbird/android/shadow/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->headers(Lcom/sendbird/android/shadow/okhttp3/Headers;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Accept"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "User-Agent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Jand/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sendbird/android/SendBird;->VERSION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "SendBird"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sendbird/android/SendBird;->getOSVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sendbird/android/SendBird;->getSDKVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sendbird/android/SendBird;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Connection"

    const-string v3, "keep-alive"

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "CALL"

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sendbird/android/shadow/okhttp3/Request;->body()Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->put(Lcom/sendbird/android/shadow/okhttp3/RequestBody;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->build()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v0

    goto/16 :goto_0

    .line 671
    :cond_4
    invoke-virtual {p3}, Lcom/sendbird/android/shadow/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DELETE"

    if-ne v1, v2, :cond_0

    .line 672
    new-instance v1, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    invoke-direct {v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {p3}, Lcom/sendbird/android/shadow/okhttp3/Request;->headers()Lcom/sendbird/android/shadow/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->headers(Lcom/sendbird/android/shadow/okhttp3/Headers;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Accept"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "User-Agent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Jand/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sendbird/android/SendBird;->VERSION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "SendBird"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sendbird/android/SendBird;->getOSVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sendbird/android/SendBird;->getSDKVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sendbird/android/SendBird;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Connection"

    const-string v3, "keep-alive"

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "CALL"

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sendbird/android/shadow/okhttp3/Request;->body()Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->delete(Lcom/sendbird/android/shadow/okhttp3/RequestBody;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->build()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public unregisterAllDevicesPushToken(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 3
    .param p1, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 594
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "gcm_reg_token"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v1, "/v1/unregister_push_token"

    invoke-virtual {p0, v1, v0, p1}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 597
    return-void
.end method

.method public unregisterCurrentDevicePushToken(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 5
    .param p1, "gcmToken"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 580
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 581
    const-string v1, "gcm_reg_token"

    invoke-virtual {v0, v1, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v1, "/v1/unregister_push_token"

    invoke-virtual {p0, v1, v0, p2}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 589
    :goto_0
    return-void

    .line 584
    :cond_0
    const/4 v1, 0x0

    new-instance v2, Lcom/sendbird/android/SendBirdException;

    const-string v3, "Device token is not set."

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sendbird/android/SendBirdException;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v1, v2}, Lcom/sendbird/android/APIClient$APIClientEventHandler;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V

    goto :goto_0
.end method

.method public uploadFile(Ljava/io/File;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 211
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "/v1/upload_file"

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/sendbird/android/APIClient;->file(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Ljava/io/File;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 212
    return-void
.end method

.method public userBlockList(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 546
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "/v1/user_block_list"

    invoke-virtual {p0, v1, v0, p1}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 547
    return-void
.end method

.method public userList(Ljava/lang/String;IILcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "limit"    # I
    .param p4, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/sendbird/android/APIClient;->defaultForm()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 496
    .local v0, "form":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "token"

    invoke-virtual {v0, v1, p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v1, "page"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 498
    const-string v1, "limit"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 499
    const-string v1, "/v1/user_list"

    const-string v2, "/v1/user_list"

    invoke-virtual {p0, v1, v0, p4, v2}, Lcom/sendbird/android/APIClient;->post(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;)V

    .line 500
    return-void
.end method
