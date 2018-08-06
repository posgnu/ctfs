.class Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;
.super Landroid/os/AsyncTask;
.source "QRCodeReaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeFrameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[B",
        "Ljava/lang/Void;",
        "Lcom/google/zxing/Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final hintsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final qrToViewPointTransformer:Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;

.field private final viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;Ljava/util/Map;)V
    .locals 1
    .param p1, "view"    # Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 335
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 332
    new-instance v0, Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;

    invoke-direct {v0}, Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;-><init>()V

    iput-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->qrToViewPointTransformer:Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;

    .line 336
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->viewRef:Ljava/lang/ref/WeakReference;

    .line 337
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->hintsRef:Ljava/lang/ref/WeakReference;

    .line 338
    return-void
.end method

.method private transformToViewCoordinates(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;[Lcom/google/zxing/ResultPoint;)[Landroid/graphics/PointF;
    .locals 7
    .param p1, "view"    # Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;
    .param p2, "resultPoints"    # [Lcom/google/zxing/ResultPoint;

    .prologue
    const/4 v2, 0x1

    .line 391
    invoke-static {p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$600(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I

    move-result v6

    .line 392
    .local v6, "orientationDegrees":I
    const/16 v0, 0x5a

    if-eq v6, v0, :cond_0

    const/16 v0, 0x10e

    if-ne v6, v0, :cond_1

    :cond_0
    sget-object v3, Lcom/dlazaro66/qrcodereaderview/Orientation;->PORTRAIT:Lcom/dlazaro66/qrcodereaderview/Orientation;

    .line 395
    .local v3, "orientation":Lcom/dlazaro66/qrcodereaderview/Orientation;
    :goto_0
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->getHeight()I

    move-result v1

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 396
    .local v4, "viewSize":Landroid/graphics/Point;
    invoke-static {p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$200(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/client/android/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->getPreviewSize()Landroid/graphics/Point;

    move-result-object v5

    .line 398
    .local v5, "cameraPreviewSize":Landroid/graphics/Point;
    invoke-static {p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$200(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/client/android/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->getPreviewCameraId()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 400
    .local v2, "isMirrorCamera":Z
    :goto_1
    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->qrToViewPointTransformer:Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;->transform([Lcom/google/zxing/ResultPoint;ZLcom/dlazaro66/qrcodereaderview/Orientation;Landroid/graphics/Point;Landroid/graphics/Point;)[Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 392
    .end local v2    # "isMirrorCamera":Z
    .end local v3    # "orientation":Lcom/dlazaro66/qrcodereaderview/Orientation;
    .end local v4    # "viewSize":Landroid/graphics/Point;
    .end local v5    # "cameraPreviewSize":Landroid/graphics/Point;
    :cond_1
    sget-object v3, Lcom/dlazaro66/qrcodereaderview/Orientation;->LANDSCAPE:Lcom/dlazaro66/qrcodereaderview/Orientation;

    goto :goto_0

    .line 398
    .restart local v3    # "orientation":Lcom/dlazaro66/qrcodereaderview/Orientation;
    .restart local v4    # "viewSize":Landroid/graphics/Point;
    .restart local v5    # "cameraPreviewSize":Landroid/graphics/Point;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([[B)Lcom/google/zxing/Result;
    .locals 10
    .param p1, "params"    # [[B

    .prologue
    const/4 v6, 0x0

    .line 341
    iget-object v5, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    .line 342
    .local v4, "view":Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;
    if-nez v4, :cond_0

    move-object v5, v6

    .line 365
    :goto_0
    return-object v5

    .line 347
    :cond_0
    invoke-static {v4}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$200(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/client/android/camera/CameraManager;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-static {v4}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$000(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I

    move-result v8

    .line 348
    invoke-static {v4}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$100(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I

    move-result v9

    .line 347
    invoke-virtual {v5, v7, v8, v9}, Lcom/google/zxing/client/android/camera/CameraManager;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v3

    .line 350
    .local v3, "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, v3}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 351
    .local v2, "hybBin":Lcom/google/zxing/common/HybridBinarizer;
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    invoke-direct {v0, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 354
    .local v0, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    invoke-static {v4}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$300(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/qrcode/QRCodeReader;

    move-result-object v7

    iget-object v5, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->hintsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v7, v0, v5}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 362
    invoke-static {v4}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$300(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/qrcode/QRCodeReader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/QRCodeReader;->reset()V

    goto :goto_0

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, "e":Lcom/google/zxing/ChecksumException;
    :try_start_1
    invoke-static {}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ChecksumException"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    invoke-static {v4}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$300(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/qrcode/QRCodeReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/QRCodeReader;->reset()V

    .end local v1    # "e":Lcom/google/zxing/ChecksumException;
    :goto_1
    move-object v5, v6

    .line 365
    goto :goto_0

    .line 357
    :catch_1
    move-exception v1

    .line 358
    .local v1, "e":Lcom/google/zxing/NotFoundException;
    :try_start_2
    invoke-static {}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string v7, "No QR Code found"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    invoke-static {v4}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$300(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/qrcode/QRCodeReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/QRCodeReader;->reset()V

    goto :goto_1

    .line 359
    .end local v1    # "e":Lcom/google/zxing/NotFoundException;
    :catch_2
    move-exception v1

    .line 360
    .local v1, "e":Lcom/google/zxing/FormatException;
    :try_start_3
    invoke-static {}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string v7, "FormatException"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 362
    invoke-static {v4}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$300(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/qrcode/QRCodeReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/QRCodeReader;->reset()V

    goto :goto_1

    .end local v1    # "e":Lcom/google/zxing/FormatException;
    :catchall_0
    move-exception v5

    invoke-static {v4}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$300(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/google/zxing/qrcode/QRCodeReader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/QRCodeReader;->reset()V

    throw v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->doInBackground([[B)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/zxing/Result;)V
    .locals 4
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 369
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 371
    iget-object v2, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    .line 374
    .local v1, "view":Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$500(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 377
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->transformToViewCoordinates(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;[Lcom/google/zxing/ResultPoint;)[Landroid/graphics/PointF;

    move-result-object v0

    .line 378
    .local v0, "transformedPoints":[Landroid/graphics/PointF;
    invoke-static {v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$500(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;->onQRCodeRead(Ljava/lang/String;[Landroid/graphics/PointF;)V

    .line 380
    .end local v0    # "transformedPoints":[Landroid/graphics/PointF;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 328
    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {p0, p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->onPostExecute(Lcom/google/zxing/Result;)V

    return-void
.end method
