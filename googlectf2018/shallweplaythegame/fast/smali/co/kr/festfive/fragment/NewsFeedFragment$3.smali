.class Lco/kr/festfive/fragment/NewsFeedFragment$3;
.super Ljava/lang/Object;
.source "NewsFeedFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/NewsFeedFragment;->DialogSelectOption([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

.field final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/NewsFeedFragment;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/NewsFeedFragment;

    .prologue
    .line 299
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/NewsFeedFragment$3;->val$items:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 302
    const-string v3, "NewsFeedFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uc120\ud0dd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/fragment/NewsFeedFragment$3;->val$items:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 304
    iget-object v3, p0, Lco/kr/festfive/fragment/NewsFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/NewsFeedFragment;->access$300(Lco/kr/festfive/fragment/NewsFeedFragment;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_level"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "userLevel":Ljava/lang/String;
    const-string v3, "F"

    if-eq v2, v3, :cond_0

    const-string v3, "F"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v3, p0, Lco/kr/festfive/fragment/NewsFeedFragment$3;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/NewsFeedFragment;->access$300(Lco/kr/festfive/fragment/NewsFeedFragment;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "userId":Ljava/lang/String;
    new-instance v0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;

    invoke-direct {v0}, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;-><init>()V

    .line 310
    .local v0, "authChecker":Lco/kr/festfive/model/auth/WriteFeedAuthChecker;
    new-instance v3, Lco/kr/festfive/fragment/NewsFeedFragment$3$1;

    invoke-direct {v3, p0, p2}, Lco/kr/festfive/fragment/NewsFeedFragment$3$1;-><init>(Lco/kr/festfive/fragment/NewsFeedFragment$3;I)V

    invoke-virtual {v0, v1, v3}, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->checkAuth(Ljava/lang/String;Lco/kr/festfive/model/auth/listener/OnAuthCheckedListener;)V

    goto :goto_0
.end method
