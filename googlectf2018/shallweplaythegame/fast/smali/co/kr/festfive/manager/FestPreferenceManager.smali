.class public Lco/kr/festfive/manager/FestPreferenceManager;
.super Ljava/lang/Object;
.source "FestPreferenceManager.java"


# static fields
.field public static final PREF_INTRO_USER_AGREEMENT:Ljava/lang/String; = "PREF_USER_AGREEMENT"

.field public static final PREF_MAIN_VALUE:Ljava/lang/String; = "PREF_MAIN_VALUE"

.field static mContext:Landroid/content/Context;


# instance fields
.field private final PREF_NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "co.kr.festfive.pref"

    iput-object v0, p0, Lco/kr/festfive/manager/FestPreferenceManager;->PREF_NAME:Ljava/lang/String;

    .line 20
    sput-object p1, Lco/kr/festfive/manager/FestPreferenceManager;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;I)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dftValue"    # I

    .prologue
    .line 59
    sget-object v2, Lco/kr/festfive/manager/FestPreferenceManager;->mContext:Landroid/content/Context;

    const-string v3, "co.kr.festfive.pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    .local v1, "pref":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 64
    .end local p2    # "dftValue":I
    :goto_0
    return p2

    .line 63
    .restart local p2    # "dftValue":I
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dftValue"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v2, Lco/kr/festfive/manager/FestPreferenceManager;->mContext:Landroid/content/Context;

    const-string v3, "co.kr.festfive.pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 51
    .local v1, "pref":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 53
    .end local p2    # "dftValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 52
    .restart local p2    # "dftValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dftValue"    # Z

    .prologue
    .line 70
    sget-object v2, Lco/kr/festfive/manager/FestPreferenceManager;->mContext:Landroid/content/Context;

    const-string v3, "co.kr.festfive.pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 73
    .local v1, "pref":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 75
    .end local p2    # "dftValue":Z
    :goto_0
    return p2

    .line 74
    .restart local p2    # "dftValue":Z
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 40
    sget-object v2, Lco/kr/festfive/manager/FestPreferenceManager;->mContext:Landroid/content/Context;

    const-string v3, "co.kr.festfive.pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 41
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 43
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 24
    sget-object v2, Lco/kr/festfive/manager/FestPreferenceManager;->mContext:Landroid/content/Context;

    const-string v3, "co.kr.festfive.pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 25
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 27
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 29
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 32
    sget-object v2, Lco/kr/festfive/manager/FestPreferenceManager;->mContext:Landroid/content/Context;

    const-string v3, "co.kr.festfive.pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 33
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 35
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 37
    return-void
.end method
