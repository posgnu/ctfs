.class public Lco/kr/festfive/adapter/SearchChannelAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lco/kr/festfive/model/SearchChannelListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private count:I

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 31
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 32
    iput v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->count:I

    .line 37
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 31
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 32
    iput v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->count:I

    .line 43
    iput-object p1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->context:Landroid/content/Context;

    .line 44
    iput p2, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->type:I

    .line 45
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 49
    const-string v1, "SearchannelAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\uba87\ubc88 \ubd88\ub9ac\ub098\uc694? : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    if-nez p2, :cond_4

    .line 51
    new-instance v1, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;-><init>(Lco/kr/festfive/adapter/SearchChannelAdapter;)V

    iput-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    .line 53
    invoke-virtual {p0}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a0087

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    iget-object v2, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    const v1, 0x7f08005d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v2, v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$002(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 56
    iget-object v2, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    const v1, 0x7f080199

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-static {v2, v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$102(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;Lcom/mikhaellopez/circularimageview/CircularImageView;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 57
    iget-object v2, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    const v1, 0x7f080158

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$202(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 58
    iget-object v2, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    const v1, 0x7f080176

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$302(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 59
    iget-object v2, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    const v1, 0x7f080050

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$402(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 60
    iget-object v2, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    const v1, 0x7f080100

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$502(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 62
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :goto_0
    iget v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 68
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    if-eq v1, v2, :cond_0

    const-string v2, "title"

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 70
    :cond_0
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$000(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 75
    :goto_1
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v1, :cond_1

    .line 76
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 79
    :cond_1
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v2, "user_id"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "userId":Ljava/lang/String;
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserProfileThumbUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-static {v2}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$100(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 83
    const-string v2, "namsang"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "print userid : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v2, "namsang"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "print userid : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v1, "namsang"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "print Myid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 88
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 90
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$500(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserLevel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "M"

    if-eq v1, v2, :cond_3

    const-string v2, "M"

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 101
    :cond_3
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$200(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    :goto_3
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$200(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$300(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$400(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$400(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserCompany()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .end local v0    # "userId":Ljava/lang/String;
    :goto_4
    return-object p2

    .line 64
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    iput-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    goto/16 :goto_0

    .line 72
    :cond_5
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$000(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 92
    .restart local v0    # "userId":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserLevel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 94
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$500(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 96
    :cond_7
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$500(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 103
    :cond_8
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$200(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_3

    .line 110
    .end local v0    # "userId":Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$000(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-static {v2}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$100(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 112
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$200(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$300(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lco/kr/festfive/adapter/SearchChannelAdapter;->holder:Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;->access$400(Lco/kr/festfive/adapter/SearchChannelAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method
