.class public final enum Lcom/sendbird/android/SendBird$SendBirdDataType;
.super Ljava/lang/Enum;
.source "SendBird.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/SendBird;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SendBirdDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sendbird/android/SendBird$SendBirdDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sendbird/android/SendBird$SendBirdDataType;

.field public static final enum BroadcastMessage:Lcom/sendbird/android/SendBird$SendBirdDataType;

.field public static final enum EndTyping:Lcom/sendbird/android/SendBird$SendBirdDataType;

.field public static final enum FileLink:Lcom/sendbird/android/SendBird$SendBirdDataType;

.field public static final enum Join:Lcom/sendbird/android/SendBird$SendBirdDataType;

.field public static final enum Message:Lcom/sendbird/android/SendBird$SendBirdDataType;

.field public static final enum None:Lcom/sendbird/android/SendBird$SendBirdDataType;

.field public static final enum ReadStatus:Lcom/sendbird/android/SendBird$SendBirdDataType;

.field public static final enum StartTyping:Lcom/sendbird/android/SendBird$SendBirdDataType;

.field public static final enum SystemMessage:Lcom/sendbird/android/SendBird$SendBirdDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdDataType;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/sendbird/android/SendBird$SendBirdDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sendbird/android/SendBird$SendBirdDataType;->None:Lcom/sendbird/android/SendBird$SendBirdDataType;

    .line 88
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdDataType;

    const-string v1, "Join"

    invoke-direct {v0, v1, v4}, Lcom/sendbird/android/SendBird$SendBirdDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sendbird/android/SendBird$SendBirdDataType;->Join:Lcom/sendbird/android/SendBird$SendBirdDataType;

    .line 89
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdDataType;

    const-string v1, "Message"

    invoke-direct {v0, v1, v5}, Lcom/sendbird/android/SendBird$SendBirdDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sendbird/android/SendBird$SendBirdDataType;->Message:Lcom/sendbird/android/SendBird$SendBirdDataType;

    .line 90
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdDataType;

    const-string v1, "SystemMessage"

    invoke-direct {v0, v1, v6}, Lcom/sendbird/android/SendBird$SendBirdDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sendbird/android/SendBird$SendBirdDataType;->SystemMessage:Lcom/sendbird/android/SendBird$SendBirdDataType;

    .line 91
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdDataType;

    const-string v1, "BroadcastMessage"

    invoke-direct {v0, v1, v7}, Lcom/sendbird/android/SendBird$SendBirdDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sendbird/android/SendBird$SendBirdDataType;->BroadcastMessage:Lcom/sendbird/android/SendBird$SendBirdDataType;

    .line 92
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdDataType;

    const-string v1, "FileLink"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sendbird/android/SendBird$SendBirdDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sendbird/android/SendBird$SendBirdDataType;->FileLink:Lcom/sendbird/android/SendBird$SendBirdDataType;

    .line 93
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdDataType;

    const-string v1, "ReadStatus"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sendbird/android/SendBird$SendBirdDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sendbird/android/SendBird$SendBirdDataType;->ReadStatus:Lcom/sendbird/android/SendBird$SendBirdDataType;

    .line 94
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdDataType;

    const-string v1, "StartTyping"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sendbird/android/SendBird$SendBirdDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sendbird/android/SendBird$SendBirdDataType;->StartTyping:Lcom/sendbird/android/SendBird$SendBirdDataType;

    .line 95
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdDataType;

    const-string v1, "EndTyping"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sendbird/android/SendBird$SendBirdDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sendbird/android/SendBird$SendBirdDataType;->EndTyping:Lcom/sendbird/android/SendBird$SendBirdDataType;

    .line 86
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sendbird/android/SendBird$SendBirdDataType;

    sget-object v1, Lcom/sendbird/android/SendBird$SendBirdDataType;->None:Lcom/sendbird/android/SendBird$SendBirdDataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sendbird/android/SendBird$SendBirdDataType;->Join:Lcom/sendbird/android/SendBird$SendBirdDataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sendbird/android/SendBird$SendBirdDataType;->Message:Lcom/sendbird/android/SendBird$SendBirdDataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sendbird/android/SendBird$SendBirdDataType;->SystemMessage:Lcom/sendbird/android/SendBird$SendBirdDataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sendbird/android/SendBird$SendBirdDataType;->BroadcastMessage:Lcom/sendbird/android/SendBird$SendBirdDataType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sendbird/android/SendBird$SendBirdDataType;->FileLink:Lcom/sendbird/android/SendBird$SendBirdDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sendbird/android/SendBird$SendBirdDataType;->ReadStatus:Lcom/sendbird/android/SendBird$SendBirdDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sendbird/android/SendBird$SendBirdDataType;->StartTyping:Lcom/sendbird/android/SendBird$SendBirdDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sendbird/android/SendBird$SendBirdDataType;->EndTyping:Lcom/sendbird/android/SendBird$SendBirdDataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sendbird/android/SendBird$SendBirdDataType;->$VALUES:[Lcom/sendbird/android/SendBird$SendBirdDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sendbird/android/SendBird$SendBirdDataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    const-class v0, Lcom/sendbird/android/SendBird$SendBirdDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/SendBird$SendBirdDataType;

    return-object v0
.end method

.method public static values()[Lcom/sendbird/android/SendBird$SendBirdDataType;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/sendbird/android/SendBird$SendBirdDataType;->$VALUES:[Lcom/sendbird/android/SendBird$SendBirdDataType;

    invoke-virtual {v0}, [Lcom/sendbird/android/SendBird$SendBirdDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sendbird/android/SendBird$SendBirdDataType;

    return-object v0
.end method
