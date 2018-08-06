.class public Lcom/sendbird/android/Command;
.super Ljava/lang/Object;
.source "Command.java"


# static fields
.field private static gson:Lcom/sendbird/android/shadow/com/google/gson/Gson;


# instance fields
.field private command:Ljava/lang/String;

.field private payload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/sendbird/android/Command;->gson:Lcom/sendbird/android/shadow/com/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0, p1}, Lcom/sendbird/android/Command;->decode(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "payload"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .prologue
    .line 31
    sget-object v0, Lcom/sendbird/android/Command;->gson:Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-virtual {v0, p2}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sendbird/android/Command;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sendbird/android/Command;->command:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/sendbird/android/Command;->payload:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static bFile(JLcom/sendbird/android/model/FileInfo;)Lcom/sendbird/android/Command;
    .locals 4
    .param p0, "channelId"    # J
    .param p2, "fileInfo"    # Lcom/sendbird/android/model/FileInfo;

    .prologue
    .line 127
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;-><init>()V

    .line 128
    .local v0, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 129
    const-string v1, "url"

    invoke-virtual {p2}, Lcom/sendbird/android/model/FileInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "name"

    invoke-virtual {p2}, Lcom/sendbird/android/model/FileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "type"

    invoke-virtual {p2}, Lcom/sendbird/android/model/FileInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "size"

    invoke-virtual {p2}, Lcom/sendbird/android/model/FileInfo;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 133
    const-string v1, "custom"

    invoke-virtual {p2}, Lcom/sendbird/android/model/FileInfo;->getCustomField()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v1, Lcom/sendbird/android/Command;

    const-string v2, "FILE"

    invoke-direct {v1, v2, v0}, Lcom/sendbird/android/Command;-><init>(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    return-object v1
.end method

.method public static bJoin(JJ)Lcom/sendbird/android/Command;
    .locals 4
    .param p0, "channelId"    # J
    .param p2, "lastMessageTimestamp"    # J

    .prologue
    .line 69
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;-><init>()V

    .line 70
    .local v0, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 71
    const-string v1, "last_ts"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 75
    new-instance v1, Lcom/sendbird/android/Command;

    const-string v2, "JOIN"

    invoke-direct {v1, v2, v0}, Lcom/sendbird/android/Command;-><init>(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    return-object v1
.end method

.method public static bLoadMore(JJI)Lcom/sendbird/android/Command;
    .locals 4
    .param p0, "channelId"    # J
    .param p2, "messageId"    # J
    .param p4, "limit"    # I

    .prologue
    .line 119
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;-><init>()V

    .line 120
    .local v0, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 121
    const-string v1, "msg_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 122
    const-string v1, "limit"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 123
    new-instance v1, Lcom/sendbird/android/Command;

    const-string v2, "LOAD"

    invoke-direct {v1, v2, v0}, Lcom/sendbird/android/Command;-><init>(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    return-object v1
.end method

.method public static bLogin(Ljava/lang/String;)Lcom/sendbird/android/Command;
    .locals 3
    .param p0, "userKey"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;-><init>()V

    .line 63
    .local v0, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/sendbird/android/Command;

    const-string v2, "LOGI"

    invoke-direct {v1, v2, v0}, Lcom/sendbird/android/Command;-><init>(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    return-object v1
.end method

.method public static bMessage(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/sendbird/android/Command;
    .locals 6
    .param p0, "channelId"    # J
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "tempId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sendbird/android/Command;"
        }
    .end annotation

    .prologue
    .line 79
    .local p5, "mentionedUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;-><init>()V

    .line 80
    .local v2, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v4, "channel_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 81
    const-string v4, "message"

    invoke-virtual {v2, v4, p2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v4, "data"

    invoke-virtual {v2, v4, p3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v4, "tid"

    invoke-virtual {v2, v4, p4}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;-><init>()V

    .line 86
    .local v0, "array":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 87
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 88
    .local v3, "userId":Ljava/lang/String;
    new-instance v4, Lcom/sendbird/android/shadow/com/google/gson/JsonPrimitive;

    invoke-direct {v4, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->add(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    goto :goto_0

    .line 92
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "userId":Ljava/lang/String;
    :cond_0
    const-string v4, "mentioned"

    invoke-virtual {v2, v4, v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 94
    new-instance v4, Lcom/sendbird/android/Command;

    const-string v5, "MESG"

    invoke-direct {v4, v5, v2}, Lcom/sendbird/android/Command;-><init>(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    return-object v4
.end method

.method public static bPing()Lcom/sendbird/android/Command;
    .locals 4

    .prologue
    .line 138
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;-><init>()V

    .line 139
    .local v0, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 140
    new-instance v1, Lcom/sendbird/android/Command;

    const-string v2, "PING"

    invoke-direct {v1, v2, v0}, Lcom/sendbird/android/Command;-><init>(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    return-object v1
.end method

.method public static bRead(JJ)Lcom/sendbird/android/Command;
    .locals 4
    .param p0, "channelId"    # J
    .param p2, "time"    # J

    .prologue
    .line 98
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;-><init>()V

    .line 99
    .local v0, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 100
    const-string v1, "time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 101
    new-instance v1, Lcom/sendbird/android/Command;

    const-string v2, "READ"

    invoke-direct {v1, v2, v0}, Lcom/sendbird/android/Command;-><init>(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    return-object v1
.end method

.method public static bTypeEnd(JJ)Lcom/sendbird/android/Command;
    .locals 4
    .param p0, "channelId"    # J
    .param p2, "time"    # J

    .prologue
    .line 112
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;-><init>()V

    .line 113
    .local v0, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 114
    const-string v1, "time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 115
    new-instance v1, Lcom/sendbird/android/Command;

    const-string v2, "TPEN"

    invoke-direct {v1, v2, v0}, Lcom/sendbird/android/Command;-><init>(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    return-object v1
.end method

.method public static bTypeStart(JJ)Lcom/sendbird/android/Command;
    .locals 4
    .param p0, "channelId"    # J
    .param p2, "time"    # J

    .prologue
    .line 105
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;-><init>()V

    .line 106
    .local v0, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v1, "channel_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 107
    const-string v1, "time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 108
    new-instance v1, Lcom/sendbird/android/Command;

    const-string v2, "TPST"

    invoke-direct {v1, v2, v0}, Lcom/sendbird/android/Command;-><init>(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    return-object v1
.end method

.method private decode(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/Command;->command:Ljava/lang/String;

    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/Command;->payload:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/sendbird/android/Command;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Lcom/sendbird/android/Command;

    invoke-direct {v0, p0}, Lcom/sendbird/android/Command;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sendbird/android/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/Command;->payload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sendbird/android/Command;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonParser;-><init>()V

    invoke-virtual {p0}, Lcom/sendbird/android/Command;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sendbird/android/Command;->payload:Ljava/lang/String;

    return-object v0
.end method
