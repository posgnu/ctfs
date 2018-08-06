.class public Lco/kr/festfive/adapter/UserGuideAdapter;
.super Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;
.source "UserGuideAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private childList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 42
    iput-object p1, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->context:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 35
    iput-object p2, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->groupList:Ljava/util/ArrayList;

    .line 36
    iput-object p3, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->childList:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/adapter/UserGuideAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/UserGuideAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lco/kr/festfive/adapter/UserGuideAdapter;->getChild(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChild(II)Ljava/lang/String;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->childList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 117
    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/UserGuideAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/String;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 73
    move-object v0, p3

    .line 75
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 76
    new-instance v1, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;-><init>(Lco/kr/festfive/adapter/UserGuideAdapter;)V

    iput-object v1, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    .line 77
    iget-object v1, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0a0043

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    iget-object v2, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    const v1, 0x7f08020d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    .line 79
    iget-object v2, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    .line 80
    iget-object v2, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    const v1, 0x7f080169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;->dateText:Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    iget-object v1, v1, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;->dateText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v1, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    :goto_0
    iget-object v1, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    iget-object v1, v1, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/UserGuideAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-object v0

    .line 86
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    iput-object v1, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    goto :goto_0
.end method

.method public getImage(II)Ljava/lang/String;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRealChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 124
    move-object v1, p4

    .line 126
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_0

    .line 127
    new-instance v2, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;-><init>(Lco/kr/festfive/adapter/UserGuideAdapter;)V

    iput-object v2, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    .line 128
    iget-object v2, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0a009e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 129
    iget-object v3, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    const v2, 0x7f08005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    .line 130
    iget-object v3, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    const v2, 0x7f080055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;->contentImage:Landroid/widget/ImageView;

    .line 132
    iget-object v2, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    :goto_0
    iget-object v2, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lco/kr/festfive/adapter/UserGuideAdapter;->getChild(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    new-instance v3, Lco/kr/festfive/adapter/UserGuideAdapter$1;

    invoke-direct {v3, p0}, Lco/kr/festfive/adapter/UserGuideAdapter$1;-><init>(Lco/kr/festfive/adapter/UserGuideAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 164
    invoke-virtual {p0, p1, p2}, Lco/kr/festfive/adapter/UserGuideAdapter;->getImage(II)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "imageUrl":Ljava/lang/String;
    invoke-static {v0}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;->contentImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    :goto_1
    return-object v1

    .line 134
    .end local v0    # "imageUrl":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    iput-object v2, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    goto :goto_0

    .line 168
    .restart local v0    # "imageUrl":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;->contentImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v2, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->viewHolder:Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;

    iget-object v3, v3, Lco/kr/festfive/adapter/UserGuideAdapter$ViewHolder;->contentImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1
.end method

.method public getRealChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public setData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p2, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->groupList:Ljava/util/ArrayList;

    .line 48
    iput-object p3, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->childList:Ljava/util/ArrayList;

    .line 49
    iput-object p4, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->imageList:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lco/kr/festfive/adapter/UserGuideAdapter;->context:Landroid/content/Context;

    .line 51
    return-void
.end method
