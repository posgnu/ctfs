.class public Lco/kr/festfive/model/AnimatedExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "AnimatedExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;,
        Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;,
        Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;,
        Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lco/kr/festfive/model/AnimatedExpandableListView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method static synthetic access$500(Lco/kr/festfive/model/AnimatedExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/model/AnimatedExpandableListView;

    .prologue
    .line 42
    invoke-direct {p0}, Lco/kr/festfive/model/AnimatedExpandableListView;->getAnimationDuration()I

    move-result v0

    return v0
.end method

.method private getAnimationDuration()I
    .locals 1

    .prologue
    .line 235
    const/16 v0, 0x12c

    return v0
.end method


# virtual methods
.method public collapseGroupWithAnimation(I)Z
    .locals 11
    .param p1, "groupPos"    # I

    .prologue
    const/4 v10, -0x1

    .line 194
    invoke-static {p1}, Lco/kr/festfive/model/AnimatedExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lco/kr/festfive/model/AnimatedExpandableListView;->getFlatListPosition(J)I

    move-result v3

    .line 195
    .local v3, "groupFlatPos":I
    if-eq v3, v10, :cond_1

    .line 196
    invoke-virtual {p0}, Lco/kr/festfive/model/AnimatedExpandableListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v0, v3, v7

    .line 197
    .local v0, "childIndex":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lco/kr/festfive/model/AnimatedExpandableListView;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 199
    invoke-virtual {p0, v0}, Lco/kr/festfive/model/AnimatedExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 200
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Lco/kr/festfive/model/AnimatedExpandableListView;->getBottom()I

    move-result v8

    if-lt v7, v8, :cond_1

    .line 205
    invoke-virtual {p0, p1}, Lco/kr/festfive/model/AnimatedExpandableListView;->collapseGroup(I)Z

    move-result v7

    .line 231
    .end local v0    # "childIndex":I
    .end local v6    # "v":Landroid/view/View;
    :goto_0
    return v7

    .line 210
    .restart local v0    # "childIndex":I
    :cond_0
    invoke-virtual {p0, p1}, Lco/kr/festfive/model/AnimatedExpandableListView;->collapseGroup(I)Z

    move-result v7

    goto :goto_0

    .line 215
    .end local v0    # "childIndex":I
    :cond_1
    invoke-virtual {p0}, Lco/kr/festfive/model/AnimatedExpandableListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {p0, v7}, Lco/kr/festfive/model/AnimatedExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v4

    .line 216
    .local v4, "packedPos":J
    invoke-static {v4, v5}, Lco/kr/festfive/model/AnimatedExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    .line 217
    .local v1, "firstChildPos":I
    invoke-static {v4, v5}, Lco/kr/festfive/model/AnimatedExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 223
    .local v2, "firstGroupPos":I
    if-eq v1, v10, :cond_2

    if-eq v2, p1, :cond_3

    :cond_2
    const/4 v1, 0x0

    .line 227
    :cond_3
    iget-object v7, p0, Lco/kr/festfive/model/AnimatedExpandableListView;->adapter:Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    invoke-static {v7, p1, v1}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->access$200(Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;II)V

    .line 230
    iget-object v7, p0, Lco/kr/festfive/model/AnimatedExpandableListView;->adapter:Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    invoke-virtual {v7}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->notifyDataSetChanged()V

    .line 231
    invoke-virtual {p0, p1}, Lco/kr/festfive/model/AnimatedExpandableListView;->isGroupExpanded(I)Z

    move-result v7

    goto :goto_0
.end method

.method public expandGroupWithAnimation(I)Z
    .locals 8
    .param p1, "groupPos"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 155
    iget-object v6, p0, Lco/kr/festfive/model/AnimatedExpandableListView;->adapter:Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    invoke-virtual {v6}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getGroupCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_0

    move v2, v4

    .line 156
    .local v2, "lastGroup":Z
    :goto_0
    if-eqz v2, :cond_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_1

    .line 157
    invoke-virtual {p0, p1, v4}, Lco/kr/festfive/model/AnimatedExpandableListView;->expandGroup(IZ)Z

    move-result v4

    .line 184
    :goto_1
    return v4

    .end local v2    # "lastGroup":Z
    :cond_0
    move v2, v5

    .line 155
    goto :goto_0

    .line 160
    .restart local v2    # "lastGroup":Z
    :cond_1
    invoke-static {p1}, Lco/kr/festfive/model/AnimatedExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lco/kr/festfive/model/AnimatedExpandableListView;->getFlatListPosition(J)I

    move-result v1

    .line 161
    .local v1, "groupFlatPos":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 162
    invoke-virtual {p0}, Lco/kr/festfive/model/AnimatedExpandableListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v0, v1, v4

    .line 163
    .local v0, "childIndex":I
    invoke-virtual {p0}, Lco/kr/festfive/model/AnimatedExpandableListView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 165
    invoke-virtual {p0, v0}, Lco/kr/festfive/model/AnimatedExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 166
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lco/kr/festfive/model/AnimatedExpandableListView;->getBottom()I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 174
    iget-object v4, p0, Lco/kr/festfive/model/AnimatedExpandableListView;->adapter:Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    invoke-virtual {v4, p1}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->notifyGroupExpanded(I)V

    .line 175
    invoke-virtual {p0, p1}, Lco/kr/festfive/model/AnimatedExpandableListView;->expandGroup(I)Z

    move-result v4

    goto :goto_1

    .line 181
    .end local v0    # "childIndex":I
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lco/kr/festfive/model/AnimatedExpandableListView;->adapter:Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    invoke-static {v4, p1, v5}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->access$100(Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;II)V

    .line 184
    invoke-virtual {p0, p1}, Lco/kr/festfive/model/AnimatedExpandableListView;->expandGroup(I)Z

    move-result v4

    goto :goto_1
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 139
    instance-of v0, p1, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 140
    check-cast p1, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    .end local p1    # "adapter":Landroid/widget/ExpandableListAdapter;
    iput-object p1, p0, Lco/kr/festfive/model/AnimatedExpandableListView;->adapter:Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    .line 141
    iget-object v0, p0, Lco/kr/festfive/model/AnimatedExpandableListView;->adapter:Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    invoke-static {v0, p0}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->access$000(Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;Lco/kr/festfive/model/AnimatedExpandableListView;)V

    .line 145
    return-void

    .line 143
    .restart local p1    # "adapter":Landroid/widget/ExpandableListAdapter;
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement AnimatedExpandableListAdapter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
