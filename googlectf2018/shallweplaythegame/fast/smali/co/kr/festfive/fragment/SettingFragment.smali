.class public Lco/kr/festfive/fragment/SettingFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backButtonImage:Landroid/widget/TextView;

.field private feedToggleButton:Landroid/widget/ToggleButton;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private logoutButtonLinear:Landroid/widget/LinearLayout;

.field private messageToggleButton:Landroid/widget/ToggleButton;

.field private pushToggleButton:Landroid/widget/ToggleButton;

.field private replyToggleButton:Landroid/widget/ToggleButton;

.field private rootView:Landroid/view/View;

.field private unregisterButtonLinear:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 37
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/SettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/SettingFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lco/kr/festfive/fragment/SettingFragment;->setLogout()V

    return-void
.end method

.method private setLogout()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "office_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "office_room_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_pw"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_email"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_profile"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_birth"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_company"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_position"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_introduce"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_level"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_device_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_platform"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "last_login"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "create_date"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "office_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "office_room_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_profile_thumb_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_profile_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "is_fush_feed"

    const-string v2, "Y"

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "is_fush_reply"

    const-string v2, "Y"

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "is_fush"

    const-string v2, "Y"

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private setPushConfigToServer()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 206
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v3

    .line 208
    .local v3, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v5, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v6, "user_id"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "userId":Ljava/lang/String;
    const-string v1, "Y"

    .line 210
    .local v1, "feedFeed":Ljava/lang/String;
    const-string v2, "Y"

    .line 212
    .local v2, "replyFeed":Ljava/lang/String;
    iget-object v5, p0, Lco/kr/festfive/fragment/SettingFragment;->feedToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    if-ne v5, v8, :cond_0

    .line 213
    const-string v1, "Y"

    .line 214
    iget-object v5, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v6, "is_fush_feed"

    const-string v7, "Y"

    invoke-virtual {v5, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_0
    iget-object v5, p0, Lco/kr/festfive/fragment/SettingFragment;->replyToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    if-ne v5, v8, :cond_1

    .line 221
    const-string v2, "Y"

    .line 222
    iget-object v5, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v6, "is_fush_reply"

    const-string v7, "Y"

    invoke-virtual {v5, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_1
    invoke-interface {v3, v4, v1, v2}, Lco/kr/festfive/service/FestInterface;->setPushConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 230
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v5, Lco/kr/festfive/fragment/SettingFragment$2;

    invoke-direct {v5, p0}, Lco/kr/festfive/fragment/SettingFragment$2;-><init>(Lco/kr/festfive/fragment/SettingFragment;)V

    invoke-interface {v0, v5}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 256
    return-void

    .line 216
    .end local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    :cond_0
    const-string v1, "N"

    .line 217
    iget-object v5, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v6, "is_fush_feed"

    const-string v7, "N"

    invoke-virtual {v5, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_1
    const-string v2, "N"

    .line 225
    iget-object v5, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v6, "is_fush_reply"

    const-string v7, "N"

    invoke-virtual {v5, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setUnregisterToServer()V
    .locals 6

    .prologue
    .line 169
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 171
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "userId":Ljava/lang/String;
    invoke-interface {v1, v2}, Lco/kr/festfive/service/FestInterface;->setDelete(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 175
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/fragment/SettingFragment$1;

    invoke-direct {v3, p0}, Lco/kr/festfive/fragment/SettingFragment$1;-><init>(Lco/kr/festfive/fragment/SettingFragment;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 203
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080021

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080023

    if-ne v1, v2, :cond_2

    .line 118
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/fragment/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08013b

    if-ne v1, v2, :cond_3

    .line 120
    invoke-direct {p0}, Lco/kr/festfive/fragment/SettingFragment;->setLogout()V

    .line 121
    invoke-virtual {p0}, Lco/kr/festfive/fragment/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/SettingFragment;->startActivity(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lco/kr/festfive/fragment/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 125
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080242

    if-ne v1, v2, :cond_4

    .line 126
    invoke-direct {p0}, Lco/kr/festfive/fragment/SettingFragment;->setUnregisterToServer()V

    goto :goto_0

    .line 127
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0800a4

    if-ne v1, v2, :cond_5

    .line 128
    invoke-direct {p0}, Lco/kr/festfive/fragment/SettingFragment;->setPushConfigToServer()V

    goto :goto_0

    .line 129
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0801b1

    if-ne v1, v2, :cond_6

    .line 130
    invoke-direct {p0}, Lco/kr/festfive/fragment/SettingFragment;->setPushConfigToServer()V

    goto :goto_0

    .line 131
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08019f

    if-ne v1, v2, :cond_1

    .line 133
    iget-object v1, p0, Lco/kr/festfive/fragment/SettingFragment;->pushToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 134
    iget-object v1, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v2, "is_fush"

    const-string v3, "Y"

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_7
    iget-object v1, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v2, "is_fush"

    const-string v3, "N"

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/manager/FestPreferenceManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 60
    const v3, 0x7f0a006b

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->rootView:Landroid/view/View;

    .line 62
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v3, :cond_0

    .line 63
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    iput-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 66
    :cond_0
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "is_fush"

    const-string v5, "Y"

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "push":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "is_fush_feed"

    const-string v5, "Y"

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "pushFeed":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v4, "is_fush_reply"

    const-string v5, "Y"

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "pushReply":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->rootView:Landroid/view/View;

    const v4, 0x7f08019f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->pushToggleButton:Landroid/widget/ToggleButton;

    .line 71
    const-string v3, "Y"

    if-eq v0, v3, :cond_1

    const-string v3, "Y"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 72
    :cond_1
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->pushToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 77
    :goto_0
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->pushToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->rootView:Landroid/view/View;

    const v4, 0x7f0800a4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->feedToggleButton:Landroid/widget/ToggleButton;

    .line 80
    const-string v3, "Y"

    if-eq v1, v3, :cond_2

    const-string v3, "Y"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 81
    :cond_2
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->feedToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 86
    :goto_1
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->feedToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->rootView:Landroid/view/View;

    const v4, 0x7f0801b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->replyToggleButton:Landroid/widget/ToggleButton;

    .line 89
    const-string v3, "Y"

    if-eq v2, v3, :cond_3

    const-string v3, "Y"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 90
    :cond_3
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->replyToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 95
    :goto_2
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->replyToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->rootView:Landroid/view/View;

    const v4, 0x7f080023

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->backButtonImage:Landroid/widget/TextView;

    .line 99
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->backButtonImage:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->rootView:Landroid/view/View;

    const v4, 0x7f08013b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->logoutButtonLinear:Landroid/widget/LinearLayout;

    .line 102
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->logoutButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->rootView:Landroid/view/View;

    const v4, 0x7f080242

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->unregisterButtonLinear:Landroid/widget/LinearLayout;

    .line 104
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->unregisterButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->rootView:Landroid/view/View;

    return-object v3

    .line 74
    :cond_4
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->pushToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 83
    :cond_5
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->feedToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1

    .line 92
    :cond_6
    iget-object v3, p0, Lco/kr/festfive/fragment/SettingFragment;->replyToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 113
    return-void
.end method
