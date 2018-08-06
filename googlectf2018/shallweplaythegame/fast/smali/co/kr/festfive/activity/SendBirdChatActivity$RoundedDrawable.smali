.class public Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SendBirdChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/activity/SendBirdChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedDrawable"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapHeight:I

.field private final mBitmapWidth:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    .line 2449
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2450
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 2451
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mRectF:Landroid/graphics/RectF;

    .line 2452
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2453
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2454
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2455
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 2456
    .local v0, "shader":Landroid/graphics/BitmapShader;
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2458
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mBitmapWidth:I

    .line 2459
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mBitmapHeight:I

    .line 2460
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2464
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2465
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2520
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 2499
    iget v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 2494
    iget v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 2489
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2469
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2471
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2472
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 2476
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2477
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2478
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->invalidateSelf()V

    .line 2480
    :cond_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "aa"    # Z

    .prologue
    .line 2503
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2504
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->invalidateSelf()V

    .line 2505
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 2484
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2485
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 2515
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2516
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->invalidateSelf()V

    .line 2517
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 2509
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2510
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;->invalidateSelf()V

    .line 2511
    return-void
.end method
