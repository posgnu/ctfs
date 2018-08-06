.class public Lco/kr/festfive/view/NestedListView;
.super Landroid/widget/ListView;
.source "NestedListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final MAXIMUM_LIST_ITEMS_VIEWABLE:I = 0x63


# instance fields
.field private listViewTouchAction:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lco/kr/festfive/view/NestedListView;->listViewTouchAction:I

    .line 28
    invoke-virtual {p0, p0}, Lco/kr/festfive/view/NestedListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 29
    invoke-virtual {p0, p0}, Lco/kr/festfive/view/NestedListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, -0x2

    .line 48
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 50
    const/4 v5, 0x0

    .line 51
    .local v5, "newHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 52
    .local v0, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 53
    .local v1, "heightSize":I
    const/high16 v6, 0x40000000    # 2.0f

    if-eq v0, v6, :cond_4

    .line 54
    invoke-virtual {p0}, Lco/kr/festfive/view/NestedListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 55
    .local v2, "listAdapter":Landroid/widget/ListAdapter;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 56
    const/4 v4, 0x0

    .line 57
    .local v4, "listPosition":I
    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_1

    const/16 v6, 0x63

    if-ge v4, v6, :cond_1

    .line 59
    const/4 v6, 0x0

    invoke-interface {v2, v4, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 61
    .local v3, "listItem":Landroid/view/View;
    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 62
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    :cond_0
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 66
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 58
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    .end local v3    # "listItem":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lco/kr/festfive/view/NestedListView;->getDividerHeight()I

    move-result v6

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    .line 70
    .end local v4    # "listPosition":I
    :cond_2
    const/high16 v6, -0x80000000

    if-ne v0, v6, :cond_3

    if-le v5, v1, :cond_3

    .line 71
    if-le v5, v1, :cond_3

    .line 72
    move v5, v1

    .line 78
    .end local v2    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lco/kr/festfive/view/NestedListView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0, v6, v5}, Lco/kr/festfive/view/NestedListView;->setMeasuredDimension(II)V

    .line 79
    return-void

    .line 76
    :cond_4
    invoke-virtual {p0}, Lco/kr/festfive/view/NestedListView;->getMeasuredHeight()I

    move-result v5

    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 35
    invoke-virtual {p0}, Lco/kr/festfive/view/NestedListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lco/kr/festfive/view/NestedListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/16 v1, 0x63

    if-le v0, v1, :cond_0

    .line 36
    iget v0, p0, Lco/kr/festfive/view/NestedListView;->listViewTouchAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 37
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lco/kr/festfive/view/NestedListView;->scrollBy(II)V

    .line 40
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 44
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0}, Lco/kr/festfive/view/NestedListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lco/kr/festfive/view/NestedListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/16 v1, 0x63

    if-le v0, v1, :cond_0

    .line 84
    iget v0, p0, Lco/kr/festfive/view/NestedListView;->listViewTouchAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lco/kr/festfive/view/NestedListView;->scrollBy(II)V

    .line 88
    :cond_0
    return v2
.end method
