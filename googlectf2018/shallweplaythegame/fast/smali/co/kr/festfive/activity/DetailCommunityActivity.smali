.class public Lco/kr/festfive/activity/DetailCommunityActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DetailCommunityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private addressText:Landroid/widget/TextView;

.field private backButton:Landroid/widget/TextView;

.field private communityId:Ljava/lang/String;

.field private communityImage:Landroid/widget/ImageView;

.field private containerll:Landroid/widget/LinearLayout;

.field private dateText:Landroid/widget/TextView;

.field private descriptionText:Landroid/widget/TextView;

.field private favoriteButtonImage:Landroid/widget/ImageView;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private isFavorite:Ljava/lang/String;

.field private isJoin:Ljava/lang/String;

.field private joinButtonText:Landroid/widget/TextView;

.field private joinCountText:Landroid/widget/TextView;

.field private mLayoutMember:Landroid/widget/LinearLayout;

.field private mapLinear:Landroid/widget/LinearLayout;

.field private subtitleText:Landroid/widget/TextView;

.field private summaryText:Landroid/widget/TextView;

.field public userId1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 54
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->communityId:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->isJoin:Ljava/lang/String;

    .line 269
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->isFavorite:Ljava/lang/String;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->userId1:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/activity/DetailCommunityActivity;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lco/kr/festfive/activity/DetailCommunityActivity;->setCommunityJoinToServer()V

    return-void
.end method

.method static synthetic access$100(Lco/kr/festfive/activity/DetailCommunityActivity;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lco/kr/festfive/activity/DetailCommunityActivity;->setCommunityOutToServer()V

    return-void
.end method

.method static synthetic access$1000(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->summaryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lco/kr/festfive/activity/DetailCommunityActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->isFavorite:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lco/kr/festfive/activity/DetailCommunityActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->isFavorite:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->addressText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->dateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->descriptionText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->joinCountText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lco/kr/festfive/activity/DetailCommunityActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->isJoin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lco/kr/festfive/activity/DetailCommunityActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->isJoin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->communityImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lco/kr/festfive/activity/DetailCommunityActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lco/kr/festfive/activity/DetailCommunityActivity;->showWebpage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->favoriteButtonImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->joinButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lco/kr/festfive/activity/DetailCommunityActivity;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lco/kr/festfive/activity/DetailCommunityActivity;->getCommunityDetailToServer()V

    return-void
.end method

.method static synthetic access$500(Lco/kr/festfive/activity/DetailCommunityActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lco/kr/festfive/activity/DetailCommunityActivity;->getCommunityDetailToServer(Z)V

    return-void
.end method

.method static synthetic access$600(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->containerll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->mLayoutMember:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lco/kr/festfive/activity/DetailCommunityActivity;)Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object v0
.end method

.method static synthetic access$900(Lco/kr/festfive/activity/DetailCommunityActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/DetailCommunityActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->subtitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getCommunityDetailToServer()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lco/kr/festfive/activity/DetailCommunityActivity;->getCommunityDetailToServer(Z)V

    .line 275
    return-void
.end method

.method private getCommunityDetailToServer(Z)V
    .locals 7
    .param p1, "webpageEnabled"    # Z

    .prologue
    .line 278
    const-string v4, ""

    const-string v5, "loading..."

    invoke-static {p0, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 279
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 281
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v4, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "userId":Ljava/lang/String;
    iget-object v4, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->communityId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v3, v5}, Lco/kr/festfive/service/FestInterface;->getCommunityDetail(Ljava/lang/String;Ljava/lang/String;I)Lretrofit/Call;

    move-result-object v0

    .line 285
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v4, Lco/kr/festfive/activity/DetailCommunityActivity$7;

    invoke-direct {v4, p0, v1, p1}, Lco/kr/festfive/activity/DetailCommunityActivity$7;-><init>(Lco/kr/festfive/activity/DetailCommunityActivity;Landroid/app/ProgressDialog;Z)V

    invoke-interface {v0, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 433
    return-void
.end method

.method private setCommunityFavoriteAddToServer()V
    .locals 6

    .prologue
    .line 451
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 453
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "userId":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->communityId:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lco/kr/festfive/service/FestInterface;->setCommunityFavoriteAdd(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 457
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/activity/DetailCommunityActivity$8;

    invoke-direct {v3, p0}, Lco/kr/festfive/activity/DetailCommunityActivity$8;-><init>(Lco/kr/festfive/activity/DetailCommunityActivity;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 494
    return-void
.end method

.method private setCommunityFavoriteDeleteToServer()V
    .locals 6

    .prologue
    .line 497
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 499
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "userId":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->communityId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lco/kr/festfive/service/FestInterface;->setCommunityFavoriteDeleteList(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 503
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/activity/DetailCommunityActivity$9;

    invoke-direct {v3, p0}, Lco/kr/festfive/activity/DetailCommunityActivity$9;-><init>(Lco/kr/festfive/activity/DetailCommunityActivity;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 530
    return-void
.end method

.method private setCommunityJoinToServer()V
    .locals 6

    .prologue
    .line 235
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 237
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "userId":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->communityId:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lco/kr/festfive/service/FestInterface;->setCommunityJoin(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 241
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/activity/DetailCommunityActivity$6;

    invoke-direct {v3, p0}, Lco/kr/festfive/activity/DetailCommunityActivity$6;-><init>(Lco/kr/festfive/activity/DetailCommunityActivity;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 267
    return-void
.end method

.method private setCommunityOutToServer()V
    .locals 6

    .prologue
    .line 192
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 194
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "userId":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->communityId:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lco/kr/festfive/service/FestInterface;->setCommunityOut(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 198
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/activity/DetailCommunityActivity$5;

    invoke-direct {v3, p0}, Lco/kr/festfive/activity/DetailCommunityActivity$5;-><init>(Lco/kr/festfive/activity/DetailCommunityActivity;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 232
    return-void
.end method

.method private showWebpage(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 437
    const-string v2, "http://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 443
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 445
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/DetailCommunityActivity;->startActivity(Landroid/content/Intent;)V

    .line 447
    return-void

    .line 440
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "u":Landroid/net/Uri;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 128
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 132
    :sswitch_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/DetailCommunityActivity;->finish()V

    goto :goto_0

    .line 135
    :sswitch_1
    const-string v3, "Y"

    iget-object v4, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->isFavorite:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    invoke-direct {p0}, Lco/kr/festfive/activity/DetailCommunityActivity;->setCommunityFavoriteDeleteToServer()V

    goto :goto_0

    .line 138
    :cond_0
    invoke-direct {p0}, Lco/kr/festfive/activity/DetailCommunityActivity;->setCommunityFavoriteAddToServer()V

    goto :goto_0

    .line 142
    :sswitch_2
    iget-object v3, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->joinButtonText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0
    const-string v3, "\ucc38\uc11d\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "\ub124"

    new-instance v5, Lco/kr/festfive/activity/DetailCommunityActivity$2;

    invoke-direct {v5, p0}, Lco/kr/festfive/activity/DetailCommunityActivity$2;-><init>(Lco/kr/festfive/activity/DetailCommunityActivity;)V

    .line 145
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "\uc544\ub2c8\uc694"

    new-instance v5, Lco/kr/festfive/activity/DetailCommunityActivity$1;

    invoke-direct {v5, p0}, Lco/kr/festfive/activity/DetailCommunityActivity$1;-><init>(Lco/kr/festfive/activity/DetailCommunityActivity;)V

    .line 150
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 158
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 142
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :sswitch_3
    const-string v6, "\uc2e0\uccad"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    goto :goto_1

    :sswitch_4
    const-string v6, "\ucc38\uc11d"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    .line 162
    :pswitch_1
    const-string v3, "\ud589\uc0ac \uc2e0\uccad\uc744 \ucde8\uc18c\ud558\uc2dc\uaca0\uc5b4\uc694?"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "\uc608"

    new-instance v5, Lco/kr/festfive/activity/DetailCommunityActivity$4;

    invoke-direct {v5, p0}, Lco/kr/festfive/activity/DetailCommunityActivity$4;-><init>(Lco/kr/festfive/activity/DetailCommunityActivity;)V

    .line 163
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "\uc544\ub2c8\uc624"

    new-instance v5, Lco/kr/festfive/activity/DetailCommunityActivity$3;

    invoke-direct {v5, p0}, Lco/kr/festfive/activity/DetailCommunityActivity$3;-><init>(Lco/kr/festfive/activity/DetailCommunityActivity;)V

    .line 168
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 177
    .restart local v0    # "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 184
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :sswitch_5
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lco/kr/festfive/activity/MapActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lco/kr/festfive/activity/DetailCommunityActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 130
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080022 -> :sswitch_0
        0x7f0800a1 -> :sswitch_1
        0x7f080112 -> :sswitch_2
        0x7f08013d -> :sswitch_5
    .end sparse-switch

    .line 142
    :sswitch_data_1
    .sparse-switch
        0x1865cd -> :sswitch_3
        0x197be5 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v1, 0x7f0a001c

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/DetailCommunityActivity;->setContentView(I)V

    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 84
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/DetailCommunityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 90
    const-string v1, "communityId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->communityId:Ljava/lang/String;

    .line 94
    :cond_1
    const v1, 0x7f080022

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/DetailCommunityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->backButton:Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->backButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v1, 0x7f08013d

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/DetailCommunityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->mapLinear:Landroid/widget/LinearLayout;

    .line 98
    iget-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->mapLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v1, 0x7f080069

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/DetailCommunityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->dateText:Landroid/widget/TextView;

    .line 101
    const v1, 0x7f0801f1

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/DetailCommunityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->subtitleText:Landroid/widget/TextView;

    .line 102
    const v1, 0x7f0801f2

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/DetailCommunityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->summaryText:Landroid/widget/TextView;

    .line 104
    const v1, 0x7f0800a1

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/DetailCommunityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->favoriteButtonImage:Landroid/widget/ImageView;

    .line 105
    iget-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->favoriteButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v1, 0x7f08004e

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/DetailCommunityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->communityImage:Landroid/widget/ImageView;

    .line 108
    const v1, 0x7f08001a

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/DetailCommunityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->addressText:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f080072

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/DetailCommunityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->descriptionText:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f080112

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/DetailCommunityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->joinButtonText:Landroid/widget/TextView;

    .line 112
    iget-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->joinButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v1, 0x7f080113

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/DetailCommunityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->joinCountText:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f08012e

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/DetailCommunityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->mLayoutMember:Landroid/widget/LinearLayout;

    .line 116
    const v1, 0x7f080144

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/DetailCommunityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lco/kr/festfive/activity/DetailCommunityActivity;->containerll:Landroid/widget/LinearLayout;

    .line 117
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 123
    invoke-direct {p0}, Lco/kr/festfive/activity/DetailCommunityActivity;->getCommunityDetailToServer()V

    .line 124
    return-void
.end method
