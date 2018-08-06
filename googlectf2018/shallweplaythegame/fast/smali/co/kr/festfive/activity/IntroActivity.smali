.class public Lco/kr/festfive/activity/IntroActivity;
.super Landroid/app/Activity;
.source "IntroActivity.java"


# static fields
.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328


# instance fields
.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private from:Ljava/lang/String;

.field private googleCloudMessaging:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

.field private handler:Landroid/os/Handler;

.field irun:Ljava/lang/Runnable;

.field private is_push:Z

.field private message:Ljava/lang/String;

.field private news_feed_id:Ljava/lang/String;

.field private registrationId:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/IntroActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/kr/festfive/activity/IntroActivity;->is_push:Z

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/IntroActivity;->message:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/IntroActivity;->type:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/IntroActivity;->from:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/IntroActivity;->user_id:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/IntroActivity;->news_feed_id:Ljava/lang/String;

    .line 84
    new-instance v0, Lco/kr/festfive/activity/IntroActivity$1;

    invoke-direct {v0, p0}, Lco/kr/festfive/activity/IntroActivity$1;-><init>(Lco/kr/festfive/activity/IntroActivity;)V

    iput-object v0, p0, Lco/kr/festfive/activity/IntroActivity;->irun:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/activity/IntroActivity;)Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/IntroActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lco/kr/festfive/activity/IntroActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object v0
.end method

.method static synthetic access$002(Lco/kr/festfive/activity/IntroActivity;Lco/kr/festfive/manager/FestPreferenceManager;)Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/IntroActivity;
    .param p1, "x1"    # Lco/kr/festfive/manager/FestPreferenceManager;

    .prologue
    .line 35
    iput-object p1, p0, Lco/kr/festfive/activity/IntroActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object p1
.end method

.method static synthetic access$100(Lco/kr/festfive/activity/IntroActivity;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/IntroActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lco/kr/festfive/activity/IntroActivity;->checkUserToServer()V

    return-void
.end method

.method static synthetic access$200(Lco/kr/festfive/activity/IntroActivity;)Z
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/IntroActivity;

    .prologue
    .line 35
    iget-boolean v0, p0, Lco/kr/festfive/activity/IntroActivity;->is_push:Z

    return v0
.end method

.method static synthetic access$300(Lco/kr/festfive/activity/IntroActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/IntroActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lco/kr/festfive/activity/IntroActivity;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lco/kr/festfive/activity/IntroActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/IntroActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lco/kr/festfive/activity/IntroActivity;->news_feed_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lco/kr/festfive/activity/IntroActivity;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/IntroActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lco/kr/festfive/activity/IntroActivity;->googleCloudMessaging:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object v0
.end method

.method static synthetic access$502(Lco/kr/festfive/activity/IntroActivity;Lcom/google/android/gms/gcm/GoogleCloudMessaging;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/IntroActivity;
    .param p1, "x1"    # Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .prologue
    .line 35
    iput-object p1, p0, Lco/kr/festfive/activity/IntroActivity;->googleCloudMessaging:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object p1
.end method

.method static synthetic access$600(Lco/kr/festfive/activity/IntroActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/IntroActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lco/kr/festfive/activity/IntroActivity;->registrationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lco/kr/festfive/activity/IntroActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/IntroActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lco/kr/festfive/activity/IntroActivity;->registrationId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lco/kr/festfive/activity/IntroActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/IntroActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lco/kr/festfive/activity/IntroActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lco/kr/festfive/activity/IntroActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/IntroActivity;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 35
    iput-object p1, p0, Lco/kr/festfive/activity/IntroActivity;->handler:Landroid/os/Handler;

    return-object p1
.end method

.method private checkGoolePlayService()Z
    .locals 2

    .prologue
    .line 178
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 180
    .local v0, "resultCode":I
    if-eqz v0, :cond_1

    .line 181
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const/16 v1, 0x2328

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 184
    :cond_0
    const/4 v1, 0x0

    .line 187
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkUserToServer()V
    .locals 6

    .prologue
    .line 113
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 115
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/activity/IntroActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "userId":Ljava/lang/String;
    invoke-interface {v1, v2}, Lco/kr/festfive/service/FestInterface;->getCheckUser(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 119
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/activity/IntroActivity$2;

    invoke-direct {v3, p0}, Lco/kr/festfive/activity/IntroActivity$2;-><init>(Lco/kr/festfive/activity/IntroActivity;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 175
    return-void
.end method

.method private registerInBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    new-instance v0, Lco/kr/festfive/activity/IntroActivity$3;

    invoke-direct {v0, p0}, Lco/kr/festfive/activity/IntroActivity$3;-><init>(Lco/kr/festfive/activity/IntroActivity;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    .line 233
    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/IntroActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 234
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f0a0020

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/IntroActivity;->setContentView(I)V

    .line 54
    invoke-static {}, Lcom/orhanobut/logger/Logger;->init()Lcom/orhanobut/logger/Settings;

    .line 55
    invoke-virtual {p0}, Lco/kr/festfive/activity/IntroActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 57
    invoke-virtual {p0}, Lco/kr/festfive/activity/IntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 60
    const-string v1, "is_push"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lco/kr/festfive/activity/IntroActivity;->is_push:Z

    .line 61
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/activity/IntroActivity;->message:Ljava/lang/String;

    .line 62
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/activity/IntroActivity;->type:Ljava/lang/String;

    .line 63
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/activity/IntroActivity;->from:Ljava/lang/String;

    .line 64
    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/activity/IntroActivity;->user_id:Ljava/lang/String;

    .line 65
    const-string v1, "news_feed_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/activity/IntroActivity;->news_feed_id:Ljava/lang/String;

    .line 68
    :cond_0
    invoke-direct {p0}, Lco/kr/festfive/activity/IntroActivity;->checkGoolePlayService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/activity/IntroActivity;->googleCloudMessaging:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 71
    invoke-direct {p0}, Lco/kr/festfive/activity/IntroActivity;->registerInBackground()V

    .line 77
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    return-void
.end method
