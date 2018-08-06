.class final Lcom/sendbird/android/SendBird$1;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird;->IGAWInit(Landroid/content/Context;Lcom/sendbird/android/SendBird$IGAWInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalAppId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/sendbird/android/SendBird$IGAWInitListener;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$IGAWInitListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sendbird/android/SendBird$1;->val$listener:Lcom/sendbird/android/SendBird$IGAWInitListener;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$1;->val$finalAppId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAdInfo(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    invoke-static {}, Lcom/sendbird/android/SendBird;->access$000()Ljava/lang/String;

    move-result-object p1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$1;->val$listener:Lcom/sendbird/android/SendBird$IGAWInitListener;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/sendbird/android/SendBird$1;->val$listener:Lcom/sendbird/android/SendBird$IGAWInitListener;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$1;->val$finalAppId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/sendbird/android/SendBird$IGAWInitListener;->initialized(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_1
    return-void
.end method
