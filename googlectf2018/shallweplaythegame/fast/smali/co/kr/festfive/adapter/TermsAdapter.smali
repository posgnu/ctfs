.class public Lco/kr/festfive/adapter/TermsAdapter;
.super Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;
.source "TermsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/TermListItem;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private viewHolder:Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;-><init>()V

    .line 24
    iput-object v0, p0, Lco/kr/festfive/adapter/TermsAdapter;->groupList:Ljava/util/ArrayList;

    .line 25
    iput-object v0, p0, Lco/kr/festfive/adapter/TermsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 26
    iput-object v0, p0, Lco/kr/festfive/adapter/TermsAdapter;->viewHolder:Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    .line 40
    iput-object p1, p0, Lco/kr/festfive/adapter/TermsAdapter;->context:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/adapter/TermsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/TermListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lco/kr/festfive/model/TermListItem;>;"
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;-><init>()V

    .line 24
    iput-object v0, p0, Lco/kr/festfive/adapter/TermsAdapter;->groupList:Ljava/util/ArrayList;

    .line 25
    iput-object v0, p0, Lco/kr/festfive/adapter/TermsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 26
    iput-object v0, p0, Lco/kr/festfive/adapter/TermsAdapter;->viewHolder:Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    .line 32
    iget-object v0, p0, Lco/kr/festfive/adapter/TermsAdapter;->context:Landroid/content/Context;

    iput-object v0, p0, Lco/kr/festfive/adapter/TermsAdapter;->context:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/adapter/TermsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 34
    iput-object p2, p0, Lco/kr/festfive/adapter/TermsAdapter;->groupList:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/adapter/TermsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/TermsAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lco/kr/festfive/adapter/TermsAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Lco/kr/festfive/model/TermListItem;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lco/kr/festfive/adapter/TermsAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/TermListItem;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lco/kr/festfive/adapter/TermsAdapter;->getChild(II)Lco/kr/festfive/model/TermListItem;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 103
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroup(I)Lco/kr/festfive/model/TermListItem;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lco/kr/festfive/adapter/TermsAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/TermListItem;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/TermsAdapter;->getGroup(I)Lco/kr/festfive/model/TermListItem;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lco/kr/festfive/adapter/TermsAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 60
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
    .line 67
    move-object v0, p3

    .line 69
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 70
    new-instance v1, Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;-><init>(Lco/kr/festfive/adapter/TermsAdapter;)V

    iput-object v1, p0, Lco/kr/festfive/adapter/TermsAdapter;->viewHolder:Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    .line 71
    iget-object v1, p0, Lco/kr/festfive/adapter/TermsAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0a0043

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    iget-object v2, p0, Lco/kr/festfive/adapter/TermsAdapter;->viewHolder:Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    const v1, 0x7f08020d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    .line 73
    iget-object v2, p0, Lco/kr/festfive/adapter/TermsAdapter;->viewHolder:Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    const v1, 0x7f080169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;->dateText:Landroid/widget/TextView;

    .line 74
    iget-object v1, p0, Lco/kr/festfive/adapter/TermsAdapter;->viewHolder:Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    iget-object v1, v1, Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;->dateText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v1, p0, Lco/kr/festfive/adapter/TermsAdapter;->viewHolder:Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    :goto_0
    iget-object v1, p0, Lco/kr/festfive/adapter/TermsAdapter;->viewHolder:Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    iget-object v1, v1, Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/TermsAdapter;->getGroup(I)Lco/kr/festfive/model/TermListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/TermListItem;->getTitleText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-object v0

    .line 77
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    iput-object v1, p0, Lco/kr/festfive/adapter/TermsAdapter;->viewHolder:Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    goto :goto_0
.end method

.method public getRealChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 110
    move-object v0, p4

    .line 112
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 113
    new-instance v1, Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;-><init>(Lco/kr/festfive/adapter/TermsAdapter;)V

    iput-object v1, p0, Lco/kr/festfive/adapter/TermsAdapter;->viewHolder:Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    .line 114
    iget-object v1, p0, Lco/kr/festfive/adapter/TermsAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0a0076

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 115
    iget-object v2, p0, Lco/kr/festfive/adapter/TermsAdapter;->viewHolder:Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    .line 117
    iget-object v1, p0, Lco/kr/festfive/adapter/TermsAdapter;->viewHolder:Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    :goto_0
    iget-object v1, p0, Lco/kr/festfive/adapter/TermsAdapter;->viewHolder:Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    iget-object v1, v1, Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lco/kr/festfive/adapter/TermsAdapter;->getChild(II)Lco/kr/festfive/model/TermListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/TermListItem;->getContentText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lco/kr/festfive/adapter/TermsAdapter;->viewHolder:Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    iget-object v1, v1, Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    new-instance v2, Lco/kr/festfive/adapter/TermsAdapter$1;

    invoke-direct {v2, p0}, Lco/kr/festfive/adapter/TermsAdapter$1;-><init>(Lco/kr/festfive/adapter/TermsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 149
    return-object v0

    .line 119
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    iput-object v1, p0, Lco/kr/festfive/adapter/TermsAdapter;->viewHolder:Lco/kr/festfive/adapter/TermsAdapter$ViewHolder;

    goto :goto_0
.end method

.method public getRealChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method
