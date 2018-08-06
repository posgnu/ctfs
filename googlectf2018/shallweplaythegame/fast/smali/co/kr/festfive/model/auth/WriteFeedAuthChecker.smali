.class public Lco/kr/festfive/model/auth/WriteFeedAuthChecker;
.super Ljava/lang/Object;
.source "WriteFeedAuthChecker.java"


# instance fields
.field private authValue:Z

.field private checked:Z

.field private listener:Lco/kr/festfive/model/auth/listener/OnAuthCheckedListener;

.field private message:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->checked:Z

    .line 19
    iput-boolean v0, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->authValue:Z

    return-void
.end method

.method static synthetic access$002(Lco/kr/festfive/model/auth/WriteFeedAuthChecker;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/model/auth/WriteFeedAuthChecker;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->checked:Z

    return p1
.end method

.method static synthetic access$102(Lco/kr/festfive/model/auth/WriteFeedAuthChecker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/model/auth/WriteFeedAuthChecker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->userId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lco/kr/festfive/model/auth/WriteFeedAuthChecker;)Z
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/model/auth/WriteFeedAuthChecker;

    .prologue
    .line 17
    iget-boolean v0, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->authValue:Z

    return v0
.end method

.method static synthetic access$202(Lco/kr/festfive/model/auth/WriteFeedAuthChecker;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/model/auth/WriteFeedAuthChecker;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->authValue:Z

    return p1
.end method

.method static synthetic access$300(Lco/kr/festfive/model/auth/WriteFeedAuthChecker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/model/auth/WriteFeedAuthChecker;

    .prologue
    .line 17
    iget-object v0, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lco/kr/festfive/model/auth/WriteFeedAuthChecker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/model/auth/WriteFeedAuthChecker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lco/kr/festfive/model/auth/WriteFeedAuthChecker;)Lco/kr/festfive/model/auth/listener/OnAuthCheckedListener;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/model/auth/WriteFeedAuthChecker;

    .prologue
    .line 17
    iget-object v0, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->listener:Lco/kr/festfive/model/auth/listener/OnAuthCheckedListener;

    return-object v0
.end method


# virtual methods
.method public checkAuth(Ljava/lang/String;Lco/kr/festfive/model/auth/listener/OnAuthCheckedListener;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "listener"    # Lco/kr/festfive/model/auth/listener/OnAuthCheckedListener;

    .prologue
    .line 25
    iput-object p2, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->listener:Lco/kr/festfive/model/auth/listener/OnAuthCheckedListener;

    .line 27
    iget-boolean v2, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->checked:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->userId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    iget-object v2, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->listener:Lco/kr/festfive/model/auth/listener/OnAuthCheckedListener;

    if-eqz v2, :cond_0

    .line 29
    iget-object v2, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->listener:Lco/kr/festfive/model/auth/listener/OnAuthCheckedListener;

    iget-boolean v3, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->authValue:Z

    iget-object v4, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->message:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lco/kr/festfive/model/auth/listener/OnAuthCheckedListener;->onAuthChecked(ZLjava/lang/String;)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 33
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    invoke-interface {v1, p1}, Lco/kr/festfive/service/FestInterface;->getCheckAuthNewsFeedAdd(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 34
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v2, Lco/kr/festfive/model/auth/WriteFeedAuthChecker$1;

    invoke-direct {v2, p0, p1}, Lco/kr/festfive/model/auth/WriteFeedAuthChecker$1;-><init>(Lco/kr/festfive/model/auth/WriteFeedAuthChecker;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    goto :goto_0
.end method
