.class Lcom/sendbird/android/MessagingChannelListQuery$2$2;
.super Ljava/lang/Object;
.source "MessagingChannelListQuery.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/MessagingChannelListQuery$2;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sendbird/android/model/MessagingChannel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/MessagingChannelListQuery$2;


# direct methods
.method constructor <init>(Lcom/sendbird/android/MessagingChannelListQuery$2;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sendbird/android/MessagingChannelListQuery$2$2;->this$1:Lcom/sendbird/android/MessagingChannelListQuery$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sendbird/android/model/MessagingChannel;Lcom/sendbird/android/model/MessagingChannel;)I
    .locals 5
    .param p1, "lhs"    # Lcom/sendbird/android/model/MessagingChannel;
    .param p2, "rhs"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/sendbird/android/model/MessagingChannel;->getLastMessageTimestamp()J

    move-result-wide v0

    .line 140
    .local v0, "lhsv":J
    invoke-virtual {p2}, Lcom/sendbird/android/model/MessagingChannel;->getLastMessageTimestamp()J

    move-result-wide v2

    .line 141
    .local v2, "rhsv":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 136
    check-cast p1, Lcom/sendbird/android/model/MessagingChannel;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sendbird/android/model/MessagingChannel;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sendbird/android/MessagingChannelListQuery$2$2;->compare(Lcom/sendbird/android/model/MessagingChannel;Lcom/sendbird/android/model/MessagingChannel;)I

    move-result v0

    return v0
.end method
