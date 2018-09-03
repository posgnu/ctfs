.class public Ljp/wasabeef/glide/transformations/gpu/SepiaFilterTransformation;
.super Ljp/wasabeef/glide/transformations/gpu/GPUFilterTransformation;
.source "SepiaFilterTransformation.java"


# instance fields
.field private mIntensity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljp/wasabeef/glide/transformations/gpu/SepiaFilterTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intensity"    # F

    .prologue
    .line 42
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Ljp/wasabeef/glide/transformations/gpu/SepiaFilterTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;F)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .prologue
    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v0}, Ljp/wasabeef/glide/transformations/gpu/SepiaFilterTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;F)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;F)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "intensity"    # F

    .prologue
    .line 46
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;

    invoke-direct {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;-><init>()V

    invoke-direct {p0, p1, p2, v1}, Ljp/wasabeef/glide/transformations/gpu/GPUFilterTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 47
    iput p3, p0, Ljp/wasabeef/glide/transformations/gpu/SepiaFilterTransformation;->mIntensity:F

    .line 48
    invoke-virtual {p0}, Ljp/wasabeef/glide/transformations/gpu/SepiaFilterTransformation;->getFilter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;

    .line 49
    .local v0, "filter":Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;
    iget v1, p0, Ljp/wasabeef/glide/transformations/gpu/SepiaFilterTransformation;->mIntensity:F

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;->setIntensity(F)V

    .line 50
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SepiaFilterTransformation(intensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/glide/transformations/gpu/SepiaFilterTransformation;->mIntensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method