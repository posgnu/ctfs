.class public final enum Lcom/sendbird/android/SendBird$SendBirdConnectionState;
.super Ljava/lang/Enum;
.source "SendBird.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/SendBird;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SendBirdConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sendbird/android/SendBird$SendBirdConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sendbird/android/SendBird$SendBirdConnectionState;

.field public static final enum CLOSED:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

.field public static final enum CLOSING:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

.field public static final enum CONNECTING:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

.field public static final enum OPEN:Lcom/sendbird/android/SendBird$SendBirdConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v2}, Lcom/sendbird/android/SendBird$SendBirdConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->CONNECTING:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    .line 100
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lcom/sendbird/android/SendBird$SendBirdConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->OPEN:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    .line 101
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    const-string v1, "CLOSING"

    invoke-direct {v0, v1, v4}, Lcom/sendbird/android/SendBird$SendBirdConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->CLOSING:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    .line 102
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v5}, Lcom/sendbird/android/SendBird$SendBirdConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->CLOSED:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    sget-object v1, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->CONNECTING:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->OPEN:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->CLOSING:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->CLOSED:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->$VALUES:[Lcom/sendbird/android/SendBird$SendBirdConnectionState;

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
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sendbird/android/SendBird$SendBirdConnectionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    const-class v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/sendbird/android/SendBird$SendBirdConnectionState;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->$VALUES:[Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    invoke-virtual {v0}, [Lcom/sendbird/android/SendBird$SendBirdConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    return-object v0
.end method
