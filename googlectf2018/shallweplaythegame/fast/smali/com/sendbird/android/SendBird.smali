.class public Lcom/sendbird/android/SendBird;
.super Ljava/lang/Object;
.source "SendBird.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/SendBird$6;,
        Lcom/sendbird/android/SendBird$InternalModel;,
        Lcom/sendbird/android/SendBird$SendBirdClient;,
        Lcom/sendbird/android/SendBird$LoginOption;,
        Lcom/sendbird/android/SendBird$IGAWInitListener;,
        Lcom/sendbird/android/SendBird$SendBirdConnectionState;,
        Lcom/sendbird/android/SendBird$SendBirdDataType;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field private static DEBUG_API_HOST:Ljava/lang/String;

.field private static DEBUG_HOST:Z

.field private static DEBUG_WS_HOST:Ljava/lang/String;

.field public static VERSION:Ljava/lang/String;

.field private static sApplicationContext:Landroid/content/Context;

.field private static sDeviceId:Ljava/lang/String;

.field private static sInstance:Lcom/sendbird/android/SendBird;

.field private static sUnityResponder:Ljava/lang/String;

.field private static unityChannelListQuery:Lcom/sendbird/android/ChannelListQuery;


# instance fields
.field private API_HOST:Ljava/lang/String;

.field private WS_HOST:Ljava/lang/String;

.field private hostUrlLastUpdatedAt:J

.field private mSendBirdClient:Lcom/sendbird/android/SendBird$SendBirdClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    sput-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    .line 62
    sput-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG_HOST:Z

    .line 68
    const-string v0, "2.2.7"

    sput-object v0, Lcom/sendbird/android/SendBird;->VERSION:Ljava/lang/String;

    .line 76
    const-string v0, "ws://192.168.0.5:9000"

    sput-object v0, Lcom/sendbird/android/SendBird;->DEBUG_WS_HOST:Ljava/lang/String;

    .line 77
    const-string v0, "http://192.168.0.5:8000/api"

    sput-object v0, Lcom/sendbird/android/SendBird;->DEBUG_API_HOST:Ljava/lang/String;

    .line 82
    const-string v0, ""

    sput-object v0, Lcom/sendbird/android/SendBird;->sDeviceId:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "wss://ws.jiver.co:9010"

    iput-object v0, p0, Lcom/sendbird/android/SendBird;->WS_HOST:Ljava/lang/String;

    .line 71
    const-string v0, "https://api.jiver.co"

    iput-object v0, p0, Lcom/sendbird/android/SendBird;->API_HOST:Ljava/lang/String;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sendbird/android/SendBird;->hostUrlLastUpdatedAt:J

    .line 685
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-direct {v0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sendbird/android/SendBird;->mSendBirdClient:Lcom/sendbird/android/SendBird$SendBirdClient;

    .line 686
    return-void
.end method

.method public static IGAWInit(Landroid/content/Context;Lcom/sendbird/android/SendBird$IGAWInitListener;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/sendbird/android/SendBird$IGAWInitListener;

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sput-object v7, Lcom/sendbird/android/SendBird;->sApplicationContext:Landroid/content/Context;

    .line 143
    sget-object v7, Lcom/sendbird/android/SendBird;->sApplicationContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sendbird/android/SendBird;->generateDeviceUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/sendbird/android/SendBird;->sDeviceId:Ljava/lang/String;

    .line 147
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 148
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 149
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v7, "igaworks_sendbird_app_id"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 161
    .local v1, "appId":Ljava/lang/String;
    :goto_0
    sget-object v7, Lcom/sendbird/android/SendBird;->sApplicationContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdbrixParameter;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, "userId":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 163
    if-eqz p1, :cond_0

    .line 164
    invoke-interface {p1, v1, v6}, Lcom/sendbird/android/SendBird$IGAWInitListener;->initialized(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v6    # "userId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 150
    :catch_0
    move-exception v3

    .line 152
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 153
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 154
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v7, "igaworks_jiver_app_id"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .restart local v1    # "appId":Ljava/lang/String;
    goto :goto_0

    .line 155
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catch_1
    move-exception v4

    .line 156
    .local v4, "e1":Ljava/lang/Exception;
    const-string v7, "IGAW_SENDBIRD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to load SendBird App ID from AndroidManifest.xml. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 167
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e1":Ljava/lang/Exception;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "appId":Ljava/lang/String;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v6    # "userId":Ljava/lang/String;
    :cond_1
    move-object v5, v1

    .line 168
    .local v5, "finalAppId":Ljava/lang/String;
    new-instance v7, Lcom/sendbird/android/SendBird$1;

    invoke-direct {v7, p1, v5}, Lcom/sendbird/android/SendBird$1;-><init>(Lcom/sendbird/android/SendBird$IGAWInitListener;Ljava/lang/String;)V

    invoke-static {p0, v7}, Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdbrixParameter;->getAdInfo(Landroid/content/Context;Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdInfoListener;)V

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sendbird/android/SendBird;->sDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sendbird/android/SendBird;->sUnityResponder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100()Lcom/sendbird/android/ChannelListQuery;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sendbird/android/SendBird;->unityChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    return-object v0
.end method

.method public static cancelAll()V
    .locals 2

    .prologue
    .line 770
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 771
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SendBird CancelAll"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 773
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$500(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    .line 774
    return-void
.end method

.method public static checkUserExistence(Ljava/lang/String;Lcom/sendbird/android/handler/UserExistenceHandler;)V
    .locals 1
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/sendbird/android/handler/UserExistenceHandler;

    .prologue
    .line 1276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1277
    .local v0, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    invoke-static {v0, p1}, Lcom/sendbird/android/SendBird;->checkUserExistence(Ljava/util/Collection;Lcom/sendbird/android/handler/UserExistenceHandler;)V

    .line 1279
    return-void
.end method

.method public static checkUserExistence(Ljava/util/Collection;Lcom/sendbird/android/handler/UserExistenceHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/sendbird/android/handler/UserExistenceHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/handler/UserExistenceHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1287
    .local p0, "userIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient;->checkUserExistence(Ljava/util/Collection;Lcom/sendbird/android/handler/UserExistenceHandler;)V

    .line 1288
    return-void
.end method

.method public static connect()V
    .locals 4

    .prologue
    .line 721
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 722
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SendBird Connect"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 724
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v2, v3}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$200(Lcom/sendbird/android/SendBird$SendBirdClient;J)V

    .line 725
    return-void
.end method

.method public static connect(J)V
    .locals 2
    .param p0, "timestamp"    # J

    .prologue
    .line 731
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 732
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SendBird Connect"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 734
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$200(Lcom/sendbird/android/SendBird$SendBirdClient;J)V

    .line 735
    return-void
.end method

.method public static connectForUnity(I)V
    .locals 4
    .param p0, "prevMessageLimit"    # I

    .prologue
    .line 248
    if-gtz p0, :cond_0

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird;->connect(J)V

    .line 280
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getChannelUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->queryMessageList(Ljava/lang/String;)Lcom/sendbird/android/MessageListQuery;

    move-result-object v0

    const-wide v2, 0x7fffffffffffffffL

    new-instance v1, Lcom/sendbird/android/SendBird$2;

    invoke-direct {v1}, Lcom/sendbird/android/SendBird$2;-><init>()V

    invoke-virtual {v0, v2, v3, p0, v1}, Lcom/sendbird/android/MessageListQuery;->prev(JILcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V

    goto :goto_0
.end method

.method public static deleteMessage(JLcom/sendbird/android/handler/DeleteMessageHandler;)V
    .locals 2
    .param p0, "messageId"    # J
    .param p2, "handler"    # Lcom/sendbird/android/handler/DeleteMessageHandler;

    .prologue
    .line 1267
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient;->messageDelete(JLcom/sendbird/android/handler/DeleteMessageHandler;)V

    .line 1268
    return-void
.end method

.method public static disconnect()V
    .locals 2

    .prologue
    .line 741
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 742
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SendBird Disconnect"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 744
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$300(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    .line 745
    return-void
.end method

.method public static endAllMessaging()V
    .locals 2

    .prologue
    .line 1127
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1128
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SendBird endAllMessaging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1130
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1800(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    .line 1131
    return-void
.end method

.method public static endMessaging(Ljava/lang/String;)V
    .locals 3
    .param p0, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 1116
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1117
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird endMessaging with \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1119
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1700(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V

    .line 1120
    return-void
.end method

.method private static generateDeviceUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    sget-object v10, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 115
    .local v10, "serial":Ljava/lang/String;
    const-string v0, "android_id"

    .line 116
    .local v0, "androidID":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "deviceUUID":Ljava/lang/String;
    :try_start_0
    const-string v11, "SHA-1"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 122
    .local v4, "digest":Ljava/security/MessageDigest;
    const-string v11, "UTF-8"

    invoke-virtual {v3, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 128
    .local v8, "result":[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v9, "sb":Ljava/lang/StringBuilder;
    move-object v1, v8

    .local v1, "arr$":[B
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-byte v2, v1, v6

    .line 130
    .local v2, "b":B
    const-string v11, "%02X"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "arr$":[B
    .end local v2    # "b":B
    .end local v4    # "digest":Ljava/security/MessageDigest;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "result":[B
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    .line 124
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const/4 v11, 0x0

    .line 133
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v11

    .restart local v1    # "arr$":[B
    .restart local v4    # "digest":Ljava/security/MessageDigest;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "result":[B
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1
.end method

.method public static getApiHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 581
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG_HOST:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 582
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    sget-object v0, Lcom/sendbird/android/SendBird;->DEBUG_API_HOST:Ljava/lang/String;

    .line 585
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    iget-object v0, v0, Lcom/sendbird/android/SendBird;->API_HOST:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->getChannelUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getClient()Lcom/sendbird/android/SendBird$SendBirdClient;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/sendbird/android/SendBird;->mSendBirdClient:Lcom/sendbird/android/SendBird$SendBirdClient;

    return-object v0
.end method

.method public static getConnectionState()Lcom/sendbird/android/SendBird$SendBirdConnectionState;
    .locals 3

    .prologue
    .line 752
    sget-object v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->CLOSED:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    .line 753
    .local v0, "state":Lcom/sendbird/android/SendBird$SendBirdConnectionState;
    sget-object v1, Lcom/sendbird/android/SendBird$6;->$SwitchMap$com$sendbird$android$SendBird$SendBirdConnectionState:[I

    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v2

    invoke-direct {v2}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v2

    invoke-static {v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$400(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 763
    :goto_0
    return-object v0

    .line 755
    :pswitch_0
    sget-object v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->CONNECTING:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    goto :goto_0

    .line 757
    :pswitch_1
    sget-object v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->OPEN:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    goto :goto_0

    .line 759
    :pswitch_2
    sget-object v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->CLOSING:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    goto :goto_0

    .line 761
    :pswitch_3
    sget-object v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->CLOSED:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    goto :goto_0

    .line 753
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getCurrentChannel()Lcom/sendbird/android/model/Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->getCurrentChannel()Lcom/sendbird/android/model/Channel;

    move-result-object v0

    return-object v0
.end method

.method public static getHostUrlLastUpdatedAt()J
    .locals 2

    .prologue
    .line 599
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG_HOST:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 603
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    iget-wide v0, v0, Lcom/sendbird/android/SendBird;->hostUrlLastUpdatedAt:J

    goto :goto_0
.end method

.method private static getInstance()Lcom/sendbird/android/SendBird;
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/sendbird/android/SendBird;->sInstance:Lcom/sendbird/android/SendBird;

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "SendBird instance hasn\'t been initialized. Try SendBird.init()."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SendBird instance hasn\'t been initialized."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    sget-object v0, Lcom/sendbird/android/SendBird;->sInstance:Lcom/sendbird/android/SendBird;

    return-object v0
.end method

.method public static getOSVersion()I
    .locals 1

    .prologue
    .line 665
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    sget-object v0, Lcom/sendbird/android/SendBird;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWsHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 590
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG_HOST:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 591
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    sget-object v0, Lcom/sendbird/android/SendBird;->DEBUG_WS_HOST:Ljava/lang/String;

    .line 594
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    iget-object v0, v0, Lcom/sendbird/android/SendBird;->WS_HOST:Ljava/lang/String;

    goto :goto_0
.end method

.method public static hideAllMessaging()V
    .locals 2

    .prologue
    .line 1151
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1152
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SendBird hideAllMessaging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1154
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2000(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    .line 1155
    return-void
.end method

.method public static hideMessaging(Ljava/lang/String;)V
    .locals 3
    .param p0, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 1139
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1140
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird hideMessaging with \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1142
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1900(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V

    .line 1143
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 219
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird Initializing... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sendbird/android/SendBird;->VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sendbird/android/SendBird;->sApplicationContext:Landroid/content/Context;

    .line 224
    sget-object v0, Lcom/sendbird/android/SendBird;->sApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->generateDeviceUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sendbird/android/SendBird;->sDeviceId:Ljava/lang/String;

    .line 227
    sget-object v0, Lcom/sendbird/android/SendBird;->sInstance:Lcom/sendbird/android/SendBird;

    if-nez v0, :cond_1

    .line 228
    new-instance v0, Lcom/sendbird/android/SendBird;

    invoke-direct {v0, p1}, Lcom/sendbird/android/SendBird;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sendbird/android/SendBird;->sInstance:Lcom/sendbird/android/SendBird;

    .line 230
    :cond_1
    return-void
.end method

.method public static init(Ljava/lang/String;)V
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird Initializing... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sendbird/android/SendBird;->VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    :cond_0
    sget-object v0, Lcom/sendbird/android/SendBird;->sInstance:Lcom/sendbird/android/SendBird;

    if-nez v0, :cond_1

    .line 209
    new-instance v0, Lcom/sendbird/android/SendBird;

    invoke-direct {v0, p0}, Lcom/sendbird/android/SendBird;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sendbird/android/SendBird;->sInstance:Lcom/sendbird/android/SendBird;

    .line 211
    :cond_1
    return-void
.end method

.method public static inviteMessaging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "channelUrl"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 1090
    sget-boolean v1, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1091
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendBird inviteMessaging with \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1093
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1094
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v1

    invoke-direct {v1}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1600(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1096
    return-void
.end method

.method public static inviteMessaging(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3
    .param p0, "channelUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1104
    .local p1, "userIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1105
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird inviteMessaging with \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1107
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1600(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1108
    return-void
.end method

.method public static isUserBlocked(JJ)Z
    .locals 2
    .param p0, "userId"    # J
    .param p2, "timestamp"    # J

    .prologue
    .line 239
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sendbird/android/SendBird$SendBirdClient;->isUserBlocked(JJ)Z

    move-result v0

    return v0
.end method

.method public static join(Ljava/lang/String;)V
    .locals 3
    .param p0, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 612
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 613
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird Join on \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 615
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->setChannelUrl(Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method public static join(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 619
    .local p0, "channelUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 620
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird Join on \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 622
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->setChannelUrls(Ljava/util/List;)V

    .line 623
    return-void
.end method

.method public static joinMessaging(Ljava/lang/String;)V
    .locals 3
    .param p0, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 1078
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1079
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird joinMessaging with \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1081
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1500(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V

    .line 1082
    return-void
.end method

.method public static leave(Ljava/lang/String;)V
    .locals 2
    .param p0, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 630
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 631
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SendBird Leave"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 633
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->leave(Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method public static login(Lcom/sendbird/android/SendBird$LoginOption;)V
    .locals 3
    .param p0, "option"    # Lcom/sendbird/android/SendBird$LoginOption;

    .prologue
    .line 499
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 500
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird Login \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sendbird/android/SendBird$LoginOption;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sendbird/android/SendBird$LoginOption;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 502
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    sget-object v1, Lcom/sendbird/android/SendBird;->sDeviceId:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->setLoginInfo(Lcom/sendbird/android/SendBird$LoginOption;Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public static login(Ljava/lang/String;)V
    .locals 3
    .param p0, "userId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 436
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/sendbird/android/SendBird;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public static login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 458
    const-string v0, ""

    const-string v1, ""

    invoke-static {p0, p1, v0, v1}, Lcom/sendbird/android/SendBird;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public static login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 470
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/sendbird/android/SendBird;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public static login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 483
    sget-boolean v1, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 484
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendBird Login \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 486
    :cond_0
    new-instance v0, Lcom/sendbird/android/SendBird$LoginOption;

    invoke-direct {v0, p0}, Lcom/sendbird/android/SendBird$LoginOption;-><init>(Ljava/lang/String;)V

    .line 487
    .local v0, "option":Lcom/sendbird/android/SendBird$LoginOption;
    invoke-virtual {v0, p1}, Lcom/sendbird/android/SendBird$LoginOption;->setUserName(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;

    .line 488
    invoke-virtual {v0, p2}, Lcom/sendbird/android/SendBird$LoginOption;->setImageUrl(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;

    .line 489
    invoke-virtual {v0, p3}, Lcom/sendbird/android/SendBird$LoginOption;->setAccessToken(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;

    .line 491
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v1

    invoke-direct {v1}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v1

    sget-object v2, Lcom/sendbird/android/SendBird;->sDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->setLoginInfo(Lcom/sendbird/android/SendBird$LoginOption;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public static loginWithAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "accessToken"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 447
    const-string v0, ""

    const-string v1, ""

    invoke-static {p0, v0, v1, p1}, Lcom/sendbird/android/SendBird;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public static markAllAsRead()V
    .locals 2

    .prologue
    .line 962
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 963
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SendBird MarkAsReadAll"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 966
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$800(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    .line 967
    return-void
.end method

.method public static markAsRead()V
    .locals 2

    .prologue
    .line 951
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 952
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SendBird MarkAsRead"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 955
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$700(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    .line 956
    return-void
.end method

.method public static markAsRead(Ljava/lang/String;)V
    .locals 3
    .param p0, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 974
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 975
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird MarkAsRead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 978
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$900(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V

    .line 979
    return-void
.end method

.method public static nextChannelListForUnity()V
    .locals 5

    .prologue
    .line 1343
    sget-object v2, Lcom/sendbird/android/SendBird;->unityChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sendbird/android/SendBird;->unityChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    invoke-virtual {v2}, Lcom/sendbird/android/ChannelListQuery;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1344
    :cond_0
    new-instance v1, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;-><init>()V

    .line 1345
    .local v1, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;-><init>()V

    .line 1347
    .local v0, "channels":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    const-string v2, "has_next"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1348
    const-string v2, "channels"

    invoke-virtual {v1, v2, v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 1350
    sget-object v2, Lcom/sendbird/android/SendBird;->sUnityResponder:Ljava/lang/String;

    const-string v3, "_OnQueryChannelList"

    new-instance v4, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v4}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v1}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    .end local v0    # "channels":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    .end local v1    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :goto_0
    return-void

    .line 1355
    :cond_1
    sget-object v2, Lcom/sendbird/android/SendBird;->unityChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    new-instance v3, Lcom/sendbird/android/SendBird$5;

    invoke-direct {v3}, Lcom/sendbird/android/SendBird$5;-><init>()V

    invoke-virtual {v2, v3}, Lcom/sendbird/android/ChannelListQuery;->next(Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;)V

    goto :goto_0
.end method

.method public static queryChannelList()Lcom/sendbird/android/ChannelListQuery;
    .locals 2

    .prologue
    .line 1180
    new-instance v0, Lcom/sendbird/android/ChannelListQuery;

    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v1

    invoke-direct {v1}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sendbird/android/ChannelListQuery;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    .line 1181
    .local v0, "query":Lcom/sendbird/android/ChannelListQuery;
    return-object v0
.end method

.method public static queryChannelList(Ljava/lang/String;)Lcom/sendbird/android/ChannelListQuery;
    .locals 3
    .param p0, "keyword"    # Ljava/lang/String;

    .prologue
    .line 1190
    new-instance v1, Lcom/sendbird/android/ChannelListQuery;

    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v2

    invoke-direct {v2}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sendbird/android/ChannelListQuery;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    invoke-virtual {v1, p0}, Lcom/sendbird/android/ChannelListQuery;->setQuery(Ljava/lang/String;)Lcom/sendbird/android/ChannelListQuery;

    move-result-object v0

    .line 1191
    .local v0, "query":Lcom/sendbird/android/ChannelListQuery;
    return-object v0
.end method

.method public static queryChannelListForUnity(I)V
    .locals 2
    .param p0, "limit"    # I

    .prologue
    .line 1308
    new-instance v0, Lcom/sendbird/android/ChannelListQuery;

    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v1

    invoke-direct {v1}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sendbird/android/ChannelListQuery;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    sput-object v0, Lcom/sendbird/android/SendBird;->unityChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    .line 1309
    sget-object v0, Lcom/sendbird/android/SendBird;->unityChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    invoke-virtual {v0, p0}, Lcom/sendbird/android/ChannelListQuery;->setLimit(I)V

    .line 1310
    sget-object v0, Lcom/sendbird/android/SendBird;->unityChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    new-instance v1, Lcom/sendbird/android/SendBird$4;

    invoke-direct {v1}, Lcom/sendbird/android/SendBird$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/ChannelListQuery;->next(Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;)V

    .line 1336
    return-void
.end method

.method public static queryChannelMetaCounter(Ljava/lang/String;)Lcom/sendbird/android/ChannelMetaCounterQuery;
    .locals 2
    .param p0, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 1249
    new-instance v0, Lcom/sendbird/android/ChannelMetaCounterQuery;

    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v1

    invoke-direct {v1}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sendbird/android/ChannelMetaCounterQuery;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V

    .line 1250
    .local v0, "query":Lcom/sendbird/android/ChannelMetaCounterQuery;
    return-object v0
.end method

.method public static queryChannelMetaData(Ljava/lang/String;)Lcom/sendbird/android/ChannelMetaDataQuery;
    .locals 2
    .param p0, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 1240
    new-instance v0, Lcom/sendbird/android/ChannelMetaDataQuery;

    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v1

    invoke-direct {v1}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sendbird/android/ChannelMetaDataQuery;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V

    .line 1241
    .local v0, "query":Lcom/sendbird/android/ChannelMetaDataQuery;
    return-object v0
.end method

.method public static queryMemberCount(Ljava/lang/String;)Lcom/sendbird/android/MemberCountQuery;
    .locals 2
    .param p0, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 1222
    new-instance v0, Lcom/sendbird/android/MemberCountQuery;

    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v1

    invoke-direct {v1}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sendbird/android/MemberCountQuery;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V

    .line 1223
    .local v0, "query":Lcom/sendbird/android/MemberCountQuery;
    return-object v0
.end method

.method public static queryMemberList(Ljava/lang/String;Z)Lcom/sendbird/android/MemberListQuery;
    .locals 2
    .param p0, "channelUrl"    # Ljava/lang/String;
    .param p1, "onlineOnly"    # Z

    .prologue
    .line 1199
    new-instance v0, Lcom/sendbird/android/MemberListQuery;

    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v1

    invoke-direct {v1}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sendbird/android/MemberListQuery;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V

    .line 1200
    .local v0, "query":Lcom/sendbird/android/MemberListQuery;
    return-object v0
.end method

.method public static queryMessageList(Ljava/lang/String;)Lcom/sendbird/android/MessageListQuery;
    .locals 2
    .param p0, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 1258
    new-instance v0, Lcom/sendbird/android/MessageListQuery;

    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v1

    invoke-direct {v1}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sendbird/android/MessageListQuery;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V

    return-object v0
.end method

.method public static queryMessagingChannelList()Lcom/sendbird/android/MessagingChannelListQuery;
    .locals 2

    .prologue
    .line 1163
    new-instance v0, Lcom/sendbird/android/MessagingChannelListQuery;

    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v1

    invoke-direct {v1}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sendbird/android/MessagingChannelListQuery;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    .line 1164
    .local v0, "query":Lcom/sendbird/android/MessagingChannelListQuery;
    return-object v0
.end method

.method public static queryMessagingUnreadCount()Lcom/sendbird/android/MessagingUnreadCountQuery;
    .locals 2

    .prologue
    .line 1172
    new-instance v0, Lcom/sendbird/android/MessagingUnreadCountQuery;

    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v1

    invoke-direct {v1}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sendbird/android/MessagingUnreadCountQuery;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    return-object v0
.end method

.method public static queryOnlineMemberCount(Ljava/lang/String;)Lcom/sendbird/android/OnlineMemberCountQuery;
    .locals 2
    .param p0, "channelUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1211
    new-instance v0, Lcom/sendbird/android/OnlineMemberCountQuery;

    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v1

    invoke-direct {v1}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sendbird/android/OnlineMemberCountQuery;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V

    .line 1212
    .local v0, "query":Lcom/sendbird/android/OnlineMemberCountQuery;
    return-object v0
.end method

.method public static queryUserList()Lcom/sendbird/android/UserListQuery;
    .locals 2

    .prologue
    .line 1231
    new-instance v0, Lcom/sendbird/android/UserListQuery;

    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v1

    invoke-direct {v1}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sendbird/android/UserListQuery;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    .line 1232
    .local v0, "query":Lcom/sendbird/android/UserListQuery;
    return-object v0
.end method

.method public static registerNotificationHandler(Lcom/sendbird/android/SendBirdNotificationHandler;)V
    .locals 2
    .param p0, "handler"    # Lcom/sendbird/android/SendBirdNotificationHandler;

    .prologue
    .line 781
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 782
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SendBird Register notification handler."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 785
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->registerNotificationHandler(Lcom/sendbird/android/SendBirdNotificationHandler;)V

    .line 786
    return-void
.end method

.method public static registerPushToken(Lcom/sendbird/android/handler/RegisterPushTokenHandler;)V
    .locals 1
    .param p0, "handler"    # Lcom/sendbird/android/handler/RegisterPushTokenHandler;

    .prologue
    .line 1291
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->registerPushToken(Lcom/sendbird/android/handler/RegisterPushTokenHandler;)V

    .line 1292
    return-void
.end method

.method public static registerSystemEventHandler(Lcom/sendbird/android/SendBirdSystemEventHandler;)V
    .locals 2
    .param p0, "handler"    # Lcom/sendbird/android/SendBirdSystemEventHandler;

    .prologue
    .line 804
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 805
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SendBird Register system event handler."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 808
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->registerSystemEventHandler(Lcom/sendbird/android/SendBirdSystemEventHandler;)V

    .line 809
    return-void
.end method

.method public static send(Ljava/lang/String;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 827
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 828
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird Send \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 830
    :cond_0
    const/4 v5, 0x0

    .line 832
    .local v5, "toChannel":Lcom/sendbird/android/model/Channel;
    :try_start_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getCurrentChannel()Lcom/sendbird/android/model/Channel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 836
    :goto_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$600(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sendbird/android/model/Channel;)V

    .line 837
    return-void

    .line 833
    :catch_0
    move-exception v6

    .line 834
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "tempId"    # Ljava/lang/String;

    .prologue
    .line 845
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 846
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird Send \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 848
    :cond_0
    const/4 v5, 0x0

    .line 850
    .local v5, "toChannel":Lcom/sendbird/android/model/Channel;
    :try_start_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getCurrentChannel()Lcom/sendbird/android/model/Channel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 854
    :goto_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    const-string v2, ""

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$600(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sendbird/android/model/Channel;)V

    .line 855
    return-void

    .line 851
    :catch_0
    move-exception v6

    .line 852
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "tempId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 920
    .local p3, "mentionedUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 921
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird Send \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 923
    :cond_0
    const/4 v5, 0x0

    .line 925
    .local v5, "toChannel":Lcom/sendbird/android/model/Channel;
    :try_start_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getCurrentChannel()Lcom/sendbird/android/model/Channel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 929
    :goto_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    const-string v2, ""

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$600(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sendbird/android/model/Channel;)V

    .line 930
    return-void

    .line 926
    :catch_0
    move-exception v6

    .line 927
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sendbird/android/model/Channel;)V
    .locals 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "tempId"    # Ljava/lang/String;
    .param p4, "toChannel"    # Lcom/sendbird/android/model/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/model/Channel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 941
    .local p3, "mentionedUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 942
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird Send \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 944
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    const-string v2, ""

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$600(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sendbird/android/model/Channel;)V

    .line 945
    return-void
.end method

.method public static send(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 863
    .local p1, "mentionedUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 864
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird Send \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 866
    :cond_0
    const/4 v5, 0x0

    .line 868
    .local v5, "toChannel":Lcom/sendbird/android/model/Channel;
    :try_start_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getCurrentChannel()Lcom/sendbird/android/model/Channel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 872
    :goto_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    const-string v2, ""

    const-string v3, ""

    move-object v1, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$600(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sendbird/android/model/Channel;)V

    .line 873
    return-void

    .line 869
    :catch_0
    move-exception v6

    .line 870
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendFile(Lcom/sendbird/android/model/FileInfo;)V
    .locals 3
    .param p0, "fileInfo"    # Lcom/sendbird/android/model/FileInfo;

    .prologue
    .line 1006
    const/4 v1, 0x0

    .line 1008
    .local v1, "toChannel":Lcom/sendbird/android/model/Channel;
    :try_start_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getCurrentChannel()Lcom/sendbird/android/model/Channel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1012
    :goto_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v2

    invoke-direct {v2}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v2

    invoke-static {v2, p0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1200(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/FileInfo;Lcom/sendbird/android/model/Channel;)V

    .line 1013
    return-void

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendFile(Lcom/sendbird/android/model/FileInfo;Lcom/sendbird/android/model/Channel;)V
    .locals 1
    .param p0, "fileInfo"    # Lcom/sendbird/android/model/FileInfo;
    .param p1, "toChannel"    # Lcom/sendbird/android/model/Channel;

    .prologue
    .line 1016
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1200(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/FileInfo;Lcom/sendbird/android/model/Channel;)V

    .line 1017
    return-void
.end method

.method public static sendWithData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 881
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 882
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird Send with data \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 884
    :cond_0
    const/4 v5, 0x0

    .line 886
    .local v5, "toChannel":Lcom/sendbird/android/model/Channel;
    :try_start_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getCurrentChannel()Lcom/sendbird/android/model/Channel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 890
    :goto_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    const-string v3, ""

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$600(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sendbird/android/model/Channel;)V

    .line 891
    return-void

    .line 887
    :catch_0
    move-exception v6

    .line 888
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "tempId"    # Ljava/lang/String;

    .prologue
    .line 900
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 901
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird Send with data \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 903
    :cond_0
    const/4 v5, 0x0

    .line 905
    .local v5, "toChannel":Lcom/sendbird/android/model/Channel;
    :try_start_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getCurrentChannel()Lcom/sendbird/android/model/Channel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 909
    :goto_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$600(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sendbird/android/model/Channel;)V

    .line 910
    return-void

    .line 906
    :catch_0
    move-exception v6

    .line 907
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setEventHandler(Lcom/sendbird/android/SendBirdEventHandler;)V
    .locals 1
    .param p0, "handler"    # Lcom/sendbird/android/SendBirdEventHandler;

    .prologue
    .line 697
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->setEventHandler(Lcom/sendbird/android/SendBirdEventHandler;)V

    .line 698
    return-void
.end method

.method public static setMultiChannelEventHandler(Lcom/sendbird/android/SendBirdMultiChannelEventHandler;)V
    .locals 1
    .param p0, "handler"    # Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    .prologue
    .line 705
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->setMultiChannelEventHandler(Lcom/sendbird/android/SendBirdMultiChannelEventHandler;)V

    .line 706
    return-void
.end method

.method public static setUnityResponder(Ljava/lang/String;)V
    .locals 3
    .param p0, "responder"    # Ljava/lang/String;

    .prologue
    .line 287
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird Unity mode ON with responder \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 290
    :cond_0
    sput-object p0, Lcom/sendbird/android/SendBird;->sUnityResponder:Ljava/lang/String;

    .line 291
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    new-instance v1, Lcom/sendbird/android/SendBird$3;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->setEventHandler(Lcom/sendbird/android/SendBirdEventHandler;)V

    .line 425
    return-void
.end method

.method public static startMessaging(Ljava/lang/String;)V
    .locals 4
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 1036
    sget-boolean v1, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1037
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendBird startMessaging with \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1039
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v1

    invoke-direct {v1}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1400(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/util/Collection;Z)V

    .line 1042
    return-void
.end method

.method public static startMessaging(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "userIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 1062
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1063
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBird startMessaging with \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1065
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1066
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1400(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/util/Collection;Z)V

    .line 1071
    :goto_0
    return-void

    .line 1068
    :cond_1
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-static {v0, p0, v3}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1400(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/util/Collection;Z)V

    goto :goto_0
.end method

.method public static startMessagingAsGroup(Ljava/lang/String;)V
    .locals 4
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 1049
    sget-boolean v1, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1050
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendBird startMessaging with \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1052
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v1

    invoke-direct {v1}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1400(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/util/Collection;Z)V

    .line 1055
    return-void
.end method

.method public static typeEnd()V
    .locals 2

    .prologue
    .line 995
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 996
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SendBird TypeEnd"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 998
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1100(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    .line 999
    return-void
.end method

.method public static typeStart()V
    .locals 2

    .prologue
    .line 985
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 986
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SendBird TypeStart"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 988
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1000(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    .line 989
    return-void
.end method

.method public static unregisterAllDevicesPushToken(Lcom/sendbird/android/handler/UnregisterPushTokenHandler;)V
    .locals 1
    .param p0, "handler"    # Lcom/sendbird/android/handler/UnregisterPushTokenHandler;

    .prologue
    .line 1299
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->unregisterAllDevicesPushToken(Lcom/sendbird/android/handler/UnregisterPushTokenHandler;)V

    .line 1300
    return-void
.end method

.method public static unregisterCurrentDevicePushToken(Lcom/sendbird/android/handler/UnregisterPushTokenHandler;)V
    .locals 1
    .param p0, "handler"    # Lcom/sendbird/android/handler/UnregisterPushTokenHandler;

    .prologue
    .line 1295
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->unregisterCurrentDevicePushToken(Lcom/sendbird/android/handler/UnregisterPushTokenHandler;)V

    .line 1296
    return-void
.end method

.method public static unregisterNotificationHandler()V
    .locals 2

    .prologue
    .line 792
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 793
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SendBird Unregister notification handler."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 796
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->unregisterNotificationHandler()V

    .line 797
    return-void
.end method

.method public static unregisterSystemEventHandler()V
    .locals 2

    .prologue
    .line 815
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 816
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SendBird Unregister system event handler."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 819
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->unregisterSystemEventHandler()V

    .line 820
    return-void
.end method

.method public static updateHostUrls(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p0, "apiHost"    # Ljava/lang/String;
    .param p1, "wsHost"    # Ljava/lang/String;
    .param p2, "lastUpdatedAt"    # J

    .prologue
    .line 572
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 573
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 575
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    iput-object p0, v0, Lcom/sendbird/android/SendBird;->API_HOST:Ljava/lang/String;

    .line 576
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    iput-object p1, v0, Lcom/sendbird/android/SendBird;->WS_HOST:Ljava/lang/String;

    .line 577
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    iput-wide p2, v0, Lcom/sendbird/android/SendBird;->hostUrlLastUpdatedAt:J

    .line 578
    return-void
.end method

.method public static uploadFile(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Lcom/sendbird/android/SendBirdFileUploadEventHandler;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "customField"    # Ljava/lang/String;
    .param p4, "handler"    # Lcom/sendbird/android/SendBirdFileUploadEventHandler;

    .prologue
    .line 1028
    invoke-static {}, Lcom/sendbird/android/SendBird;->getInstance()Lcom/sendbird/android/SendBird;

    move-result-object v0

    invoke-direct {v0}, Lcom/sendbird/android/SendBird;->getClient()Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$1300(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Lcom/sendbird/android/SendBirdFileUploadEventHandler;)V

    .line 1029
    return-void
.end method
