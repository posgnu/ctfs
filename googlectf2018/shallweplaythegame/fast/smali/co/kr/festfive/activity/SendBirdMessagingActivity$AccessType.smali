.class final enum Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;
.super Ljava/lang/Enum;
.source "SendBirdMessagingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AccessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

.field public static final enum JOIN:Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

.field public static final enum START:Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    new-instance v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;->START:Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    new-instance v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    const-string v1, "JOIN"

    invoke-direct {v0, v1, v3}, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;->JOIN:Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    sget-object v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;->START:Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    aput-object v1, v0, v2

    sget-object v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;->JOIN:Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    aput-object v1, v0, v3

    sput-object v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;->$VALUES:[Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

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
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const-class v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    return-object v0
.end method

.method public static values()[Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;->$VALUES:[Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    invoke-virtual {v0}, [Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    return-object v0
.end method
