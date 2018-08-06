.class Lco/kr/festfive/activity/IntroActivity$3;
.super Landroid/os/AsyncTask;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/IntroActivity;->registerInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/IntroActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/IntroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/IntroActivity;

    .prologue
    .line 192
    iput-object p1, p0, Lco/kr/festfive/activity/IntroActivity$3;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lco/kr/festfive/activity/IntroActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 197
    const-string v1, ""

    .line 200
    .local v1, "msg":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lco/kr/festfive/activity/IntroActivity$3;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/IntroActivity;->access$500(Lco/kr/festfive/activity/IntroActivity;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v2

    if-nez v2, :cond_0

    .line 201
    iget-object v2, p0, Lco/kr/festfive/activity/IntroActivity$3;->this$0:Lco/kr/festfive/activity/IntroActivity;

    iget-object v3, p0, Lco/kr/festfive/activity/IntroActivity$3;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-virtual {v3}, Lco/kr/festfive/activity/IntroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v3

    invoke-static {v2, v3}, Lco/kr/festfive/activity/IntroActivity;->access$502(Lco/kr/festfive/activity/IntroActivity;Lcom/google/android/gms/gcm/GoogleCloudMessaging;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 204
    :cond_0
    iget-object v2, p0, Lco/kr/festfive/activity/IntroActivity$3;->this$0:Lco/kr/festfive/activity/IntroActivity;

    iget-object v3, p0, Lco/kr/festfive/activity/IntroActivity$3;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/IntroActivity;->access$500(Lco/kr/festfive/activity/IntroActivity;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "550794849888"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lco/kr/festfive/activity/IntroActivity;->access$602(Lco/kr/festfive/activity/IntroActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device registered, registration ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/activity/IntroActivity$3;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/IntroActivity;->access$600(Lco/kr/festfive/activity/IntroActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    iget-object v2, p0, Lco/kr/festfive/activity/IntroActivity$3;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 207
    iget-object v2, p0, Lco/kr/festfive/activity/IntroActivity$3;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    invoke-static {v2, v3}, Lco/kr/festfive/activity/IntroActivity;->access$002(Lco/kr/festfive/activity/IntroActivity;Lco/kr/festfive/manager/FestPreferenceManager;)Lco/kr/festfive/manager/FestPreferenceManager;

    .line 209
    :cond_1
    iget-object v2, p0, Lco/kr/festfive/activity/IntroActivity$3;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v2

    const-string v3, "registration_id"

    iget-object v4, p0, Lco/kr/festfive/activity/IntroActivity$3;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v4}, Lco/kr/festfive/activity/IntroActivity;->access$600(Lco/kr/festfive/activity/IntroActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-object v1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 192
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lco/kr/festfive/activity/IntroActivity$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 221
    iget-object v0, p0, Lco/kr/festfive/activity/IntroActivity$3;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/IntroActivity;->access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lco/kr/festfive/activity/IntroActivity$3;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v1

    invoke-static {v0, v1}, Lco/kr/festfive/activity/IntroActivity;->access$002(Lco/kr/festfive/activity/IntroActivity;Lco/kr/festfive/manager/FestPreferenceManager;)Lco/kr/festfive/manager/FestPreferenceManager;

    .line 227
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/activity/IntroActivity$3;->this$0:Lco/kr/festfive/activity/IntroActivity;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lco/kr/festfive/activity/IntroActivity;->access$702(Lco/kr/festfive/activity/IntroActivity;Landroid/os/Handler;)Landroid/os/Handler;

    .line 228
    iget-object v0, p0, Lco/kr/festfive/activity/IntroActivity$3;->this$0:Lco/kr/festfive/activity/IntroActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/IntroActivity;->access$700(Lco/kr/festfive/activity/IntroActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/activity/IntroActivity$3;->this$0:Lco/kr/festfive/activity/IntroActivity;

    iget-object v1, v1, Lco/kr/festfive/activity/IntroActivity;->irun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    return-void
.end method
