.class public Ljp/wasabeef/glide/transformations/gpu/KuwaharaFilterTransformation;
.super Ljp/wasabeef/glide/transformations/gpu/GPUFilterTransformation;
.source "KuwaharaFilterTransformation.java"


# instance fields
.field private mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljp/wasabeef/glide/transformations/gpu/KuwaharaFilterTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # I

    .prologue
    .line 43
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Ljp/wasabeef/glide/transformations/gpu/KuwaharaFilterTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .prologue
    .line 39
    const/16 v0, 0x19

    invoke-direct {p0, p1, p2, v0}, Ljp/wasabeef/glide/transformations/gpu/KuwaharaFilterTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "radius"    # I

    .prologue
    .line 47
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageKuwaharaFilter;

    invoke-direct {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageKuwaharaFilter;-><init>()V

    invoke-direct {p0, p1, p2, v1}, Ljp/wasabeef/glide/transformations/gpu/GPUFilterTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 48
    iput p3, p0, Ljp/wasabeef/glide/transformations/gpu/KuwaharaFilterTransformation;->mRadius:I

    .line 49
    invoke-virtual {p0}, Ljp/wasabeef/glide/transformations/gpu/KuwaharaFilterTransformation;->getFilter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageKuwaharaFilter;

    .line 50
    .local v0, "filter":Ljp/co/cyberagent/android/gpuimage/GPUImageKuwaharaFilter;
    iget v1, p0, Ljp/wasabeef/glide/transformations/gpu/KuwaharaFilterTransformation;->mRadius:I

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageKuwaharaFilter;->setRadius(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KuwaharaFilterTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/glide/transformations/gpu/KuwaharaFilterTransformation;->mRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method