.class Lco/kr/festfive/model/auth/WriteFeedAuthChecker$1;
.super Ljava/lang/Object;
.source "WriteFeedAuthChecker.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->checkAuth(Ljava/lang/String;Lco/kr/festfive/model/auth/listener/OnAuthCheckedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/model/auth/WriteFeedAuthChecker;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lco/kr/festfive/model/auth/WriteFeedAuthChecker;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/model/auth/WriteFeedAuthChecker;

    .prologue
    .line 34
    iput-object p1, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker$1;->this$0:Lco/kr/festfive/model/auth/WriteFeedAuthChecker;

    iput-object p2, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker$1;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 4
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker$1;->this$0:Lco/kr/festfive/model/auth/WriteFeedAuthChecker;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->access$002(Lco/kr/festfive/model/auth/WriteFeedAuthChecker;Z)Z

    .line 40
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 41
    .local v0, "jsonObject":Lcom/google/gson/JsonObject;
    iget-object v1, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker$1;->this$0:Lco/kr/festfive/model/auth/WriteFeedAuthChecker;

    iget-object v2, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker$1;->val$userId:Ljava/lang/String;

    invoke-static {v1, v2}, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->access$102(Lco/kr/festfive/model/auth/WriteFeedAuthChecker;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker$1;->this$0:Lco/kr/festfive/model/auth/WriteFeedAuthChecker;

    const-string v2, "Y"

    const-string v3, "auth"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->access$202(Lco/kr/festfive/model/auth/WriteFeedAuthChecker;Z)Z

    .line 43
    iget-object v1, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker$1;->this$0:Lco/kr/festfive/model/auth/WriteFeedAuthChecker;

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->access$302(Lco/kr/festfive/model/auth/WriteFeedAuthChecker;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker$1;->this$0:Lco/kr/festfive/model/auth/WriteFeedAuthChecker;

    invoke-static {v1}, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->access$400(Lco/kr/festfive/model/auth/WriteFeedAuthChecker;)Lco/kr/festfive/model/auth/listener/OnAuthCheckedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker$1;->this$0:Lco/kr/festfive/model/auth/WriteFeedAuthChecker;

    invoke-static {v1}, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->access$400(Lco/kr/festfive/model/auth/WriteFeedAuthChecker;)Lco/kr/festfive/model/auth/listener/OnAuthCheckedListener;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker$1;->this$0:Lco/kr/festfive/model/auth/WriteFeedAuthChecker;

    invoke-static {v2}, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->access$200(Lco/kr/festfive/model/auth/WriteFeedAuthChecker;)Z

    move-result v2

    iget-object v3, p0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker$1;->this$0:Lco/kr/festfive/model/auth/WriteFeedAuthChecker;

    invoke-static {v3}, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->access$300(Lco/kr/festfive/model/auth/WriteFeedAuthChecker;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lco/kr/festfive/model/auth/listener/OnAuthCheckedListener;->onAuthChecked(ZLjava/lang/String;)V

    .line 50
    .end local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_0
    return-void
.end method
