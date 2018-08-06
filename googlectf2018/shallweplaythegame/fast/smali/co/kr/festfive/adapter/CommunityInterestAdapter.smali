.class public Lco/kr/festfive/adapter/CommunityInterestAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CommunityInterestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lco/kr/festfive/model/CommunityInterestListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private holder:Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 30
    iput-object p1, p0, Lco/kr/festfive/adapter/CommunityInterestAdapter;->context:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    if-nez p2, :cond_0

    .line 37
    new-instance v0, Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;-><init>(Lco/kr/festfive/adapter/CommunityInterestAdapter;)V

    iput-object v0, p0, Lco/kr/festfive/adapter/CommunityInterestAdapter;->holder:Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;

    .line 39
    invoke-virtual {p0}, Lco/kr/festfive/adapter/CommunityInterestAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 41
    iget-object v1, p0, Lco/kr/festfive/adapter/CommunityInterestAdapter;->holder:Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;

    const v0, 0x7f0800c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 42
    iget-object v1, p0, Lco/kr/festfive/adapter/CommunityInterestAdapter;->holder:Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;

    const v0, 0x7f08020d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    .line 43
    iget-object v1, p0, Lco/kr/festfive/adapter/CommunityInterestAdapter;->holder:Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;

    const v0, 0x7f0801f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    .line 44
    iget-object v1, p0, Lco/kr/festfive/adapter/CommunityInterestAdapter;->holder:Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;

    const v0, 0x7f080072

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;->descriptionText:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lco/kr/festfive/adapter/CommunityInterestAdapter;->holder:Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lco/kr/festfive/adapter/CommunityInterestAdapter;->holder:Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;

    iget-object v1, v0, Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/CommunityInterestAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/CommunityInterestListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/CommunityInterestListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lco/kr/festfive/adapter/CommunityInterestAdapter;->holder:Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;

    iget-object v1, v0, Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/CommunityInterestAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/CommunityInterestListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/CommunityInterestListItem;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lco/kr/festfive/adapter/CommunityInterestAdapter;->holder:Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;

    iget-object v1, v0, Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/CommunityInterestAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/CommunityInterestListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/CommunityInterestListItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lco/kr/festfive/adapter/CommunityInterestAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/CommunityInterestAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/CommunityInterestListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/CommunityInterestListItem;->getCommunityImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/adapter/CommunityInterestAdapter;->holder:Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;

    iget-object v1, v1, Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 74
    return-object p2

    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;

    iput-object v0, p0, Lco/kr/festfive/adapter/CommunityInterestAdapter;->holder:Lco/kr/festfive/adapter/CommunityInterestAdapter$ViewHolder;

    goto :goto_0
.end method
