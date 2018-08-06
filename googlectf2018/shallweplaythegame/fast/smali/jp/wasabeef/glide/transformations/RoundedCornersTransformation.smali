.class public Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;
.super Ljava/lang/Object;
.source "RoundedCornersTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private mCornerType:Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;

.field private mDiameter:I

.field private mMargin:I

.field private mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # I
    .param p3, "margin"    # I

    .prologue
    .line 49
    sget-object v0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;->ALL:Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;

    invoke-direct {p0, p1, p2, p3, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;-><init>(Landroid/content/Context;IILjp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # I
    .param p3, "margin"    # I
    .param p4, "cornerType"    # Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;

    .prologue
    .line 58
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILjp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V
    .locals 1
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "radius"    # I
    .param p3, "margin"    # I

    .prologue
    .line 53
    sget-object v0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;->ALL:Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;

    invoke-direct {p0, p1, p2, p3, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILjp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILjp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;)V
    .locals 1
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "radius"    # I
    .param p3, "margin"    # I
    .param p4, "cornerType"    # Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 64
    iput p2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    .line 65
    iget v0, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    .line 66
    iput p3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    .line 67
    iput-object p4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mCornerType:Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;

    .line 68
    return-void
.end method

.method private drawBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 161
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 163
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 164
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 165
    return-void
.end method

.method private drawBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 168
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 170
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 171
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p4, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 172
    return-void
.end method

.method private drawBottomRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 181
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 183
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p4, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 184
    return-void
.end method

.method private drawDiagonalFromTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 233
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 235
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 237
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 238
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p4, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 239
    return-void
.end method

.method private drawDiagonalFromTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 243
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 245
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 247
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 248
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 249
    return-void
.end method

.method private drawLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 187
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 189
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 190
    return-void
.end method

.method private drawOtherBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 215
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 217
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 219
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 220
    return-void
.end method

.method private drawOtherBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 224
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 226
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 228
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 229
    return-void
.end method

.method private drawOtherTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 199
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 201
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 203
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 204
    return-void
.end method

.method private drawOtherTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 207
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 209
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 211
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p4, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 212
    return-void
.end method

.method private drawRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 193
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 195
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 196
    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 91
    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    sub-float v1, p3, v2

    .line 92
    .local v1, "right":F
    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    sub-float v0, p4, v2

    .line 94
    .local v0, "bottom":F
    sget-object v2, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$1;->$SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType:[I

    iget-object v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mCornerType:Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;

    invoke-virtual {v3}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 141
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    invoke-direct {v2, v3, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 144
    :goto_0
    return-void

    .line 96
    :pswitch_0
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    invoke-direct {v2, v3, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-direct {p0, p1, p2, v1, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->drawTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-direct {p0, p1, p2, v1, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->drawTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 105
    :pswitch_3
    invoke-direct {p0, p1, p2, v1, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->drawBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 108
    :pswitch_4
    invoke-direct {p0, p1, p2, v1, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->drawBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 111
    :pswitch_5
    invoke-direct {p0, p1, p2, v1, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->drawTopRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 114
    :pswitch_6
    invoke-direct {p0, p1, p2, v1, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->drawBottomRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 117
    :pswitch_7
    invoke-direct {p0, p1, p2, v1, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->drawLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 120
    :pswitch_8
    invoke-direct {p0, p1, p2, v1, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->drawRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 123
    :pswitch_9
    invoke-direct {p0, p1, p2, v1, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->drawOtherTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 126
    :pswitch_a
    invoke-direct {p0, p1, p2, v1, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->drawOtherTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 129
    :pswitch_b
    invoke-direct {p0, p1, p2, v1, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->drawOtherBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 132
    :pswitch_c
    invoke-direct {p0, p1, p2, v1, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->drawOtherBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 135
    :pswitch_d
    invoke-direct {p0, p1, p2, v1, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->drawDiagonalFromTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 138
    :pswitch_e
    invoke-direct {p0, p1, p2, v1, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->drawDiagonalFromTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private drawTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 147
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 149
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 150
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 151
    return-void
.end method

.method private drawTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 154
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 156
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 157
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 158
    return-void
.end method

.method private drawTopRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 175
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 177
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 178
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoundedTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", diameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cornerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mCornerType:Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;

    .line 253
    invoke-virtual {v1}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 9
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 74
    .local v4, "source":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 75
    .local v5, "width":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 77
    .local v2, "height":I
    iget-object v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {v6, v5, v2, v7}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 79
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 84
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v4, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 86
    int-to-float v6, v5

    int-to-float v7, v2

    invoke-direct {p0, v1, v3, v6, v7}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 87
    iget-object v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v0, v6}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v6

    return-object v6
.end method
