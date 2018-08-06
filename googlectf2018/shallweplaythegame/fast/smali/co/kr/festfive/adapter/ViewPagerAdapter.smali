.class public Lco/kr/festfive/adapter/ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ViewPagerAdapter.java"


# instance fields
.field arrayModelClasses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field deleteListener:Lco/kr/festfive/listener/DeleteListener;

.field newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/adapter/ViewPagerAdapter;->arrayModelClasses:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lco/kr/festfive/model/NewFeedListItem;Lco/kr/festfive/listener/DeleteListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "newFeedListItem"    # Lco/kr/festfive/model/NewFeedListItem;
    .param p4, "deleteListener"    # Lco/kr/festfive/listener/DeleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lco/kr/festfive/model/NewFeedListItem;",
            "Lco/kr/festfive/listener/DeleteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "arrayModelClasses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/adapter/ViewPagerAdapter;->arrayModelClasses:Ljava/util/ArrayList;

    .line 45
    iput-object p2, p0, Lco/kr/festfive/adapter/ViewPagerAdapter;->arrayModelClasses:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lco/kr/festfive/adapter/ViewPagerAdapter;->context:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lco/kr/festfive/adapter/ViewPagerAdapter;->newFeedListItem:Lco/kr/festfive/model/NewFeedListItem;

    .line 48
    iput-object p4, p0, Lco/kr/festfive/adapter/ViewPagerAdapter;->deleteListener:Lco/kr/festfive/listener/DeleteListener;

    .line 49
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 135
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 136
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 37
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lco/kr/festfive/adapter/ViewPagerAdapter;->arrayModelClasses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 10
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 64
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0a0075

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 65
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f080056

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 66
    .local v1, "itemText":Landroid/widget/ImageView;
    const v6, 0x7f08005b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 67
    .local v2, "layout":Landroid/widget/LinearLayout;
    new-instance v6, Lco/kr/festfive/adapter/ViewPagerAdapter$1;

    invoke-direct {v6, p0}, Lco/kr/festfive/adapter/ViewPagerAdapter$1;-><init>(Lco/kr/festfive/adapter/ViewPagerAdapter;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v6, p0, Lco/kr/festfive/adapter/ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    iget-object v6, p0, Lco/kr/festfive/adapter/ViewPagerAdapter;->arrayModelClasses:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v6

    sget-object v7, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 82
    const v6, 0x7f080117

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 83
    .local v3, "left":Landroid/widget/ImageView;
    const v6, 0x7f0801b7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 85
    .local v4, "right":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lco/kr/festfive/adapter/ViewPagerAdapter;->getCount()I

    move-result v6

    if-ge p2, v6, :cond_0

    .line 86
    if-nez p2, :cond_2

    .line 87
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    invoke-virtual {p0}, Lco/kr/festfive/adapter/ViewPagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p2, v6, :cond_1

    .line 89
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    :cond_0
    :goto_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    invoke-virtual {p1, v5, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 129
    return-object v5

    .line 91
    .restart local p1    # "collection":Landroid/view/View;
    :cond_1
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_2
    const/4 v6, 0x1

    if-ne p2, v6, :cond_4

    .line 95
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    invoke-virtual {p0}, Lco/kr/festfive/adapter/ViewPagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p2, v6, :cond_3

    .line 97
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_4
    const/4 v6, 0x2

    if-ne p2, v6, :cond_6

    .line 103
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    invoke-virtual {p0}, Lco/kr/festfive/adapter/ViewPagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p2, v6, :cond_5

    .line 105
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_5
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_6
    const/4 v6, 0x3

    if-ne p2, v6, :cond_8

    .line 111
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    invoke-virtual {p0}, Lco/kr/festfive/adapter/ViewPagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p2, v6, :cond_7

    .line 113
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_7
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 118
    :cond_8
    const/4 v6, 0x4

    if-ne p2, v6, :cond_0

    .line 119
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    invoke-virtual {p0}, Lco/kr/festfive/adapter/ViewPagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p2, v6, :cond_9

    .line 121
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_9
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 58
    check-cast p2, Landroid/view/View;

    .end local p2    # "object":Ljava/lang/Object;
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
