.class public Lco/kr/festfive/adapter/MemberListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MemberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;
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

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 31
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/adapter/MemberListAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 36
    iput-object p1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 31
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/adapter/MemberListAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 42
    iput-object p1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->context:Landroid/content/Context;

    .line 43
    iput p2, p0, Lco/kr/festfive/adapter/MemberListAdapter;->type:I

    .line 44
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 48
    if-nez p2, :cond_3

    .line 49
    new-instance v1, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;-><init>(Lco/kr/festfive/adapter/MemberListAdapter;)V

    iput-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    .line 51
    invoke-virtual {p0}, Lco/kr/festfive/adapter/MemberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a0071

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    iget-object v2, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    const v1, 0x7f08020b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v2, v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$002(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 54
    iget-object v2, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    const v1, 0x7f08005d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v2, v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$102(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 55
    iget-object v2, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    const v1, 0x7f08020d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$202(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 56
    iget-object v2, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    const v1, 0x7f080199

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-static {v2, v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$302(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Lcom/mikhaellopez/circularimageview/CircularImageView;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 57
    iget-object v2, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    const v1, 0x7f080158

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$402(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 58
    iget-object v2, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    const v1, 0x7f080176

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$502(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 59
    iget-object v2, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    const v1, 0x7f080050

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$602(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 60
    iget-object v2, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    const v1, 0x7f080103

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$702(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 61
    iget-object v2, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    const v1, 0x7f080100

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$802(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 63
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    iget v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 69
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    if-eq v1, v2, :cond_0

    const-string v2, "title"

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    :cond_0
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$000(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 71
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$100(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 72
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$200(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$200(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_1
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserProfileThumbUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v2}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$300(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 80
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserLevel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "M"

    if-eq v1, v2, :cond_1

    const-string v2, "M"

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    :cond_1
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$400(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    :goto_2
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$400(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$500(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$600(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$600(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserCompany()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 91
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$700(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0700ca

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    :goto_3
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v1, :cond_2

    .line 97
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 100
    :cond_2
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v2, "user_id"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "userId":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 103
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$800(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0700c7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    .end local v0    # "userId":Ljava/lang/String;
    :goto_4
    return-object p2

    .line 65
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    iput-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    goto/16 :goto_0

    .line 75
    :cond_4
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$000(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$100(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 77
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$200(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 83
    :cond_5
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$400(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 93
    :cond_6
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$700(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0700c9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 105
    .restart local v0    # "userId":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserLevel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 106
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$800(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 108
    :cond_8
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$800(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 113
    .end local v0    # "userId":Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$000(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$100(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v2}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$300(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 116
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$400(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$500(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lco/kr/festfive/adapter/MemberListAdapter;->holder:Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;->access$600(Lco/kr/festfive/adapter/MemberListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method
