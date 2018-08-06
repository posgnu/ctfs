.class public Lco/kr/festfive/activity/MemberDetailActivity;
.super Landroid/app/Activity;
.source "MemberDetailActivity.java"


# instance fields
.field private containerll:Landroid/widget/LinearLayout;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private horizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private inflater:Landroid/view/LayoutInflater;

.field private jsonObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lco/kr/festfive/activity/MemberDetailActivity;->jsonObject:Lorg/json/JSONObject;

    .line 48
    new-instance v0, Lco/kr/festfive/manager/FestPreferenceManager;

    invoke-direct {v0, p0}, Lco/kr/festfive/manager/FestPreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/kr/festfive/activity/MemberDetailActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/activity/MemberDetailActivity;)Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/MemberDetailActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lco/kr/festfive/activity/MemberDetailActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/activity/MemberDetailActivity;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/MemberDetailActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lco/kr/festfive/activity/MemberDetailActivity;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$200(Lco/kr/festfive/activity/MemberDetailActivity;Lcom/google/gson/JsonObject;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/MemberDetailActivity;
    .param p1, "x1"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lco/kr/festfive/activity/MemberDetailActivity;->drawCompanyDetail(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method private drawCompanyDetail(Lcom/google/gson/JsonObject;)V
    .locals 14
    .param p1, "data"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 74
    const v10, 0x7f08004f

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/MemberDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const-string v11, "company_name"

    invoke-virtual {p1, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v10, 0x7f0801f3

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/MemberDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const-string v11, "company_summary"

    invoke-virtual {p1, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v10, 0x7f0801bb

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/MemberDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\uc9c0\uc810 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "office_name"

    invoke-virtual {p1, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "company_room_name"

    invoke-virtual {p1, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v10, 0x7f08003a

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/MemberDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\ub300\ud45c : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "company_ceo"

    invoke-virtual {p1, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v10, 0x7f08013a

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/MemberDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 79
    .local v6, "logoIv":Landroid/widget/ImageView;
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v10

    const-string v11, "logo_url"

    invoke-virtual {p1, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v10

    sget-object v11, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v10, v11}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 81
    const v10, 0x7f080138

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/MemberDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 82
    .local v9, "photoIv":Landroid/widget/ImageView;
    const-string v10, "image_url"

    invoke-virtual {p1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "imageUrl":Ljava/lang/String;
    const-string v10, "HAMA"

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const v10, 0x7f080139

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/MemberDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "bottom_bar":Landroid/view/View;
    if-eqz v5, :cond_0

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 87
    :cond_0
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 88
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :goto_0
    const v10, 0x7f080143

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/MemberDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/HorizontalScrollView;

    iput-object v10, p0, Lco/kr/festfive/activity/MemberDetailActivity;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 95
    const v10, 0x7f080144

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/MemberDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lco/kr/festfive/activity/MemberDetailActivity;->containerll:Landroid/widget/LinearLayout;

    .line 97
    iget-object v10, p0, Lco/kr/festfive/activity/MemberDetailActivity;->inflater:Landroid/view/LayoutInflater;

    const v11, 0x7f0a0083

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 98
    .local v2, "emptView":Landroid/view/View;
    iget-object v10, p0, Lco/kr/festfive/activity/MemberDetailActivity;->containerll:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    const-string v10, "members"

    invoke-virtual {p1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v8

    .line 101
    .local v8, "members":Lcom/google/gson/JsonArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 102
    iget-object v10, p0, Lco/kr/festfive/activity/MemberDetailActivity;->inflater:Landroid/view/LayoutInflater;

    const v11, 0x7f0a0070

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 103
    .local v1, "childView":Landroid/view/View;
    const v10, 0x7f08013a

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 105
    .local v7, "memberLogIv":Lcom/mikhaellopez/circularimageview/CircularImageView;
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v10

    invoke-virtual {v8, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    const-string v12, "user_profile_thumb_url"

    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v10

    sget-object v11, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v10, v11}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 107
    new-instance v10, Lco/kr/festfive/activity/MemberDetailActivity$1;

    invoke-direct {v10, p0}, Lco/kr/festfive/activity/MemberDetailActivity$1;-><init>(Lco/kr/festfive/activity/MemberDetailActivity;)V

    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v8, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    const-string v11, "user_id"

    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object v10, p0, Lco/kr/festfive/activity/MemberDetailActivity;->containerll:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 90
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "emptView":Landroid/view/View;
    .end local v4    # "i":I
    .end local v7    # "memberLogIv":Lcom/mikhaellopez/circularimageview/CircularImageView;
    .end local v8    # "members":Lcom/google/gson/JsonArray;
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v10

    sget-object v11, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v10, v11}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_0

    .line 131
    .restart local v2    # "emptView":Landroid/view/View;
    .restart local v4    # "i":I
    .restart local v8    # "members":Lcom/google/gson/JsonArray;
    :cond_2
    iget-object v10, p0, Lco/kr/festfive/activity/MemberDetailActivity;->inflater:Landroid/view/LayoutInflater;

    const v11, 0x7f0a0083

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 132
    .local v3, "emptView2":Landroid/view/View;
    iget-object v10, p0, Lco/kr/festfive/activity/MemberDetailActivity;->containerll:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    const v10, 0x7f08005f

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/MemberDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const-string v11, "company_description"

    invoke-virtual {p1, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const v10, 0x7f0801f6

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/MemberDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const-string v11, "company_talk"

    invoke-virtual {p1, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const v10, 0x7f080141

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/MemberDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\ud300\uc6d0\uc18c\uac1c("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const v10, 0x7f080024

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/MemberDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lco/kr/festfive/activity/MemberDetailActivity$2;

    invoke-direct {v11, p0}, Lco/kr/festfive/activity/MemberDetailActivity$2;-><init>(Lco/kr/festfive/activity/MemberDetailActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v10, 0x7f08018a

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/MemberDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lco/kr/festfive/activity/MemberDetailActivity$3;

    invoke-direct {v11, p0}, Lco/kr/festfive/activity/MemberDetailActivity$3;-><init>(Lco/kr/festfive/activity/MemberDetailActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v10, 0x7f0800b6

    invoke-virtual {p0, v10}, Lco/kr/festfive/activity/MemberDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lco/kr/festfive/activity/MemberDetailActivity$4;

    invoke-direct {v11, p0}, Lco/kr/festfive/activity/MemberDetailActivity$4;-><init>(Lco/kr/festfive/activity/MemberDetailActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method

.method private getMemberDetailFromServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "company"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v3, ""

    const-string v4, "loading..."

    invoke-static {p0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 168
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 170
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    invoke-interface {v2, p1, p2}, Lco/kr/festfive/service/FestInterface;->getCompanyDetail(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 171
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v3, Lco/kr/festfive/activity/MemberDetailActivity$5;

    invoke-direct {v3, p0, v1}, Lco/kr/festfive/activity/MemberDetailActivity$5;-><init>(Lco/kr/festfive/activity/MemberDetailActivity;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 197
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/MemberDetailActivity;->setContentView(I)V

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 56
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 59
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/MemberDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lco/kr/festfive/activity/MemberDetailActivity;->inflater:Landroid/view/LayoutInflater;

    .line 62
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lco/kr/festfive/activity/MemberDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lco/kr/festfive/activity/MemberDetailActivity;->jsonObject:Lorg/json/JSONObject;

    .line 63
    const-string v0, "==="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MemberDetailActivity data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/activity/MemberDetailActivity;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    iget-object v0, p0, Lco/kr/festfive/activity/MemberDetailActivity;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/activity/MemberDetailActivity;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "company_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lco/kr/festfive/activity/MemberDetailActivity;->getMemberDetailFromServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0
.end method
