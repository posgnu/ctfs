.class Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;
.super Landroid/view/View;
.source "AnimatedExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/model/AnimatedExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyView"
.end annotation


# instance fields
.field private divider:Landroid/graphics/drawable/Drawable;

.field private dividerHeight:I

.field private dividerWidth:I

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 518
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->views:Ljava/util/List;

    .line 519
    return-void
.end method


# virtual methods
.method public addFakeView(Landroid/view/View;)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 536
    invoke-virtual {p0}, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 537
    iget-object v0, p0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    return-void
.end method

.method public clearViews()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 552
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 556
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 557
    iget-object v3, p0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->divider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 558
    iget-object v3, p0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->divider:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->dividerWidth:I

    iget v5, p0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->dividerHeight:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 561
    :cond_0
    iget-object v3, p0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 562
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 563
    iget-object v3, p0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 565
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 566
    invoke-virtual {p0}, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 567
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 568
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 570
    iget-object v3, p0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->divider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 571
    iget-object v3, p0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 572
    iget v3, p0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->dividerHeight:I

    int-to-float v3, v3

    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 575
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 579
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 542
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 543
    iget-object v3, p0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 544
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 545
    iget-object v3, p0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 546
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v2, p2, p3, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 548
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
    .param p2, "dividerWidth"    # I
    .param p3, "dividerHeight"    # I

    .prologue
    const/4 v0, 0x0

    .line 522
    if-eqz p1, :cond_0

    .line 523
    iput-object p1, p0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->divider:Landroid/graphics/drawable/Drawable;

    .line 524
    iput p2, p0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->dividerWidth:I

    .line 525
    iput p3, p0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->dividerHeight:I

    .line 527
    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 529
    :cond_0
    return-void
.end method
