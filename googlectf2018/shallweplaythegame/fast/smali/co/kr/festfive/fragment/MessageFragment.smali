.class public Lco/kr/festfive/fragment/MessageFragment;
.super Landroid/support/v4/app/Fragment;
.source "MessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lco/kr/festfive/listener/DeleteListener;


# static fields
.field public static final DAY:I = 0x1e

.field public static final HOUR:I = 0x18

.field public static final MIN:I = 0x3c

.field public static final MONTH:I = 0xc

.field private static final REQUEST_SENDBIRD_CHANNEL_LIST_ACTIVITY:I = 0x65

.field private static final REQUEST_SENDBIRD_CHAT_ACTIVITY:I = 0x64

.field private static final REQUEST_SENDBIRD_MESSAGING_ACTIVITY:I = 0xc8

.field private static final REQUEST_SENDBIRD_MESSAGING_CHANNEL_LIST_ACTIVITY:I = 0xc9

.field private static final REQUEST_SENDBIRD_USER_LIST_ACTIVITY:I = 0x12c

.field public static final SEC:I = 0x3c


# instance fields
.field final appId:Ljava/lang/String;

.field channel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sendbird/android/model/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private channelListAdapter:Lco/kr/festfive/adapter/ChannelListAdapter;

.field private channelMetaDataQuery:Lcom/sendbird/android/ChannelMetaDataQuery;

.field private check:Z

.field private dialog:Landroid/app/ProgressDialog;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field index:I

.field private index2:I

.field private joinChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private joinUserChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private joinUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastMessage:Ljava/lang/String;

.field private listView:Landroid/widget/ListView;

.field mChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sendbird/android/model/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

.field mMemberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sendbird/android/model/Member;",
            ">;"
        }
    .end annotation
.end field

.field private mMessagingChannelListQuery:Lcom/sendbird/android/MessagingChannelListQuery;

.field private messageTime:J

.field private newButtonImage:Landroid/widget/TextView;

.field private rootView:Landroid/view/View;

.field private targetName:Ljava/lang/String;

.field userId:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 77
    const-string v0, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->appId:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lco/kr/festfive/fragment/MessageFragment;->generateDeviceUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->userId:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment;->userId:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->userName:Ljava/lang/String;

    .line 84
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->dialog:Landroid/app/ProgressDialog;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->mChannelList:Ljava/util/ArrayList;

    .line 217
    iput v3, p0, Lco/kr/festfive/fragment/MessageFragment;->index2:I

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->joinChannelList:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->joinUserList:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->joinUserChannelList:Ljava/util/ArrayList;

    .line 517
    iput-boolean v3, p0, Lco/kr/festfive/fragment/MessageFragment;->check:Z

    .line 518
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->lastMessage:Ljava/lang/String;

    .line 519
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lco/kr/festfive/fragment/MessageFragment;->messageTime:J

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->mMemberList:Ljava/util/ArrayList;

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->channel:Ljava/util/ArrayList;

    .line 523
    iput v3, p0, Lco/kr/festfive/fragment/MessageFragment;->index:I

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 210
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 212
    .local v0, "channelList":I
    if-eqz v0, :cond_0

    .line 213
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment;->mChannelList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sendbird/android/model/Channel;

    invoke-virtual {v1}, Lcom/sendbird/android/model/Channel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lco/kr/festfive/fragment/MessageFragment;->checkUser(Ljava/lang/String;)Z

    .line 215
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/MessageFragment;)Lco/kr/festfive/adapter/ChannelListAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->channelListAdapter:Lco/kr/festfive/adapter/ChannelListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/MessageFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->lastMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lco/kr/festfive/fragment/MessageFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->joinUserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lco/kr/festfive/fragment/MessageFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageFragment;->lastMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lco/kr/festfive/fragment/MessageFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->joinUserChannelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/MessageFragment;)J
    .locals 2
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageFragment;

    .prologue
    .line 68
    iget-wide v0, p0, Lco/kr/festfive/fragment/MessageFragment;->messageTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lco/kr/festfive/fragment/MessageFragment;J)J
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageFragment;
    .param p1, "x1"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lco/kr/festfive/fragment/MessageFragment;->messageTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lco/kr/festfive/fragment/MessageFragment;)I
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageFragment;

    .prologue
    .line 68
    iget v0, p0, Lco/kr/festfive/fragment/MessageFragment;->index2:I

    return v0
.end method

.method static synthetic access$308(Lco/kr/festfive/fragment/MessageFragment;)I
    .locals 2
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageFragment;

    .prologue
    .line 68
    iget v0, p0, Lco/kr/festfive/fragment/MessageFragment;->index2:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lco/kr/festfive/fragment/MessageFragment;->index2:I

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lco/kr/festfive/fragment/MessageFragment;->getDisplayDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lco/kr/festfive/fragment/MessageFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageFragment;

    .prologue
    .line 68
    invoke-direct {p0}, Lco/kr/festfive/fragment/MessageFragment;->addAdapterList()V

    return-void
.end method

.method static synthetic access$600(Lco/kr/festfive/fragment/MessageFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lco/kr/festfive/fragment/MessageFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lco/kr/festfive/fragment/MessageFragment;->checkUser(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lco/kr/festfive/fragment/MessageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageFragment;

    .prologue
    .line 68
    iget-boolean v0, p0, Lco/kr/festfive/fragment/MessageFragment;->check:Z

    return v0
.end method

.method static synthetic access$802(Lco/kr/festfive/fragment/MessageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lco/kr/festfive/fragment/MessageFragment;->check:Z

    return p1
.end method

.method static synthetic access$900(Lco/kr/festfive/fragment/MessageFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MessageFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->joinChannelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addAdapterList()V
    .locals 5

    .prologue
    .line 225
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment;->joinChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lco/kr/festfive/FestManager;->setJoinChannelList(Ljava/util/ArrayList;)V

    .line 227
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->channel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->channel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lco/kr/festfive/fragment/MessageFragment;->index2:I

    if-le v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->channel:Ljava/util/ArrayList;

    iget v1, p0, Lco/kr/festfive/fragment/MessageFragment;->index2:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/model/Channel;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Channel;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->queryMessageList(Ljava/lang/String;)Lcom/sendbird/android/MessageListQuery;

    move-result-object v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v1, 0x1

    new-instance v4, Lco/kr/festfive/fragment/MessageFragment$3;

    invoke-direct {v4, p0}, Lco/kr/festfive/fragment/MessageFragment$3;-><init>(Lco/kr/festfive/fragment/MessageFragment;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/sendbird/android/MessageListQuery;->prev(JILcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V

    .line 292
    :goto_0
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lco/kr/festfive/fragment/MessageFragment;->index2:I

    .line 290
    invoke-direct {p0}, Lco/kr/festfive/fragment/MessageFragment;->userChat()V

    goto :goto_0
.end method

.method private channelList()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->channelListAdapter:Lco/kr/festfive/adapter/ChannelListAdapter;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->channelListAdapter:Lco/kr/festfive/adapter/ChannelListAdapter;

    invoke-virtual {v0}, Lco/kr/festfive/adapter/ChannelListAdapter;->clear()V

    .line 416
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->queryChannelList()Lcom/sendbird/android/ChannelListQuery;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->mChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    .line 417
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->mChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    new-instance v1, Lco/kr/festfive/fragment/MessageFragment$5;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/MessageFragment$5;-><init>(Lco/kr/festfive/fragment/MessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/ChannelListQuery;->next(Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;)V

    .line 515
    return-void
.end method

.method private checkUser(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 526
    iput-boolean v0, p0, Lco/kr/festfive/fragment/MessageFragment;->check:Z

    .line 528
    invoke-static {p1, v0}, Lcom/sendbird/android/SendBird;->queryMemberList(Ljava/lang/String;Z)Lcom/sendbird/android/MemberListQuery;

    move-result-object v0

    new-instance v1, Lco/kr/festfive/fragment/MessageFragment$6;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/MessageFragment$6;-><init>(Lco/kr/festfive/fragment/MessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/MemberListQuery;->get(Lcom/sendbird/android/MemberListQuery$MemberListQueryResult;)V

    .line 563
    iget-boolean v0, p0, Lco/kr/festfive/fragment/MessageFragment;->check:Z

    return v0
.end method

.method public static formatTimeString(J)Ljava/lang/String;
    .locals 14
    .param p0, "tempDate"    # J

    .prologue
    const-wide/16 v12, 0x3c

    .line 629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 631
    .local v0, "curTime":J
    move-wide v6, p0

    .line 632
    .local v6, "regTime":J
    sub-long v8, v0, v6

    const-wide/16 v10, 0x3e8

    div-long v2, v8, v10

    .line 634
    .local v2, "diffTime":J
    const-string v4, ""

    .line 635
    .local v4, "msg":Ljava/lang/String;
    cmp-long v5, v2, v12

    if-gez v5, :cond_1

    .line 637
    const-string v4, "\ubc29\uae08 \uc804"

    .line 646
    :cond_0
    :goto_0
    return-object v4

    .line 638
    :cond_1
    div-long/2addr v2, v12

    cmp-long v5, v2, v12

    if-gez v5, :cond_2

    .line 640
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\ubd84 \uc804"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 641
    :cond_2
    div-long/2addr v2, v12

    const-wide/16 v8, 0x18

    cmp-long v5, v2, v8

    if-gez v5, :cond_0

    .line 643
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\uc2dc\uac04 \uc804"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static generateDeviceUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 777
    sget-object v7, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 778
    .local v7, "serial":Ljava/lang/String;
    const-string v0, "android_id"

    .line 779
    .local v0, "androidID":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 787
    .local v2, "deviceUUID":Ljava/lang/String;
    :try_start_0
    const-string v8, "SHA-1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 788
    .local v3, "digest":Ljava/security/MessageDigest;
    const-string v8, "UTF-8"

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 794
    .local v5, "result":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 795
    .local v6, "sb":Ljava/lang/StringBuilder;
    array-length v10, v5

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_0

    aget-byte v1, v5, v8

    .line 796
    .local v1, "b":B
    const-string v11, "%02X"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 789
    .end local v1    # "b":B
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "result":[B
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    .line 790
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 791
    const/4 v8, 0x0

    .line 799
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .restart local v3    # "digest":Ljava/security/MessageDigest;
    .restart local v5    # "result":[B
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method private static getDisplayDateTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "milli"    # J

    .prologue
    .line 591
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 593
    .local v1, "date":Ljava/util/Date;
    invoke-static {p1, p2}, Lco/kr/festfive/fragment/MessageFragment;->formatTimeString(J)Ljava/lang/String;

    move-result-object v3

    .line 594
    .local v3, "def":Ljava/lang/String;
    const-string v6, ""

    if-eq v3, v6, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 607
    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 609
    .local v5, "formatDate":Ljava/lang/String;
    const-string v6, "."

    const-string v7, "-"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 611
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 613
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 614
    .local v4, "format":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .line 616
    .local v2, "day1":Ljava/util/Date;
    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .local v0, "asd":Ljava/lang/String;
    move-object v3, v0

    .line 618
    .end local v0    # "asd":Ljava/lang/String;
    .end local v2    # "day1":Ljava/util/Date;
    .end local v3    # "def":Ljava/lang/String;
    .end local v4    # "format":Ljava/text/SimpleDateFormat;
    .end local v5    # "formatDate":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getMessagingListToServer()V
    .locals 7

    .prologue
    .line 688
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, ""

    const-string v6, "loading..."

    invoke-static {v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 689
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 691
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v4, p0, Lco/kr/festfive/fragment/MessageFragment;->channelListAdapter:Lco/kr/festfive/adapter/ChannelListAdapter;

    if-eqz v4, :cond_0

    .line 692
    iget-object v4, p0, Lco/kr/festfive/fragment/MessageFragment;->channelListAdapter:Lco/kr/festfive/adapter/ChannelListAdapter;

    invoke-virtual {v4}, Lco/kr/festfive/adapter/ChannelListAdapter;->clear()V

    .line 695
    :cond_0
    iget-object v4, p0, Lco/kr/festfive/fragment/MessageFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 697
    .local v3, "userId":Ljava/lang/String;
    invoke-interface {v2, v3}, Lco/kr/festfive/service/FestInterface;->getMessagingList(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 699
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v4, Lco/kr/festfive/fragment/MessageFragment$8;

    invoke-direct {v4, p0, v1}, Lco/kr/festfive/fragment/MessageFragment$8;-><init>(Lco/kr/festfive/fragment/MessageFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 774
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 184
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    const-string v2, "loading..."

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->dialog:Landroid/app/ProgressDialog;

    .line 186
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->mChannelList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 189
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->channel:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->channel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    :cond_1
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->mMemberList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->mMemberList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lco/kr/festfive/fragment/MessageFragment;->index2:I

    .line 198
    invoke-direct {p0}, Lco/kr/festfive/fragment/MessageFragment;->channelList()V

    .line 199
    return-void
.end method

.method private initSendBird()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method private userChat()V
    .locals 2

    .prologue
    .line 295
    invoke-static {}, Lcom/sendbird/android/SendBird;->queryMessagingChannelList()Lcom/sendbird/android/MessagingChannelListQuery;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->mMessagingChannelListQuery:Lcom/sendbird/android/MessagingChannelListQuery;

    .line 296
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->mMessagingChannelListQuery:Lcom/sendbird/android/MessagingChannelListQuery;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/sendbird/android/MessagingChannelListQuery;->setLimit(I)V

    .line 298
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->mMessagingChannelListQuery:Lcom/sendbird/android/MessagingChannelListQuery;

    new-instance v1, Lco/kr/festfive/fragment/MessageFragment$4;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/MessageFragment$4;-><init>(Lco/kr/festfive/fragment/MessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/MessagingChannelListQuery;->next(Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;)V

    .line 405
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 408
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 818
    return-void
.end method

.method public detail(Lco/kr/festfive/model/NewFeedListItem;)V
    .locals 0
    .param p1, "newFeedListItem"    # Lco/kr/festfive/model/NewFeedListItem;

    .prologue
    .line 823
    return-void
.end method

.method public detail(Lco/kr/festfive/model/NoticeListItem;)V
    .locals 0
    .param p1, "noticeListItem"    # Lco/kr/festfive/model/NoticeListItem;

    .prologue
    .line 828
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 804
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08015c

    if-ne v1, v2, :cond_0

    .line 810
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/SearchChannelActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 811
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/MessageFragment;->startActivity(Landroid/content/Intent;)V

    .line 813
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 91
    const v0, 0x7f0a005d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->rootView:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 97
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->userId:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->userName:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->rootView:Landroid/view/View;

    const v1, 0x7f08015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->newButtonImage:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->newButtonImage:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v0, Lco/kr/festfive/adapter/ChannelListAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lco/kr/festfive/adapter/ChannelListAdapter;-><init>(Landroid/content/Context;Lco/kr/festfive/listener/DeleteListener;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->channelListAdapter:Lco/kr/festfive/adapter/ChannelListAdapter;

    .line 105
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->rootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->listView:Landroid/widget/ListView;

    .line 106
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lco/kr/festfive/fragment/MessageFragment$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/MessageFragment$1;-><init>(Lco/kr/festfive/fragment/MessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lco/kr/festfive/fragment/MessageFragment$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/MessageFragment$2;-><init>(Lco/kr/festfive/fragment/MessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 171
    invoke-direct {p0}, Lco/kr/festfive/fragment/MessageFragment;->initSendBird()V

    .line 175
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 853
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 857
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 651
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 653
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->mMessagingChannelListQuery:Lcom/sendbird/android/MessagingChannelListQuery;

    if-nez v0, :cond_0

    .line 654
    invoke-static {}, Lcom/sendbird/android/SendBird;->queryMessagingChannelList()Lcom/sendbird/android/MessagingChannelListQuery;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->mMessagingChannelListQuery:Lcom/sendbird/android/MessagingChannelListQuery;

    .line 655
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->mMessagingChannelListQuery:Lcom/sendbird/android/MessagingChannelListQuery;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/sendbird/android/MessagingChannelListQuery;->setLimit(I)V

    .line 658
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->mMessagingChannelListQuery:Lcom/sendbird/android/MessagingChannelListQuery;

    new-instance v1, Lco/kr/festfive/fragment/MessageFragment$7;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/MessageFragment$7;-><init>(Lco/kr/festfive/fragment/MessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/MessagingChannelListQuery;->next(Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;)V

    .line 674
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->joinChannelList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->joinChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 677
    :cond_1
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->joinUserList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 678
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->joinUserList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 680
    :cond_2
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->joinUserChannelList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 681
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment;->joinUserChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 684
    :cond_3
    invoke-direct {p0}, Lco/kr/festfive/fragment/MessageFragment;->getMessagingListToServer()V

    .line 685
    return-void
.end method

.method public userDetail(Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 838
    iget-object v2, p0, Lco/kr/festfive/fragment/MessageFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v3, "user_id"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 839
    .local v1, "myUserId":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 840
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/kr/festfive/fragment/MyDetailUserActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 841
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/MessageFragment;->startActivity(Landroid/content/Intent;)V

    .line 849
    :goto_0
    return-void

    .line 845
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/kr/festfive/activity/UserDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 846
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "targetUserId"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/MessageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
