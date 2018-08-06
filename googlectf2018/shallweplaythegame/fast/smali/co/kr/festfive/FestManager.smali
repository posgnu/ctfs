.class public Lco/kr/festfive/FestManager;
.super Landroid/app/Application;
.source "FestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/FestManager$UncaughtExceptionHandler;
    }
.end annotation


# static fields
.field static CNAME:Ljava/lang/String;

.field private static festManager:Lco/kr/festfive/FestManager;


# instance fields
.field private androidDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private joinChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private joinUserChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private joinUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_sMartId:Ljava/lang/String;

.field private reload:Z

.field private unCatchExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private userListItem:Lco/kr/festfive/model/UserListItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lco/kr/festfive/FestManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lco/kr/festfive/FestManager;->CNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/kr/festfive/FestManager;->reload:Z

    return-void
.end method

.method public static getInstance()Lco/kr/festfive/FestManager;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lco/kr/festfive/FestManager;->festManager:Lco/kr/festfive/FestManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MartManager instance is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    sget-object v0, Lco/kr/festfive/FestManager;->festManager:Lco/kr/festfive/FestManager;

    return-object v0
.end method


# virtual methods
.method public getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lco/kr/festfive/FestManager;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lco/kr/festfive/manager/FestPreferenceManager;

    invoke-virtual {p0}, Lco/kr/festfive/FestManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/kr/festfive/manager/FestPreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/kr/festfive/FestManager;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 115
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/FestManager;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object v0
.end method

.method public getJoinChannelList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lco/kr/festfive/FestManager;->joinChannelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getJoinUserChannelList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lco/kr/festfive/FestManager;->joinUserChannelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getJoinUserList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lco/kr/festfive/FestManager;->joinUserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReload()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lco/kr/festfive/FestManager;->reload:Z

    return v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lco/kr/festfive/FestManager;->unCatchExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public getUserListItem()Lco/kr/festfive/model/UserListItem;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lco/kr/festfive/FestManager;->userListItem:Lco/kr/festfive/model/UserListItem;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 52
    sput-object p0, Lco/kr/festfive/FestManager;->festManager:Lco/kr/festfive/FestManager;

    .line 56
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/FestManager;->androidDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 57
    new-instance v0, Lco/kr/festfive/FestManager$UncaughtExceptionHandler;

    invoke-direct {v0, p0}, Lco/kr/festfive/FestManager$UncaughtExceptionHandler;-><init>(Lco/kr/festfive/FestManager;)V

    iput-object v0, p0, Lco/kr/festfive/FestManager;->unCatchExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 59
    iget-object v0, p0, Lco/kr/festfive/FestManager;->unCatchExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 60
    return-void
.end method

.method public setJoinChannelList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "joinChannelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lco/kr/festfive/FestManager;->joinChannelList:Ljava/util/ArrayList;

    .line 139
    return-void
.end method

.method public setJoinUserChannelList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "joinUserChannelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lco/kr/festfive/FestManager;->joinUserChannelList:Ljava/util/ArrayList;

    .line 155
    return-void
.end method

.method public setJoinUserList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "joinUserList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lco/kr/festfive/FestManager;->joinUserList:Ljava/util/ArrayList;

    .line 143
    return-void
.end method

.method public setReload(Z)V
    .locals 0
    .param p1, "reload"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lco/kr/festfive/FestManager;->reload:Z

    .line 131
    return-void
.end method

.method public setUserListItem(Lco/kr/festfive/model/UserListItem;)V
    .locals 0
    .param p1, "userListItem"    # Lco/kr/festfive/model/UserListItem;

    .prologue
    .line 119
    iput-object p1, p0, Lco/kr/festfive/FestManager;->userListItem:Lco/kr/festfive/model/UserListItem;

    .line 120
    return-void
.end method
