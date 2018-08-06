.class public Ljp/wasabeef/glide/transformations/CropTransformation;
.super Ljava/lang/Object;
.source "CropTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/wasabeef/glide/transformations/CropTransformation$CropType;
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

.field private mCropType:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-direct {p0, v0}, Ljp/wasabeef/glide/transformations/CropTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 52
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Ljp/wasabeef/glide/transformations/CropTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjp/wasabeef/glide/transformations/CropTransformation$CropType;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "cropType"    # Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    .prologue
    .line 60
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Ljp/wasabeef/glide/transformations/CropTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILjp/wasabeef/glide/transformations/CropTransformation$CropType;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 1
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0, v0}, Ljp/wasabeef/glide/transformations/CropTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V
    .locals 1
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 56
    sget-object v0, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->CENTER:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    invoke-direct {p0, p1, p2, p3, v0}, Ljp/wasabeef/glide/transformations/CropTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILjp/wasabeef/glide/transformations/CropTransformation$CropType;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILjp/wasabeef/glide/transformations/CropTransformation$CropType;)V
    .locals 1
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "cropType"    # Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->CENTER:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    iput-object v0, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mCropType:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    .line 64
    iput-object p1, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 65
    iput p2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mWidth:I

    .line 66
    iput p3, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    .line 67
    iput-object p4, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mCropType:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    .line 68
    return-void
.end method

.method private getTop(F)F
    .locals 3
    .param p1, "scaledHeight"    # F

    .prologue
    const/4 v0, 0x0

    .line 105
    sget-object v1, Ljp/wasabeef/glide/transformations/CropTransformation$1;->$SwitchMap$jp$wasabeef$glide$transformations$CropTransformation$CropType:[I

    iget-object v2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mCropType:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    invoke-virtual {v2}, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 113
    :goto_0
    :pswitch_0
    return v0

    .line 109
    :pswitch_1
    iget v0, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_0

    .line 111
    :pswitch_2
    iget v0, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CropTransformation(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cropType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mCropType:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 15
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
    invoke-interface/range {p1 .. p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 73
    .local v9, "source":Landroid/graphics/Bitmap;
    iget v12, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mWidth:I

    if-nez v12, :cond_1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    :goto_0
    iput v12, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mWidth:I

    .line 74
    iget v12, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    if-nez v12, :cond_2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    :goto_1
    iput v12, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    .line 77
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 78
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_2
    iget-object v12, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget v13, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mWidth:I

    iget v14, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    invoke-interface {v12, v13, v14, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 80
    iget v12, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mWidth:I

    iget v13, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    invoke-static {v12, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    :cond_0
    iget v12, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mWidth:I

    int-to-float v12, v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float v5, v12, v13

    .line 84
    .local v5, "scaleX":F
    iget v12, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    int-to-float v12, v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v6, v12, v13

    .line 85
    .local v6, "scaleY":F
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 87
    .local v4, "scale":F
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float v8, v4, v12

    .line 88
    .local v8, "scaledWidth":F
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float v7, v4, v12

    .line 89
    .local v7, "scaledHeight":F
    iget v12, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mWidth:I

    int-to-float v12, v12

    sub-float/2addr v12, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float v3, v12, v13

    .line 90
    .local v3, "left":F
    invoke-direct {p0, v7}, Ljp/wasabeef/glide/transformations/CropTransformation;->getTop(F)F

    move-result v11

    .line 91
    .local v11, "top":F
    new-instance v10, Landroid/graphics/RectF;

    add-float v12, v3, v8

    add-float v13, v11, v7

    invoke-direct {v10, v3, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 93
    .local v10, "targetRect":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 94
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v9, v12, v10, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 96
    iget-object v12, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v0, v12}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v12

    return-object v12

    .line 73
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    .end local v3    # "left":F
    .end local v4    # "scale":F
    .end local v5    # "scaleX":F
    .end local v6    # "scaleY":F
    .end local v7    # "scaledHeight":F
    .end local v8    # "scaledWidth":F
    .end local v10    # "targetRect":Landroid/graphics/RectF;
    .end local v11    # "top":F
    :cond_1
    iget v12, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mWidth:I

    goto :goto_0

    .line 74
    :cond_2
    iget v12, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    goto :goto_1

    .line 77
    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_2
.end method
