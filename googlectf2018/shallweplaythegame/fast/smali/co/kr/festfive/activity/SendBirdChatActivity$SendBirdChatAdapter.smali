.class public Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;
.super Landroid/widget/BaseAdapter;
.source "SendBirdChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/activity/SendBirdChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendBirdChatAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TYPE_BROADCAST_MESSAGE:I = 0x4

.field private static final TYPE_FILELINK:I = 0x3

.field private static final TYPE_MESSAGE:I = 0x1

.field private static final TYPE_SYSTEM_MESSAGE:I = 0x2

.field private static final TYPE_UNSUPPORTED:I


# instance fields
.field private index:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxMessageTimestamp:J

.field private mMinMessageTimestamp:J

.field private mReadStatus:Ljava/util/Hashtable;
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

.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdChatActivity;


# direct methods
.method public constructor <init>(Lco/kr/festfive/activity/SendBirdChatActivity;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdChatActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 860
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 853
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mMaxMessageTimestamp:J

    .line 854
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mMinMessageTimestamp:J

    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    .line 861
    iput-object p2, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mContext:Landroid/content/Context;

    .line 862
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 863
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    .line 864
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mReadStatus:Ljava/util/Hashtable;

    .line 865
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    .line 866
    return-void
.end method

.method static synthetic access$1100(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    .prologue
    .line 843
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateMessageTimestamp(Lcom/sendbird/android/model/MessageModel;)V
    .locals 4
    .param p1, "model"    # Lcom/sendbird/android/model/MessageModel;

    .prologue
    .line 869
    iget-wide v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mMaxMessageTimestamp:J

    invoke-virtual {p1}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mMaxMessageTimestamp:J

    .line 870
    iget-wide v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mMinMessageTimestamp:J

    invoke-virtual {p1}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mMinMessageTimestamp:J

    .line 871
    return-void

    .line 869
    :cond_0
    iget-wide v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mMaxMessageTimestamp:J

    goto :goto_0

    .line 870
    :cond_1
    iget-wide v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mMinMessageTimestamp:J

    goto :goto_1
.end method


# virtual methods
.method public addMessageModel(Lcom/sendbird/android/model/MessageModel;)V
    .locals 14
    .param p1, "model"    # Lcom/sendbird/android/model/MessageModel;

    .prologue
    .line 919
    iget-object v9, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 954
    iget-object v9, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_1

    .line 959
    iget-object v9, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sendbird/android/model/MessageModel;

    invoke-virtual {v9}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v10

    .line 960
    .local v10, "pre":J
    invoke-virtual {p1}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v4

    .line 962
    .local v4, "curr":J
    iget-object v9, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v10, v11}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$900(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, "a":Ljava/lang/String;
    iget-object v9, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v4, v5}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$900(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 977
    .local v1, "b":Ljava/lang/String;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 978
    .local v8, "format":Ljava/text/SimpleDateFormat;
    const/4 v3, 0x0

    .line 979
    .local v3, "day1":Ljava/util/Date;
    const/4 v6, 0x0

    .line 982
    .local v6, "day2":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 983
    invoke-virtual {v8, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 988
    :goto_0
    invoke-virtual {v3, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    .line 990
    .local v2, "compare":I
    if-lez v2, :cond_0

    .line 992
    iget-object v9, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    iget-object v12, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "b":Ljava/lang/String;
    .end local v2    # "compare":I
    .end local v3    # "day1":Ljava/util/Date;
    .end local v4    # "curr":J
    .end local v6    # "day2":Ljava/util/Date;
    .end local v8    # "format":Ljava/text/SimpleDateFormat;
    .end local v10    # "pre":J
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/sendbird/android/model/MessageModel;->isPast()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1034
    iget-object v9, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v9, v12, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1038
    :goto_2
    invoke-direct {p0, p1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->updateMessageTimestamp(Lcom/sendbird/android/model/MessageModel;)V

    .line 1039
    return-void

    .line 984
    .restart local v0    # "a":Ljava/lang/String;
    .restart local v1    # "b":Ljava/lang/String;
    .restart local v3    # "day1":Ljava/util/Date;
    .restart local v4    # "curr":J
    .restart local v6    # "day2":Ljava/util/Date;
    .restart local v8    # "format":Ljava/text/SimpleDateFormat;
    .restart local v10    # "pre":J
    :catch_0
    move-exception v7

    .line 985
    .local v7, "e":Ljava/text/ParseException;
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 996
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "b":Ljava/lang/String;
    .end local v3    # "day1":Ljava/util/Date;
    .end local v4    # "curr":J
    .end local v6    # "day2":Ljava/util/Date;
    .end local v7    # "e":Ljava/text/ParseException;
    .end local v8    # "format":Ljava/text/SimpleDateFormat;
    .end local v10    # "pre":J
    :cond_1
    iget-object v9, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sendbird/android/model/MessageModel;

    invoke-virtual {v9}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v10

    .line 997
    .restart local v10    # "pre":J
    invoke-virtual {p1}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v4

    .line 999
    .restart local v4    # "curr":J
    iget-object v9, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v10, v11}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$900(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1000
    .restart local v0    # "a":Ljava/lang/String;
    iget-object v9, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v4, v5}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$900(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 1012
    .restart local v1    # "b":Ljava/lang/String;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1013
    .restart local v8    # "format":Ljava/text/SimpleDateFormat;
    const/4 v3, 0x0

    .line 1014
    .restart local v3    # "day1":Ljava/util/Date;
    const/4 v6, 0x0

    .line 1017
    .restart local v6    # "day2":Ljava/util/Date;
    :try_start_1
    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 1018
    invoke-virtual {v8, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 1023
    :goto_3
    invoke-virtual {v3, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    .line 1025
    .restart local v2    # "compare":I
    if-lez v2, :cond_0

    .line 1027
    iget-object v9, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    iget-object v12, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    const-string v9, "cks4451"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pre=="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1019
    .end local v2    # "compare":I
    :catch_1
    move-exception v7

    .line 1020
    .restart local v7    # "e":Ljava/text/ParseException;
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_3

    .line 1036
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "b":Ljava/lang/String;
    .end local v3    # "day1":Ljava/util/Date;
    .end local v4    # "curr":J
    .end local v6    # "day2":Ljava/util/Date;
    .end local v7    # "e":Ljava/text/ParseException;
    .end local v8    # "format":Ljava/text/SimpleDateFormat;
    .end local v10    # "pre":J
    :cond_2
    iget-object v9, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 896
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mMaxMessageTimestamp:J

    .line 897
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mMinMessageTimestamp:J

    .line 898
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 900
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mReadStatus:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 901
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 902
    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 882
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 883
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 892
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 916
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1043
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1044
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Lcom/sendbird/android/model/Message;

    if-eqz v1, :cond_0

    .line 1045
    const/4 v1, 0x1

    .line 1054
    :goto_0
    return v1

    .line 1046
    :cond_0
    instance-of v1, v0, Lcom/sendbird/android/model/FileLink;

    if-eqz v1, :cond_1

    .line 1047
    const/4 v1, 0x3

    goto :goto_0

    .line 1048
    :cond_1
    instance-of v1, v0, Lcom/sendbird/android/model/SystemMessage;

    if-eqz v1, :cond_2

    .line 1049
    const/4 v1, 0x2

    goto :goto_0

    .line 1050
    :cond_2
    instance-of v1, v0, Lcom/sendbird/android/model/BroadcastMessage;

    if-eqz v1, :cond_3

    .line 1051
    const/4 v1, 0x4

    goto :goto_0

    .line 1054
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxMessageTimestamp()J
    .locals 4

    .prologue
    .line 874
    iget-wide v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mMaxMessageTimestamp:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mMaxMessageTimestamp:J

    goto :goto_0
.end method

.method public getMinMessageTimestamp()J
    .locals 4

    .prologue
    .line 878
    iget-wide v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mMinMessageTimestamp:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mMinMessageTimestamp:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 32
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1065
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v16

    .line 1067
    .local v16, "item":Ljava/lang/Object;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;

    invoke-virtual/range {v27 .. v27}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getViewType()I

    move-result v27

    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->getItemViewType(I)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 1068
    :cond_0
    new-instance v24, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;Lco/kr/festfive/activity/SendBirdChatActivity$1;)V

    .line 1069
    .local v24, "viewHolder":Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->getItemViewType(I)I

    move-result v27

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setViewType(I)V

    .line 1071
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->getItemViewType(I)I

    move-result v27

    packed-switch v27, :pswitch_data_0

    .line 1324
    .end local v24    # "viewHolder":Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;

    .line 1325
    .restart local v24    # "viewHolder":Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->getItemViewType(I)I

    move-result v27

    packed-switch v27, :pswitch_data_1

    .line 1825
    :goto_1
    :pswitch_0
    return-object p2

    .line 1073
    :pswitch_1
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1074
    .restart local p2    # "convertView":Landroid/view/View;
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1081
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v27, v0

    const v28, 0x7f0a0099

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, p3

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1083
    const v27, 0x7f0800d2

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 1084
    .local v22, "tv":Landroid/widget/TextView;
    const-string v27, "info_text"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1086
    const v27, 0x7f080069

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22    # "tv":Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1087
    .restart local v22    # "tv":Landroid/widget/TextView;
    const-string v27, "date_text"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1089
    const v27, 0x7f080118

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 1090
    .local v23, "v":Landroid/view/View;
    const-string v27, "left_container"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1091
    const v27, 0x7f0800cb

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 1092
    .local v17, "iv":Landroid/widget/ImageView;
    const-string v27, "left_thumbnail"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1093
    const-string v27, "left_thumbnail"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1094
    const-string v27, "left_thumbnail"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v27

    new-instance v28, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$1;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1105
    const v27, 0x7f080231

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22    # "tv":Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1106
    .restart local v22    # "tv":Landroid/widget/TextView;
    const-string v27, "left_message"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1107
    const v27, 0x7f080232

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22    # "tv":Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1108
    .restart local v22    # "tv":Landroid/widget/TextView;
    const-string v27, "left_name"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1109
    const v27, 0x7f080234

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22    # "tv":Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1110
    .restart local v22    # "tv":Landroid/widget/TextView;
    const-string v27, "left_time"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1112
    const v27, 0x7f0801b8

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 1113
    const-string v27, "right_container"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1116
    const v27, 0x7f080237

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22    # "tv":Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1117
    .restart local v22    # "tv":Landroid/widget/TextView;
    const-string v27, "right_message"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1118
    const v27, 0x7f080238

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22    # "tv":Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1119
    .restart local v22    # "tv":Landroid/widget/TextView;
    const-string v27, "right_name"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1120
    const v27, 0x7f08023a

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22    # "tv":Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1121
    .restart local v22    # "tv":Landroid/widget/TextView;
    const-string v27, "right_time"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1125
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1129
    .end local v17    # "iv":Landroid/widget/ImageView;
    .end local v22    # "tv":Landroid/widget/TextView;
    .end local v23    # "v":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v27, v0

    const v28, 0x7f0a009a

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, p3

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1130
    const-string v27, "message"

    const v28, 0x7f080235

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1131
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1135
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v27, v0

    const v28, 0x7f0a009a

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, p3

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1136
    const-string v27, "message"

    const v28, 0x7f080235

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1137
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1145
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v27, v0

    const v28, 0x7f0a0098

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, p3

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1147
    const v27, 0x7f080069

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 1148
    .restart local v22    # "tv":Landroid/widget/TextView;
    const-string v27, "date_text"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1150
    const v27, 0x7f080118

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 1151
    .restart local v23    # "v":Landroid/view/View;
    const-string v27, "left_container"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1152
    const v27, 0x7f0800cb

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 1153
    .restart local v17    # "iv":Landroid/widget/ImageView;
    const-string v27, "left_thumbnail"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1154
    const v27, 0x7f0800ca

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17    # "iv":Landroid/widget/ImageView;
    check-cast v17, Landroid/widget/ImageView;

    .line 1155
    .restart local v17    # "iv":Landroid/widget/ImageView;
    const-string v27, "left_image"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1156
    const v27, 0x7f080232

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22    # "tv":Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1157
    .restart local v22    # "tv":Landroid/widget/TextView;
    const-string v27, "left_name"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1158
    const v27, 0x7f080234

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22    # "tv":Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1159
    .restart local v22    # "tv":Landroid/widget/TextView;
    const-string v27, "left_time"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1161
    const v27, 0x7f0801b8

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 1162
    const-string v27, "right_container"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1165
    const v27, 0x7f0800cd

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17    # "iv":Landroid/widget/ImageView;
    check-cast v17, Landroid/widget/ImageView;

    .line 1166
    .restart local v17    # "iv":Landroid/widget/ImageView;
    const-string v27, "right_image"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1167
    const v27, 0x7f080238

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22    # "tv":Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1168
    .restart local v22    # "tv":Landroid/widget/TextView;
    const-string v27, "right_name"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1169
    const v27, 0x7f08023a

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22    # "tv":Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1170
    .restart local v22    # "tv":Landroid/widget/TextView;
    const-string v27, "right_time"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1176
    const-string v27, "left_image"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1177
    const-string v27, "left_image"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v27

    new-instance v28, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$2;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1214
    const-string v27, "left_image"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v27

    new-instance v28, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$3;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$3;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1246
    const-string v27, "right_image"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1247
    const-string v27, "right_image"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v27

    new-instance v28, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$4;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$4;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1284
    const-string v27, "right_image"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v27

    new-instance v28, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$5;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$5;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1316
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .end local v17    # "iv":Landroid/widget/ImageView;
    .end local v22    # "tv":Landroid/widget/TextView;
    .end local v23    # "v":Landroid/view/View;
    :pswitch_6
    move-object/from16 v18, v16

    .line 1329
    check-cast v18, Lcom/sendbird/android/model/Message;

    .line 1331
    .local v18, "message":Lcom/sendbird/android/model/Message;
    const/4 v14, 0x0

    .line 1332
    .local v14, "isDisplay":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-eqz v27, :cond_2

    .line 1333
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v13, v0, :cond_2

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    sub-int v27, v28, v27

    move/from16 v0, v27

    move/from16 v1, p1

    if-ne v0, v1, :cond_5

    .line 1335
    const/4 v14, 0x1

    .line 1341
    .end local v13    # "i":I
    :cond_2
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v14, v0, :cond_c

    .line 1342
    const-string v27, "date_text"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getTimestamp()J

    move-result-wide v28

    invoke-static/range {v27 .. v29}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$900(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 1344
    .local v8, "day":Ljava/lang/String;
    const-string v25, ""

    .line 1346
    .local v25, "week":Ljava/lang/String;
    move-object/from16 v25, v8

    .line 1352
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v27, "yyyy-MM-dd"

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1353
    .local v12, "format":Ljava/text/SimpleDateFormat;
    const/4 v9, 0x0

    .line 1356
    .local v9, "day1":Ljava/util/Date;
    :try_start_0
    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1361
    :goto_3
    invoke-virtual {v12, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    .line 1363
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1364
    .local v6, "cal":Ljava/util/Calendar;
    invoke-virtual {v6, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1365
    const/16 v27, 0x7

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v27

    add-int/lit8 v4, v27, -0x1

    .line 1366
    .local v4, "aa":I
    const-string v26, ""

    .line 1368
    .local v26, "weekDay":Ljava/lang/String;
    if-nez v4, :cond_6

    .line 1369
    const-string v26, "\uc77c\uc694\uc77c"

    .line 1384
    :cond_3
    :goto_4
    const-string v7, ""

    .line 1385
    .local v7, "date":Ljava/lang/String;
    const-string v27, "-"

    const-string v28, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    .line 1387
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x0

    const/16 v29, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\ub144 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x4

    const/16 v29, 0x6

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\uc6d4 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x6

    const/16 v29, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\uc77c "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1388
    const-string v27, "date_text"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1393
    .end local v4    # "aa":I
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v7    # "date":Ljava/lang/String;
    .end local v8    # "day":Ljava/lang/String;
    .end local v9    # "day1":Ljava/util/Date;
    .end local v12    # "format":Ljava/text/SimpleDateFormat;
    .end local v25    # "week":Ljava/lang/String;
    .end local v26    # "weekDay":Ljava/lang/String;
    :goto_5
    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getData()Ljava/lang/String;

    move-result-object v27

    const-string v28, "JOIN"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_4

    const-string v27, "JOIN"

    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getData()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 1394
    :cond_4
    const-string v27, "left_container"

    const-class v28, Landroid/view/View;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1395
    const-string v27, "right_container"

    const-class v28, Landroid/view/View;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1396
    const-string v27, "info_text"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1333
    .restart local v13    # "i":I
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1357
    .end local v13    # "i":I
    .restart local v8    # "day":Ljava/lang/String;
    .restart local v9    # "day1":Ljava/util/Date;
    .restart local v12    # "format":Ljava/text/SimpleDateFormat;
    .restart local v25    # "week":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1358
    .local v10, "e":Ljava/text/ParseException;
    invoke-virtual {v10}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_3

    .line 1370
    .end local v10    # "e":Ljava/text/ParseException;
    .restart local v4    # "aa":I
    .restart local v6    # "cal":Ljava/util/Calendar;
    .restart local v26    # "weekDay":Ljava/lang/String;
    :cond_6
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v4, v0, :cond_7

    .line 1371
    const-string v26, "\uc6d4\uc694\uc77c"

    goto/16 :goto_4

    .line 1372
    :cond_7
    const/16 v27, 0x2

    move/from16 v0, v27

    if-ne v4, v0, :cond_8

    .line 1373
    const-string v26, "\ud654\uc694\uc77c"

    goto/16 :goto_4

    .line 1374
    :cond_8
    const/16 v27, 0x3

    move/from16 v0, v27

    if-ne v4, v0, :cond_9

    .line 1375
    const-string v26, "\uc218\uc694\uc77c"

    goto/16 :goto_4

    .line 1376
    :cond_9
    const/16 v27, 0x4

    move/from16 v0, v27

    if-ne v4, v0, :cond_a

    .line 1377
    const-string v26, "\ubaa9\uc694\uc77c"

    goto/16 :goto_4

    .line 1378
    :cond_a
    const/16 v27, 0x5

    move/from16 v0, v27

    if-ne v4, v0, :cond_b

    .line 1379
    const-string v26, "\uae08\uc694\uc77c"

    goto/16 :goto_4

    .line 1380
    :cond_b
    const/16 v27, 0x6

    move/from16 v0, v27

    if-ne v4, v0, :cond_3

    .line 1381
    const-string v26, "\ud1a0\uc694\uc77c"

    goto/16 :goto_4

    .line 1390
    .end local v4    # "aa":I
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v8    # "day":Ljava/lang/String;
    .end local v9    # "day1":Ljava/util/Date;
    .end local v12    # "format":Ljava/text/SimpleDateFormat;
    .end local v25    # "week":Ljava/lang/String;
    .end local v26    # "weekDay":Ljava/lang/String;
    :cond_c
    const-string v27, "date_text"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1397
    :cond_d
    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getData()Ljava/lang/String;

    move-result-object v27

    const-string v28, "EXIT"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_e

    const-string v27, "EXIT"

    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getData()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 1398
    :cond_e
    const-string v27, "left_container"

    const-class v28, Landroid/view/View;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1399
    const-string v27, "right_container"

    const-class v28, Landroid/view/View;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1400
    const-string v27, "info_text"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1402
    :cond_f
    const-string v27, "info_text"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1404
    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getSenderId()Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Lcom/sendbird/android/SendBird;->getUserId()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 1405
    const-string v27, "left_container"

    const-class v28, Landroid/view/View;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1406
    const-string v27, "right_container"

    const-class v28, Landroid/view/View;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1409
    const-string v27, "right_name"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getSenderName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1410
    const-string v27, "right_message"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1411
    const-string v27, "right_time"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getTimestamp()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$1300(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    const-string v27, "right_container"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v27

    new-instance v28, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$6;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$6;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;Ljava/lang/Object;)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_1

    .line 1510
    :cond_10
    const-string v27, "left_container"

    const-class v28, Landroid/view/View;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1511
    const-string v27, "right_container"

    const-class v28, Landroid/view/View;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1513
    const/16 v20, 0x0

    .line 1514
    .local v20, "pre":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-eqz v27, :cond_11

    .line 1515
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v13, v0, :cond_11

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    sub-int v27, v28, v27

    add-int/lit8 v28, p1, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_15

    .line 1517
    const/16 v20, 0x1

    .line 1523
    .end local v13    # "i":I
    :cond_11
    if-eqz p1, :cond_12

    .line 1529
    :cond_12
    const-string v19, ""

    .line 1531
    .local v19, "name":Ljava/lang/String;
    if-nez v14, :cond_18

    if-nez v20, :cond_18

    if-eqz p1, :cond_18

    .line 1532
    add-int/lit8 v27, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->getItemViewType(I)I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_16

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    add-int/lit8 v28, p1, -0x1

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/sendbird/android/model/FileLink;

    invoke-virtual/range {v27 .. v27}, Lcom/sendbird/android/model/FileLink;->getSenderName()Ljava/lang/String;

    move-result-object v19

    .line 1538
    :cond_13
    :goto_7
    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getSenderName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_14

    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getSenderName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_17

    .line 1539
    :cond_14
    const-string v27, "left_thumbnail"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1540
    const-string v27, "left_name"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1556
    :goto_8
    const-string v27, "left_message"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1557
    const-string v27, "left_time"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getTimestamp()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$1300(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1559
    const-string v27, "left_thumbnail"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1560
    const-string v27, "left_thumbnail"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v27

    new-instance v28, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$7;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$7;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1515
    .end local v19    # "name":Ljava/lang/String;
    .restart local v13    # "i":I
    :cond_15
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 1534
    .end local v13    # "i":I
    .restart local v19    # "name":Ljava/lang/String;
    :cond_16
    add-int/lit8 v27, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->getItemViewType(I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    add-int/lit8 v28, p1, -0x1

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/sendbird/android/model/Message;

    invoke-virtual/range {v27 .. v27}, Lcom/sendbird/android/model/Message;->getSenderName()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_7

    .line 1542
    :cond_17
    const-string v27, "left_thumbnail"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1543
    const-string v27, "left_name"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1544
    const-string v27, "left_thumbnail"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getSenderImageUrl()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$1400(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 1545
    const-string v27, "left_name"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getSenderName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1548
    :cond_18
    const-string v27, "left_thumbnail"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1549
    const-string v27, "left_name"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1550
    const-string v27, "left_thumbnail"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getSenderImageUrl()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$1400(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 1551
    const-string v27, "left_name"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual/range {v18 .. v18}, Lcom/sendbird/android/model/Message;->getSenderName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .end local v14    # "isDisplay":Z
    .end local v18    # "message":Lcom/sendbird/android/model/Message;
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "pre":Z
    :pswitch_7
    move-object/from16 v21, v16

    .line 1574
    check-cast v21, Lcom/sendbird/android/model/SystemMessage;

    .line 1575
    .local v21, "systemMessage":Lcom/sendbird/android/model/SystemMessage;
    const-string v27, "message"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual/range {v21 .. v21}, Lcom/sendbird/android/model/SystemMessage;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .end local v21    # "systemMessage":Lcom/sendbird/android/model/SystemMessage;
    :pswitch_8
    move-object/from16 v5, v16

    .line 1578
    check-cast v5, Lcom/sendbird/android/model/BroadcastMessage;

    .line 1579
    .local v5, "broadcastMessage":Lcom/sendbird/android/model/BroadcastMessage;
    const-string v27, "message"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/sendbird/android/model/BroadcastMessage;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .end local v5    # "broadcastMessage":Lcom/sendbird/android/model/BroadcastMessage;
    :pswitch_9
    move-object/from16 v11, v16

    .line 1582
    check-cast v11, Lcom/sendbird/android/model/FileLink;

    .line 1584
    .local v11, "fileLink":Lcom/sendbird/android/model/FileLink;
    const/4 v15, 0x0

    .line 1585
    .local v15, "isFDisplay":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-eqz v27, :cond_19

    .line 1586
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v13, v0, :cond_19

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    sub-int v27, v28, v27

    move/from16 v0, v27

    move/from16 v1, p1

    if-ne v0, v1, :cond_1c

    .line 1588
    const/4 v15, 0x1

    .line 1594
    .end local v13    # "i":I
    :cond_19
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v15, v0, :cond_23

    .line 1595
    const-string v27, "date_text"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getTimestamp()J

    move-result-wide v28

    invoke-static/range {v27 .. v29}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$900(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 1597
    .restart local v8    # "day":Ljava/lang/String;
    const-string v25, ""

    .line 1599
    .restart local v25    # "week":Ljava/lang/String;
    move-object/from16 v25, v8

    .line 1605
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v27, "yyyy-MM-dd"

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1606
    .restart local v12    # "format":Ljava/text/SimpleDateFormat;
    const/4 v9, 0x0

    .line 1609
    .restart local v9    # "day1":Ljava/util/Date;
    :try_start_1
    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 1614
    :goto_a
    invoke-virtual {v12, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    .line 1616
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1617
    .restart local v6    # "cal":Ljava/util/Calendar;
    invoke-virtual {v6, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1618
    const/16 v27, 0x7

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v27

    add-int/lit8 v4, v27, -0x1

    .line 1619
    .restart local v4    # "aa":I
    const-string v26, ""

    .line 1621
    .restart local v26    # "weekDay":Ljava/lang/String;
    if-nez v4, :cond_1d

    .line 1622
    const-string v26, "\uc77c\uc694\uc77c"

    .line 1637
    :cond_1a
    :goto_b
    const-string v7, ""

    .line 1638
    .restart local v7    # "date":Ljava/lang/String;
    const-string v27, "-"

    const-string v28, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    .line 1640
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x0

    const/16 v29, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\ub144 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x4

    const/16 v29, 0x6

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\uc6d4 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x6

    const/16 v29, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\uc77c "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1641
    const-string v27, "date_text"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1646
    .end local v4    # "aa":I
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v7    # "date":Ljava/lang/String;
    .end local v8    # "day":Ljava/lang/String;
    .end local v9    # "day1":Ljava/util/Date;
    .end local v12    # "format":Ljava/text/SimpleDateFormat;
    .end local v25    # "week":Ljava/lang/String;
    .end local v26    # "weekDay":Ljava/lang/String;
    :goto_c
    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderId()Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Lcom/sendbird/android/SendBird;->getUserId()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_25

    .line 1647
    const-string v27, "left_container"

    const-class v28, Landroid/view/View;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1648
    const-string v27, "right_container"

    const-class v28, Landroid/view/View;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1651
    const-string v27, "right_name"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1653
    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sendbird/android/model/FileInfo;->getType()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    const-string v28, "application/octet-stream"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_1b

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sendbird/android/model/FileInfo;->getType()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    const-string v28, "image"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_1b

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sendbird/android/model/FileInfo;->getType()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    const-string v28, "video/png"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_1b

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sendbird/android/model/FileInfo;->getType()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    const-string v28, "image/jpeg"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_24

    .line 1654
    :cond_1b
    const-string v27, "right_image"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sendbird/android/model/FileInfo;->getUrl()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$1500(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1658
    :goto_d
    const-string v27, "right_time"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getTimestamp()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$1300(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    :goto_e
    const-string v27, "left_image"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 1727
    const-string v27, "left_image"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    new-instance v28, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$8;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$8;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1742
    const-string v27, "left_image"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v27

    new-instance v28, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$9;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$9;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1774
    const-string v27, "right_image"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 1775
    const-string v27, "right_image"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    new-instance v28, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$10;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$10;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1790
    const-string v27, "right_image"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v27

    new-instance v28, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$11;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$11;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_1

    .line 1586
    .restart local v13    # "i":I
    :cond_1c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_9

    .line 1610
    .end local v13    # "i":I
    .restart local v8    # "day":Ljava/lang/String;
    .restart local v9    # "day1":Ljava/util/Date;
    .restart local v12    # "format":Ljava/text/SimpleDateFormat;
    .restart local v25    # "week":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1611
    .restart local v10    # "e":Ljava/text/ParseException;
    invoke-virtual {v10}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_a

    .line 1623
    .end local v10    # "e":Ljava/text/ParseException;
    .restart local v4    # "aa":I
    .restart local v6    # "cal":Ljava/util/Calendar;
    .restart local v26    # "weekDay":Ljava/lang/String;
    :cond_1d
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v4, v0, :cond_1e

    .line 1624
    const-string v26, "\uc6d4\uc694\uc77c"

    goto/16 :goto_b

    .line 1625
    :cond_1e
    const/16 v27, 0x2

    move/from16 v0, v27

    if-ne v4, v0, :cond_1f

    .line 1626
    const-string v26, "\ud654\uc694\uc77c"

    goto/16 :goto_b

    .line 1627
    :cond_1f
    const/16 v27, 0x3

    move/from16 v0, v27

    if-ne v4, v0, :cond_20

    .line 1628
    const-string v26, "\uc218\uc694\uc77c"

    goto/16 :goto_b

    .line 1629
    :cond_20
    const/16 v27, 0x4

    move/from16 v0, v27

    if-ne v4, v0, :cond_21

    .line 1630
    const-string v26, "\ubaa9\uc694\uc77c"

    goto/16 :goto_b

    .line 1631
    :cond_21
    const/16 v27, 0x5

    move/from16 v0, v27

    if-ne v4, v0, :cond_22

    .line 1632
    const-string v26, "\uae08\uc694\uc77c"

    goto/16 :goto_b

    .line 1633
    :cond_22
    const/16 v27, 0x6

    move/from16 v0, v27

    if-ne v4, v0, :cond_1a

    .line 1634
    const-string v26, "\ud1a0\uc694\uc77c"

    goto/16 :goto_b

    .line 1643
    .end local v4    # "aa":I
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v8    # "day":Ljava/lang/String;
    .end local v9    # "day1":Ljava/util/Date;
    .end local v12    # "format":Ljava/text/SimpleDateFormat;
    .end local v25    # "week":Ljava/lang/String;
    .end local v26    # "weekDay":Ljava/lang/String;
    :cond_23
    const-string v27, "date_text"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 1656
    :cond_24
    const-string v27, "right_image"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    const v28, 0x7f0700b0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 1679
    :cond_25
    const-string v27, "left_container"

    const-class v28, Landroid/view/View;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1680
    const-string v27, "right_container"

    const-class v28, Landroid/view/View;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1682
    const/16 v20, 0x0

    .line 1683
    .restart local v20    # "pre":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-eqz v27, :cond_26

    .line 1684
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v13, v0, :cond_26

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->index:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    sub-int v27, v28, v27

    add-int/lit8 v28, p1, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2a

    .line 1686
    const/16 v20, 0x1

    .line 1692
    .end local v13    # "i":I
    :cond_26
    if-nez v15, :cond_2d

    if-nez v20, :cond_2d

    if-eqz p1, :cond_2d

    .line 1693
    const-string v19, ""

    .line 1694
    .restart local v19    # "name":Ljava/lang/String;
    add-int/lit8 v27, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->getItemViewType(I)I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2b

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    add-int/lit8 v28, p1, -0x1

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/sendbird/android/model/FileLink;

    invoke-virtual/range {v27 .. v27}, Lcom/sendbird/android/model/FileLink;->getSenderName()Ljava/lang/String;

    move-result-object v19

    .line 1700
    :cond_27
    :goto_10
    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_28

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2c

    .line 1701
    :cond_28
    const-string v27, "left_thumbnail"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1702
    const-string v27, "left_name"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1718
    .end local v19    # "name":Ljava/lang/String;
    :goto_11
    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sendbird/android/model/FileInfo;->getType()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    const-string v28, "application/octet-stream"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_29

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sendbird/android/model/FileInfo;->getType()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    const-string v28, "image"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_29

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sendbird/android/model/FileInfo;->getType()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    const-string v28, "video/png"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2e

    .line 1719
    :cond_29
    const-string v27, "left_image"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sendbird/android/model/FileInfo;->getUrl()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$1500(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1723
    :goto_12
    const-string v27, "left_time"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getTimestamp()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$1300(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 1684
    .restart local v13    # "i":I
    :cond_2a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_f

    .line 1696
    .end local v13    # "i":I
    .restart local v19    # "name":Ljava/lang/String;
    :cond_2b
    add-int/lit8 v27, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->getItemViewType(I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_27

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    add-int/lit8 v28, p1, -0x1

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/sendbird/android/model/Message;

    invoke-virtual/range {v27 .. v27}, Lcom/sendbird/android/model/Message;->getSenderName()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_10

    .line 1704
    :cond_2c
    const-string v27, "left_thumbnail"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1705
    const-string v27, "left_name"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1706
    const-string v27, "left_thumbnail"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderImageUrl()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$1400(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 1707
    const-string v27, "left_name"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1710
    .end local v19    # "name":Ljava/lang/String;
    :cond_2d
    const-string v27, "left_thumbnail"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1711
    const-string v27, "left_name"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1712
    const-string v27, "left_thumbnail"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderImageUrl()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$1400(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 1713
    const-string v27, "left_name"

    const-class v28, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1721
    :cond_2e
    const-string v27, "left_image"

    const-class v28, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    const v28, 0x7f0700b0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_12

    .line 1071
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 1325
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1059
    const/4 v0, 0x5

    return v0
.end method

.method public resetReadStatus(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 905
    .local p1, "readStatus":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mReadStatus:Ljava/util/Hashtable;

    .line 906
    return-void
.end method

.method public setReadStatus(Ljava/lang/String;J)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .prologue
    .line 909
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mReadStatus:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mReadStatus:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-gez v0, :cond_1

    .line 910
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->mReadStatus:Ljava/util/Hashtable;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    :cond_1
    return-void
.end method
