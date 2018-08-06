.class public Lco/kr/festfive/Dialog/LikeDialog;
.super Landroid/app/Dialog;
.source "LikeDialog.java"

# interfaces
.implements Lco/kr/festfive/listener/DialogListener;


# instance fields
.field private context:Landroid/content/Context;

.field private detailFeedFragment:Lco/kr/festfive/fragment/DetailFeedFragment;

.field private dialogListener:Lco/kr/festfive/listener/DialogListener;

.field final myRunnable:Ljava/lang/Runnable;

.field private newsFeedListFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

.field private noticeDetailFeedFragment:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 174
    new-instance v2, Lco/kr/festfive/Dialog/LikeDialog$5;

    invoke-direct {v2, p0}, Lco/kr/festfive/Dialog/LikeDialog$5;-><init>(Lco/kr/festfive/Dialog/LikeDialog;)V

    iput-object v2, p0, Lco/kr/festfive/Dialog/LikeDialog;->myRunnable:Ljava/lang/Runnable;

    .line 35
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lco/kr/festfive/Dialog/LikeDialog;->requestWindowFeature(I)Z

    .line 36
    const v2, 0x7f0a0053

    invoke-virtual {p0, v2}, Lco/kr/festfive/Dialog/LikeDialog;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/LikeDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    iput-object p1, p0, Lco/kr/festfive/Dialog/LikeDialog;->context:Landroid/content/Context;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 44
    .local v0, "myHandler":Landroid/os/Handler;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 45
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lco/kr/festfive/Dialog/LikeDialog$1;

    invoke-direct {v2, p0, v1, v0}, Lco/kr/festfive/Dialog/LikeDialog$1;-><init>(Lco/kr/festfive/Dialog/LikeDialog;Ljava/util/Timer;Landroid/os/Handler;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lco/kr/festfive/fragment/NewsFeedListFragment;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newsFeedListFragment"    # Lco/kr/festfive/fragment/NewsFeedListFragment;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 174
    new-instance v2, Lco/kr/festfive/Dialog/LikeDialog$5;

    invoke-direct {v2, p0}, Lco/kr/festfive/Dialog/LikeDialog$5;-><init>(Lco/kr/festfive/Dialog/LikeDialog;)V

    iput-object v2, p0, Lco/kr/festfive/Dialog/LikeDialog;->myRunnable:Ljava/lang/Runnable;

    .line 109
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lco/kr/festfive/Dialog/LikeDialog;->requestWindowFeature(I)Z

    .line 110
    const v2, 0x7f0a0053

    invoke-virtual {p0, v2}, Lco/kr/festfive/Dialog/LikeDialog;->setContentView(I)V

    .line 112
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/LikeDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iput-object p1, p0, Lco/kr/festfive/Dialog/LikeDialog;->context:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lco/kr/festfive/Dialog/LikeDialog;->newsFeedListFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 119
    .local v0, "myHandler":Landroid/os/Handler;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 120
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lco/kr/festfive/Dialog/LikeDialog$4;

    invoke-direct {v2, p0, v1, v0}, Lco/kr/festfive/Dialog/LikeDialog$4;-><init>(Lco/kr/festfive/Dialog/LikeDialog;Ljava/util/Timer;Landroid/os/Handler;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/content/Context;I)V
    .locals 6
    .param p1, "detailFeedFragment"    # Lco/kr/festfive/fragment/DetailFeedFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "i"    # I

    .prologue
    .line 82
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 174
    new-instance v2, Lco/kr/festfive/Dialog/LikeDialog$5;

    invoke-direct {v2, p0}, Lco/kr/festfive/Dialog/LikeDialog$5;-><init>(Lco/kr/festfive/Dialog/LikeDialog;)V

    iput-object v2, p0, Lco/kr/festfive/Dialog/LikeDialog;->myRunnable:Ljava/lang/Runnable;

    .line 84
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lco/kr/festfive/Dialog/LikeDialog;->requestWindowFeature(I)Z

    .line 85
    const v2, 0x7f0a0053

    invoke-virtual {p0, v2}, Lco/kr/festfive/Dialog/LikeDialog;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/LikeDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iput-object p2, p0, Lco/kr/festfive/Dialog/LikeDialog;->context:Landroid/content/Context;

    .line 90
    iput-object p1, p0, Lco/kr/festfive/Dialog/LikeDialog;->detailFeedFragment:Lco/kr/festfive/fragment/DetailFeedFragment;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 94
    .local v0, "myHandler":Landroid/os/Handler;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 95
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lco/kr/festfive/Dialog/LikeDialog$3;

    invoke-direct {v2, p0, v1, v0}, Lco/kr/festfive/Dialog/LikeDialog$3;-><init>(Lco/kr/festfive/Dialog/LikeDialog;Ljava/util/Timer;Landroid/os/Handler;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;Landroid/content/Context;I)V
    .locals 6
    .param p1, "noticeDetailFeedFragment"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "i"    # I

    .prologue
    .line 57
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 174
    new-instance v2, Lco/kr/festfive/Dialog/LikeDialog$5;

    invoke-direct {v2, p0}, Lco/kr/festfive/Dialog/LikeDialog$5;-><init>(Lco/kr/festfive/Dialog/LikeDialog;)V

    iput-object v2, p0, Lco/kr/festfive/Dialog/LikeDialog;->myRunnable:Ljava/lang/Runnable;

    .line 59
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lco/kr/festfive/Dialog/LikeDialog;->requestWindowFeature(I)Z

    .line 60
    const v2, 0x7f0a0053

    invoke-virtual {p0, v2}, Lco/kr/festfive/Dialog/LikeDialog;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/LikeDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iput-object p2, p0, Lco/kr/festfive/Dialog/LikeDialog;->context:Landroid/content/Context;

    .line 65
    iput-object p1, p0, Lco/kr/festfive/Dialog/LikeDialog;->noticeDetailFeedFragment:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 69
    .local v0, "myHandler":Landroid/os/Handler;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 70
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lco/kr/festfive/Dialog/LikeDialog$2;

    invoke-direct {v2, p0, v1, v0}, Lco/kr/festfive/Dialog/LikeDialog$2;-><init>(Lco/kr/festfive/Dialog/LikeDialog;Ljava/util/Timer;Landroid/os/Handler;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 79
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 184
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->newsFeedListFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->newsFeedListFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

    iput-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->dialogListener:Lco/kr/festfive/listener/DialogListener;

    .line 194
    :cond_0
    :goto_0
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->dialogListener:Lco/kr/festfive/listener/DialogListener;

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lco/kr/festfive/listener/DialogListener;->onSuccess(I)V

    .line 195
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->detailFeedFragment:Lco/kr/festfive/fragment/DetailFeedFragment;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->detailFeedFragment:Lco/kr/festfive/fragment/DetailFeedFragment;

    iput-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->dialogListener:Lco/kr/festfive/listener/DialogListener;

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->noticeDetailFeedFragment:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->noticeDetailFeedFragment:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    iput-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->dialogListener:Lco/kr/festfive/listener/DialogListener;

    goto :goto_0

    .line 190
    :cond_3
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->context:Landroid/content/Context;

    check-cast v0, Lco/kr/festfive/listener/DialogListener;

    iput-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->dialogListener:Lco/kr/festfive/listener/DialogListener;

    goto :goto_0
.end method

.method public onSuccess(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->newsFeedListFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->newsFeedListFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

    iput-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->dialogListener:Lco/kr/festfive/listener/DialogListener;

    .line 209
    :cond_0
    :goto_0
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->dialogListener:Lco/kr/festfive/listener/DialogListener;

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lco/kr/festfive/listener/DialogListener;->onSuccess(I)V

    .line 210
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->detailFeedFragment:Lco/kr/festfive/fragment/DetailFeedFragment;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->detailFeedFragment:Lco/kr/festfive/fragment/DetailFeedFragment;

    iput-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->dialogListener:Lco/kr/festfive/listener/DialogListener;

    goto :goto_0

    .line 203
    :cond_2
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->noticeDetailFeedFragment:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    if-eqz v0, :cond_3

    .line 204
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->noticeDetailFeedFragment:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    iput-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->dialogListener:Lco/kr/festfive/listener/DialogListener;

    goto :goto_0

    .line 205
    :cond_3
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->context:Landroid/content/Context;

    check-cast v0, Lco/kr/festfive/listener/DialogListener;

    iput-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog;->dialogListener:Lco/kr/festfive/listener/DialogListener;

    goto :goto_0
.end method
