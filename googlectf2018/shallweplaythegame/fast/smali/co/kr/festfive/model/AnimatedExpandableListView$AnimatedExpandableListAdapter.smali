.class public abstract Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "AnimatedExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/model/AnimatedExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AnimatedExpandableListAdapter"
.end annotation


# static fields
.field private static final STATE_COLLAPSING:I = 0x2

.field private static final STATE_EXPANDING:I = 0x1

.field private static final STATE_IDLE:I


# instance fields
.field private groupInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Lco/kr/festfive/model/AnimatedExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 261
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->groupInfo:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;Lco/kr/festfive/model/AnimatedExpandableListView;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;
    .param p1, "x1"    # Lco/kr/festfive/model/AnimatedExpandableListView;

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->setParent(Lco/kr/festfive/model/AnimatedExpandableListView;)V

    return-void
.end method

.method static synthetic access$100(Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;II)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->startExpandAnimation(II)V

    return-void
.end method

.method static synthetic access$200(Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;II)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->startCollapseAnimation(II)V

    return-void
.end method

.method static synthetic access$600(Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->stopAnimation(I)V

    return-void
.end method

.method private getGroupInfo(I)Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 284
    iget-object v1, p0, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->groupInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;

    .line 285
    .local v0, "info":Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;
    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;

    .end local v0    # "info":Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;-><init>(Lco/kr/festfive/model/AnimatedExpandableListView$1;)V

    .line 287
    .restart local v0    # "info":Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;
    iget-object v1, p0, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->groupInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    :cond_0
    return-object v0
.end method

.method private setParent(Lco/kr/festfive/model/AnimatedExpandableListView;)V
    .locals 0
    .param p1, "parent"    # Lco/kr/festfive/model/AnimatedExpandableListView;

    .prologue
    .line 269
    iput-object p1, p0, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->parent:Lco/kr/festfive/model/AnimatedExpandableListView;

    .line 270
    return-void
.end method

.method private startCollapseAnimation(II)V
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "firstChildPosition"    # I

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getGroupInfo(I)Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;

    move-result-object v0

    .line 306
    .local v0, "info":Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->animating:Z

    .line 307
    iput p2, v0, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->firstChildPosition:I

    .line 308
    const/4 v1, 0x0

    iput-boolean v1, v0, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->expanding:Z

    .line 309
    return-void
.end method

.method private startExpandAnimation(II)V
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "firstChildPosition"    # I

    .prologue
    const/4 v1, 0x1

    .line 298
    invoke-direct {p0, p1}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getGroupInfo(I)Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;

    move-result-object v0

    .line 299
    .local v0, "info":Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;
    iput-boolean v1, v0, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->animating:Z

    .line 300
    iput p2, v0, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->firstChildPosition:I

    .line 301
    iput-boolean v1, v0, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->expanding:Z

    .line 302
    return-void
.end method

.method private stopAnimation(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getGroupInfo(I)Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;

    move-result-object v0

    .line 313
    .local v0, "info":Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->animating:Z

    .line 314
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 344
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public final getChildType(II)I
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getGroupInfo(I)Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;

    move-result-object v0

    .line 322
    .local v0, "info":Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;
    iget-boolean v1, v0, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->animating:Z

    if-eqz v1, :cond_0

    .line 325
    const/4 v1, 0x0

    .line 330
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getRealChildType(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final getChildTypeCount()I
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getRealChildTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 32
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 353
    invoke-direct/range {p0 .. p1}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getGroupInfo(I)Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;

    move-result-object v11

    .line 355
    .local v11, "info":Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;
    iget-boolean v4, v11, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->animating:Z

    if-eqz v4, :cond_b

    .line 357
    move-object/from16 v0, p4

    instance-of v4, v0, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;

    if-nez v4, :cond_0

    .line 358
    new-instance p4, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;

    .end local p4    # "convertView":Landroid/view/View;
    invoke-virtual/range {p5 .. p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-direct {v0, v4}, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;-><init>(Landroid/content/Context;)V

    .line 359
    .restart local p4    # "convertView":Landroid/view/View;
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    :cond_0
    iget v4, v11, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->firstChildPosition:I

    move/from16 v0, p2

    if-ge v0, v4, :cond_1

    .line 382
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v4, p4

    .line 495
    :goto_0
    return-object v4

    :cond_1
    move-object/from16 v25, p5

    .line 386
    check-cast v25, Landroid/widget/ExpandableListView;

    .local v25, "listView":Landroid/widget/ExpandableListView;
    move-object/from16 v13, p4

    .line 388
    check-cast v13, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;

    .line 391
    .local v13, "dummyView":Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;
    invoke-virtual {v13}, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->clearViews()V

    .line 394
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ExpandableListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ExpandableListView;->getDividerHeight()I

    move-result v8

    invoke-virtual {v13, v4, v5, v8}, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->setDivider(Landroid/graphics/drawable/Drawable;II)V

    .line 397
    invoke-virtual/range {p5 .. p5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    .line 398
    .local v28, "measureSpecW":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    .line 400
    .local v27, "measureSpecH":I
    const/4 v10, 0x0

    .line 401
    .local v10, "totalHeight":I
    invoke-virtual/range {p5 .. p5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v23

    .line 403
    .local v23, "clipHeight":I
    invoke-virtual/range {p0 .. p1}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getRealChildrenCount(I)I

    move-result v24

    .line 404
    .local v24, "len":I
    iget v6, v11, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->firstChildPosition:I

    .local v6, "i":I
    :goto_1
    move/from16 v0, v24

    if-ge v6, v0, :cond_6

    .line 405
    add-int/lit8 v4, v24, -0x1

    if-ne v6, v4, :cond_3

    const/4 v7, 0x1

    :goto_2
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getRealChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    .line 407
    .local v22, "childView":Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/AbsListView$LayoutParams;

    .line 408
    .local v30, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v30, :cond_2

    .line 409
    invoke-virtual/range {p0 .. p0}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    .end local v30    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v30, Landroid/widget/AbsListView$LayoutParams;

    .line 410
    .restart local v30    # "p":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    :cond_2
    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v26, v0

    .line 416
    .local v26, "lpHeight":I
    if-lez v26, :cond_4

    .line 417
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v26

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 422
    .local v21, "childHeightSpec":I
    :goto_3
    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 423
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v10, v4

    .line 425
    move/from16 v0, v23

    if-ge v10, v0, :cond_5

    .line 427
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->addFakeView(Landroid/view/View;)V

    .line 404
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 405
    .end local v21    # "childHeightSpec":I
    .end local v22    # "childView":Landroid/view/View;
    .end local v26    # "lpHeight":I
    .end local v30    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 419
    .restart local v22    # "childView":Landroid/view/View;
    .restart local v26    # "lpHeight":I
    .restart local v30    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_4
    move/from16 v21, v27

    .restart local v21    # "childHeightSpec":I
    goto :goto_3

    .line 429
    :cond_5
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->addFakeView(Landroid/view/View;)V

    .line 434
    add-int/lit8 v4, v6, 0x1

    div-int v20, v10, v4

    .line 435
    .local v20, "averageHeight":I
    sub-int v4, v24, v6

    add-int/lit8 v4, v4, -0x1

    mul-int v4, v4, v20

    add-int/2addr v10, v4

    .line 441
    .end local v20    # "averageHeight":I
    .end local v21    # "childHeightSpec":I
    .end local v22    # "childView":Landroid/view/View;
    .end local v26    # "lpHeight":I
    .end local v30    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_6
    invoke-virtual {v13}, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->getTag()Ljava/lang/Object;

    move-result-object v29

    .local v29, "o":Ljava/lang/Object;
    if-nez v29, :cond_8

    const/16 v31, 0x0

    .line 443
    .end local v29    # "o":Ljava/lang/Object;
    .local v31, "state":I
    :goto_4
    iget-boolean v4, v11, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->expanding:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_9

    .line 444
    new-instance v7, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v8, v13

    invoke-direct/range {v7 .. v12}, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;-><init>(Landroid/view/View;IILco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;Lco/kr/festfive/model/AnimatedExpandableListView$1;)V

    .line 445
    .local v7, "ani":Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->parent:Lco/kr/festfive/model/AnimatedExpandableListView;

    invoke-static {v4}, Lco/kr/festfive/model/AnimatedExpandableListView;->access$500(Lco/kr/festfive/model/AnimatedExpandableListView;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v7, v4, v5}, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->setDuration(J)V

    .line 446
    new-instance v4, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v4, v0, v1, v13}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter$1;-><init>(Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;ILco/kr/festfive/model/AnimatedExpandableListView$DummyView;)V

    invoke-virtual {v7, v4}, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 462
    invoke-virtual {v13, v7}, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 463
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->setTag(Ljava/lang/Object;)V

    .end local v7    # "ani":Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;
    :cond_7
    :goto_5
    move-object/from16 v4, p4

    .line 493
    goto/16 :goto_0

    .line 441
    .end local v31    # "state":I
    .restart local v29    # "o":Ljava/lang/Object;
    :cond_8
    check-cast v29, Ljava/lang/Integer;

    .end local v29    # "o":Ljava/lang/Object;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v31

    goto :goto_4

    .line 464
    .restart local v31    # "state":I
    :cond_9
    iget-boolean v4, v11, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->expanding:Z

    if-nez v4, :cond_7

    const/4 v4, 0x2

    move/from16 v0, v31

    if-eq v0, v4, :cond_7

    .line 465
    iget v4, v11, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->dummyHeight:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    .line 466
    iput v10, v11, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->dummyHeight:I

    .line 469
    :cond_a
    new-instance v7, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;

    iget v14, v11, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->dummyHeight:I

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v12, v7

    move-object/from16 v16, v11

    invoke-direct/range {v12 .. v17}, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;-><init>(Landroid/view/View;IILco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;Lco/kr/festfive/model/AnimatedExpandableListView$1;)V

    .line 470
    .restart local v7    # "ani":Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->parent:Lco/kr/festfive/model/AnimatedExpandableListView;

    invoke-static {v4}, Lco/kr/festfive/model/AnimatedExpandableListView;->access$500(Lco/kr/festfive/model/AnimatedExpandableListView;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v7, v4, v5}, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->setDuration(J)V

    .line 471
    new-instance v14, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter$2;

    move-object/from16 v15, p0

    move/from16 v16, p1

    move-object/from16 v17, v25

    move-object/from16 v18, v11

    move-object/from16 v19, v13

    invoke-direct/range {v14 .. v19}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter$2;-><init>(Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;ILandroid/widget/ExpandableListView;Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;)V

    invoke-virtual {v7, v14}, Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 489
    invoke-virtual {v13, v7}, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 490
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;->setTag(Ljava/lang/Object;)V

    goto :goto_5

    .line 495
    .end local v6    # "i":I
    .end local v7    # "ani":Lco/kr/festfive/model/AnimatedExpandableListView$ExpandAnimation;
    .end local v10    # "totalHeight":I
    .end local v13    # "dummyView":Lco/kr/festfive/model/AnimatedExpandableListView$DummyView;
    .end local v23    # "clipHeight":I
    .end local v24    # "len":I
    .end local v25    # "listView":Landroid/widget/ExpandableListView;
    .end local v27    # "measureSpecH":I
    .end local v28    # "measureSpecW":I
    .end local v31    # "state":I
    :cond_b
    invoke-virtual/range {p0 .. p5}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getRealChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public final getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getGroupInfo(I)Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;

    move-result-object v0

    .line 502
    .local v0, "info":Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;
    iget-boolean v1, v0, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->animating:Z

    if-eqz v1, :cond_0

    .line 503
    iget v1, v0, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->firstChildPosition:I

    add-int/lit8 v1, v1, 0x1

    .line 505
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getRealChildrenCount(I)I

    move-result v1

    goto :goto_0
.end method

.method public getRealChildType(II)I
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public getRealChildTypeCount()I
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getRealChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getRealChildrenCount(I)I
.end method

.method public notifyGroupExpanded(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lco/kr/festfive/model/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getGroupInfo(I)Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;

    move-result-object v0

    .line 294
    .local v0, "info":Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;
    const/4 v1, -0x1

    iput v1, v0, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->dummyHeight:I

    .line 295
    return-void
.end method
