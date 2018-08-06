.class public Lco/kr/festfive/adapter/ChannelListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ChannelListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lco/kr/festfive/model/ChannelListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private deleteListener:Lco/kr/festfive/listener/DeleteListener;

.field private holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 41
    iput-object p1, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->context:Landroid/content/Context;

    .line 42
    iput p2, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->type:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lco/kr/festfive/listener/DeleteListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deleteListener"    # Lco/kr/festfive/listener/DeleteListener;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object p1, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->deleteListener:Lco/kr/festfive/listener/DeleteListener;

    .line 36
    return-void
.end method

.method static synthetic access$700(Lco/kr/festfive/adapter/ChannelListAdapter;)Lco/kr/festfive/listener/DeleteListener;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/ChannelListAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->deleteListener:Lco/kr/festfive/listener/DeleteListener;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    if-nez p2, :cond_1

    .line 54
    new-instance v0, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;-><init>(Lco/kr/festfive/adapter/ChannelListAdapter;)V

    iput-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    .line 56
    invoke-virtual {p0}, Lco/kr/festfive/adapter/ChannelListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    iget-object v1, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    const v0, 0x7f080127

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$002(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 58
    iget-object v1, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    const v0, 0x7f080199

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-static {v1, v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$102(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;Lcom/mikhaellopez/circularimageview/CircularImageView;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 59
    iget-object v1, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    const v0, 0x7f080149

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$202(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 60
    iget-object v1, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    const v0, 0x7f08003c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$302(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    const v0, 0x7f080115

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$402(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 62
    iget-object v1, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    const v0, 0x7f080209

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$502(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 63
    iget-object v1, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    const v0, 0x7f08023f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$602(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/ChannelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/ChannelListItem;->getCoverImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    invoke-static {v1}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$100(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 80
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    invoke-static {v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$300(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/ChannelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/ChannelListItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    invoke-static {v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$300(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/ChannelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/ChannelListItem;->getIsChannel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    invoke-static {v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$100(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setId(I)V

    .line 85
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    invoke-static {v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$100(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v0

    new-instance v1, Lco/kr/festfive/adapter/ChannelListAdapter$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/adapter/ChannelListAdapter$1;-><init>(Lco/kr/festfive/adapter/ChannelListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    invoke-static {v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$300(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setId(I)V

    .line 97
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    invoke-static {v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$400(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/ChannelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/ChannelListItem;->getLastMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const-string v1, ""

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/ChannelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/ChannelListItem;->getLastMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    invoke-static {v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$500(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_1
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/ChannelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/ChannelListItem;->getUnread_count()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    .line 107
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    invoke-static {v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$600(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :goto_2
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/ChannelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/ChannelListItem;->getUnread_count()I

    move-result v0

    if-nez v0, :cond_4

    .line 113
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    invoke-static {v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$600(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :goto_3
    return-object p2

    .line 67
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    iput-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    goto/16 :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    invoke-static {v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$500(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/ChannelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/ChannelListItem;->getLastMessageTs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 109
    :cond_3
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    invoke-static {v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$600(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/ChannelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {v0}, Lco/kr/festfive/model/ChannelListItem;->getUnread_count()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 115
    :cond_4
    iget-object v0, p0, Lco/kr/festfive/adapter/ChannelListAdapter;->holder:Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;

    invoke-static {v0}, Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;->access$600(Lco/kr/festfive/adapter/ChannelListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public remove(Lco/kr/festfive/model/ChannelListItem;)V
    .locals 0
    .param p1, "object"    # Lco/kr/festfive/model/ChannelListItem;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lco/kr/festfive/model/ChannelListItem;

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/ChannelListAdapter;->remove(Lco/kr/festfive/model/ChannelListItem;)V

    return-void
.end method
