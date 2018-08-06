.class public Lco/kr/festfive/adapter/NoticeExAdapter;
.super Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;
.source "NoticeExAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private childList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/NoticeListMainItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field dateFormat:Ljava/text/SimpleDateFormat;

.field dateParse:Ljava/text/SimpleDateFormat;

.field private groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/NoticeListMainItem;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;-><init>()V

    .line 30
    iput-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->groupList:Ljava/util/ArrayList;

    .line 31
    iput-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->childList:Ljava/util/ArrayList;

    .line 32
    iput-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 33
    iput-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->dateParse:Ljava/text/SimpleDateFormat;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 49
    iput-object p1, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->context:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/NoticeListMainItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lco/kr/festfive/model/NoticeListMainItem;>;"
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;-><init>()V

    .line 30
    iput-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->groupList:Ljava/util/ArrayList;

    .line 31
    iput-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->childList:Ljava/util/ArrayList;

    .line 32
    iput-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 33
    iput-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->dateParse:Ljava/text/SimpleDateFormat;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 41
    iget-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->context:Landroid/content/Context;

    iput-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->context:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 43
    iput-object p2, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->groupList:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/adapter/NoticeExAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/NoticeExAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Lco/kr/festfive/model/NoticeListMainItem;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/NoticeListMainItem;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lco/kr/festfive/adapter/NoticeExAdapter;->getChild(II)Lco/kr/festfive/model/NoticeListMainItem;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 127
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroup(I)Lco/kr/festfive/model/NoticeListMainItem;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/NoticeListMainItem;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/NoticeExAdapter;->getGroup(I)Lco/kr/festfive/model/NoticeListMainItem;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 75
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 82
    move-object v3, p3

    .line 84
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_0

    .line 85
    new-instance v4, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    invoke-direct {v4, p0}, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;-><init>(Lco/kr/festfive/adapter/NoticeExAdapter;)V

    iput-object v4, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    .line 86
    iget-object v4, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0a0043

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 87
    iget-object v5, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    const v4, 0x7f08020d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    .line 88
    iget-object v5, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    const v4, 0x7f080169

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;->noticeDate:Landroid/widget/TextView;

    .line 90
    iget-object v4, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    :goto_0
    iget-object v4, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    iget-object v4, v4, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/NoticeExAdapter;->getGroup(I)Lco/kr/festfive/model/NoticeListMainItem;

    move-result-object v5

    invoke-virtual {v5}, Lco/kr/festfive/model/NoticeListMainItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    iget-object v4, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->dateParse:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/NoticeExAdapter;->getGroup(I)Lco/kr/festfive/model/NoticeListMainItem;

    move-result-object v5

    invoke-virtual {v5}, Lco/kr/festfive/model/NoticeListMainItem;->getCreateDt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    :goto_1
    iget-object v4, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "formatDate":Ljava/lang/String;
    iget-object v4, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    iget-object v4, v4, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;->noticeDate:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-object v3

    .line 92
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "formatDate":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    iput-object v4, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    goto :goto_0

    .line 101
    .restart local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRealChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 134
    move-object v1, p4

    .line 136
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_1

    .line 137
    new-instance v2, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;-><init>(Lco/kr/festfive/adapter/NoticeExAdapter;)V

    iput-object v2, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    .line 138
    iget-object v2, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0a0076

    invoke-virtual {v2, v3, p5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 139
    iget-object v3, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    const v2, 0x7f08005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    .line 140
    iget-object v3, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    const v2, 0x7f080055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;->contentImage:Landroid/widget/ImageView;

    .line 141
    iget-object v2, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;->contentImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v2, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 148
    :goto_0
    invoke-virtual {p0, p1, p2}, Lco/kr/festfive/adapter/NoticeExAdapter;->getChild(II)Lco/kr/festfive/model/NoticeListMainItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NoticeListMainItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "imageUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 150
    iget-object v2, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    iget-object v3, v3, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;->contentImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 151
    iget-object v2, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;->contentImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    :cond_0
    iget-object v2, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lco/kr/festfive/adapter/NoticeExAdapter;->getChild(II)Lco/kr/festfive/model/NoticeListMainItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/NoticeListMainItem;->getContents()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    new-instance v3, Lco/kr/festfive/adapter/NoticeExAdapter$1;

    invoke-direct {v3, p0}, Lco/kr/festfive/adapter/NoticeExAdapter$1;-><init>(Lco/kr/festfive/adapter/NoticeExAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 182
    return-object v1

    .line 145
    .end local v0    # "imageUrl":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    iput-object v2, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->viewHolder:Lco/kr/festfive/adapter/NoticeExAdapter$ViewHolder;

    goto :goto_0
.end method

.method public getRealChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public setData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/NoticeListMainItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/NoticeListMainItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lco/kr/festfive/model/NoticeListMainItem;>;"
    .local p3, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lco/kr/festfive/model/NoticeListMainItem;>;"
    iput-object p1, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->context:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->groupList:Ljava/util/ArrayList;

    .line 57
    iput-object p3, p0, Lco/kr/festfive/adapter/NoticeExAdapter;->childList:Ljava/util/ArrayList;

    .line 58
    return-void
.end method
