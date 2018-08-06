.class public Lcom/sendbird/android/model/MessagingChannel;
.super Ljava/lang/Object;
.source "MessagingChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/model/MessagingChannel$Member;
    }
.end annotation


# instance fields
.field private channel:Lcom/sendbird/android/model/Channel;

.field private channelType:I

.field private jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

.field private lastMessage:Lcom/sendbird/android/model/MessageModel;

.field private members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sendbird/android/model/MessagingChannel$Member;",
            ">;"
        }
    .end annotation
.end field

.field private messageCountSinceJoined:I

.field private readStatus:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private unreadMessageCount:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/MessagingChannel;
    .locals 14
    .param p0, "el"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .prologue
    const/4 v8, 0x0

    .line 27
    new-instance v0, Lcom/sendbird/android/model/MessagingChannel;

    invoke-direct {v0}, Lcom/sendbird/android/model/MessagingChannel;-><init>()V

    .line 29
    .local v0, "c":Lcom/sendbird/android/model/MessagingChannel;
    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v6

    .line 30
    .local v6, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    iput-object v6, v0, Lcom/sendbird/android/model/MessagingChannel;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    .line 31
    const-string v9, "channel"

    invoke-virtual {v6, v9}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v9

    invoke-static {v9}, Lcom/sendbird/android/model/Channel;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/Channel;

    move-result-object v9

    iput-object v9, v0, Lcom/sendbird/android/model/MessagingChannel;->channel:Lcom/sendbird/android/model/Channel;

    .line 32
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/sendbird/android/model/MessagingChannel;->members:Ljava/util/ArrayList;

    .line 33
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    iput-object v9, v0, Lcom/sendbird/android/model/MessagingChannel;->readStatus:Ljava/util/Hashtable;

    .line 34
    const-string v9, "unread_message_count"

    invoke-virtual {v6, v9}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "unread_message_count"

    invoke-virtual {v6, v9}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v9

    :goto_0
    invoke-virtual {v0, v9}, Lcom/sendbird/android/model/MessagingChannel;->updateUnreadMessageCount(I)V

    .line 36
    const-string v9, "read_status"

    invoke-virtual {v6, v9}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonArray()Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    move-result-object v7

    .line 37
    .local v7, "readStatus":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    const-string v9, "members"

    invoke-virtual {v6, v9}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonArray()Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    move-result-object v5

    .line 40
    .local v5, "members":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 41
    invoke-virtual {v5, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->get(I)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v9

    invoke-static {v9}, Lcom/sendbird/android/model/MessagingChannel$Member;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/MessagingChannel$Member;

    move-result-object v4

    .line 42
    .local v4, "member":Lcom/sendbird/android/model/MessagingChannel$Member;
    iget-object v9, v0, Lcom/sendbird/android/model/MessagingChannel;->members:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v9, v0, Lcom/sendbird/android/model/MessagingChannel;->readStatus:Ljava/util/Hashtable;

    invoke-virtual {v4}, Lcom/sendbird/android/model/MessagingChannel$Member;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->get(I)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v4    # "member":Lcom/sendbird/android/model/MessagingChannel$Member;
    .end local v5    # "members":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    .end local v7    # "readStatus":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    :cond_0
    move v9, v8

    .line 34
    goto :goto_0

    .line 46
    .restart local v2    # "i":I
    .restart local v5    # "members":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    .restart local v7    # "readStatus":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    :cond_1
    const-string v9, "last_message"

    invoke-virtual {v6, v9}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "last_message"

    invoke-virtual {v6, v9}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 47
    const-string v9, "last_message"

    invoke-virtual {v6, v9}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/sendbird/android/model/MessagingChannel;->updateLastMessage(Ljava/lang/String;)V

    .line 50
    :cond_2
    const-string v9, "message_count_since_joined"

    invoke-virtual {v6, v9}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 51
    const-string v9, "message_count_since_joined"

    invoke-virtual {v6, v9}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v3

    .line 52
    .local v3, "mcsj":I
    iput v3, v0, Lcom/sendbird/android/model/MessagingChannel;->messageCountSinceJoined:I

    .line 58
    .end local v3    # "mcsj":I
    :goto_2
    const-string v9, "channel_type"

    invoke-virtual {v6, v9}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v8, "channel_type"

    invoke-virtual {v6, v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v8

    :cond_3
    iput v8, v0, Lcom/sendbird/android/model/MessagingChannel;->channelType:I

    .line 65
    .end local v0    # "c":Lcom/sendbird/android/model/MessagingChannel;
    .end local v2    # "i":I
    .end local v5    # "members":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    .end local v6    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    .end local v7    # "readStatus":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    :goto_3
    return-object v0

    .line 55
    .restart local v0    # "c":Lcom/sendbird/android/model/MessagingChannel;
    .restart local v2    # "i":I
    .restart local v5    # "members":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    .restart local v6    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    .restart local v7    # "readStatus":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    :cond_4
    const/4 v9, 0x0

    iput v9, v0, Lcom/sendbird/android/model/MessagingChannel;->messageCountSinceJoined:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 60
    .end local v2    # "i":I
    .end local v5    # "members":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    .end local v6    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    .end local v7    # "readStatus":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sendbird/android/model/MessagingChannel;->channel:Lcom/sendbird/android/model/Channel;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Channel;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sendbird/android/model/MessagingChannel;->channel:Lcom/sendbird/android/model/Channel;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Channel;->getCreatedAt()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sendbird/android/model/MessagingChannel;->channel:Lcom/sendbird/android/model/Channel;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Channel;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastMessage()Lcom/sendbird/android/model/MessageModel;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sendbird/android/model/MessagingChannel;->lastMessage:Lcom/sendbird/android/model/MessageModel;

    return-object v0
.end method

.method public getLastMessageTimestamp()J
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/sendbird/android/model/MessagingChannel;->hasLastMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/sendbird/android/model/MessagingChannel;->getLastMessage()Lcom/sendbird/android/model/MessageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v0

    .line 234
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLastReadMillis(Ljava/lang/String;)J
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sendbird/android/model/MessagingChannel;->readStatus:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sendbird/android/model/MessagingChannel;->readStatus:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 105
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getMemberCount()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sendbird/android/model/MessagingChannel;->members:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/model/MessagingChannel$Member;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sendbird/android/model/MessagingChannel;->members:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMessageCountSinceJoined()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/sendbird/android/model/MessagingChannel;->messageCountSinceJoined:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sendbird/android/model/MessagingChannel;->channel:Lcom/sendbird/android/model/Channel;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Channel;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/sendbird/android/model/MessagingChannel;->unreadMessageCount:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sendbird/android/model/MessagingChannel;->channel:Lcom/sendbird/android/model/Channel;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Channel;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlWithoutAppPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 153
    invoke-virtual {p0}, Lcom/sendbird/android/model/MessagingChannel;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "url":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-le v1, v2, :cond_0

    .line 155
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v2

    .line 158
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public hasLastMessage()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sendbird/android/model/MessagingChannel;->lastMessage:Lcom/sendbird/android/model/MessageModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNewMessageSinceJoined()Z
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/sendbird/android/model/MessagingChannel;->messageCountSinceJoined:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupMessagingChannel()Z
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lcom/sendbird/android/model/MessagingChannel;->channelType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMessagingChannel()Z
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/sendbird/android/model/MessagingChannel;->channelType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/sendbird/android/model/MessagingChannel;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sendbird/android/model/MessagingChannel;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    return-object v0
.end method

.method public updateLastMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "messageJson"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sendbird/android/model/MessageModel;->parse(Ljava/lang/String;Z)Lcom/sendbird/android/model/MessageModel;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/model/MessagingChannel;->lastMessage:Lcom/sendbird/android/model/MessageModel;

    .line 70
    return-void
.end method

.method public updateUnreadMessageCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/sendbird/android/model/MessagingChannel;->unreadMessageCount:I

    .line 74
    return-void
.end method
