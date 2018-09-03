.class public Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lcom/sendbird/android/shadow/okhttp3/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lcom/sendbird/android/shadow/okhttp3/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/Response;)V
    .locals 9
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lcom/sendbird/android/shadow/okhttp3/Request;
    .param p4, "cacheResponse"    # Lcom/sendbird/android/shadow/okhttp3/Response;

    .prologue
    const/4 v8, -0x1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput v8, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->ageSeconds:I

    .line 136
    iput-wide p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->nowMillis:J

    .line 137
    iput-object p3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->request:Lcom/sendbird/android/shadow/okhttp3/Request;

    .line 138
    iput-object p4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/sendbird/android/shadow/okhttp3/Response;

    .line 140
    if-eqz p4, :cond_5

    .line 141
    invoke-virtual {p4}, Lcom/sendbird/android/shadow/okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    .line 142
    invoke-virtual {p4}, Lcom/sendbird/android/shadow/okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 143
    invoke-virtual {p4}, Lcom/sendbird/android/shadow/okhttp3/Response;->headers()Lcom/sendbird/android/shadow/okhttp3/Headers;

    move-result-object v1

    .line 144
    .local v1, "headers":Lcom/sendbird/android/shadow/okhttp3/Headers;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 145
    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Date"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    invoke-static {v4}, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 149
    iput-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    .line 144
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_1
    const-string v5, "Expires"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 151
    invoke-static {v4}, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_1

    .line 152
    :cond_2
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    invoke-static {v4}, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 154
    iput-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    .line 155
    :cond_3
    const-string v5, "ETag"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 156
    iput-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_1

    .line 157
    :cond_4
    const-string v5, "Age"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    invoke-static {v4, v8}, Lcom/sendbird/android/shadow/okhttp3/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_1

    .line 162
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "headers":Lcom/sendbird/android/shadow/okhttp3/Headers;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private cacheResponseAge()J
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    .line 282
    iget-object v8, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-object v10, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 283
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 285
    .local v0, "apparentReceivedAge":J
    :cond_0
    iget v8, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->ageSeconds:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v10, v9

    .line 286
    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 288
    .local v2, "receivedAge":J
    :goto_0
    iget-wide v8, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v10, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long v6, v8, v10

    .line 289
    .local v6, "responseDuration":J
    iget-wide v8, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->nowMillis:J

    iget-wide v10, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long v4, v8, v10

    .line 290
    .local v4, "residentDuration":J
    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8

    .end local v2    # "receivedAge":J
    .end local v4    # "residentDuration":J
    .end local v6    # "responseDuration":J
    :cond_1
    move-wide v2, v0

    .line 286
    goto :goto_0
.end method

.method private computeFreshnessLifetime()J
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .line 253
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/sendbird/android/shadow/okhttp3/Response;

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/Response;->cacheControl()Lcom/sendbird/android/shadow/okhttp3/CacheControl;

    move-result-object v2

    .line 254
    .local v2, "responseCaching":Lcom/sendbird/android/shadow/okhttp3/CacheControl;
    invoke-virtual {v2}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    .line 255
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 274
    :cond_0
    :goto_0
    return-wide v6

    .line 256
    :cond_1
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-eqz v3, :cond_4

    .line 257
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 258
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 260
    .local v4, "servedMillis":J
    :goto_1
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 261
    .local v0, "delta":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_3

    .end local v0    # "delta":J
    :goto_2
    move-wide v6, v0

    goto :goto_0

    .line 258
    .end local v4    # "servedMillis":J
    :cond_2
    iget-wide v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_1

    .restart local v0    # "delta":J
    .restart local v4    # "servedMillis":J
    :cond_3
    move-wide v0, v6

    .line 261
    goto :goto_2

    .line 262
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_4
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/sendbird/android/shadow/okhttp3/Response;

    .line 263
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/Response;->request()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/Request;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 269
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 271
    .restart local v4    # "servedMillis":J
    :goto_3
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v4, v8

    .line 272
    .restart local v0    # "delta":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    const-wide/16 v6, 0xa

    div-long v6, v0, v6

    goto :goto_0

    .line 269
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_5
    iget-wide v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_3
.end method

.method private getCandidate()Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;
    .locals 24

    .prologue
    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/sendbird/android/shadow/okhttp3/Response;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 182
    new-instance v19, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->request:Lcom/sendbird/android/shadow/okhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;-><init>(Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/Response;Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$1;)V

    .line 243
    :goto_0
    return-object v19

    .line 186
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->request:Lcom/sendbird/android/shadow/okhttp3/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sendbird/android/shadow/okhttp3/Request;->isHttps()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/sendbird/android/shadow/okhttp3/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sendbird/android/shadow/okhttp3/Response;->handshake()Lcom/sendbird/android/shadow/okhttp3/Handshake;

    move-result-object v19

    if-nez v19, :cond_1

    .line 187
    new-instance v19, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->request:Lcom/sendbird/android/shadow/okhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;-><init>(Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/Response;Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$1;)V

    goto :goto_0

    .line 193
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/sendbird/android/shadow/okhttp3/Response;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->request:Lcom/sendbird/android/shadow/okhttp3/Request;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;->isCacheable(Lcom/sendbird/android/shadow/okhttp3/Response;Lcom/sendbird/android/shadow/okhttp3/Request;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 194
    new-instance v19, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->request:Lcom/sendbird/android/shadow/okhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;-><init>(Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/Response;Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$1;)V

    goto :goto_0

    .line 197
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->request:Lcom/sendbird/android/shadow/okhttp3/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sendbird/android/shadow/okhttp3/Request;->cacheControl()Lcom/sendbird/android/shadow/okhttp3/CacheControl;

    move-result-object v9

    .line 198
    .local v9, "requestCaching":Lcom/sendbird/android/shadow/okhttp3/CacheControl;
    invoke-virtual {v9}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->noCache()Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->request:Lcom/sendbird/android/shadow/okhttp3/Request;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/sendbird/android/shadow/okhttp3/Request;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 199
    :cond_3
    new-instance v19, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->request:Lcom/sendbird/android/shadow/okhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;-><init>(Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/Response;Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$1;)V

    goto :goto_0

    .line 202
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v4

    .line 203
    .local v4, "ageMillis":J
    invoke-direct/range {p0 .. p0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v10

    .line 205
    .local v10, "freshMillis":J
    invoke-virtual {v9}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 206
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 209
    :cond_5
    const-wide/16 v14, 0x0

    .line 210
    .local v14, "minFreshMillis":J
    invoke-virtual {v9}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->minFreshSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 211
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->minFreshSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    .line 214
    :cond_6
    const-wide/16 v12, 0x0

    .line 215
    .local v12, "maxStaleMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/sendbird/android/shadow/okhttp3/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sendbird/android/shadow/okhttp3/Response;->cacheControl()Lcom/sendbird/android/shadow/okhttp3/CacheControl;

    move-result-object v18

    .line 216
    .local v18, "responseCaching":Lcom/sendbird/android/shadow/okhttp3/CacheControl;
    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->mustRevalidate()Z

    move-result v19

    if-nez v19, :cond_7

    invoke-virtual {v9}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->maxStaleSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 217
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->maxStaleSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 220
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->noCache()Z

    move-result v19

    if-nez v19, :cond_a

    add-long v20, v4, v14

    add-long v22, v10, v12

    cmp-long v19, v20, v22

    if-gez v19, :cond_a

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/sendbird/android/shadow/okhttp3/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sendbird/android/shadow/okhttp3/Response;->newBuilder()Lcom/sendbird/android/shadow/okhttp3/Response$Builder;

    move-result-object v6

    .line 222
    .local v6, "builder":Lcom/sendbird/android/shadow/okhttp3/Response$Builder;
    add-long v20, v4, v14

    cmp-long v19, v20, v10

    if-ltz v19, :cond_8

    .line 223
    const-string v19, "Warning"

    const-string v20, "110 HttpURLConnection \"Response is stale\""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/sendbird/android/shadow/okhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Response$Builder;

    .line 225
    :cond_8
    const-wide/32 v16, 0x5265c00

    .line 226
    .local v16, "oneDayMillis":J
    cmp-long v19, v4, v16

    if-lez v19, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 227
    const-string v19, "Warning"

    const-string v20, "113 HttpURLConnection \"Heuristic expiration\""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/sendbird/android/shadow/okhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Response$Builder;

    .line 229
    :cond_9
    new-instance v19, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;

    const/16 v20, 0x0

    invoke-virtual {v6}, Lcom/sendbird/android/shadow/okhttp3/Response$Builder;->build()Lcom/sendbird/android/shadow/okhttp3/Response;

    move-result-object v21

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;-><init>(Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/Response;Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0

    .line 232
    .end local v6    # "builder":Lcom/sendbird/android/shadow/okhttp3/Response$Builder;
    .end local v16    # "oneDayMillis":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->request:Lcom/sendbird/android/shadow/okhttp3/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sendbird/android/shadow/okhttp3/Request;->newBuilder()Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v8

    .line 234
    .local v8, "conditionalRequestBuilder":Lcom/sendbird/android/shadow/okhttp3/Request$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 235
    const-string v19, "If-None-Match"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    .line 242
    :cond_b
    :goto_1
    invoke-virtual {v8}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->build()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v7

    .line 243
    .local v7, "conditionalRequest":Lcom/sendbird/android/shadow/okhttp3/Request;
    invoke-static {v7}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/sendbird/android/shadow/okhttp3/Request;)Z

    move-result v19

    if-eqz v19, :cond_e

    new-instance v19, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/sendbird/android/shadow/okhttp3/Response;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;-><init>(Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/Response;Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0

    .line 236
    .end local v7    # "conditionalRequest":Lcom/sendbird/android/shadow/okhttp3/Request;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 237
    const-string v19, "If-Modified-Since"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    goto :goto_1

    .line 238
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 239
    const-string v19, "If-Modified-Since"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    goto :goto_1

    .line 243
    .restart local v7    # "conditionalRequest":Lcom/sendbird/android/shadow/okhttp3/Request;
    :cond_e
    new-instance v19, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;-><init>(Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/Response;Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0
.end method

.method private static hasConditions(Lcom/sendbird/android/shadow/okhttp3/Request;)Z
    .locals 1
    .param p0, "request"    # Lcom/sendbird/android/shadow/okhttp3/Request;

    .prologue
    .line 307
    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lcom/sendbird/android/shadow/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lcom/sendbird/android/shadow/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/sendbird/android/shadow/okhttp3/Response;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/Response;->cacheControl()Lcom/sendbird/android/shadow/okhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get()Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->getCandidate()Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;

    move-result-object v0

    .line 170
    .local v0, "candidate":Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;
    iget-object v1, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;->networkRequest:Lcom/sendbird/android/shadow/okhttp3/Request;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$Factory;->request:Lcom/sendbird/android/shadow/okhttp3/Request;

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Request;->cacheControl()Lcom/sendbird/android/shadow/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;

    .end local v0    # "candidate":Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;
    invoke-direct {v0, v2, v2, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;-><init>(Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/Response;Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy$1;)V

    .line 175
    :cond_0
    return-object v0
.end method