.class public Lco/kr/festfive/control/BadgeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BadgeDrawable.java"


# instance fields
.field private mBadgePaint:Landroid/graphics/Paint;

.field private mBadgePaint1:Landroid/graphics/Paint;

.field private mCount:Ljava/lang/String;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTxtRect:Landroid/graphics/Rect;

.field private mWillDraw:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 27
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/control/BadgeDrawable;->mTxtRect:Landroid/graphics/Rect;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/control/BadgeDrawable;->mCount:Ljava/lang/String;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/control/BadgeDrawable;->mBadgePaint:Landroid/graphics/Paint;

    .line 31
    iget-object v0, p0, Lco/kr/festfive/control/BadgeDrawable;->mBadgePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v0, p0, Lco/kr/festfive/control/BadgeDrawable;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    iget-object v0, p0, Lco/kr/festfive/control/BadgeDrawable;->mBadgePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/control/BadgeDrawable;->mBadgePaint1:Landroid/graphics/Paint;

    .line 35
    iget-object v0, p0, Lco/kr/festfive/control/BadgeDrawable;->mBadgePaint1:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050024

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v0, p0, Lco/kr/festfive/control/BadgeDrawable;->mBadgePaint1:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object v0, p0, Lco/kr/festfive/control/BadgeDrawable;->mBadgePaint1:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/control/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Lco/kr/festfive/control/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v0, p0, Lco/kr/festfive/control/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 42
    iget-object v0, p0, Lco/kr/festfive/control/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    iget-object v0, p0, Lco/kr/festfive/control/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object v0, p0, Lco/kr/festfive/control/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 45
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 52
    iget-boolean v8, p0, Lco/kr/festfive/control/BadgeDrawable;->mWillDraw:Z

    if-nez v8, :cond_0

    .line 84
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/control/BadgeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 56
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v7, v8

    .line 57
    .local v7, "width":F
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v3, v8

    .line 63
    .local v3, "height":F
    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float v4, v8, v9

    .line 64
    .local v4, "radius":F
    sub-float v8, v7, v4

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    const/high16 v9, 0x40a00000    # 5.0f

    add-float v1, v8, v9

    .line 65
    .local v1, "centerX":F
    const/high16 v8, 0x40a00000    # 5.0f

    sub-float v2, v4, v8

    .line 66
    .local v2, "centerY":F
    iget-object v8, p0, Lco/kr/festfive/control/BadgeDrawable;->mCount:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-gt v8, v9, :cond_1

    .line 68
    float-to-double v8, v4

    const-wide/high16 v10, 0x401e000000000000L    # 7.5

    add-double/2addr v8, v10

    double-to-int v8, v8

    int-to-float v8, v8

    iget-object v9, p0, Lco/kr/festfive/control/BadgeDrawable;->mBadgePaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 69
    float-to-double v8, v4

    const-wide/high16 v10, 0x4016000000000000L    # 5.5

    add-double/2addr v8, v10

    double-to-int v8, v8

    int-to-float v8, v8

    iget-object v9, p0, Lco/kr/festfive/control/BadgeDrawable;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 77
    :goto_1
    iget-object v8, p0, Lco/kr/festfive/control/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lco/kr/festfive/control/BadgeDrawable;->mCount:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lco/kr/festfive/control/BadgeDrawable;->mCount:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    iget-object v12, p0, Lco/kr/festfive/control/BadgeDrawable;->mTxtRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 78
    iget-object v8, p0, Lco/kr/festfive/control/BadgeDrawable;->mTxtRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lco/kr/festfive/control/BadgeDrawable;->mTxtRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v5, v8

    .line 79
    .local v5, "textHeight":F
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v5, v8

    add-float v6, v2, v8

    .line 80
    .local v6, "textY":F
    iget-object v8, p0, Lco/kr/festfive/control/BadgeDrawable;->mCount:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_2

    .line 81
    const-string v8, "99+"

    iget-object v9, p0, Lco/kr/festfive/control/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v1, v6, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 72
    .end local v5    # "textHeight":F
    .end local v6    # "textY":F
    :cond_1
    float-to-double v8, v4

    const-wide/high16 v10, 0x4021000000000000L    # 8.5

    add-double/2addr v8, v10

    double-to-int v8, v8

    int-to-float v8, v8

    iget-object v9, p0, Lco/kr/festfive/control/BadgeDrawable;->mBadgePaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 73
    float-to-double v8, v4

    const-wide/high16 v10, 0x401a000000000000L    # 6.5

    add-double/2addr v8, v10

    double-to-int v8, v8

    int-to-float v8, v8

    iget-object v9, p0, Lco/kr/festfive/control/BadgeDrawable;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 83
    .restart local v5    # "textHeight":F
    .restart local v6    # "textY":F
    :cond_2
    iget-object v8, p0, Lco/kr/festfive/control/BadgeDrawable;->mCount:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/control/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v1, v6, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 100
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 105
    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 1
    .param p1, "count"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lco/kr/festfive/control/BadgeDrawable;->mCount:Ljava/lang/String;

    .line 93
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lco/kr/festfive/control/BadgeDrawable;->mWillDraw:Z

    .line 94
    invoke-virtual {p0}, Lco/kr/festfive/control/BadgeDrawable;->invalidateSelf()V

    .line 95
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
