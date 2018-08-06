.class public Lcom/mikhaellopez/circularimageview/CircularImageView;
.super Landroid/widget/ImageView;
.source "CircularImageView.java"


# static fields
.field private static final DEFAULT_BORDER_WIDTH:F = 4.0f

.field private static final DEFAULT_SHADOW_RADIUS:F = 8.0f

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private borderWidth:F

.field private canvasSize:I

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private image:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private paintBorder:Landroid/graphics/Paint;

.field private shadowColor:I

.field private shadowRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/mikhaellopez/circularimageview/CircularImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mikhaellopez/circularimageview/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mikhaellopez/circularimageview/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowColor:I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/mikhaellopez/circularimageview/CircularImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 200
    invoke-static {p1, v1, v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 209
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 206
    invoke-static {p1, v4, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private drawShadow(FI)V
    .locals 3
    .param p1, "shadowRadius"    # F
    .param p2, "shadowColor"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    .line 171
    iput p2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowColor:I

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 173
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 176
    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 216
    if-nez p1, :cond_0

    move-object v0, v5

    .line 238
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 218
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v6, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_1

    .line 219
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 222
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 223
    .local v4, "intrinsicWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 225
    .local v3, "intrinsicHeight":I
    if-lez v4, :cond_2

    if-gtz v3, :cond_3

    :cond_2
    move-object v0, v5

    .line 226
    goto :goto_0

    .line 230
    :cond_3
    :try_start_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 232
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 233
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Encountered OutOfMemoryError while generating bitmap!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 238
    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 56
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paint:Landroid/graphics/Paint;

    .line 57
    iget-object v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    .line 60
    iget-object v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    sget-object v2, Lcom/mikhaellopez/circularimageview/R$styleable;->CircularImageView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v2, Lcom/mikhaellopez/circularimageview/R$styleable;->CircularImageView_civ_border:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v2, v3

    .line 68
    .local v1, "defaultBorderSize":F
    sget v2, Lcom/mikhaellopez/circularimageview/R$styleable;->CircularImageView_civ_border_width:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setBorderWidth(F)V

    .line 69
    sget v2, Lcom/mikhaellopez/circularimageview/R$styleable;->CircularImageView_civ_border_color:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setBorderColor(I)V

    .line 73
    .end local v1    # "defaultBorderSize":F
    :cond_0
    sget v2, Lcom/mikhaellopez/circularimageview/R$styleable;->CircularImageView_civ_shadow:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const/high16 v2, 0x41000000    # 8.0f

    iput v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    .line 75
    sget v2, Lcom/mikhaellopez/circularimageview/R$styleable;->CircularImageView_civ_shadow_radius:I

    iget v3, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    sget v3, Lcom/mikhaellopez/circularimageview/R$styleable;->CircularImageView_civ_shadow_color:I

    iget v4, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mikhaellopez/circularimageview/CircularImageView;->drawShadow(FI)V

    .line 77
    :cond_1
    return-void
.end method

.method private loadBitmap()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 155
    iget-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    .line 156
    invoke-direct {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->updateShader()V

    goto :goto_0
.end method

.method private measureHeight(I)I
    .locals 4
    .param p1, "measureSpecHeight"    # I

    .prologue
    .line 274
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 275
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 277
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 279
    move v0, v2

    .line 288
    .local v0, "result":I
    :goto_0
    add-int/lit8 v3, v0, 0x2

    return v3

    .line 280
    .end local v0    # "result":I
    :cond_0
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    .line 282
    move v0, v2

    .restart local v0    # "result":I
    goto :goto_0

    .line 285
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->canvasSize:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 255
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 256
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 258
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 260
    move v0, v2

    .line 269
    .local v0, "result":I
    :goto_0
    return v0

    .line 261
    .end local v0    # "result":I
    :cond_0
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    .line 263
    move v0, v2

    .restart local v0    # "result":I
    goto :goto_0

    .line 266
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->canvasSize:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method private updateShader()V
    .locals 5

    .prologue
    .line 179
    iget-object v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 195
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/mikhaellopez/circularimageview/CircularImageView;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    .line 186
    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 189
    .local v1, "shader":Landroid/graphics/BitmapShader;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 190
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->canvasSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->canvasSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 191
    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 194
    iget-object v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method


# virtual methods
.method public addShadow()V
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 95
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    .line 96
    :cond_0
    iget v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    iget v1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowColor:I

    invoke-direct {p0, v0, v1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->drawShadow(FI)V

    .line 97
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->invalidate()V

    .line 98
    return-void
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/mikhaellopez/circularimageview/CircularImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 127
    invoke-direct {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->loadBitmap()V

    .line 130
    iget-object v1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->canvasSize:I

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->canvasSize:I

    if-ge v1, v2, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->canvasSize:I

    .line 143
    :cond_1
    iget v1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->canvasSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->borderWidth:F

    mul-float/2addr v2, v6

    sub-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v0, v1, 0x2

    .line 145
    .local v0, "circleCenter":I
    int-to-float v1, v0

    iget v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->borderWidth:F

    add-float/2addr v1, v2

    int-to-float v2, v0

    iget v3, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->borderWidth:F

    add-float/2addr v2, v3

    int-to-float v3, v0

    iget v4, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->borderWidth:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    iget v5, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 147
    int-to-float v1, v0

    iget v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->borderWidth:F

    add-float/2addr v1, v2

    int-to-float v2, v0

    iget v3, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->borderWidth:F

    add-float/2addr v2, v3

    int-to-float v3, v0

    iget v4, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    iget v5, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->measureWidth(I)I

    move-result v1

    .line 247
    .local v1, "width":I
    invoke-direct {p0, p2}, Lcom/mikhaellopez/circularimageview/CircularImageView;->measureHeight(I)I

    move-result v0

    .line 250
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setMeasuredDimension(II)V

    .line 251
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 162
    iput p1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->canvasSize:I

    .line 163
    iget v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->canvasSize:I

    if-ge p2, v0, :cond_0

    .line 164
    iput p2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->canvasSize:I

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->updateShader()V

    .line 167
    :cond_1
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "borderColor"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->invalidate()V

    .line 91
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 0
    .param p1, "borderWidth"    # F

    .prologue
    .line 82
    iput p1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->borderWidth:F

    .line 83
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->requestLayout()V

    .line 84
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->invalidate()V

    .line 85
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 4
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 117
    sget-object v0, Lcom/mikhaellopez/circularimageview/CircularImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ScaleType %s not supported. ScaleType.CENTER_CROP is used by default. So you don\'t need to use ScaleType."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    return-void
.end method

.method public setShadowColor(I)V
    .locals 1
    .param p1, "shadowColor"    # I

    .prologue
    .line 106
    iget v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    invoke-direct {p0, v0, p1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->drawShadow(FI)V

    .line 107
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->invalidate()V

    .line 108
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1
    .param p1, "shadowRadius"    # F

    .prologue
    .line 101
    iget v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowColor:I

    invoke-direct {p0, p1, v0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->drawShadow(FI)V

    .line 102
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->invalidate()V

    .line 103
    return-void
.end method
