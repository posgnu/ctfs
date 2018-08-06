.class public Lco/kr/festfive/model/ReservationTimeListItem;
.super Ljava/lang/Object;
.source "ReservationTimeListItem.java"


# instance fields
.field private end:Ljava/lang/String;

.field private start:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_profile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "userProfile"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lco/kr/festfive/model/ReservationTimeListItem;->start:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lco/kr/festfive/model/ReservationTimeListItem;->end:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lco/kr/festfive/model/ReservationTimeListItem;->user_id:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lco/kr/festfive/model/ReservationTimeListItem;->user_profile:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lco/kr/festfive/model/ReservationTimeListItem;->end:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lco/kr/festfive/model/ReservationTimeListItem;->start:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lco/kr/festfive/model/ReservationTimeListItem;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUserProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lco/kr/festfive/model/ReservationTimeListItem;->user_profile:Ljava/lang/String;

    return-object v0
.end method
