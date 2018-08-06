.class public Lcom/sendbird/android/SendBird$LoginOption;
.super Ljava/lang/Object;
.source "SendBird.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/SendBird;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginOption"
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;

.field private gcmRegToken:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/SendBird$LoginOption;->userId:Ljava/lang/String;

    .line 510
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/SendBird$LoginOption;->userName:Ljava/lang/String;

    .line 511
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/SendBird$LoginOption;->imageUrl:Ljava/lang/String;

    .line 512
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/SendBird$LoginOption;->accessToken:Ljava/lang/String;

    .line 513
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/SendBird$LoginOption;->gcmRegToken:Ljava/lang/String;

    .line 522
    iput-object p1, p0, Lcom/sendbird/android/SendBird$LoginOption;->userId:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public static build(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;
    .locals 1
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 516
    new-instance v0, Lcom/sendbird/android/SendBird$LoginOption;

    invoke-direct {v0, p0}, Lcom/sendbird/android/SendBird$LoginOption;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/sendbird/android/SendBird$LoginOption;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getGcmRegToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/sendbird/android/SendBird$LoginOption;->gcmRegToken:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/sendbird/android/SendBird$LoginOption;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/sendbird/android/SendBird$LoginOption;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/sendbird/android/SendBird$LoginOption;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/sendbird/android/SendBird$LoginOption;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public setGCMRegToken(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;
    .locals 0
    .param p1, "gcmRegToken"    # Ljava/lang/String;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/sendbird/android/SendBird$LoginOption;->gcmRegToken:Ljava/lang/String;

    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/sendbird/android/SendBird$LoginOption;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setUserName(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/sendbird/android/SendBird$LoginOption;->userName:Ljava/lang/String;

    return-object p0
.end method
