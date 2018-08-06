.class Lcom/sendbird/android/SendBird$SendBirdClient$65$2;
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

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient$65;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3324
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$65;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3327
    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$65;

    iget-object v1, v1, Lcom/sendbird/android/SendBird$SendBirdClient$65;->val$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3328
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$65;

    iget-object v1, v1, Lcom/sendbird/android/SendBird$SendBirdClient$65;->val$handler:Lcom/sendbird/android/SendBirdFileUploadEventHandler;

    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65$2;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$65;

    iget-object v3, v3, Lcom/sendbird/android/SendBird$SendBirdClient$65;->val$type:Ljava/lang/String;

    iget-object v4, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$65;

    iget v4, v4, Lcom/sendbird/android/SendBird$SendBirdClient$65;->val$size:I

    iget-object v5, p0, Lcom/sendbird/android/SendBird$SendBirdClient$65$2;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$65;

    iget-object v5, v5, Lcom/sendbird/android/SendBird$SendBirdClient$65;->val$customField:Ljava/lang/String;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/sendbird/android/model/FileInfo;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/sendbird/android/model/FileInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sendbird/android/SendBirdFileUploadEventHandler;->onUpload(Lcom/sendbird/android/model/FileInfo;Ljava/lang/Exception;)V

    .line 3329
    return-void
.end method
