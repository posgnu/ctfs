.class public Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;
.super Ljava/lang/Object;
.source "QRToViewPointTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Lcom/google/zxing/ResultPoint;ZLcom/dlazaro66/qrcodereaderview/Orientation;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 8
    .param p1, "qrPoint"    # Lcom/google/zxing/ResultPoint;
    .param p2, "isMirrorPreview"    # Z
    .param p3, "orientation"    # Lcom/dlazaro66/qrcodereaderview/Orientation;
    .param p4, "viewSize"    # Landroid/graphics/Point;
    .param p5, "cameraPreviewSize"    # Landroid/graphics/Point;

    .prologue
    .line 26
    iget v5, p5, Landroid/graphics/Point;->x:I

    int-to-float v0, v5

    .line 27
    .local v0, "previewX":F
    iget v5, p5, Landroid/graphics/Point;->y:I

    int-to-float v1, v5

    .line 29
    .local v1, "previewY":F
    const/4 v4, 0x0

    .line 33
    .local v4, "transformedPoint":Landroid/graphics/PointF;
    sget-object v5, Lcom/dlazaro66/qrcodereaderview/Orientation;->PORTRAIT:Lcom/dlazaro66/qrcodereaderview/Orientation;

    if-ne p3, v5, :cond_1

    .line 34
    iget v5, p4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float v2, v5, v1

    .line 35
    .local v2, "scaleX":F
    iget v5, p4, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float v3, v5, v0

    .line 36
    .local v3, "scaleY":F
    new-instance v4, Landroid/graphics/PointF;

    .end local v4    # "transformedPoint":Landroid/graphics/PointF;
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    sub-float v5, v1, v5

    mul-float/2addr v5, v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, v3

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 37
    .restart local v4    # "transformedPoint":Landroid/graphics/PointF;
    if-eqz p2, :cond_0

    .line 38
    iget v5, p4, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 49
    .end local v2    # "scaleX":F
    .end local v3    # "scaleY":F
    :cond_0
    :goto_0
    return-object v4

    .line 40
    :cond_1
    sget-object v5, Lcom/dlazaro66/qrcodereaderview/Orientation;->LANDSCAPE:Lcom/dlazaro66/qrcodereaderview/Orientation;

    if-ne p3, v5, :cond_0

    .line 41
    iget v5, p4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float v2, v5, v0

    .line 42
    .restart local v2    # "scaleX":F
    iget v5, p4, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float v3, v5, v1

    .line 43
    .restart local v3    # "scaleY":F
    new-instance v4, Landroid/graphics/PointF;

    .end local v4    # "transformedPoint":Landroid/graphics/PointF;
    iget v5, p4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    iget v6, p4, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    .line 44
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 45
    .restart local v4    # "transformedPoint":Landroid/graphics/PointF;
    if-eqz p2, :cond_0

    .line 46
    iget v5, p4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    goto :goto_0
.end method

.method public transform([Lcom/google/zxing/ResultPoint;ZLcom/dlazaro66/qrcodereaderview/Orientation;Landroid/graphics/Point;Landroid/graphics/Point;)[Landroid/graphics/PointF;
    .locals 11
    .param p1, "qrPoints"    # [Lcom/google/zxing/ResultPoint;
    .param p2, "isMirrorPreview"    # Z
    .param p3, "orientation"    # Lcom/dlazaro66/qrcodereaderview/Orientation;
    .param p4, "viewSize"    # Landroid/graphics/Point;
    .param p5, "cameraPreviewSize"    # Landroid/graphics/Point;

    .prologue
    .line 13
    array-length v0, p1

    new-array v8, v0, [Landroid/graphics/PointF;

    .line 14
    .local v8, "transformedPoints":[Landroid/graphics/PointF;
    const/4 v6, 0x0

    .line 15
    .local v6, "index":I
    array-length v10, p1

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v1, p1, v9

    .local v1, "qrPoint":Lcom/google/zxing/ResultPoint;
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;->transform(Lcom/google/zxing/ResultPoint;ZLcom/dlazaro66/qrcodereaderview/Orientation;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object v7

    .line 18
    .local v7, "transformedPoint":Landroid/graphics/PointF;
    aput-object v7, v8, v6

    .line 19
    add-int/lit8 v6, v6, 0x1

    .line 15
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 21
    .end local v1    # "qrPoint":Lcom/google/zxing/ResultPoint;
    .end local v7    # "transformedPoint":Landroid/graphics/PointF;
    :cond_0
    return-object v8
.end method
