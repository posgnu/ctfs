.class public Lcom/sendbird/android/SendBirdException;
.super Ljava/lang/Exception;
.source "SendBirdException.java"


# instance fields
.field protected code:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBirdException;->setCode(I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p2}, Lcom/sendbird/android/SendBirdException;->setCode(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/sendbird/android/SendBirdException;->code:I

    return v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/sendbird/android/SendBirdException;->code:I

    .line 19
    return-void
.end method
