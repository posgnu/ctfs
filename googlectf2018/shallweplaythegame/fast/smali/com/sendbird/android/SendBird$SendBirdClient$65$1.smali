.class Lcom/sendbird/android/SendBird$SendBirdClient$65$1;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient$65;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/SendBird$SendBirdClient$65;

.field final synthetic val$e:Lcom/sendbird/android/SendBirdException;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient$65;Lcom/sendbird/android/SendBirdException;)V
    .locals 0

    .prologue
    .line 3310
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$65;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65$1;->val$e:Lcom/sendbird/android/SendBirdException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$65;

    iget-object v0, v0, Lcom/sendbird/android/SendBird$SendBirdClient$65;->val$handler:Lcom/sendbird/android/SendBirdFileUploadEventHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65$1;->val$e:Lcom/sendbird/android/SendBirdException;

    invoke-interface {v0, v1, v2}, Lcom/sendbird/android/SendBirdFileUploadEventHandler;->onUpload(Lcom/sendbird/android/model/FileInfo;Ljava/lang/Exception;)V

    .line 3314
    return-void
.end method
