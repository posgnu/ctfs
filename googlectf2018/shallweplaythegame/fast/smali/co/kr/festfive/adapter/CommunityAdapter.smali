.class public Lco/kr/festfive/adapter/CommunityAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CommunityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lco/kr/festfive/model/CommunityListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private holder:Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-object p1, p0, Lco/kr/festfive/adapter/CommunityAdapter;->context:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public contentResize(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .param p1, "tmp"    # Ljava/lang/String;
    .param p2, "textMaxCount"    # I
    .param p3, "maxLine"    # I

    .prologue
    const/4 v7, 0x0

    .line 103
    const-string v5, "\n"

    const-string v6, "<br/>"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, "isResize":Z
    const-string v4, ""

    .line 106
    .local v4, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 107
    const-string v5, "<br/>"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 108
    .local v2, "index":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    .end local v2    # "index":I
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "<br/>"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    const-string v6, "<br/>"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 131
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "<br/>"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 132
    const-string v5, "<br/>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 112
    .restart local v2    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 113
    const-string v5, "<br/>"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 114
    .local v0, "brSize":I
    if-eq v1, p3, :cond_2

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v6, v2, v0

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int v6, v2, v0

    sub-int/2addr v5, v6

    if-lez v5, :cond_0

    .line 121
    add-int v5, v2, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 126
    goto :goto_0

    .line 117
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 142
    .end local v0    # "brSize":I
    .end local v2    # "index":I
    :cond_3
    const-string v5, "<br/>"

    const-string v6, "\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 144
    if-nez v3, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, p2, :cond_4

    .line 145
    invoke-virtual {v4, v7, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 146
    const-string v5, ">"

    const-string v6, "&gt"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 147
    const-string v5, "<"

    const-string v6, "<span>&lt</span>"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<font color=#a7a9ab size = \"30\"> <small>\ub354\ubcf4\uae30</small> </font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    const/4 v3, 0x1

    .line 152
    :cond_4
    if-nez v3, :cond_5

    if-ne v1, p3, :cond_5

    .line 153
    const-string v5, ">"

    const-string v6, "&gt"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 154
    const-string v5, "<"

    const-string v6, "<span>&lt</span>"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<font color=#a7a9ab size => <small>\ub354\ubcf4\uae30</small> </font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 159
    :cond_5
    const-string v5, "\n"

    const-string v6, "<br/>"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 161
    return-object v4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    if-nez p2, :cond_0

    .line 39
    new-instance v1, Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;-><init>(Lco/kr/festfive/adapter/CommunityAdapter;)V

    iput-object v1, p0, Lco/kr/festfive/adapter/CommunityAdapter;->holder:Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;

    .line 41
    invoke-virtual {p0}, Lco/kr/festfive/adapter/CommunityAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a0040

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 43
    iget-object v2, p0, Lco/kr/festfive/adapter/CommunityAdapter;->holder:Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;

    const v1, 0x7f0800c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 44
    iget-object v2, p0, Lco/kr/festfive/adapter/CommunityAdapter;->holder:Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;

    const v1, 0x7f08020d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    .line 45
    iget-object v2, p0, Lco/kr/festfive/adapter/CommunityAdapter;->holder:Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;

    const v1, 0x7f0801f2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    .line 46
    iget-object v2, p0, Lco/kr/festfive/adapter/CommunityAdapter;->holder:Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;

    const v1, 0x7f080072

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;->descriptionText:Landroid/widget/TextView;

    .line 48
    iget-object v1, p0, Lco/kr/festfive/adapter/CommunityAdapter;->holder:Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    iget-object v1, p0, Lco/kr/festfive/adapter/CommunityAdapter;->holder:Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;

    iget-object v2, v1, Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/CommunityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/CommunityListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/CommunityListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lco/kr/festfive/adapter/CommunityAdapter;->holder:Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;

    iget-object v2, v1, Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/CommunityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/CommunityListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/CommunityListItem;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/CommunityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/CommunityListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/CommunityListItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x50

    const/16 v3, 0x8

    invoke-virtual {p0, v1, v2, v3}, Lco/kr/festfive/adapter/CommunityAdapter;->contentResize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lco/kr/festfive/adapter/CommunityAdapter;->holder:Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;

    iget-object v1, v1, Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;->descriptionText:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const-string v2, "namsang"

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/CommunityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/CommunityListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/CommunityListItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lco/kr/festfive/adapter/CommunityAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/CommunityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/CommunityListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/CommunityListItem;->getCommunityImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/adapter/CommunityAdapter;->holder:Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 78
    return-object p2

    .line 50
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;

    iput-object v1, p0, Lco/kr/festfive/adapter/CommunityAdapter;->holder:Lco/kr/festfive/adapter/CommunityAdapter$ViewHolder;

    goto :goto_0
.end method
