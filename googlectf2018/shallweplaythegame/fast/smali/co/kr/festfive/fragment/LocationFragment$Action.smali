.class public final enum Lco/kr/festfive/fragment/LocationFragment$Action;
.super Ljava/lang/Enum;
.source "LocationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/fragment/LocationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lco/kr/festfive/fragment/LocationFragment$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lco/kr/festfive/fragment/LocationFragment$Action;

.field public static final enum BT:Lco/kr/festfive/fragment/LocationFragment$Action;

.field public static final enum LR:Lco/kr/festfive/fragment/LocationFragment$Action;

.field public static final enum None:Lco/kr/festfive/fragment/LocationFragment$Action;

.field public static final enum RL:Lco/kr/festfive/fragment/LocationFragment$Action;

.field public static final enum TB:Lco/kr/festfive/fragment/LocationFragment$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    new-instance v0, Lco/kr/festfive/fragment/LocationFragment$Action;

    const-string v1, "LR"

    invoke-direct {v0, v1, v2}, Lco/kr/festfive/fragment/LocationFragment$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/kr/festfive/fragment/LocationFragment$Action;->LR:Lco/kr/festfive/fragment/LocationFragment$Action;

    .line 112
    new-instance v0, Lco/kr/festfive/fragment/LocationFragment$Action;

    const-string v1, "RL"

    invoke-direct {v0, v1, v3}, Lco/kr/festfive/fragment/LocationFragment$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/kr/festfive/fragment/LocationFragment$Action;->RL:Lco/kr/festfive/fragment/LocationFragment$Action;

    .line 113
    new-instance v0, Lco/kr/festfive/fragment/LocationFragment$Action;

    const-string v1, "TB"

    invoke-direct {v0, v1, v4}, Lco/kr/festfive/fragment/LocationFragment$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/kr/festfive/fragment/LocationFragment$Action;->TB:Lco/kr/festfive/fragment/LocationFragment$Action;

    .line 114
    new-instance v0, Lco/kr/festfive/fragment/LocationFragment$Action;

    const-string v1, "BT"

    invoke-direct {v0, v1, v5}, Lco/kr/festfive/fragment/LocationFragment$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/kr/festfive/fragment/LocationFragment$Action;->BT:Lco/kr/festfive/fragment/LocationFragment$Action;

    .line 115
    new-instance v0, Lco/kr/festfive/fragment/LocationFragment$Action;

    const-string v1, "None"

    invoke-direct {v0, v1, v6}, Lco/kr/festfive/fragment/LocationFragment$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/kr/festfive/fragment/LocationFragment$Action;->None:Lco/kr/festfive/fragment/LocationFragment$Action;

    .line 110
    const/4 v0, 0x5

    new-array v0, v0, [Lco/kr/festfive/fragment/LocationFragment$Action;

    sget-object v1, Lco/kr/festfive/fragment/LocationFragment$Action;->LR:Lco/kr/festfive/fragment/LocationFragment$Action;

    aput-object v1, v0, v2

    sget-object v1, Lco/kr/festfive/fragment/LocationFragment$Action;->RL:Lco/kr/festfive/fragment/LocationFragment$Action;

    aput-object v1, v0, v3

    sget-object v1, Lco/kr/festfive/fragment/LocationFragment$Action;->TB:Lco/kr/festfive/fragment/LocationFragment$Action;

    aput-object v1, v0, v4

    sget-object v1, Lco/kr/festfive/fragment/LocationFragment$Action;->BT:Lco/kr/festfive/fragment/LocationFragment$Action;

    aput-object v1, v0, v5

    sget-object v1, Lco/kr/festfive/fragment/LocationFragment$Action;->None:Lco/kr/festfive/fragment/LocationFragment$Action;

    aput-object v1, v0, v6

    sput-object v0, Lco/kr/festfive/fragment/LocationFragment$Action;->$VALUES:[Lco/kr/festfive/fragment/LocationFragment$Action;

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
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/kr/festfive/fragment/LocationFragment$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    const-class v0, Lco/kr/festfive/fragment/LocationFragment$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/fragment/LocationFragment$Action;

    return-object v0
.end method

.method public static values()[Lco/kr/festfive/fragment/LocationFragment$Action;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lco/kr/festfive/fragment/LocationFragment$Action;->$VALUES:[Lco/kr/festfive/fragment/LocationFragment$Action;

    invoke-virtual {v0}, [Lco/kr/festfive/fragment/LocationFragment$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/kr/festfive/fragment/LocationFragment$Action;

    return-object v0
.end method