.class public Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;
.super Landroid/widget/BaseAdapter;
.source "SendBirdMessagingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendBirdMessagingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TYPE_BROADCAST_MESSAGE:I = 0x4

.field private static final TYPE_DATE:I = 0x6

.field private static final TYPE_FILELINK:I = 0x3

.field private static final TYPE_MESSAGE:I = 0x1

.field private static final TYPE_SYSTEM_MESSAGE:I = 0x2

.field private static final TYPE_TYPING_INDICATOR:I = 0x5

.field private static final TYPE_UNSUPPORTED:I


# instance fields
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

.field private mMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/model/MessagingChannel$Member;",
            ">;"
        }
    .end annotation
.end field

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

.field private mTypeStatus:Ljava/util/Hashtable;
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

.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;


# direct methods
.method public constructor <init>(Lco/kr/festfive/activity/SendBirdMessagingActivity;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1161
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1154
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mMaxMessageTimestamp:J

    .line 1155
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mMinMessageTimestamp:J

    .line 1162
    iput-object p2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mContext:Landroid/content/Context;

    .line 1163
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    .line 1165
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    .line 1166
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mTypeStatus:Ljava/util/Hashtable;

    .line 1167
    return-void
.end method

.method static synthetic access$1600(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    .prologue
    .line 1138
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    .prologue
    .line 1138
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    return-object v0
.end method

.method private updateMessageTimestamp(Lcom/sendbird/android/model/MessageModel;)V
    .locals 4
    .param p1, "model"    # Lcom/sendbird/android/model/MessageModel;

    .prologue
    .line 1409
    iget-wide v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mMaxMessageTimestamp:J

    invoke-virtual {p1}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mMaxMessageTimestamp:J

    .line 1410
    iget-wide v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mMinMessageTimestamp:J

    invoke-virtual {p1}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mMinMessageTimestamp:J

    .line 1411
    return-void

    .line 1409
    :cond_0
    iget-wide v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mMaxMessageTimestamp:J

    goto :goto_0

    .line 1410
    :cond_1
    iget-wide v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mMinMessageTimestamp:J

    goto :goto_1
.end method


# virtual methods
.method public addMessageModel(Lcom/sendbird/android/model/MessageModel;)V
    .locals 22
    .param p1, "messageModel"    # Lcom/sendbird/android/model/MessageModel;

    .prologue
    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_1

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-eqz v20, :cond_4

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sendbird/android/model/MessageModel;

    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v18

    .line 1272
    .local v18, "pre":J
    invoke-virtual/range {p1 .. p1}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v8

    .line 1274
    .local v8, "curr":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$1400(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 1275
    .local v4, "a":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v8, v9}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$1400(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 1289
    .local v5, "b":Ljava/lang/String;
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyy-MM-dd"

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1290
    .local v15, "format":Ljava/text/SimpleDateFormat;
    const/4 v10, 0x0

    .line 1291
    .local v10, "day1":Ljava/util/Date;
    const/4 v11, 0x0

    .line 1293
    .local v11, "day2":Ljava/util/Date;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/fest"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1296
    .local v17, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v15, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 1297
    invoke-virtual {v15, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1324
    :goto_0
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1326
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_0

    .line 1328
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 1330
    :cond_0
    new-instance v13, Ljava/io/File;

    .end local v13    # "file":Ljava/io/File;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/day.txt"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1334
    .restart local v13    # "file":Ljava/io/File;
    :try_start_1
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1336
    .local v16, "fos":Ljava/io/FileOutputStream;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "a="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/b="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "pre="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/curr="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1338
    .local v7, "data":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1340
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1345
    .end local v7    # "data":Ljava/lang/String;
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v10, :cond_1

    if-nez v11, :cond_3

    .line 1400
    .end local v4    # "a":Ljava/lang/String;
    .end local v5    # "b":Ljava/lang/String;
    .end local v8    # "curr":J
    .end local v10    # "day1":Ljava/util/Date;
    .end local v11    # "day2":Ljava/util/Date;
    .end local v13    # "file":Ljava/io/File;
    .end local v15    # "format":Ljava/text/SimpleDateFormat;
    .end local v17    # "path":Ljava/lang/String;
    .end local v18    # "pre":J
    :cond_1
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/sendbird/android/model/MessageModel;->isPast()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1405
    :goto_3
    invoke-direct/range {p0 .. p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->updateMessageTimestamp(Lcom/sendbird/android/model/MessageModel;)V

    .line 1406
    return-void

    .line 1298
    .restart local v4    # "a":Ljava/lang/String;
    .restart local v5    # "b":Ljava/lang/String;
    .restart local v8    # "curr":J
    .restart local v10    # "day1":Ljava/util/Date;
    .restart local v11    # "day2":Ljava/util/Date;
    .restart local v15    # "format":Ljava/text/SimpleDateFormat;
    .restart local v17    # "path":Ljava/lang/String;
    .restart local v18    # "pre":J
    :catch_0
    move-exception v12

    .line 1299
    .local v12, "e":Ljava/text/ParseException;
    invoke-virtual {v12}, Ljava/text/ParseException;->printStackTrace()V

    .line 1301
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1303
    .local v14, "file1":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_2

    .line 1305
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 1307
    :cond_2
    new-instance v14, Ljava/io/File;

    .end local v14    # "file1":Ljava/io/File;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/format.txt"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1311
    .restart local v14    # "file1":Ljava/io/File;
    :try_start_2
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1313
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "e="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1315
    .restart local v7    # "data":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1317
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1320
    .end local v7    # "data":Ljava/lang/String;
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v20

    goto/16 :goto_0

    .line 1348
    .end local v12    # "e":Ljava/text/ParseException;
    .end local v14    # "file1":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    :cond_3
    invoke-virtual {v10, v11}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v6

    .line 1350
    .local v6, "compare":I
    if-lez v6, :cond_1

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1357
    .end local v4    # "a":Ljava/lang/String;
    .end local v5    # "b":Ljava/lang/String;
    .end local v6    # "compare":I
    .end local v8    # "curr":J
    .end local v10    # "day1":Ljava/util/Date;
    .end local v11    # "day2":Ljava/util/Date;
    .end local v13    # "file":Ljava/io/File;
    .end local v15    # "format":Ljava/text/SimpleDateFormat;
    .end local v17    # "path":Ljava/lang/String;
    .end local v18    # "pre":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sendbird/android/model/MessageModel;

    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v18

    .line 1358
    .restart local v18    # "pre":J
    invoke-virtual/range {p1 .. p1}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v8

    .line 1360
    .restart local v8    # "curr":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$1400(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 1361
    .restart local v4    # "a":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v8, v9}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$1400(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 1373
    .restart local v5    # "b":Ljava/lang/String;
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyy-MM-dd"

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1375
    .restart local v15    # "format":Ljava/text/SimpleDateFormat;
    const/4 v10, 0x0

    .line 1376
    .restart local v10    # "day1":Ljava/util/Date;
    const/4 v11, 0x0

    .line 1378
    .restart local v11    # "day2":Ljava/util/Date;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/fest"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1381
    .restart local v17    # "path":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v15, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 1382
    invoke-virtual {v15, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v11

    .line 1387
    :goto_4
    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    .line 1390
    invoke-virtual {v10, v11}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v6

    .line 1392
    .restart local v6    # "compare":I
    if-lez v6, :cond_1

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1383
    .end local v6    # "compare":I
    :catch_2
    move-exception v12

    .line 1384
    .restart local v12    # "e":Ljava/text/ParseException;
    invoke-virtual {v12}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_4

    .line 1403
    .end local v4    # "a":Ljava/lang/String;
    .end local v5    # "b":Ljava/lang/String;
    .end local v8    # "curr":J
    .end local v10    # "day1":Ljava/util/Date;
    .end local v11    # "day2":Ljava/util/Date;
    .end local v12    # "e":Ljava/text/ParseException;
    .end local v15    # "format":Ljava/text/SimpleDateFormat;
    .end local v17    # "path":Ljava/lang/String;
    .end local v18    # "pre":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1343
    .restart local v4    # "a":Ljava/lang/String;
    .restart local v5    # "b":Ljava/lang/String;
    .restart local v8    # "curr":J
    .restart local v10    # "day1":Ljava/util/Date;
    .restart local v11    # "day2":Ljava/util/Date;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v15    # "format":Ljava/text/SimpleDateFormat;
    .restart local v17    # "path":Ljava/lang/String;
    .restart local v18    # "pre":J
    :catch_3
    move-exception v20

    goto/16 :goto_1
.end method

.method public checkTypeStatus()Z
    .locals 8

    .prologue
    .line 2370
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mTypeStatus:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2371
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mTypeStatus:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2372
    .local v1, "ts":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 2373
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mTypeStatus:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2374
    const/4 v2, 0x1

    .line 2378
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "ts":Ljava/lang/Long;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 1194
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mMaxMessageTimestamp:J

    .line 1195
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mMinMessageTimestamp:J

    .line 1197
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1198
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mTypeStatus:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1199
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1200
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1201
    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1190
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1191
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1171
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mTypeStatus:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 1176
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 1177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    .local v1, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mMembers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/model/MessagingChannel$Member;

    .line 1179
    .local v0, "member":Lcom/sendbird/android/model/MessagingChannel$Member;
    iget-object v3, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mTypeStatus:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/sendbird/android/model/MessagingChannel$Member;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1180
    invoke-virtual {v0}, Lcom/sendbird/android/model/MessagingChannel$Member;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1186
    .end local v0    # "member":Lcom/sendbird/android/model/MessagingChannel$Member;
    .end local v1    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1227
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1428
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 1429
    const/4 v1, 0x5

    .line 1443
    :goto_0
    return v1

    .line 1432
    :cond_0
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1433
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Lcom/sendbird/android/model/Message;

    if-eqz v1, :cond_1

    .line 1434
    const/4 v1, 0x1

    goto :goto_0

    .line 1435
    :cond_1
    instance-of v1, v0, Lcom/sendbird/android/model/FileLink;

    if-eqz v1, :cond_2

    .line 1436
    const/4 v1, 0x3

    goto :goto_0

    .line 1437
    :cond_2
    instance-of v1, v0, Lcom/sendbird/android/model/SystemMessage;

    if-eqz v1, :cond_3

    .line 1438
    const/4 v1, 0x2

    goto :goto_0

    .line 1439
    :cond_3
    instance-of v1, v0, Lcom/sendbird/android/model/BroadcastMessage;

    if-eqz v1, :cond_4

    .line 1440
    const/4 v1, 0x4

    goto :goto_0

    .line 1443
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxMessageTimestamp()J
    .locals 4

    .prologue
    .line 1414
    iget-wide v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mMaxMessageTimestamp:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mMaxMessageTimestamp:J

    goto :goto_0
.end method

.method public getMinMessageTimestamp()J
    .locals 4

    .prologue
    .line 1418
    iget-wide v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mMinMessageTimestamp:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mMinMessageTimestamp:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 38
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1454
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v16

    .line 1456
    .local v16, "item":Ljava/lang/Object;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;

    invoke-virtual/range {v31 .. v31}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getViewType()I

    move-result v31

    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->getItemViewType(I)I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    .line 1457
    :cond_0
    new-instance v28, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;Lco/kr/festfive/activity/SendBirdMessagingActivity$1;)V

    .line 1458
    .local v28, "viewHolder":Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->getItemViewType(I)I

    move-result v31

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setViewType(I)V

    .line 1460
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->getItemViewType(I)I

    move-result v31

    packed-switch v31, :pswitch_data_0

    .line 1730
    .end local v28    # "viewHolder":Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;

    .line 1731
    .restart local v28    # "viewHolder":Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->getItemViewType(I)I

    move-result v31

    packed-switch v31, :pswitch_data_1

    .line 2363
    .end local v16    # "item":Ljava/lang/Object;
    :goto_1
    :pswitch_0
    return-object p2

    .line 1462
    .restart local v16    # "item":Ljava/lang/Object;
    :pswitch_1
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1463
    .restart local p2    # "convertView":Landroid/view/View;
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1470
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v31, v0

    const v32, 0x7f0a0099

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, p3

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1472
    const v31, 0x7f080069

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 1473
    .local v25, "tv":Landroid/widget/TextView;
    const-string v31, "date_text"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1475
    const v31, 0x7f0800d2

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "tv":Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 1476
    .restart local v25    # "tv":Landroid/widget/TextView;
    const-string v31, "info_text"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1478
    const v31, 0x7f080118

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .line 1479
    .local v27, "v":Landroid/view/View;
    const-string v31, "left_container"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1480
    const v31, 0x7f0800cb

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 1481
    .local v18, "iv":Landroid/widget/ImageView;
    const-string v31, "left_thumbnail"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1482
    const-string v31, "left_thumbnail"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1483
    const-string v31, "left_thumbnail"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v31

    new-instance v32, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$1;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)V

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1494
    const v31, 0x7f080231

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "tv":Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 1495
    .restart local v25    # "tv":Landroid/widget/TextView;
    const-string v31, "left_message"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1496
    const v31, 0x7f080232

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "tv":Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 1497
    .restart local v25    # "tv":Landroid/widget/TextView;
    const-string v31, "left_name"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1498
    const v31, 0x7f080234

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "tv":Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 1499
    .restart local v25    # "tv":Landroid/widget/TextView;
    const-string v31, "left_time"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1500
    const v31, 0x7f080233

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "tv":Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 1501
    .restart local v25    # "tv":Landroid/widget/TextView;
    const-string v31, "left_status"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1503
    const v31, 0x7f0801b8

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .line 1504
    const-string v31, "right_container"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1507
    const v31, 0x7f080237

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "tv":Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 1508
    .restart local v25    # "tv":Landroid/widget/TextView;
    const-string v31, "right_message"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1509
    const v31, 0x7f080238

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "tv":Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 1510
    .restart local v25    # "tv":Landroid/widget/TextView;
    const-string v31, "right_name"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1511
    const v31, 0x7f08023a

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "tv":Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 1512
    .restart local v25    # "tv":Landroid/widget/TextView;
    const-string v31, "right_time"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1513
    const v31, 0x7f080239

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "tv":Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 1514
    .restart local v25    # "tv":Landroid/widget/TextView;
    const-string v31, "right_status"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1516
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1528
    .end local v18    # "iv":Landroid/widget/ImageView;
    .end local v25    # "tv":Landroid/widget/TextView;
    .end local v27    # "v":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v31, v0

    const v32, 0x7f0a009a

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, p3

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1529
    const-string v31, "message"

    const v32, 0x7f080235

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1530
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1534
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v31, v0

    const v32, 0x7f0a009a

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, p3

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1535
    const-string v31, "message"

    const v32, 0x7f080235

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1536
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1544
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v31, v0

    const v32, 0x7f0a0098

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, p3

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1546
    const v31, 0x7f080069

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 1547
    .restart local v25    # "tv":Landroid/widget/TextView;
    const-string v31, "date_text"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1549
    const v31, 0x7f080118

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .line 1550
    .restart local v27    # "v":Landroid/view/View;
    const-string v31, "left_container"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1551
    const v31, 0x7f0800cb

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 1552
    .restart local v18    # "iv":Landroid/widget/ImageView;
    const-string v31, "left_thumbnail"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1553
    const v31, 0x7f0800ca

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .end local v18    # "iv":Landroid/widget/ImageView;
    check-cast v18, Landroid/widget/ImageView;

    .line 1554
    .restart local v18    # "iv":Landroid/widget/ImageView;
    const-string v31, "left_image"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1555
    const v31, 0x7f080232

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "tv":Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 1556
    .restart local v25    # "tv":Landroid/widget/TextView;
    const-string v31, "left_name"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1557
    const v31, 0x7f080234

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "tv":Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 1558
    .restart local v25    # "tv":Landroid/widget/TextView;
    const-string v31, "left_time"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1559
    const v31, 0x7f080233

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "tv":Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 1560
    .restart local v25    # "tv":Landroid/widget/TextView;
    const-string v31, "left_status"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1562
    const v31, 0x7f0801b8

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .line 1563
    const-string v31, "right_container"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1566
    const v31, 0x7f0800cd

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .end local v18    # "iv":Landroid/widget/ImageView;
    check-cast v18, Landroid/widget/ImageView;

    .line 1567
    .restart local v18    # "iv":Landroid/widget/ImageView;
    const-string v31, "right_image"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1568
    const v31, 0x7f080238

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "tv":Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 1569
    .restart local v25    # "tv":Landroid/widget/TextView;
    const-string v31, "right_name"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1570
    const v31, 0x7f08023a

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "tv":Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 1571
    .restart local v25    # "tv":Landroid/widget/TextView;
    const-string v31, "right_time"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1572
    const v31, 0x7f080239

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "tv":Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 1573
    .restart local v25    # "tv":Landroid/widget/TextView;
    const-string v31, "right_status"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1576
    const-string v31, "left_image"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1577
    const-string v31, "left_image"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v31

    new-instance v32, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$2;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$2;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)V

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1614
    const-string v31, "left_image"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v31

    new-instance v32, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$3;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$3;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)V

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1646
    const-string v31, "right_image"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1647
    const-string v31, "right_image"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v31

    new-instance v32, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$4;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$4;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)V

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1684
    const-string v31, "right_image"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v31

    new-instance v32, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$5;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$5;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)V

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1716
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1721
    .end local v18    # "iv":Landroid/widget/ImageView;
    .end local v25    # "tv":Landroid/widget/TextView;
    .end local v27    # "v":Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v31, v0

    const v32, 0x7f0a009b

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, p3

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1722
    const-string v31, "message"

    const v32, 0x7f080235

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 1723
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v20, v16

    .line 1735
    check-cast v20, Lcom/sendbird/android/model/Message;

    .line 1737
    .local v20, "message":Lcom/sendbird/android/model/Message;
    const/4 v14, 0x0

    .line 1738
    .local v14, "isDisplay":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-eqz v31, :cond_2

    .line 1739
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_2

    .line 1740
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    sub-int v31, v32, v31

    move/from16 v0, v31

    move/from16 v1, p1

    if-ne v0, v1, :cond_5

    .line 1741
    const/4 v14, 0x1

    .line 1753
    .end local v13    # "i":I
    :cond_2
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v14, v0, :cond_c

    .line 1754
    const-string v31, "date_text"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/Message;->getTimestamp()J

    move-result-wide v32

    invoke-static/range {v31 .. v33}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$1400(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 1756
    .local v8, "day":Ljava/lang/String;
    const-string v29, ""

    .line 1758
    .local v29, "week":Ljava/lang/String;
    move-object/from16 v29, v8

    .line 1764
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v31, "yyyy-MM-dd"

    move-object/from16 v0, v31

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1765
    .local v12, "format":Ljava/text/SimpleDateFormat;
    const/4 v9, 0x0

    .line 1768
    .local v9, "day1":Ljava/util/Date;
    :try_start_0
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1773
    :goto_3
    invoke-virtual {v12, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v29

    .line 1775
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1776
    .local v6, "cal":Ljava/util/Calendar;
    invoke-virtual {v6, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1777
    const/16 v31, 0x7

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v31

    add-int/lit8 v4, v31, -0x1

    .line 1778
    .local v4, "aa":I
    const-string v30, ""

    .line 1780
    .local v30, "weekDay":Ljava/lang/String;
    if-nez v4, :cond_6

    .line 1781
    const-string v30, "\uc77c\uc694\uc77c"

    .line 1796
    :cond_3
    :goto_4
    const-string v7, ""

    .line 1797
    .local v7, "date":Ljava/lang/String;
    const-string v31, "-"

    const-string v32, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    .line 1799
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v32, 0x0

    const/16 v33, 0x4

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\ub144 "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x4

    const/16 v33, 0x6

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\uc6d4 "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x6

    const/16 v33, 0x8

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\uc77c "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1802
    const-string v31, "date_text"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1807
    .end local v4    # "aa":I
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v7    # "date":Ljava/lang/String;
    .end local v8    # "day":Ljava/lang/String;
    .end local v9    # "day1":Ljava/util/Date;
    .end local v12    # "format":Ljava/text/SimpleDateFormat;
    .end local v29    # "week":Ljava/lang/String;
    .end local v30    # "weekDay":Ljava/lang/String;
    :goto_5
    const-string v31, "info_text"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1809
    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/Message;->getSenderId()Ljava/lang/String;

    move-result-object v31

    invoke-static {}, Lcom/sendbird/android/SendBird;->getUserId()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_11

    .line 1810
    const-string v31, "left_container"

    const-class v32, Landroid/view/View;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 1811
    const-string v31, "right_container"

    const-class v32, Landroid/view/View;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 1814
    const-string v31, "right_name"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/Message;->getSenderName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1815
    const-string v31, "right_message"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/Message;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1816
    const-string v31, "right_time"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/Message;->getTimestamp()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$1800(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1818
    const/16 v23, 0x0

    .line 1819
    .local v23, "readCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_4
    :goto_6
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_e

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1820
    .local v19, "key":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/Message;->getSenderId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 1821
    add-int/lit8 v23, v23, 0x1

    .line 1822
    goto :goto_6

    .line 1739
    .end local v19    # "key":Ljava/lang/String;
    .end local v23    # "readCount":I
    .restart local v13    # "i":I
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1769
    .end local v13    # "i":I
    .restart local v8    # "day":Ljava/lang/String;
    .restart local v9    # "day1":Ljava/util/Date;
    .restart local v12    # "format":Ljava/text/SimpleDateFormat;
    .restart local v29    # "week":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1770
    .local v10, "e":Ljava/text/ParseException;
    invoke-virtual {v10}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_3

    .line 1782
    .end local v10    # "e":Ljava/text/ParseException;
    .restart local v4    # "aa":I
    .restart local v6    # "cal":Ljava/util/Calendar;
    .restart local v30    # "weekDay":Ljava/lang/String;
    :cond_6
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v4, v0, :cond_7

    .line 1783
    const-string v30, "\uc6d4\uc694\uc77c"

    goto/16 :goto_4

    .line 1784
    :cond_7
    const/16 v31, 0x2

    move/from16 v0, v31

    if-ne v4, v0, :cond_8

    .line 1785
    const-string v30, "\ud654\uc694\uc77c"

    goto/16 :goto_4

    .line 1786
    :cond_8
    const/16 v31, 0x3

    move/from16 v0, v31

    if-ne v4, v0, :cond_9

    .line 1787
    const-string v30, "\uc218\uc694\uc77c"

    goto/16 :goto_4

    .line 1788
    :cond_9
    const/16 v31, 0x4

    move/from16 v0, v31

    if-ne v4, v0, :cond_a

    .line 1789
    const-string v30, "\ubaa9\uc694\uc77c"

    goto/16 :goto_4

    .line 1790
    :cond_a
    const/16 v31, 0x5

    move/from16 v0, v31

    if-ne v4, v0, :cond_b

    .line 1791
    const-string v30, "\uae08\uc694\uc77c"

    goto/16 :goto_4

    .line 1792
    :cond_b
    const/16 v31, 0x6

    move/from16 v0, v31

    if-ne v4, v0, :cond_3

    .line 1793
    const-string v30, "\ud1a0\uc694\uc77c"

    goto/16 :goto_4

    .line 1804
    .end local v4    # "aa":I
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v8    # "day":Ljava/lang/String;
    .end local v9    # "day1":Ljava/util/Date;
    .end local v12    # "format":Ljava/text/SimpleDateFormat;
    .end local v29    # "week":Ljava/lang/String;
    .end local v30    # "weekDay":Ljava/lang/String;
    :cond_c
    const-string v31, "date_text"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1824
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v23    # "readCount":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Long;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/Message;->getTimestamp()J

    move-result-wide v36

    cmp-long v31, v34, v36

    if-ltz v31, :cond_4

    .line 1825
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_6

    .line 1828
    .end local v19    # "key":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Hashtable;->size()I

    move-result v31

    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_10

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Hashtable;->size()I

    move-result v31

    sub-int v31, v31, v23

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_f

    .line 1830
    const-string v31, "right_status"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/Hashtable;->size()I

    move-result v33

    sub-int v33, v33, v23

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1839
    :goto_7
    const-string v31, "right_container"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v31

    new-instance v32, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;Ljava/lang/Object;)V

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_1

    .line 1832
    :cond_f
    const-string v31, "right_status"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const-string v32, "1"

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1835
    :cond_10
    const-string v31, "right_status"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1882
    .end local v23    # "readCount":I
    :cond_11
    const-string v31, "left_container"

    const-class v32, Landroid/view/View;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 1883
    const-string v31, "right_container"

    const-class v32, Landroid/view/View;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 1885
    const/16 v22, 0x0

    .line 1886
    .local v22, "pre":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-eqz v31, :cond_12

    .line 1887
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_12

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    sub-int v31, v32, v31

    add-int/lit8 v32, p1, -0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 1889
    const/16 v22, 0x1

    .line 1895
    .end local v13    # "i":I
    :cond_12
    if-eqz p1, :cond_13

    .line 1901
    :cond_13
    if-nez v14, :cond_1a

    if-nez v22, :cond_1a

    if-eqz p1, :cond_1a

    .line 1903
    const-string v21, ""

    .line 1904
    .local v21, "name":Ljava/lang/String;
    add-int/lit8 v31, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->getItemViewType(I)I

    move-result v31

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    .line 1905
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    add-int/lit8 v32, p1, -0x1

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/sendbird/android/model/FileLink;

    invoke-virtual/range {v31 .. v31}, Lcom/sendbird/android/model/FileLink;->getSenderName()Ljava/lang/String;

    move-result-object v21

    .line 1909
    :cond_14
    :goto_9
    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/Message;->getSenderName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_15

    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/Message;->getSenderName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_19

    .line 1910
    :cond_15
    const-string v31, "left_thumbnail"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    const/16 v32, 0x4

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1911
    const-string v31, "left_name"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1926
    .end local v21    # "name":Ljava/lang/String;
    :goto_a
    const-string v31, "left_message"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/Message;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1927
    const-string v31, "left_time"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/Message;->getTimestamp()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$1800(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1929
    const-string v31, "left_thumbnail"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1930
    const-string v31, "left_thumbnail"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v31

    new-instance v32, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$7;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$7;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)V

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1942
    const/16 v23, 0x0

    .line 1943
    .restart local v23    # "readCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_16
    :goto_b
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1c

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1944
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/Message;->getSenderId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 1945
    add-int/lit8 v23, v23, 0x1

    .line 1946
    goto :goto_b

    .line 1887
    .end local v19    # "key":Ljava/lang/String;
    .end local v23    # "readCount":I
    .restart local v13    # "i":I
    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_8

    .line 1906
    .end local v13    # "i":I
    .restart local v21    # "name":Ljava/lang/String;
    :cond_18
    add-int/lit8 v31, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->getItemViewType(I)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_14

    .line 1907
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    add-int/lit8 v32, p1, -0x1

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/sendbird/android/model/Message;

    invoke-virtual/range {v31 .. v31}, Lcom/sendbird/android/model/Message;->getSenderName()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_9

    .line 1913
    :cond_19
    const-string v31, "left_thumbnail"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1914
    const-string v31, "left_name"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1915
    const-string v31, "left_thumbnail"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/Message;->getSenderImageUrl()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    invoke-static/range {v31 .. v33}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$1900(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 1916
    const-string v31, "left_name"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/Message;->getSenderName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1919
    .end local v21    # "name":Ljava/lang/String;
    :cond_1a
    const-string v31, "left_thumbnail"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1920
    const-string v31, "left_name"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1921
    const-string v31, "left_thumbnail"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/Message;->getSenderImageUrl()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    invoke-static/range {v31 .. v33}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$1900(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 1922
    const-string v31, "left_name"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/Message;->getSenderName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1949
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v23    # "readCount":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Long;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    invoke-virtual/range {v20 .. v20}, Lcom/sendbird/android/model/Message;->getTimestamp()J

    move-result-wide v36

    cmp-long v31, v34, v36

    if-ltz v31, :cond_16

    .line 1950
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_b

    .line 1954
    .end local v19    # "key":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Hashtable;->size()I

    move-result v31

    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_1e

    .line 1955
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Hashtable;->size()I

    move-result v31

    sub-int v31, v31, v23

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_1d

    .line 1956
    const-string v31, "left_status"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/Hashtable;->size()I

    move-result v33

    sub-int v33, v33, v23

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1958
    :cond_1d
    const-string v31, "left_status"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const-string v32, "1"

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1961
    :cond_1e
    const-string v31, "left_status"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .end local v14    # "isDisplay":Z
    .end local v20    # "message":Lcom/sendbird/android/model/Message;
    .end local v22    # "pre":Z
    .end local v23    # "readCount":I
    :pswitch_8
    move-object/from16 v24, v16

    .line 2074
    check-cast v24, Lcom/sendbird/android/model/SystemMessage;

    .line 2075
    .local v24, "systemMessage":Lcom/sendbird/android/model/SystemMessage;
    const-string v31, "message"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    invoke-virtual/range {v24 .. v24}, Lcom/sendbird/android/model/SystemMessage;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .end local v24    # "systemMessage":Lcom/sendbird/android/model/SystemMessage;
    :pswitch_9
    move-object/from16 v5, v16

    .line 2078
    check-cast v5, Lcom/sendbird/android/model/BroadcastMessage;

    .line 2079
    .local v5, "broadcastMessage":Lcom/sendbird/android/model/BroadcastMessage;
    const-string v31, "message"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/sendbird/android/model/BroadcastMessage;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .end local v5    # "broadcastMessage":Lcom/sendbird/android/model/BroadcastMessage;
    :pswitch_a
    move-object/from16 v11, v16

    .line 2082
    check-cast v11, Lcom/sendbird/android/model/FileLink;

    .line 2084
    .local v11, "fileLink":Lcom/sendbird/android/model/FileLink;
    const/4 v15, 0x0

    .line 2085
    .local v15, "isFDisplay":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-eqz v31, :cond_1f

    .line 2086
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_1f

    .line 2087
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    sub-int v31, v32, v31

    move/from16 v0, v31

    move/from16 v1, p1

    if-ne v0, v1, :cond_23

    .line 2088
    const/4 v15, 0x1

    .line 2094
    .end local v13    # "i":I
    :cond_1f
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v15, v0, :cond_2a

    .line 2095
    const-string v31, "date_text"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2096
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getTimestamp()J

    move-result-wide v32

    invoke-static/range {v31 .. v33}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$1400(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 2097
    .restart local v8    # "day":Ljava/lang/String;
    const-string v29, ""

    .line 2099
    .restart local v29    # "week":Ljava/lang/String;
    move-object/from16 v29, v8

    .line 2105
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v31, "yyyy-MM-dd"

    move-object/from16 v0, v31

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2106
    .restart local v12    # "format":Ljava/text/SimpleDateFormat;
    const/4 v9, 0x0

    .line 2109
    .restart local v9    # "day1":Ljava/util/Date;
    :try_start_1
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 2114
    :goto_d
    invoke-virtual {v12, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v29

    .line 2116
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 2117
    .restart local v6    # "cal":Ljava/util/Calendar;
    invoke-virtual {v6, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2118
    const/16 v31, 0x7

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v31

    add-int/lit8 v4, v31, -0x1

    .line 2119
    .restart local v4    # "aa":I
    const-string v30, ""

    .line 2121
    .restart local v30    # "weekDay":Ljava/lang/String;
    if-nez v4, :cond_24

    .line 2122
    const-string v30, "\uc77c\uc694\uc77c"

    .line 2137
    :cond_20
    :goto_e
    const-string v7, ""

    .line 2138
    .restart local v7    # "date":Ljava/lang/String;
    const-string v31, "-"

    const-string v32, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    .line 2140
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v32, 0x0

    const/16 v33, 0x4

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\ub144 "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x4

    const/16 v33, 0x6

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\uc6d4 "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x6

    const/16 v33, 0x8

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\uc77c "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2142
    const-string v31, "date_text"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2148
    .end local v4    # "aa":I
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v7    # "date":Ljava/lang/String;
    .end local v8    # "day":Ljava/lang/String;
    .end local v9    # "day1":Ljava/util/Date;
    .end local v12    # "format":Ljava/text/SimpleDateFormat;
    .end local v29    # "week":Ljava/lang/String;
    .end local v30    # "weekDay":Ljava/lang/String;
    :goto_f
    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderId()Ljava/lang/String;

    move-result-object v31

    invoke-static {}, Lcom/sendbird/android/SendBird;->getUserId()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_30

    .line 2149
    const-string v31, "left_container"

    const-class v32, Landroid/view/View;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 2150
    const-string v31, "right_container"

    const-class v32, Landroid/view/View;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 2153
    const-string v31, "right_name"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2156
    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/sendbird/android/model/FileInfo;->getType()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    const-string v32, "application/octet-stream"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_21

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/sendbird/android/model/FileInfo;->getType()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    const-string v32, "image"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_21

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/sendbird/android/model/FileInfo;->getType()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    const-string v32, "video/png"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_21

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/sendbird/android/model/FileInfo;->getType()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    const-string v32, "image/jpeg"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2b

    .line 2157
    :cond_21
    const-string v31, "right_image"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/sendbird/android/model/FileInfo;->getUrl()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$2000(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 2161
    :goto_10
    const-string v31, "right_time"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getTimestamp()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$1800(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2163
    const/16 v23, 0x0

    .line 2164
    .restart local v23    # "readCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_22
    :goto_11
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2d

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2165
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2c

    .line 2166
    add-int/lit8 v23, v23, 0x1

    .line 2167
    goto :goto_11

    .line 2086
    .end local v19    # "key":Ljava/lang/String;
    .end local v23    # "readCount":I
    .restart local v13    # "i":I
    :cond_23
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_c

    .line 2110
    .end local v13    # "i":I
    .restart local v8    # "day":Ljava/lang/String;
    .restart local v9    # "day1":Ljava/util/Date;
    .restart local v12    # "format":Ljava/text/SimpleDateFormat;
    .restart local v29    # "week":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 2111
    .restart local v10    # "e":Ljava/text/ParseException;
    invoke-virtual {v10}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_d

    .line 2123
    .end local v10    # "e":Ljava/text/ParseException;
    .restart local v4    # "aa":I
    .restart local v6    # "cal":Ljava/util/Calendar;
    .restart local v30    # "weekDay":Ljava/lang/String;
    :cond_24
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v4, v0, :cond_25

    .line 2124
    const-string v30, "\uc6d4\uc694\uc77c"

    goto/16 :goto_e

    .line 2125
    :cond_25
    const/16 v31, 0x2

    move/from16 v0, v31

    if-ne v4, v0, :cond_26

    .line 2126
    const-string v30, "\ud654\uc694\uc77c"

    goto/16 :goto_e

    .line 2127
    :cond_26
    const/16 v31, 0x3

    move/from16 v0, v31

    if-ne v4, v0, :cond_27

    .line 2128
    const-string v30, "\uc218\uc694\uc77c"

    goto/16 :goto_e

    .line 2129
    :cond_27
    const/16 v31, 0x4

    move/from16 v0, v31

    if-ne v4, v0, :cond_28

    .line 2130
    const-string v30, "\ubaa9\uc694\uc77c"

    goto/16 :goto_e

    .line 2131
    :cond_28
    const/16 v31, 0x5

    move/from16 v0, v31

    if-ne v4, v0, :cond_29

    .line 2132
    const-string v30, "\uae08\uc694\uc77c"

    goto/16 :goto_e

    .line 2133
    :cond_29
    const/16 v31, 0x6

    move/from16 v0, v31

    if-ne v4, v0, :cond_20

    .line 2134
    const-string v30, "\ud1a0\uc694\uc77c"

    goto/16 :goto_e

    .line 2145
    .end local v4    # "aa":I
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v8    # "day":Ljava/lang/String;
    .end local v9    # "day1":Ljava/util/Date;
    .end local v12    # "format":Ljava/text/SimpleDateFormat;
    .end local v29    # "week":Ljava/lang/String;
    .end local v30    # "weekDay":Ljava/lang/String;
    :cond_2a
    const-string v31, "date_text"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_f

    .line 2159
    :cond_2b
    const-string v31, "right_image"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    const v32, 0x7f0700b0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 2170
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v23    # "readCount":I
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Long;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getTimestamp()J

    move-result-wide v36

    cmp-long v31, v34, v36

    if-ltz v31, :cond_22

    .line 2171
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_11

    .line 2174
    .end local v19    # "key":Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Hashtable;->size()I

    move-result v31

    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_2f

    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Hashtable;->size()I

    move-result v31

    sub-int v31, v31, v23

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_2e

    .line 2176
    const-string v31, "right_status"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/Hashtable;->size()I

    move-result v33

    sub-int v33, v33, v23

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2255
    :goto_12
    const-string v31, "left_image"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 2256
    const-string v31, "left_image"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    new-instance v32, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$8;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$8;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)V

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2271
    const-string v31, "left_image"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v31

    new-instance v32, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$9;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$9;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)V

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2303
    const-string v31, "right_image"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 2304
    const-string v31, "right_image"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    new-instance v32, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$10;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$10;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)V

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2319
    const-string v31, "right_image"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v31

    new-instance v32, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$11;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$11;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)V

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_1

    .line 2178
    :cond_2e
    const-string v31, "right_status"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const-string v32, "1"

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 2181
    :cond_2f
    const-string v31, "right_status"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 2185
    .end local v23    # "readCount":I
    :cond_30
    const-string v31, "left_container"

    const-class v32, Landroid/view/View;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 2186
    const-string v31, "right_container"

    const-class v32, Landroid/view/View;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 2188
    const/16 v22, 0x0

    .line 2189
    .restart local v22    # "pre":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-eqz v31, :cond_31

    .line 2190
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_31

    .line 2191
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    sub-int v31, v32, v31

    add-int/lit8 v32, p1, -0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_36

    .line 2192
    const/16 v22, 0x1

    .line 2198
    .end local v13    # "i":I
    :cond_31
    if-nez v15, :cond_39

    if-nez v22, :cond_39

    if-eqz p1, :cond_39

    .line 2199
    const-string v21, ""

    .line 2200
    .restart local v21    # "name":Ljava/lang/String;
    add-int/lit8 v31, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->getItemViewType(I)I

    move-result v31

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_37

    .line 2201
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    add-int/lit8 v32, p1, -0x1

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/sendbird/android/model/FileLink;

    invoke-virtual/range {v31 .. v31}, Lcom/sendbird/android/model/FileLink;->getSenderName()Ljava/lang/String;

    move-result-object v21

    .line 2206
    :cond_32
    :goto_14
    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_33

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_38

    .line 2207
    :cond_33
    const-string v31, "left_thumbnail"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    const/16 v32, 0x4

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2208
    const-string v31, "left_name"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2225
    .end local v21    # "name":Ljava/lang/String;
    :goto_15
    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/sendbird/android/model/FileInfo;->getType()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    const-string v32, "application/octet-stream"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_34

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/sendbird/android/model/FileInfo;->getType()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    const-string v32, "image"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_34

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/sendbird/android/model/FileInfo;->getType()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    const-string v32, "video/png"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_3a

    .line 2226
    :cond_34
    const-string v31, "left_image"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/sendbird/android/model/FileInfo;->getUrl()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$2000(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 2230
    :goto_16
    const-string v31, "left_time"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getTimestamp()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$1800(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2233
    const/16 v23, 0x0

    .line 2234
    .restart local v23    # "readCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_35
    :goto_17
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_3c

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2235
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3b

    .line 2236
    add-int/lit8 v23, v23, 0x1

    .line 2237
    goto :goto_17

    .line 2190
    .end local v19    # "key":Ljava/lang/String;
    .end local v23    # "readCount":I
    .restart local v13    # "i":I
    :cond_36
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_13

    .line 2202
    .end local v13    # "i":I
    .restart local v21    # "name":Ljava/lang/String;
    :cond_37
    add-int/lit8 v31, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->getItemViewType(I)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_32

    .line 2203
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    add-int/lit8 v32, p1, -0x1

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/sendbird/android/model/Message;

    invoke-virtual/range {v31 .. v31}, Lcom/sendbird/android/model/Message;->getSenderName()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_14

    .line 2210
    :cond_38
    const-string v31, "left_thumbnail"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2211
    const-string v31, "left_name"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2212
    const-string v31, "left_thumbnail"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderImageUrl()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    invoke-static/range {v31 .. v33}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$1900(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 2213
    const-string v31, "left_name"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 2216
    .end local v21    # "name":Ljava/lang/String;
    :cond_39
    const-string v31, "left_thumbnail"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2217
    const-string v31, "left_name"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2218
    const-string v31, "left_thumbnail"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderImageUrl()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    invoke-static/range {v31 .. v33}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$1900(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 2219
    const-string v31, "left_name"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getSenderName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 2228
    :cond_3a
    const-string v31, "left_image"

    const-class v32, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    const v32, 0x7f0700b0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16

    .line 2240
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v23    # "readCount":I
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Long;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    invoke-virtual {v11}, Lcom/sendbird/android/model/FileLink;->getTimestamp()J

    move-result-wide v36

    cmp-long v31, v34, v36

    if-ltz v31, :cond_35

    .line 2241
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_17

    .line 2244
    .end local v19    # "key":Ljava/lang/String;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Hashtable;->size()I

    move-result v31

    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_3e

    .line 2245
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Hashtable;->size()I

    move-result v31

    sub-int v31, v31, v23

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_3d

    .line 2246
    const-string v31, "left_status"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/Hashtable;->size()I

    move-result v33

    sub-int v33, v33, v23

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 2248
    :cond_3d
    const-string v31, "left_status"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const-string v32, "1"

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 2251
    :cond_3e
    const-string v31, "left_status"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .end local v11    # "fileLink":Lcom/sendbird/android/model/FileLink;
    .end local v15    # "isFDisplay":Z
    .end local v22    # "pre":Z
    .end local v23    # "readCount":I
    :pswitch_b
    move-object/from16 v31, v16

    .line 2353
    check-cast v31, Ljava/util/List;

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v17

    .line 2354
    .local v17, "itemCount":I
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v16, Ljava/util/List;

    .end local v16    # "item":Ljava/lang/Object;
    const/16 v32, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v31, 0x1

    move/from16 v0, v17

    move/from16 v1, v31

    if-le v0, v1, :cond_3f

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " +"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    add-int/lit8 v33, v17, -0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    :goto_18
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v31, 0x1

    move/from16 v0, v17

    move/from16 v1, v31

    if-le v0, v1, :cond_40

    const-string v31, " are "

    :goto_19
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "typing..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 2358
    .local v26, "typeMsg":Ljava/lang/String;
    const-string v31, "message"

    const-class v32, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2354
    .end local v26    # "typeMsg":Ljava/lang/String;
    :cond_3f
    const-string v31, ""

    goto :goto_18

    :cond_40
    const-string v31, " is "

    goto :goto_19

    .line 1460
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 1731
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1448
    const/4 v0, 0x6

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
    .line 1204
    .local p1, "readStatus":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    .line 1205
    return-void
.end method

.method public setMembers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/model/MessagingChannel$Member;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1422
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/model/MessagingChannel$Member;>;"
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mMembers:Ljava/util/List;

    .line 1423
    return-void
.end method

.method public setReadStatus(Ljava/lang/String;J)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .prologue
    .line 1208
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-gez v0, :cond_1

    .line 1209
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mReadStatus:Ljava/util/Hashtable;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    :cond_1
    return-void
.end method

.method public setTypeStatus(Ljava/lang/String;J)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .prologue
    .line 1214
    invoke-static {}, Lcom/sendbird/android/SendBird;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    :goto_0
    return-void

    .line 1218
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 1219
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mTypeStatus:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1221
    :cond_1
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->mTypeStatus:Ljava/util/Hashtable;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
