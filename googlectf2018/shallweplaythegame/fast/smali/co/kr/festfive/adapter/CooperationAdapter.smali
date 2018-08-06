.class public Lco/kr/festfive/adapter/CooperationAdapter;
.super Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;
.source "CooperationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private childList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/CooperationListItem;",
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
            "Lco/kr/festfive/model/CooperationListItem;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private listener:Lco/kr/festfive/listener/CooperateItemListener;

.field private viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/kr/festfive/listener/CooperateItemListener;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "listener"    # Lco/kr/festfive/listener/CooperateItemListener;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;-><init>()V

    .line 31
    iput-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->groupList:Ljava/util/ArrayList;

    .line 32
    iput-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->childList:Ljava/util/ArrayList;

    .line 33
    iput-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 34
    iput-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->dateParse:Ljava/text/SimpleDateFormat;

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 52
    iput-object p1, p0, Lco/kr/festfive/adapter/CooperationAdapter;->context:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 54
    iput-object p2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->listener:Lco/kr/festfive/listener/CooperateItemListener;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/CooperationListItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/CooperationListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lco/kr/festfive/model/CooperationListItem;>;"
    .local p3, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lco/kr/festfive/model/CooperationListItem;>;"
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;-><init>()V

    .line 31
    iput-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->groupList:Ljava/util/ArrayList;

    .line 32
    iput-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->childList:Ljava/util/ArrayList;

    .line 33
    iput-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 34
    iput-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->dateParse:Ljava/text/SimpleDateFormat;

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 44
    iget-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->context:Landroid/content/Context;

    iput-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->context:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object p2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->groupList:Ljava/util/ArrayList;

    .line 47
    iput-object p3, p0, Lco/kr/festfive/adapter/CooperationAdapter;->childList:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/adapter/CooperationAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/CooperationAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/adapter/CooperationAdapter;)Lco/kr/festfive/listener/CooperateItemListener;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/CooperationAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->listener:Lco/kr/festfive/listener/CooperateItemListener;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Lco/kr/festfive/model/CooperationListItem;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/CooperationListItem;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lco/kr/festfive/adapter/CooperationAdapter;->getChild(II)Lco/kr/festfive/model/CooperationListItem;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 135
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroup(I)Lco/kr/festfive/model/CooperationListItem;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/CooperationListItem;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/CooperationAdapter;->getGroup(I)Lco/kr/festfive/model/CooperationListItem;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lco/kr/festfive/adapter/CooperationAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 78
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
    .line 84
    move-object v3, p3

    .line 86
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_0

    .line 87
    new-instance v4, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    invoke-direct {v4, p0}, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;-><init>(Lco/kr/festfive/adapter/CooperationAdapter;)V

    iput-object v4, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    .line 88
    iget-object v4, p0, Lco/kr/festfive/adapter/CooperationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0a0043

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 89
    iget-object v5, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    const v4, 0x7f08020d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    .line 90
    iget-object v5, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    const v4, 0x7f080169

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->createDate:Landroid/widget/TextView;

    .line 91
    iget-object v5, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    const v4, 0x7f08005e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    .line 92
    iget-object v5, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    const v4, 0x7f080094

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->emailText:Landroid/widget/TextView;

    .line 93
    iget-object v5, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    const v4, 0x7f080189

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->phoneText:Landroid/widget/TextView;

    .line 94
    iget-object v5, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    const v4, 0x7f0800b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->homeText:Landroid/widget/TextView;

    .line 95
    iget-object v4, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    :goto_0
    iget-object v4, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    iget-object v4, v4, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/CooperationAdapter;->getGroup(I)Lco/kr/festfive/model/CooperationListItem;

    move-result-object v5

    invoke-virtual {v5}, Lco/kr/festfive/model/CooperationListItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    iget-object v4, p0, Lco/kr/festfive/adapter/CooperationAdapter;->dateParse:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Lco/kr/festfive/adapter/CooperationAdapter;->getGroup(I)Lco/kr/festfive/model/CooperationListItem;

    move-result-object v5

    invoke-virtual {v5}, Lco/kr/festfive/model/CooperationListItem;->getCreate_date()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    :goto_1
    iget-object v4, p0, Lco/kr/festfive/adapter/CooperationAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "formatDate":Ljava/lang/String;
    iget-object v4, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    iget-object v4, v4, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->createDate:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-object v3

    .line 97
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "formatDate":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    iput-object v4, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    goto :goto_0

    .line 107
    .restart local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 108
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
    .line 142
    move-object v1, p4

    .line 144
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_0

    .line 145
    new-instance v2, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;-><init>(Lco/kr/festfive/adapter/CooperationAdapter;)V

    iput-object v2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    .line 146
    iget-object v2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0a0042

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 147
    iget-object v3, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    const v2, 0x7f08005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    .line 148
    iget-object v3, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    const v2, 0x7f080094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->emailText:Landroid/widget/TextView;

    .line 149
    iget-object v3, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->phoneText:Landroid/widget/TextView;

    .line 150
    iget-object v3, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    const v2, 0x7f0800b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->homeText:Landroid/widget/TextView;

    .line 151
    iget-object v3, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    const v2, 0x7f080055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->contentImage:Landroid/widget/ImageView;

    .line 153
    iget-object v2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 158
    :goto_0
    iget-object v2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lco/kr/festfive/adapter/CooperationAdapter;->getChild(II)Lco/kr/festfive/model/CooperationListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/CooperationListItem;->getContents()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    new-instance v3, Lco/kr/festfive/adapter/CooperationAdapter$1;

    invoke-direct {v3, p0}, Lco/kr/festfive/adapter/CooperationAdapter$1;-><init>(Lco/kr/festfive/adapter/CooperationAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 185
    invoke-virtual {p0, p1, p2}, Lco/kr/festfive/adapter/CooperationAdapter;->getChild(II)Lco/kr/festfive/model/CooperationListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/CooperationListItem;->getImage_url()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "imageUrl":Ljava/lang/String;
    invoke-static {v0}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->contentImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    :goto_1
    iget-object v2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->emailText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lco/kr/festfive/adapter/CooperationAdapter;->getChild(II)Lco/kr/festfive/model/CooperationListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/CooperationListItem;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->phoneText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lco/kr/festfive/adapter/CooperationAdapter;->getChild(II)Lco/kr/festfive/model/CooperationListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/CooperationListItem;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->homeText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lco/kr/festfive/adapter/CooperationAdapter;->getChild(II)Lco/kr/festfive/model/CooperationListItem;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/model/CooperationListItem;->getHomepage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->emailText:Landroid/widget/TextView;

    new-instance v3, Lco/kr/festfive/adapter/CooperationAdapter$2;

    invoke-direct {v3, p0}, Lco/kr/festfive/adapter/CooperationAdapter$2;-><init>(Lco/kr/festfive/adapter/CooperationAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->phoneText:Landroid/widget/TextView;

    new-instance v3, Lco/kr/festfive/adapter/CooperationAdapter$3;

    invoke-direct {v3, p0}, Lco/kr/festfive/adapter/CooperationAdapter$3;-><init>(Lco/kr/festfive/adapter/CooperationAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->homeText:Landroid/widget/TextView;

    new-instance v3, Lco/kr/festfive/adapter/CooperationAdapter$4;

    invoke-direct {v3, p0}, Lco/kr/festfive/adapter/CooperationAdapter$4;-><init>(Lco/kr/festfive/adapter/CooperationAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    return-object v1

    .line 155
    .end local v0    # "imageUrl":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    iput-object v2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    goto/16 :goto_0

    .line 189
    .restart local v0    # "imageUrl":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    iget-object v2, v2, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->contentImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/adapter/CooperationAdapter;->viewHolder:Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;

    iget-object v3, v3, Lco/kr/festfive/adapter/CooperationAdapter$ViewHolder;->contentImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1
.end method

.method public getRealChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 228
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
            "Lco/kr/festfive/model/CooperationListItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/CooperationListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lco/kr/festfive/model/CooperationListItem;>;"
    .local p3, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lco/kr/festfive/model/CooperationListItem;>;"
    iput-object p1, p0, Lco/kr/festfive/adapter/CooperationAdapter;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lco/kr/festfive/adapter/CooperationAdapter;->groupList:Ljava/util/ArrayList;

    .line 60
    iput-object p3, p0, Lco/kr/festfive/adapter/CooperationAdapter;->childList:Ljava/util/ArrayList;

    .line 61
    return-void
.end method
